---
name: design-taste
description: Use when reviewing, designing, or implementing UI for a web or mobile project, when a screen looks generic, templated, or "AI-generated", or when asked for design critique, layout, typography, spacing, motion, touch, or interaction polish.
---

# Design Taste

## Overview

Opinionated UI guidance inspired by 24 designers' public work. It is written by an AI, paraphrases their positions, and is **not endorsed by them**. Each entry in `references/philosophy.md` has a status: **Checked**, **Partial**, or **Unverified** (none at present). In any mode, name only Checked designers. Sources are in `references/sources.md`.

It exists to avoid default generated "AI slop": gradient blobs, identical shadowed cards, arbitrary spacing, bouncy motion everywhere, empty states with no point of view, controls missing focus, loading, or error states, and desktop layouts shrunk onto phones.

**Core principle:** every element earns its place, and every decision traces to a named principle, not habit.

**Not for:** backend work, or projects with a mature design system where the task only uses its components. Follow that system; use this skill for gaps.

## Modes

Pick from the request. If unclear, use **review**.

**1. Review** (read: `anti-slop-checklist.md`, `philosophy.md`, `tokens.md`)
1. Read the UI code. Try once to open it (dev server, static file, or screenshot) and render at 320px, 375px, and 1280px. If that fails, compute from the code and say the result is computed, not observed.
2. Check against the checklist. Measure contrast ratios (at the worst point), target sizes in px, and focusable elements. Use `tokens.md` only as the scale to propose fixes against when the project has none.
3. Report each finding as: `file:line` · severity · principle · concrete fix. The principle is a checklist item ID, optionally plus a **Checked** designer by name.
4. Severity. **Blocking:** some user cannot complete or perceive the task. Keyboard-only and screen-reader users count. Text contrast under 3:1 counts. **High:** misleads, fails WCAG AA (text or boundary), pulls attention from the task, or breaks on a phone. **Medium:** everything else: system, consistency, copy, polish. Within a band, order by how many users hit it and how often.
5. Do not rewrite code the user did not ask to change.

**2. Suggest** (read: `philosophy.md`)
1. Offer 2–3 directions, each with the principle behind it and the trade-off it accepts.
2. Recommend one, in one sentence of reasoning.

**3. Implement** (read: `tokens.md`, `anti-slop-checklist.md`)
1. Use the tokens for spacing, type, radius, color, and motion, adapted to existing project tokens.
2. Build every control with default, hover, `:focus-visible`, active, and disabled states. Async controls also get loading; forms get error; collections get empty.
3. Build for the phone first: primary action in thumb reach, 44px targets, 16px inputs, safe-area insets, no hover-only affordances.
4. Keep motion short, interruptible, and purposeful: feedback, orientation, or continuity.
5. Verify by looking. Minimum: 320px, 375px, and 1280px, light and dark if both exist, one error state, one empty state, tab through every control. Re-run the checklist. Don't call it polished unseen.

## Core Rules

Designers in parentheses are the **Checked** entries behind each rule.

- **Restraint:** remove what doesn't help the task (Rams, Maeda, Nielsen).
- **Hierarchy with type and space first:** size, weight, and spacing before color, borders, and shadows (Butterick, Spiekermann).
- **One system:** one spacing, type, radius, and grid scale. Arbitrary values are bugs (Frost for components; Yablonski for grouping by proximity).
- **Mobile first:** design the phone layout first, primary action within thumb reach, layouts that survive long text and narrow widths (Wroblewski, Clark, Marcotte, Shadeed).
- **Interaction is complete:** all states, keyboard path, screen-reader state, 44px touch targets (Pickering, Nielsen, Freiberg).
- **Motion has a job:** feedback, orientation, or continuity. Honor `prefers-reduced-motion` (Kowalski, Freiberg, Comeau).
- **Character needs a reason:** a distinct voice is good when it serves content. Decoration that serves only itself is not (Chimero; copy and tone are checklist items W1–W4).
- **Calm over extraction:** no streaks, nagging badges, or engagement loops unless the user's goal needs them (Case).
- **Measure claims:** if a change "improves comprehension", say how you'd check: task time, errors, or user comparison (this skill's own rule, no designer).

## Conflicts

1. The user's explicit request
2. The project's design system and conventions
3. This skill

If this skill conflicts with a project convention, follow the project and mention it once. If the user's request would create a Blocking finding (for example, removing focus outlines), do it and say so once.

## Quick Reference

| Symptom | Checklist | Fix direction |
|---|---|---|
| Every card: same radius, shadow, padding | S5, C6 | Vary emphasis on purpose; remove shadows first |
| Spacing like 13px, 22px, 37px | S3 | Snap to the spacing scale |
| Headline only bigger and bolder | T1, T2 | Adjust size, leading, measure, weight together |
| Gradient or blob background | C5 | Remove, or make it carry content |
| Press gives no visible response | I1 | Add active and focus-visible states |
| Toggle is a styled `div` | I2 | `<input type="checkbox" role="switch">` with a label |
| Toggle controls nothing | I4 | Wire it or remove it |
| Animation on every hover and load | A1, A6 | Keep motion only where it orients or confirms |
| Empty list says nothing | I7 | Specific empty state with one next action |
| Tiny tap targets, no keyboard path | I8, I9 | Enlarge hit areas; check tab order |
| Primary action at top of phone screen | M2 | Move to lower half or sticky bottom bar |
| Layout breaks at 320px or with long names | M1, M7 | `min-width: 0`, wrap, `minmax(0, 1fr)` |

## Common Mistakes

- **Polishing before structure.** Fix spacing, hierarchy, and states first; shadows and motion last.
- **Treating one designer as the rule.** These philosophies conflict (restraint vs. expressive character). Name the trade-off.
- **Shrinking desktop onto the phone.** Cut, reorder, or stack; do not scale.
