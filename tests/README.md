# Tests

The skill is tested the way a skill can be: give an agent a task with and without the skill, and compare. This folder holds the fixtures and the expected results, so the test can be repeated after any edit.

There are two implement tests because they measure different layers. The settings page has no question to answer, so it measures the floor (tokens, states, targets). The rates screen has a question, so it measures the vision layer (`references/vision.md`).

## Review test (floor)

`fixture-settings.html` is a deliberately generic settings page: gradient background, identical shadowed cards, `div` toggles, arbitrary spacing, infinite animations, a streak widget, marketing copy, and `outline: none`.

Run two agents on it, each asked: *"Review this settings page for visual design and interaction quality, for both phone and desktop. Report every problem, ordered by impact."* One agent gets no skill. One is told to read `skills/design-taste/SKILL.md` and follow it.

A passing run with the skill must:

1. Open with "What this screen is for", say the screen has no user question, and move to the checklist.
2. Report findings as `file:line · severity · principle · fix`, with Blocking first.
3. Catch every item in `expected-findings.md`.
4. Measure, not guess: at least one contrast ratio and one target size in pixels, and render at 320px (the grid overflow only shows there).
5. Cite checklist item IDs, plus **Checked** designer entries by name. Never name a Partial entry.
6. State nothing in the skill was contradictory. If the agent reports friction, that is a bug in the skill; fix it and re-run.

## Implement test A: settings page (floor)

Ask both agents: *"Build a settings page for a task-management web app as one self-contained HTML file: profile form, four notification toggles, theme choice, empty integrations section, danger zone with account deletion. Must work on phones and desktops."*

Screenshot both at 375px and 1280px. A passing run with the skill must have: no decorative gradient, spacing from one scale, native or ARIA-correct switches, visible focus rings, 44px targets, 16px inputs, a confirmed deletion step, a specific empty state, and a `prefers-reduced-motion` rule. The agent must also report that it verified by rendering, and must measure overflow on the document, not the body.

## Implement test B: rates screen (vision)

Ask both agents, giving them `fixture-rates.json`. The prompt does not state the user's question; finding it is part of the test.

> Build the home screen of a currency exchange app for Uzbekistan as one self-contained HTML file (inline CSS, JS, and the data). Use only the data in the JSON. UI text may be English; keep the currency words the data gives. It must work at 375px and 1280px. Make it good.

Score against `expected-rates.md`. The no-skill run is the baseline. The gap between the two, item by item, is the skill's measured value for this release.

Known weakness: the fixture mirrors the Kurs example in `vision.md` (same domain, nearly the same numbers), so an agent can score well by pattern-matching the example. A second fixture in an unrelated domain is owed; until then, read the with-skill output for signs that it reasoned about *this* data (its stated assumptions, its handling of the traps) rather than reproduced Kurs.

A variant that states the question in the prompt ("The user's question: I have 100 USD, where do I exchange it today?") was run once for 0.4.0. With the question handed over, the no-skill agent built the answer object and the trade-off sentences on its own. That is why the canonical prompt withholds it: the skill's claim is that it makes the agent find the question.

## Last run

See the `Tested` section of the latest `CHANGELOG.md` entry.
