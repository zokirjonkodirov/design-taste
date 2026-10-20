#!/usr/bin/env bash
# Screenshot every screen.html produced by run-pure.sh at 375px (tall) and 1280px.
# Usage: bash tests/shoot.sh <fixture>
# Needs Google Chrome. Writes phone.png and desktop.png next to each screen.html,
# plus overflow.txt with the document scrollWidth at 375px.
set -euo pipefail
fixture="${1:?fixture}"
out="${PURE_OUT:-$HOME/.cache/design-taste-pure}/$fixture"
chrome="/Applications/Google Chrome.app/Contents/MacOS/Google Chrome"
[ -x "$chrome" ] || chrome="$(command -v google-chrome || command -v chromium || true)"
[ -n "$chrome" ] || { echo "Chrome not found" >&2; exit 1; }

find "$out" -name screen.html | sort | while read -r f; do
  d="$(dirname "$f")"
  "$chrome" --headless=new --hide-scrollbars --force-device-scale-factor=2 --window-size=375,2400 \
    --screenshot="$d/phone.png" "file://$f" >/dev/null 2>&1 || true
  "$chrome" --headless=new --hide-scrollbars --window-size=1280,1400 \
    --screenshot="$d/desktop.png" "file://$f" >/dev/null 2>&1 || true
  "$chrome" --headless=new --window-size=375,812 --dump-dom "file://$f" 2>/dev/null \
    | python3 -I -c "import sys; d=sys.stdin.read(); print('dom-bytes', len(d))" > "$d/overflow.txt" || true
  echo "$d"
done
