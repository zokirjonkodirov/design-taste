---
name: design-taste
description: Use when reviewing, designing, or implementing UI for a web or mobile project, when a screen looks generic, templated, or "AI-generated", when a screen shows data but does not answer the user's question, or when asked for design critique, layout, typography, spacing, motion, touch, or interaction polish.
---

# Design Taste

## Overview

A screen exists to answer one question the user walked in with. The work is to find that question, build the one object that answers it, and treat everything else as evidence or comparison. This skill makes the agent ask that question first, review from five chairs, and only then apply the floor: tokens, states, targets, contrast.

Guidance is inspired by 24 designers' public work. It is written by an AI, paraphrases their positions, and is **not endorsed by them**. Each entry in `references/philosophy.md` has a status: **Checked**, **Partial**, or **Unverified** (none at present). In any mode, name only Checked designers. Sources are in `references/sources.md`. The worked example is a real redesign, `examples/kurs/`.

**Core principle:** every element earns its place by serving the answer, and every decision traces to a named principle, not habit.

**Not for:** backend work, or projects with a mature design system where the task only uses its components. Follow that system; use this skill for gaps.

## Before any mode

Read `references/vision.md`. Write three sentences first, in your working notes and again at the top of your final reply: the user's question, the answer object, the one action. If you cannot write the question, ask the user. If the screen has none (settings, a plain list), say so, skip them, and still sit in the five chairs.

## Modes

Pick from the request. If unclear, use **review**.

**1. Review** (read: `vision.md`, `anti-slop-checklist.md`, `philosophy.md`, `tokens.md`)
1. Read the UI code. Try once to open it (dev server, static file, or screenshot) using viewport emulation, not window resize, at 320px, 375px, and 1280px. If that fails, compute from the code and say the result is computed, not observed.
2. Open the report with **What this screen is for**: the three sentences (or the statement that the screen has none), then chair findings (Q4) as `screen or component · chair · Qn · severity · what is wrong · the move`.
3. Then check against the checklist. Measure contrast ratios (at the worst point the text can overlap), target sizes in px, and the count of focusable elements; put the numbers inside the finding they support. Use `tokens.md` only as the scale to propose fixes against when the project has none.
4. Report each checklist finding as: `file:line` · severity · principle · concrete fix. The principle is a checklist item ID, optionally plus a **Checked** designer by name.
5. Severity. **Blocking:** some user cannot complete or perceive the task. Keyboard-only and screen-reader users count. Text the task depends on under 3:1 counts. Data that cannot be true counts. Current values not shown counts. **High:** misleads, fails WCAG AA (text or boundary), ornament under 3:1, an irreversible action with one tap, a default that works against the user, pulls attention from the task, or breaks on a phone. **Medium:** everything else: system, consistency, copy, polish. Within a band, order by how many users hit it and how often.
6. End with what you would remove (Q6). Do not rewrite code the user did not ask to change.

**2. Suggest** (read: `vision.md`, `philosophy.md`)
1. Offer 2–3 directions. Each answers the question with a different answer object, comparison, or action, names the principle behind it, and says what it loses.
2. Recommend one, in one sentence of reasoning.

**3. Implement** (read: `vision.md`, `tokens.md`, `anti-slop-checklist.md`)
1. Build the answer object first and check it at 320px before adding anything else. Then the evidence line, then the comparisons in the user's unit, then the one action in thumb reach, then only what survived Q6.
2. Use the tokens for spacing, type, radius, color, and motion, adapted to existing project tokens. One display face for numbers and titles, one for the rest. Tabular figures.
3. Build every control with default, hover, `:focus-visible`, active, and disabled states. Async controls also get loading; forms get error; collections get empty, when the data can be empty. Do not build a state that cannot occur.
4. Build for the phone first: primary action in thumb reach, 44px targets, 16px inputs, safe-area insets, no hover-only affordances.
5. Keep motion short, interruptible, and decided by frequency: feedback, orientation, or continuity. Blur the layer behind a tray.
6. Verify by looking. Minimum: 320px, 375px, and 1280px, light and dark, one error state, one empty state, tab through every control. Re-run the checklist. Don't call it polished unseen.
7. Your reply lists the three sentences, the Q-numbers and checklist IDs used, your stated assumptions (Q3), and what you refused to build. Designer names are optional here; Implement mode does not read `philosophy.md`.

## Core Rules

Designers in parentheses are the **Checked** entries behind each rule. Q-numbers point into `vision.md`.

- **One question, one object:** the answer is readable from across the room; everything else is evidence or comparison (Q1, Q2, Q3; Chimero, Nielsen, Case).
- **Five chairs:** the person doing the task, the typographer, the interaction designer, the data designer, the founder (Q4).
- **One vocabulary:** one selected state, one meaning per color, trays for transient and screens for persistent (Q5; Taylor, Nielsen, Frost).
- **Say no:** every screen loses something, and the reply says what (Q6; Rams, Maeda, Kowalski).
- **Local voice:** units, names, addresses, and defaults from the user's world (Q7; Allen, Chimero).
- **Data honesty:** numbers that cannot all be true are a Blocking finding, not a styling problem (Q9; Nielsen, Butterick).
- **Restraint:** remove what doesn't help the task (Rams, Maeda, Nielsen).
- **Hierarchy with type and space first:** size, weight, and spacing before color, borders, and shadows (Q10; Butterick, Spiekermann).
- **One system:** one spacing, type, radius, and grid scale. Arbitrary values are bugs (Frost for components; Yablonski for grouping by proximity).
- **Mobile first:** design the phone layout first, primary action within thumb reach, layouts that survive long text and narrow widths (Wroblewski, Clark, Marcotte, Shadeed).
- **Interaction is complete:** all states, keyboard path, screen-reader state, 44px touch targets (Pickering, Nielsen, Freiberg).
- **Motion and depth carry meaning:** feedback, orientation, or continuity, decided by frequency. Honor `prefers-reduced-motion` (Q8; Kowalski, Freiberg, Comeau, Taylor).
- **Calm over extraction:** no streaks, nagging badges, or engagement loops unless the user's goal needs them (Case).
- **Measure claims:** if a change "improves comprehension", say how you'd check: task time, errors, or user comparison (this skill's own rule, no designer).

## Conflicts

1. The user's explicit request
2. The project's design system and conventions
3. This skill

If this skill conflicts with a project convention, follow the project and mention it once. If the user's request would create a Blocking finding (for example, removing focus outlines), do it and say so once.

## Quick Reference

| Symptom | Where | Fix direction |
|---|---|---|
| Screen shows data, user still has to think | Q1, Q2, Q3 | One answer object; differences in words and bars; do the arithmetic |
| Secondary numbers shown as raw deltas | Q2 | "N less" plus a bar, sorted from best |
| Several styles for "selected", "best", or "missing" | Q5 | One style each, app-wide; the accent means one thing |
| Persistent settings in a transient tray | Q5 | Push a screen; trays are for transient actions |
| Raw data strings, codes in prose | Q7 | Rewrite for humans; units as words in sentences |
| Two numbers that cannot both be true | Q9 | Report the data bug as Blocking |
| Streaks, pulsing badges, nudges in a utility screen | W5 | Remove; calm over extraction |
| Form opens blank though values exist | I10 | Show current values |
| Every card: same radius, shadow, padding | S5, C6 | Vary emphasis on purpose; remove shadows first |
| Spacing like 13px, 22px, 37px | S3 | Snap to the spacing scale |
| Headline only bigger and bolder | T1, T2, Q10 | Two voices, tabular figures, unit at baseline |
| Gradient or blob background | C5 | Remove, or make it carry content |
| Press gives no visible response | I1 | Add active and focus-visible states; 3% press scale |
| Toggle is a styled `div` | I2 | `<input type="checkbox" role="switch">` with a label |
| Toggle controls nothing | I4 | Wire it or remove it |
| Animation on every hover and load | A1, A6, Q8 | Keep motion only where it orients or confirms |
| Empty list says nothing | I7 | Specific empty state with one next action |
| Tiny tap targets, no keyboard path | I8, I9 | Enlarge hit areas; check tab order |
| Primary action at top of phone screen | M2 | Move to lower half or sticky bottom bar |
| Layout breaks at 320px or with long names | M1, M7 | `min-width: 0`, wrap, `minmax(0, 1fr)` |

## Common Mistakes

- **Applying the floor and calling it design.** Tokens and targets make a screen correct. The question and the object make it good.
- **Polishing before structure.** Fix the answer object, hierarchy, and states first; shadows and motion last.
- **Treating one designer as the rule.** These philosophies conflict (restraint vs. expressive character). Name the trade-off.
- **Shrinking desktop onto the phone.** Cut, reorder, or stack; do not scale.
- **Designing around a data bug.** Name it.
