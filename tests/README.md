# Tests

The skill is tested the way a skill can be: give an agent a task with and without the skill, and compare. This folder holds the fixture and the expected result, so the test can be repeated after any edit.

## Review test

`fixture-settings.html` is a deliberately generic settings page: gradient background, identical shadowed cards, `div` toggles, arbitrary spacing, infinite animations, a streak widget, marketing copy, and `outline: none`.

Run two agents on it, each asked: *"Review this settings page for visual design and interaction quality, for both phone and desktop. Report every problem, ordered by impact."* One agent gets no skill. One is told to read `skills/design-taste/SKILL.md` and follow it.

A passing run with the skill must:

1. Report findings as `file:line · severity · principle · fix`, with Blocking first.
2. Catch every item in `expected-findings.md`.
3. Measure, not guess: at least one contrast ratio and one target size in pixels, and render at 320px (the grid overflow only shows there).
4. Cite checklist item IDs, plus **Checked** designer entries by name. Never name a Partial entry.
5. State nothing in the skill was contradictory. If the agent reports friction, that is a bug in the skill; fix it and re-run.

The no-skill run is the baseline. If it already catches everything in `expected-findings.md`, the skill's value is in the format, the measurement, and the severity ordering, not in the findings. Record both results in `CHANGELOG.md` under the release.

## Implement test

Ask both agents: *"Build a settings page for a task-management web app as one self-contained HTML file: profile form, four notification toggles, theme choice, empty integrations section, danger zone with account deletion. Must work on phones and desktops."*

Screenshot both at 375px and 1280px. A passing run with the skill must have: no decorative gradient, spacing from one scale, native or ARIA-correct switches, visible focus rings, 44px targets, 16px inputs, a confirmed deletion step, a specific empty state, and a `prefers-reduced-motion` rule. The agent must also report that it verified by rendering.

## Last run

See the `Tested` section of the latest `CHANGELOG.md` entry.
