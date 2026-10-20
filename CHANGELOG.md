# Changelog

All notable changes to this project are documented here. Versions follow [Semantic Versioning](https://semver.org/).

## [0.2.0] - 2026-10-20

### Changed
- **Framing:** the skill is now described as "inspired by" the designers' public work, written by an AI, and not endorsed by them. It was previously described as "distilled from" their philosophies.
- **Status per entry:** every designer entry in `philosophy.md` is marked Checked, Partial, or Unverified, based on whether their own page was read and supported the entry.
- **Rewritten from pages:** Dieter Rams, Erik Spiekermann, Emil Kowalski, Maggie Appleton, Alexander Obenauer, Oliver Reichenstein, Don Norman, and others now reflect what their pages say. Maggie Appleton's "embodied cognition" summary was not on her page and was removed.
- **`sources.md`:** added a Check column. Corrected Andy Allen (notbor.ing), Kenya Hara (hara.ndc.co.jp), and Julie Zhou (listed as unreachable). Dan Saffer's domain now redirects to a parked page, so it has no working source.
- **Plugin and marketplace descriptions** updated to match the new framing.
- **README** rewritten around the same framing, with a Reliability section.

### Added
- `NOTICE.md`: states the skill is not endorsed by any designer, describes how content was made, and sets out a removal and correction process.

### Known gaps
- 12 of 24 entries are Unverified. Their pages were empty, redirected, unreachable, or did not support the entry.

## [0.1.1] - 2026-10-20

### Changed
- `SKILL.md` trimmed from about 920 to about 690 words. Principles condensed; details remain in `references/`.

## [0.1.0] - 2026-10-20

### Added
- Initial release: `design-taste` skill with review, suggest, and implement modes.
- `references/philosophy.md`: 24 designer entries (principle, practice, review question).
- `references/anti-slop-checklist.md`, `references/tokens.md`, `references/sources.md`.
- Claude Code plugin manifest and marketplace manifest.
- `scripts/install.sh` for user-level and project-level installs.
