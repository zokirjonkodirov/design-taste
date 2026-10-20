# Changelog

All notable changes to this project are documented here. Versions follow [Semantic Versioning](https://semver.org/).

## [0.2.4] - 2026-10-20

### Changed
- **Swapped two designers** that had no readable primary text after repeated attempts:
  - Kenya Hara → **Matthew Butterick** (*Practical Typography*, "Why typography matters"). Checked.
  - Jason Yuan → **Bret Victor** ("A Brief Rant on the Future of Interaction Design"). Checked.
- Retry results: Rendle's essay and Yuan's case study still do not load. Rendle's principles remain quoted via Adactio's link post (Partial). Odell's publisher page returned 403; her entry stays Partial via a Tricycle review that quotes her.
- Status now: 9 Checked, 14 Partial, 1 Unverified. All 24 entries listed.

### Known gaps
- Robin Rendle: essay page 404s; principles come via a link post.
- Jenny Odell: own site is a loading message; quotes come from a review.
- Julie Zhuo: no working source.

## [0.2.3] - 2026-10-20

### Changed
- **Research pass on the remaining weak sources.** Rendle's three essay principles are now quoted from the essay via Adactio's link post (the essay page 404s). Odell's entry quotes her directly from a Tricycle review by Dan Zigmond. Yuan's and Hara's entries now state exactly what could and could not be read.
- **No entry was upgraded to Checked.** No primary full text was readable for Yuan, Rendle, Odell, or Hara, so all stay Partial.
- Status counts unchanged: 7 Checked, 16 Partial, 1 Unverified.

### Known gaps
- Jason Yuan: no readable primary essay text (uxdesign.cc returns 403).
- Robin Rendle: essay page 404s; principles come via a link post.
- Kenya Hara: no primary text; the Louisiana interview has no transcript.
- Julie Zhuo: no working source.

## [0.2.2] - 2026-10-20

### Changed
- **Re-checked the 12 Unverified entries** against each designer's own pages, their book pages, and secondary summaries. Result: 7 Checked, 16 Partial, 1 Unverified (down from 12 Unverified).
- **Checked** (own text supports the entry): Rams, Maeda, Spiekermann, Kowalski, Chimero, Appleton, Obenauer.
- **Corrected the name:** "Julie Zhou" is "Julie Zhuo". Her entry stays Unverified because the domain was unreachable and the metrics claim was not found in any source.
- **Rewrote entries to match sources:** Maeda (laws page), Chimero (*The Shape of Design*, "Stories and Voids"), Vinh (own blog posts on grids), Rendle (essay titles on his site), Linvega (project log), Allen (studio storefront), Hara (publisher blurbs), Odell (book summaries).
- **`sources.md`:** added source URLs that worked, with a Check column stating what each page provided. Dead links are kept and labeled.

### Known gaps
- Jason Yuan: his uxdesign.cc essays returned 403. Support is from search excerpts.
- Rendle, Odell, Hara: the primary essay or book text could not be read.
- Julie Zhuo: no working source found.

## [0.2.1] - 2026-10-20

### Fixed
- Restored the Julie Zhou entry, which was dropped from `philosophy.md` in 0.2.0. It is marked Unverified. All 24 designers are now present (5 Checked, 7 Partial, 12 Unverified).

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
