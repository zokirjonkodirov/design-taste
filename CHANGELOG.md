# Changelog

All notable changes to this project are documented here. Versions follow [Semantic Versioning](https://semver.org/).

## [0.4.0] - 2026-10-20

### Added
- **`references/vision.md`, the layer above the checklist.** Three sentences before any token (the user's question, the answer object, the one action), then ten principles, each with a question to ask of a screen, a move, an instance from a real redesign, and the Checked designers behind it: Q1 one question one object, Q2 comparison in the user's unit, Q3 decide for the user, Q4 five chairs, Q5 one vocabulary, Q6 say no ninety-nine times, Q7 local voice, Q8 depth and motion carry meaning, Q9 data honesty, Q10 numbers are typography. Every mode reads it first.
- **`examples/kurs/`:** the project owner's own app, four screens before and after, the five-chair critique, and the thirteen vocabulary rules that removed the inconsistencies. This is where the vision layer comes from. Used with the owner's permission.
- **`examples/settings-page/`:** the two pages from the 0.3.0 implement test, unedited, with captures and a side-by-side `compare.html`.
- **Implement test B (rates screen):** `tests/fixture-rates.json` with seeded traps (best bank far away, buy equal to sell, a branch distance that cannot be right, a closed bank, raw addresses, stale timestamp) and `tests/expected-rates.md`. The settings test stays as the floor test.
- `docs/superpowers/specs/2026-10-20-vision-layer-design.md`: the design record for this release.

### Changed
- **Modes start from the question.** Review opens with "What this screen is for" and chair findings (`screen · Qn · what is wrong · the move`) above the severity bands, and ends with what to remove. Suggest directions each answer the question differently and say what they lose. Implement builds the answer object first and the reply lists what was refused. Data that cannot be true is Blocking.
- **Roster:** Benji Taylor ("Family Values") and Andy Allen ("No more boring apps") restored as Checked; both pages loaded in full today after failing this morning. Rasmus Andersson and Paco Coursey removed (bio pages, no principle stated). Freiberg's entry adds "Designing depth"; Kowalski's adds "Developing taste" and "You don't need animations". 20 Checked, 4 Partial, 0 Unverified.
- Core rules and the quick reference lead with the vision rules and point into `vision.md` by Q-number.
- M1 now says to measure `document.documentElement.scrollWidth`, not `body`. Found while capturing the settings example: the with-skill page scrolls 18px sideways on a 375px phone because its visually-hidden theme radios are positioned past the right edge. The agent had reported "no horizontal overflow" after checking the body. The example is kept as generated, defect included.
- README leads with the Kurs before/after instead of the install steps.

### Tested
- **Review, settings fixture, 0.4.0 skill:** opened with "What this screen is for", said the page has no user question, and still ran the five chairs, which caught two things the checklist had no item for: the profile form opens blank though values exist, and the streak card is an engagement loop. Rendered at 320, 375, 1280; contrast computed at worst points; focusable count 4; 40 findings in three bands; ended with a removal list. Reported 12 frictions; 11 fixed (chairs on question-less screens, severity slot in the chair format, I10 and W5 added, severity clauses for irreversible one-tap actions and hostile defaults, "worst point the text can overlap", viewport emulation named, V3 double-count rule, quick reference made generic, tokens warning). The "Last checked" date is real and stays.
- **Implement, rates screen, question given, with and without the skill:** both built the answer object and the taxi arithmetic. The skill run added the threshold (384 dollars), one action in a sticky bar, "N less" with bars, street-first addresses, the bad rate shown as "No rate" with its reason, a nine-item refusal list, and a page a third shorter. The fixture then carried an `_about` field describing its own traps, which the no-skill agent read, so trap detection in this variant is not evidence. Field removed.
- **Implement, rates screen, question withheld, with and without the skill (canonical):** both found the question from the data. Without the skill: no action on screen, comparisons as "after taxi" totals with no bars, the impossible-spread bank listed second at full value, raw addresses, and an 80px horizontal overflow at 375px. With the skill: three sentences, threshold 438 with the assumption stated, one action, bars, refusal list, no overflow, but the impossible-spread bank was used as the rival in the decision sentence after being flagged in the reply. `vision.md` Q9 now forbids that explicitly. Item-by-item scores are in `examples/rates-screen/README.md`.
- **Frictions from the two with-skill implement runs, all fixed:** the Q3 example said "721 m" with a 17 000 so'm taxi (copied from the app's own copy; now 7.2 km, round trip, 770 dollars, assumption stated); no rule for one-way vs round trip (now: state the assumption in the sentence); no rule for how a data bug reaches the screen in Implement mode (now in Q9); thin space U+2009 breaks lines (now U+202F with a U+00A0 fallback); no display type step (added `--text-display`); `button:hover` greyed primary buttons (scoped); reduced-motion selector matched `.motion-essential::before` (fixed); the object-plus-action viewport conflict and the "are secondary rows actionable" question (both answered in `vision.md`); the accent's single meaning vs the primary button (answered: the answer and the way to it); "look at it alone" (now "check it at 320px first"); designer names required in an Implement reply that never reads `philosophy.md` (now Q-numbers and IDs).
- **Known weakness:** the rates fixture mirrors the Kurs example closely enough that an agent can score well by reproducing it. A fixture in an unrelated domain is the first task for 0.4.1, along with a re-run of the review test on the post-fix files.

## [0.3.0] - 2026-10-20

### Changed
- **Roster refocused on web and mobile interface work.** Seven entries removed and seven added, all new entries Checked against the designer's own text:
  - Removed: Julie Zhuo (no source), Bret Victor (argues against touchscreens), Alexander Obenauer and Devine Lu Linvega (not interface craft), Benji Taylor and Andy Allen (no primary text by the named person), Dan Saffer (microinteractions.com now redirects elsewhere).
  - Added: Jakob Nielsen (ten usability heuristics), Jon Yablonski (Laws of UX), Heydon Pickering (Inclusive Components), Josh Clark (*Designing for Touch* excerpt), Ethan Marcotte ("Responsive Web Design"), Ahmad Shadeed ("Defensive CSS"), Josh W. Comeau (CSS transitions).
  - Upgraded to Checked from their own essays: Luke Wroblewski ("Mobile First"), Rauno Freiberg ("Invisible Details of Interaction Design").
  - Status now: 18 Checked, 6 Partial, 0 Unverified. Removed entries and reasons are listed in `sources.md`.
- **`philosophy.md`** regrouped into six sections (added "Usability and access" and "Mobile and responsive") with a problem → entry table at the end, so a reviewer reads two or three entries instead of all 24. Fixed the stray rule that split Brad Frost from his section.
- **Review mode** now states which references to read, adds severity bands (Blocking, High, Medium), requires measured contrast and target sizes, and allows citing a designer by name only for Checked entries. Partial entries are cited as checklist items.
- **Implement mode** adds a phone-first step and a concrete verification list (375px and 1280px, light and dark, one error state, one empty state, tab through every control).
- **Core rules** name the Checked designers behind each rule. "Ergonomics" in the quick reference, which matched no rule, is now "Interaction is complete".
- **Checklist** items now have IDs (S1, T1, C1, I1, M1, A1, W1, V1…) so findings cite them without quoting. New: a Mobile and responsive section (320px overflow, thumb reach within the first viewport, 16px inputs, `hover: hover`, safe-area insets, `100dvh`, `min-width: 0`, image dimensions, content breakpoints), a 3:1 boundary contrast item, measuring contrast at the worst point of gradients and animated opacity, native-element and visible-label items, a "every control does something" item, a destructive-confirmation item, clipped or transparent text, stretched grid rows, and a definition of what "checked with keyboard" means by inspection. Measure (T3) is marked prose-only. Viewports are 320px, 375px, 1280px everywhere.
- **Severity** now says keyboard and screen-reader blockers are Blocking, text contrast under 3:1 is Blocking, AA failures and phone breakage are High, and within a band findings are ordered by how many users hit them.
- **Switch default** stated once: `<input type="checkbox" role="switch">` with a label; `<button role="switch">` only when the value must not be in a form.
- **Tokens** gain `--color-border-strong` (meets 3:1 on both surfaces; the old `--color-border` was 1.2:1 and is now documented as divider-only), hover and danger-border variants, `--target-min`, 16px inputs, safe-area padding, `[hidden]` guard, input focus offset, `hover: hover` gate, a sticky bottom bar, and a Tailwind mapping. All text and boundary pairs were computed: lowest is 3.99:1 (dark border on dark surface), all text ≥ 5.9:1.
- `README.md` install script now invoked as `bash scripts/install.sh` in case packaging strips the executable bit.

### Added
- `tests/`: the review fixture, the expected findings, and the procedure for running the with/without comparison.

### Tested
- Four runs on the fixture settings page before this release, with the 0.2.5 skill: review and implement, each with and without the skill.
- **Review, no skill:** caught every item now in `tests/expected-findings.md`. Flat list, no severity, no measurement, no rendering.
- **Review, 0.2.5 skill:** same coverage, plus rendered at 375px and 1280px, measured contrast ratios and target sizes, grouped by severity. Reported six frictions in the skill, all fixed above.
- **Implement, no skill vs. 0.2.5 skill:** both produced working, accessible pages. The skill run used dividers instead of cards, one token scale, a segmented theme control, and verified by screenshot. The no-skill run used shadowed cards and theme preview tiles. Neither failed the checklist. The skill's value in this run was restraint and verification, not correctness.
- **Review, 0.3.0 skill (before the refactor pass):** rendered at 320px, 375px, and 1280px; measured contrast at both gradient stops and at the lowest animated opacity; counted focusable elements; 34 findings in three severity bands; caught every item in `tests/expected-findings.md`, including the 320px grid overflow the two earlier runs missed; cited only Checked entries and checklist items. Reported 11 ambiguities (viewport list stated three ways, severity for accessibility-only blockers, no checklist IDs, contrast on gradients, Partial rule stated two ways, tokens' role in review, dead controls, "lower half" of what, switch markup default, measure on forms, clipped text). All eleven are fixed in this release.
- **Consistency read of the fixed files** by a separate agent found eight more cross-file mismatches (motion property list differing between checklist and tokens, confirm-vs-undo for destructive actions, Clark's practice wording, "Measure claims" attributed to Nielsen, Quick Reference using rule names instead of checklist IDs, danger-border contrast, Partial rule scoped to Review only, severity bands with gaps). All fixed. The fixed files were not re-run on the fixture; that is the first thing to do in 0.3.1.

## [0.2.5] - 2026-10-20

### Changed
- **Swapped two more designers** whose primary pages would not load:
  - Robin Rendle → **Brad Frost** ("Atomic Web Design"). Full essay text. Checked.
  - Jenny Odell → **Amber Case** (Calm Technology principles). Principles list on her site. Checked.
- Status now: 11 Checked, 12 Partial, 1 Unverified.

### Known gaps
- Julie Zhuo: no working source. Still Unverified.
- Partial entries (12): their sources are secondhand, a bio or title list, or the author's notes. Each entry says which.

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
