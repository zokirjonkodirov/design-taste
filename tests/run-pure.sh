#!/usr/bin/env bash
# Pure with/without test: the same prompt in the same empty folder, headless,
# once with the plugin loaded for the session (--plugin-dir) and once without.
#
# Usage:
#   bash tests/run-pure.sh <fixture: rates|pharmacy> [reps=5] [parallel=3] [model]
#
# Output goes OUTSIDE the repo so the "without" run cannot find the skill files:
#   ${PURE_OUT:-$HOME/.cache/design-taste-pure}/<fixture>/<with|without>/<n>/
#     fixture-*.json   copy of the data
#     screen.html      what the agent built
#     transcript.jsonl stream-json events (tool calls, final text)
#     reply.md         the agent's final message
#     fired            "yes" if the transcript shows the skill being read
#
# Caveats: whatever else is installed on this machine (other plugins, user
# settings) is present in BOTH runs. That is the point: this measures the
# plugin's effect in your real environment, not against a vanilla model.

set -euo pipefail

repo="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

# ---- single job mode: bash run-pure.sh _one <fixture> <variant> <n>   (model via PURE_MODEL)
if [ "${1:-}" = "_one" ]; then
  fixture="$2"; variant="$3"; i="$4"; model="${PURE_MODEL:-}"
  out="${PURE_OUT:-$HOME/.cache/design-taste-pure}/$fixture"
  dir="$out/$variant/$i"
  [ -d "$dir" ] && chmod -R u+rwx "$dir" 2>/dev/null || true
  rm -rf "$dir"; mkdir -p "$dir"
  cp "$repo/tests/fixture-$fixture.json" "$dir/"
  # Disable any installed copy of design-taste for BOTH sides, so "without" is
  # really without and "with" tests the repo copy, not a stale marketplace install.
  args=(-p "$(cat "$repo/tests/prompt-$fixture.txt")"
        --output-format stream-json --verbose
        --permission-mode acceptEdits
        --settings '{"enabledPlugins":{"design-taste@design-taste":false}}')
  [ -n "$model" ] && args+=(--model "$model")
  [ "$variant" = "with" ] && args+=(--plugin-dir "$repo")
  start=$(date +%s)
  ( cd "$dir" && claude "${args[@]}" > transcript.jsonl 2> stderr.log ) || echo "exit=$?" > "$dir/failed"
  secs=$(( $(date +%s) - start ))
  python3 -I "$repo/tests/reply.py" "$dir/transcript.jsonl" > "$dir/reply.md" 2>/dev/null || true
  # fired = the Skill tool was called with design-taste, or its SKILL.md was read
  if grep -q '"skill": *"design-taste:design-taste"\|design-taste/SKILL.md' "$dir/transcript.jsonl"; then echo yes > "$dir/fired"; else echo no > "$dir/fired"; fi
  # record which skills were invoked, for the comparison
  grep -o '"skill": *"[^"]*"' "$dir/transcript.jsonl" | sort | uniq -c > "$dir/skills-invoked.txt" || true
  printf '%-7s %2d  fired=%-3s html=%-3s %4ds%s\n' "$variant" "$i" "$(cat "$dir/fired")" \
    "$([ -f "$dir/screen.html" ] && echo yes || echo no)" "$secs" "$([ -f "$dir/failed" ] && echo '  FAILED' || true)"
  exit 0
fi

# ---- driver mode
fixture="${1:?fixture name: rates or pharmacy}"
reps="${2:-5}"
parallel="${3:-3}"
model="${4:-}"
out="${PURE_OUT:-$HOME/.cache/design-taste-pure}/$fixture"

[ -f "$repo/tests/fixture-$fixture.json" ] || { echo "no fixture: $fixture" >&2; exit 1; }
[ -f "$repo/tests/prompt-$fixture.txt" ]   || { echo "no prompt: $fixture" >&2; exit 1; }
command -v claude >/dev/null || { echo "claude CLI not found" >&2; exit 1; }

export PURE_MODEL="$model"
for i in $(seq 1 "$reps"); do
  echo "without $i"
  echo "with $i"
done | xargs -P "$parallel" -L 1 bash "$repo/tests/run-pure.sh" _one "$fixture" 2>&1 | sed 's/^/  /'

echo
echo "results in $out"
