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
fixture="${1:?fixture name: rates or pharmacy}"
reps="${2:-5}"
parallel="${3:-3}"
model="${4:-}"
out="${PURE_OUT:-$HOME/.cache/design-taste-pure}/$fixture"

[ -f "$repo/tests/fixture-$fixture.json" ] || { echo "no fixture: $fixture" >&2; exit 1; }
[ -f "$repo/tests/prompt-$fixture.txt" ]   || { echo "no prompt: $fixture" >&2; exit 1; }
command -v claude >/dev/null || { echo "claude CLI not found" >&2; exit 1; }

run_one() {
  local variant="$1" i="$2"
  local dir="$out/$variant/$i"
  rm -rf "$dir"; mkdir -p "$dir"
  cp "$repo/tests/fixture-$fixture.json" "$dir/"
  local args=(-p "$(cat "$repo/tests/prompt-$fixture.txt")"
              --output-format stream-json --verbose
              --permission-mode acceptEdits)
  [ -n "$model" ] && args+=(--model "$model")
  [ "$variant" = "with" ] && args+=(--plugin-dir "$repo")
  local start=$(date +%s)
  ( cd "$dir" && claude "${args[@]}" > transcript.jsonl 2> stderr.log ) || echo "exit=$?" > "$dir/failed"
  local secs=$(( $(date +%s) - start ))
  # final assistant text: last "result" event
  python3 -I - "$dir/transcript.jsonl" > "$dir/reply.md" <<'EOF' || true
import json, sys
last = ""
for line in open(sys.argv[1], encoding="utf-8"):
    try: ev = json.loads(line)
    except Exception: continue
    if ev.get("type") == "result" and isinstance(ev.get("result"), str):
        last = ev["result"]
print(last)
EOF
  if grep -q 'skills/design-taste/SKILL.md\|design-taste/SKILL.md' "$dir/transcript.jsonl"; then echo yes > "$dir/fired"; else echo no > "$dir/fired"; fi
  printf '%-7s %2d  fired=%-3s html=%-3s %4ds\n' "$variant" "$i" "$(cat "$dir/fired")" "$([ -f "$dir/screen.html" ] && echo yes || echo no)" "$secs"
}
export -f run_one
export repo fixture out model

jobs=()
for i in $(seq 1 "$reps"); do jobs+=("without $i" "with $i"); done
printf '%s\n' "${jobs[@]}" | xargs -P "$parallel" -L 1 bash -c 'run_one $0 $1'

echo
echo "results in $out"
