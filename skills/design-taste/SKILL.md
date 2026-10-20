---
name: design-taste
description: Use when reviewing, designing, or implementing UI for a web or app project, when a screen looks generic, templated, or "AI-generated", or when asked for design critique, layout, typography, spacing, motion, or interaction polish.
---

# Design Taste

## Overview

Opinionated UI guidance inspired by 24 designers' public work. It is written by an AI, paraphrases their positions, and is **not endorsed by them**. Each entry in `references/philosophy.md` has a status: **Checked**, **Partial**, or **Unverified**. Treat Unverified entries as prompts, not as the designer's view. Sources are in `references/sources.md`.

It exists to avoid default generated "AI slop": gradient blobs, identical shadowed cards, arbitrary spacing, one font for everything, bouncy motion everywhere, empty states with no point of view, controls with no focus, loading, or error states.

**Core principle:** every element earns its place, and every decision traces to a named principle, not habit.

## When to Use

- Reviewing a screen, component, or PR for visual or interaction quality
- Building a new page or component where no design system exists
- The UI looks "generic", "template-y", or "AI-made"
- Choosing type, spacing, color, motion, or empty/loading/error treatment

**Not for:** backend work, or projects with a mature design system where the task only uses its components. Follow that system; use this skill for gaps.

## Modes

Pick from the request. If unclear, use **review**.

**1. Review**
1. Read the UI code. Render or screenshot it if the app can run.
2. Check against `references/anti-slop-checklist.md`.
3. Report each finding as: `file:line` · principle broken (name the designer) · concrete fix.
4. Order by impact on comprehension and usability, not by ease of fix.
5. Do not rewrite code the user did not ask to change.

**2. Suggest**
1. Offer 2–3 directions, each with the principle behind it and the trade-off it accepts.
2. Recommend one, in one sentence of reasoning.

**3. Implement**
1. Use `references/tokens.md` for spacing, type, radius, and motion, adapted to existing project tokens.
2. Build every interactive element with all states: default, hover, `:focus-visible`, active, disabled, loading, empty, error.
3. Keep motion short, interruptible, and purposeful: feedback, orientation, or continuity.
4. Verify by looking: run the app or take a screenshot, then re-run the checklist. Don't call it polished unseen.

## Core Rules

`references/philosophy.md` gives each rule's source designer and a review question.

- **Restraint:** remove what doesn't help the task.
- **Hierarchy with type and space first:** size, weight, and spacing before color, borders, and shadows.
- **One system:** one spacing, type, radius, and grid scale. Arbitrary values are bugs.
- **Motion has a job:** feedback, orientation, or continuity. Honor `prefers-reduced-motion`.
- **Interaction is complete:** all states, keyboard path, 44px touch targets.
- **Character needs a reason:** a distinct voice is good when it serves content. Decoration that serves only itself is not.
- **Calm over extraction:** no streaks, nagging badges, or engagement loops unless the user's goal needs them.
- **Measure claims:** if a change "improves comprehension", say how you'd check: task time, errors, or user comparison.

## Conflicts

1. The user's explicit request
2. The project's design system and conventions
3. This skill

If this skill conflicts with a project convention, follow the project and mention it once.

## Quick Reference

| Symptom | Principle broken | Fix direction |
|---|---|---|
| Every card: same radius, shadow, padding | Hierarchy, Restraint | Vary emphasis on purpose; remove shadows first |
| Spacing like 13px, 22px, 37px | One system | Snap to the spacing scale |
| Headline only bigger and bolder | Hierarchy with type | Adjust size, leading, measure, weight together |
| Gradient or blob background | Restraint | Remove, or make it carry content |
| Press gives no visible response | Interaction completeness | Add active and focus-visible states |
| Animation on every hover and load | Motion has a job | Keep motion only where it orients or confirms |
| Empty list says nothing | Character, Calm | Specific empty state with one next action |
| Tiny tap targets, no keyboard path | Ergonomics, keyboard-first | Enlarge hit areas; check tab order |

## Common Mistakes

- **Polishing before structure.** Fix spacing, hierarchy, and states first; shadows and motion last.
- **Treating one designer as the rule.** These philosophies conflict (restraint vs. expressive character). Name the trade-off.
