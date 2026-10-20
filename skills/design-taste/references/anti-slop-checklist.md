# Anti-Slop Checklist

Use during review. Each item is observable in code or on screen. Report only the items that fail, with `file:line`, severity, the item ID, and the fix.

## S. Structure
- [ ] S1 Every element has a clear job; removing any one would be noticed by someone doing the task
- [ ] S2 One grid system is used; alignment edges line up across sections
- [ ] S3 Spacing values come from one scale: the project's if it has one, else `tokens.md` (no one-off values like 13px, 22px)
- [ ] S4 Vertical rhythm is consistent between sections
- [ ] S5 Cards are used only when grouping is needed; not every item is a card
- [ ] S6 Sections are in task order; destructive actions come last and look different
- [ ] S7 Grid rows do not stretch short items to the tallest (`align-items: start`, or a single column)

## T. Typography
- [ ] T1 Hierarchy is readable with color removed (size, weight, spacing carry it)
- [ ] T2 Type scale has a small set of steps (4–5, or the project's scale); each has a role
- [ ] T3 Prose measure is roughly 45–75 characters (prose only; skip for forms, tables, and lists)
- [ ] T4 Numbers in tables and data use tabular figures
- [ ] T5 Font count is 1–2 families, chosen on purpose and actually loaded, not default-and-forgotten
- [ ] T6 Sizes are in `rem`, so user font scaling works
- [ ] T7 No text is clipped, transparent-filled, or gradient-filled in a way that can hide it

## C. Color and surface
- [ ] C1 Palette is small: neutrals plus one or two accents with clear meaning
- [ ] C2 Text contrast meets WCAG AA (4.5:1; 3:1 for text 24px, or 19px bold, and larger)
- [ ] C3 Interactive boundaries (input borders, off-state toggles, icons) meet 3:1 against their background
- [ ] C4 Contrast is measured at the worst point: the lightest gradient stop, the lowest animated opacity, the composited color of any `rgba`
- [ ] C5 No decorative gradient or blob backgrounds without a content reason
- [ ] C6 Shadows are used for elevation only, and lightly; borders or spacing are tried first
- [ ] C7 Dark mode is designed, not inverted

## I. Interaction
- [ ] I1 Every control has: default, hover, `:focus-visible`, active, disabled
- [ ] I2 Controls are native elements (`button`, `input`, `a`). On/off controls default to `<input type="checkbox" role="switch">` with a `<label>`; use `<button role="switch" aria-checked>` when the control is not a form field (a toolbar toggle, a preference that saves on change). Either way, state is exposed through `aria-checked` or `checked`
- [ ] I3 Every input has a visible label; placeholder is not the label
- [ ] I4 Every control does something observable; no controls for features that do not exist
- [ ] I5 Async controls have loading state; forms have error state with a next step
- [ ] I6 Destructive actions have an undo, or a confirmation step that names the consequence. Irreversible actions always need the confirmation
- [ ] I7 Empty states say what this area is for and offer one next action
- [ ] I8 Keyboard path exists for every primary action; tab order matches visual order
- [ ] I9 Touch targets are at least 44px on touch devices

## M. Mobile and responsive
- [ ] M1 No horizontal overflow at 320px wide
- [ ] M2 Primary action, if the page has one, is in the lower half of the first viewport on a 375×812 phone, or in a sticky bottom bar
- [ ] M3 Inputs are at least 16px, so iOS does not zoom on focus
- [ ] M4 Hover-only affordances have a touch equivalent; hover effects are inside `@media (hover: hover)`
- [ ] M5 Fixed or sticky bars and page edges respect `env(safe-area-inset-*)`
- [ ] M6 Full-height layouts use `100dvh`, not `100vh`
- [ ] M7 Layout survives long text: `min-width: 0` on flex children, `minmax(0, 1fr)` in grids, wrapping or truncation chosen on purpose
- [ ] M8 Images have width and height or `aspect-ratio`, so nothing shifts on load
- [ ] M9 Breakpoints sit where the content breaks, not at device names

## A. Motion
- [ ] A1 Each animation communicates feedback, orientation, or continuity
- [ ] A2 Durations are short (roughly 100–300ms for UI feedback)
- [ ] A3 Only `transform`, `opacity`, `background-color`, and `border-color` are transitioned; no layout properties; no `transition: all`
- [ ] A4 No animation on high-frequency repeated actions (typing, list scrolling, menus)
- [ ] A5 `prefers-reduced-motion` removes decorative motion and keeps state-change feedback short
- [ ] A6 Nothing loops decoratively

## W. Copy
- [ ] W1 Labels are specific ("Save draft") rather than generic ("Submit", "Get started now!")
- [ ] W2 Errors say what happened and what to do
- [ ] W3 No filler headlines, no emoji as decoration anywhere (including as heading icons), no marketing voice in a utility UI
- [ ] W4 Defaults favor the user (marketing email off, not on)

## V. Verification
- [ ] V1 Viewed at 320px, 375px, and 1280px
- [ ] V2 Checked with keyboard only. By inspection this means: every control is a focusable element in the DOM, and a `:focus-visible` style exists and is not overridden by `outline: none`
- [ ] V3 Checked in light and dark mode if both exist
- [ ] V4 Checked with reduced motion on
- [ ] V5 Contrast measured, not guessed, for text and boundaries. If the page cannot be rendered, compute from the CSS values and say the result is computed, not observed
