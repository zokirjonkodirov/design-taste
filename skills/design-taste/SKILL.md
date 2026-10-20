---
name: design-taste
description: Use when reviewing, designing, or implementing UI for a web or app project, when a screen looks generic, templated, or "AI-generated", or when asked for design critique, layout, typography, spacing, motion, or interaction polish.
---

# Design Taste

## Overview

Opinionated UI review and implementation guidance, distilled from 24 practitioners' published design philosophies. The philosophies are paraphrased, not quoted; sources are in `references/sources.md`.

The goal is to avoid default-generated "AI slop": gradient hero blobs, identical rounded cards with drop shadows, arbitrary spacing, one font for everything, bouncy motion on every element, empty states with no point of view, and buttons with no focus, loading, or error states.

**Core principle:** every element must earn its place, and every decision should trace back to a named principle, not to habit.

## When to Use

- Reviewing a screen, component, or PR for visual or interaction quality
- Building a new page or component where no design system exists yet
- User says the UI looks "generic", "ugly", "sheety", "template-y", or "AI-made"
- Choosing type, spacing, color, motion, or empty/loading/error treatment

**Not for:** pure backend work, or projects with a mature design system where the task is only to use its components. In that case follow the existing system and use this skill only for gaps.

## Modes

Pick the mode from the request. If unclear, default to **review**.

### 1. Review

1. Read the relevant UI code. Render or screenshot it when the app can run.
2. Check against `references/anti-slop-checklist.md`.
3. Report each finding as: `file:line` · the principle it breaks (name the designer, e.g. "Rams: unobtrusive utility") · the concrete fix.
4. Order findings by how much they hurt comprehension or usability, not by how easy they are to fix.
5. Do not rewrite code the user did not ask to change.

### 2. Suggest

1. Offer 2–3 directions, not one.
2. For each, name the principle driving it and the trade-off it accepts.
3. Recommend one, and say why in one sentence.

### 3. Implement

1. Read `references/tokens.md`. Use its scale for spacing, type, radius, and motion, adapted to the project's existing tokens if any.
2. Build every interactive element with all states: default, hover, `:focus-visible`, active, disabled, loading, empty, error.
3. Keep motion short, interruptible, and tied to a purpose: feedback, orientation, or continuity.
4. Verify: run the app and look at it, or take a screenshot. Re-run the checklist. Do not claim the result is polished without seeing it.

## Principles in Brief

These are the working rules. `references/philosophy.md` explains each one with its source designer and a review question.

- **Restraint:** remove what does not help the task. Less, but better.
- **Hierarchy with type and space first:** use size, weight, and spacing before color, borders, and shadows.
- **One system:** one spacing scale, one type scale, one radius scale, one grid. Arbitrary values are a bug.
- **Structure:** alignment and rhythm do most of the work. Symmetry and a consistent grid read as intent.
- **Motion has a job:** feedback, orientation, or continuity. Otherwise, no motion. Honor `prefers-reduced-motion`.
- **Interaction is complete:** every control has every state, works from the keyboard, and has a touch target of at least 44px on touch devices.
- **Character is allowed, decoration needs a reason:** a distinct voice (type choice, a material, a sound) is good if it serves the content. Ornament that serves only itself is not.
- **Calm over extraction:** do not add streaks, nagging badges, or engagement loops unless the user's goal requires them.
- **Measure claims:** if you say a change improves comprehension, name how you would check it: task time, error rate, or a comparison on real users.

## Conflicts

Priority order:

1. The user's explicit request
2. The project's existing design system and conventions
3. This skill

When this skill conflicts with a project convention, follow the project and mention the conflict once.

## Quick Reference

| Symptom in the UI | Likely principle broken | Fix direction |
|---|---|---|
| Every card has the same radius, shadow, and padding | Hierarchy, Restraint | Vary emphasis deliberately; remove shadows first |
| Spacing values like 13px, 22px, 37px | One system | Snap to the spacing scale |
| Headline is only bigger and bolder, nothing else | Hierarchy with type | Adjust size, leading, measure, and weight together |
| Gradient background and blob decoration | Restraint, Character with a reason | Remove, or make it carry content |
| Button press has no visible response | Interaction completeness, Tactility | Add active and focus-visible states |
| Animation on every hover and load | Motion has a job | Keep motion only where it orients or confirms |
| Empty list says nothing | Character, Calm | Write a specific empty state with one next action |
| Tiny tap targets, no keyboard path | Thumb ergonomics, keyboard-first | Enlarge hit areas, check tab order |

## Common Mistakes

- **Adding polish before fixing structure.** Fix spacing, hierarchy, and states first. Shadows and animation come last.
- **Using the principles as decoration.** Cite a principle only where it changes a decision.
- **Taking one designer as the rule.** Several of these philosophies pull against each other (for example, restraint vs. expressive character). Name the trade-off.
- **Over-animating in the name of "delight".** Delight that slows the task is not delight.
- **Reviewing without rendering.** Layout and motion problems do not show in code alone when the app can run.
