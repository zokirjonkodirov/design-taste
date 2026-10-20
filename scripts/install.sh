#!/usr/bin/env bash
# Install or update the design-taste skill by copying it into a skills directory.
#
# Usage:
#   scripts/install.sh                  # user-level: ~/.claude/skills/
#   scripts/install.sh --project        # project-level: ./.claude/skills/
#   scripts/install.sh --dir <path>     # any skills directory
#
# Re-running the script updates the installed copy.

set -euo pipefail

repo_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
src="$repo_dir/skills/design-taste"
dest_root="$HOME/.claude/skills"

case "${1:-}" in
  --project) dest_root="$PWD/.claude/skills" ;;
  --dir)
    [ -n "${2:-}" ] || { echo "error: --dir needs a path" >&2; exit 1; }
    dest_root="$2" ;;
  "") ;;
  *) echo "usage: $0 [--project | --dir <path>]" >&2; exit 1 ;;
esac

dest="$dest_root/design-taste"
mkdir -p "$dest_root"
rm -rf "$dest"
cp -R "$src" "$dest"

echo "Installed design-taste to $dest"
