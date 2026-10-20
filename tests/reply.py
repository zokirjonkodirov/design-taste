"""Print the final assistant text from a claude --output-format stream-json transcript."""
import json
import sys

last = ""
for line in open(sys.argv[1], encoding="utf-8"):
    try:
        ev = json.loads(line)
    except Exception:
        continue
    if ev.get("type") == "result" and isinstance(ev.get("result"), str):
        last = ev["result"]
print(last)
