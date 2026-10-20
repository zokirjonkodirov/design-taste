# Expected findings for `fixture-settings.html`

A review with the skill must report all of these. Line numbers are approximate; the problem is what matters.

## Blocking
- Toggles are `div.switch`: not focusable, no `role="switch"`, no `aria-checked`, labels not associated
- `outline: none` on inputs and buttons, no `:focus-visible` replacement
- Switch 36×18px, rows and buttons under 44px
- "NEW" badge text invisible (inherits `-webkit-text-fill-color: transparent` from the gradient heading)
- Save posts with no body, no loading, no success or error state; Delete has no handler and no confirmation
- Inputs have placeholder-only labels

## High
- Title and badge animate forever (`infinite`)
- Streak card and "Don't break the chain!" is an engagement loop in Settings
- Full-page gradient, gradient headings, heavy shadows on every card, hover lift and scale on non-clickable cards
- Hover transform sticks on touch; no `@media (hover: hover)`
- Six equal cards in `auto-fit` grid: Danger Zone at the same rank as Profile; stretched empty cards on desktop

## Medium
- Contrast: `#888` on white ≈3.5:1, `#aaa` ≈2.3:1, footer text on gradient, white on `#667eea`
- Boundaries: `#ccc` off-state switch and `#ddd` input border under 3:1
- Spacing values 9, 11, 13, 18, 22, 25, 37, 45px: no scale
- Five radii (16, 9, 8, 25, 10)
- Nine type sizes; 13px inputs trigger iOS zoom; 10px badge
- Fonts declared but never loaded
- Emoji in every heading; marketing subtitle; "Made with ❤️" footer
- "Submit" label; empty state with no action
- Dark mode and Animations toggles do nothing
- Marketing emails default on
- No `prefers-reduced-motion` rule
- `transition: all`
