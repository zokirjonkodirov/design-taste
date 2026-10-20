# Anti-Slop Checklist

Use during review. Each item is observable in code or on screen. Report only the items that fail, with `file:line` and the fix.

## Structure
- [ ] Every element has a clear job; removing any one would not be noticed by someone doing the task
- [ ] One column grid is used; alignment edges line up across sections
- [ ] Spacing values come from one scale (no one-off values like 13px, 22px)
- [ ] Vertical rhythm is consistent between sections
- [ ] Cards are used only when grouping is needed; not every item is a card

## Typography
- [ ] Hierarchy is readable with color removed (size, weight, spacing carry it)
- [ ] Type scale has a small set of steps; each has a role
- [ ] Body text measure is roughly 45–75 characters
- [ ] Numbers in tables and data use tabular figures
- [ ] Font count is 1–2 families, chosen on purpose, not default-and-forgotten

## Color and surface
- [ ] Palette is small: neutrals plus one or two accents with clear meaning
- [ ] Contrast meets WCAG AA for text and interactive boundaries
- [ ] No decorative gradient or blob backgrounds without a content reason
- [ ] Shadows are used for elevation only, and lightly; borders or spacing are tried first
- [ ] Dark mode is designed, not inverted

## Interaction
- [ ] Every control has: default, hover, `:focus-visible`, active, disabled
- [ ] Async controls have loading state; forms have error state with a next step
- [ ] Empty states say what this area is for and offer one next action
- [ ] Keyboard path exists for every primary action; tab order matches visual order
- [ ] Touch targets are at least 44px on touch devices

## Motion
- [ ] Each animation communicates feedback, orientation, or continuity
- [ ] Durations are short (roughly 100–300ms for UI feedback)
- [ ] No animation on high-frequency repeated actions (typing, list scrolling)
- [ ] `prefers-reduced-motion` reduces or removes non-essential motion
- [ ] Nothing loops decoratively

## Copy
- [ ] Labels are specific ("Save draft") rather than generic ("Submit", "Get started now!")
- [ ] Errors say what happened and what to do
- [ ] No filler headlines, emoji used as decoration, or marketing voice in a utility UI

## Verification
- [ ] Viewed at phone width and desktop width
- [ ] Checked with keyboard only
- [ ] Checked in light and dark mode if both exist
- [ ] Checked with reduced motion on
