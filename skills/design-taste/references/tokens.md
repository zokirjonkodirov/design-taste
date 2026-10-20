# Starter Tokens

A neutral starting point, written from scratch. If the project already has tokens, map to them and do not add a second system.

```css
:root {
  /* Spacing: 4px base, use only these steps */
  --space-1: 0.25rem;  /* 4px */
  --space-2: 0.5rem;   /* 8px */
  --space-3: 0.75rem;  /* 12px */
  --space-4: 1rem;     /* 16px */
  --space-6: 1.5rem;   /* 24px */
  --space-8: 2rem;     /* 32px */
  --space-12: 3rem;    /* 48px */
  --space-16: 4rem;    /* 64px */

  /* Type: fluid scale, body 16px minimum */
  --text-sm: clamp(0.875rem, 0.85rem + 0.1vw, 0.9375rem);
  --text-base: clamp(1rem, 0.96rem + 0.15vw, 1.0625rem);
  --text-lg: clamp(1.125rem, 1.05rem + 0.35vw, 1.3125rem);
  --text-xl: clamp(1.375rem, 1.2rem + 0.8vw, 1.75rem);
  --text-2xl: clamp(1.75rem, 1.4rem + 1.5vw, 2.5rem);
  --leading-body: 1.55;
  --leading-tight: 1.2;
  --measure: 65ch;

  /* Radius: two steps, not one for everything */
  --radius-sm: 4px;
  --radius-md: 8px;

  /* Color: neutrals plus one accent; define meaning, not just hue.
     --color-border is for dividers (low contrast on purpose).
     --color-border-strong is for control boundaries and meets 3:1. */
  --color-bg: #fafaf9;
  --color-surface: #ffffff;
  --color-surface-hover: #f3f3f1;
  --color-text: #1c1c1a;
  --color-text-muted: #5f5f5a;
  --color-border: #e4e4e0;
  --color-border-strong: #767676;
  --color-accent: #2f5bd3;
  --color-accent-hover: #2749b0;
  --color-accent-text: #ffffff;
  --color-danger: #b42318;
  --color-danger-border: #e3b4ae; /* section container only; invalid inputs use --color-danger */
  --color-focus: #2f5bd3;

  /* Motion */
  --duration-fast: 120ms;
  --duration-base: 200ms;
  --ease-out: cubic-bezier(0.2, 0.7, 0.2, 1);

  /* Touch */
  --target-min: 44px;
}

@media (prefers-color-scheme: dark) {
  :root:not([data-theme="light"]) {
    --color-bg: #121211;
    --color-surface: #1b1b19;
    --color-surface-hover: #232321;
    --color-text: #ededea;
    --color-text-muted: #a3a39c;
    --color-border: #2c2c29;
    --color-border-strong: #7a7a74;
    --color-accent: #7b9cff;
    --color-accent-hover: #93aeff;
    --color-accent-text: #0d0d0c;
    --color-danger: #ff8a80;
    --color-danger-border: #5a2a26;
    --color-focus: #7b9cff;
  }
}

:root[data-theme="dark"] {
  --color-bg: #121211;
  --color-surface: #1b1b19;
  --color-surface-hover: #232321;
  --color-text: #ededea;
  --color-text-muted: #a3a39c;
  --color-border: #2c2c29;
  --color-border-strong: #7a7a74;
  --color-accent: #7b9cff;
  --color-accent-hover: #93aeff;
  --color-accent-text: #0d0d0c;
  --color-danger: #ff8a80;
  --color-danger-border: #5a2a26;
  --color-focus: #7b9cff;
}

body {
  background: var(--color-bg);
  color: var(--color-text);
  font-size: var(--text-base);
  line-height: var(--leading-body);
  /* Keep content clear of notches and home indicators */
  padding-inline: max(var(--space-4), env(safe-area-inset-left)) max(var(--space-4), env(safe-area-inset-right));
}

/* hidden must win over any display rule on a class */
[hidden] { display: none !important; }

/* Controls: minimum size, 16px inputs so iOS does not zoom */
button, input, select, textarea {
  font: inherit;
  min-height: var(--target-min);
}
input, select, textarea {
  font-size: max(1rem, var(--text-base));
  border: 1px solid var(--color-border-strong);
}

/* Focus: visible, consistent, never removed */
:focus-visible {
  outline: 2px solid var(--color-focus);
  outline-offset: 2px;
}
input:focus-visible, select:focus-visible, textarea:focus-visible {
  outline-offset: 0; /* avoids a double ring on bordered fields */
}

/* Hover only where a pointer can hover */
@media (hover: hover) {
  button:hover { background: var(--color-surface-hover); }
}

/* Sticky bottom actions on phones */
.bottom-bar {
  position: sticky;
  bottom: 0;
  padding-bottom: max(var(--space-4), env(safe-area-inset-bottom));
}

/* Motion: respect user preference.
   Removes decorative motion. Add .motion-essential to state-change
   feedback (a switch knob, a dialog fade) to keep it, shortened. */
@media (prefers-reduced-motion: reduce) {
  *:not(.motion-essential), *::before, *::after {
    animation-duration: 0.01ms !important;
    animation-iteration-count: 1 !important;
    transition-duration: 0.01ms !important;
    scroll-behavior: auto !important;
  }
  .motion-essential {
    transition-duration: var(--duration-fast) !important;
    animation-duration: var(--duration-fast) !important;
  }
}
```

## Notes

- Hex values are placeholders. Replace with the brand or with values checked for contrast. `--color-border-strong` is set to meet 3:1 on the surface color; re-check after changing either.
- Keep the spacing scale closed. Adding a step means a deliberate decision, not a one-off.
- Use `100dvh`, not `100vh`, for full-height layouts on phones.
- Transition only `transform`, `opacity`, `background-color`, and `border-color`. Never `transition: all`.

## Tailwind mapping

| Token | Tailwind |
|---|---|
| `--space-1 … --space-16` | `1, 2, 3, 4, 6, 8, 12, 16` (same 4px base) |
| `--text-sm … --text-2xl` | `text-sm, text-base, text-lg, text-xl, text-2xl` (not fluid; add `clamp` via `theme.extend.fontSize` if wanted) |
| `--radius-sm`, `--radius-md` | `rounded`, `rounded-lg` |
| `--target-min` | `min-h-11` |
| `:focus-visible` ring | `focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-[--color-focus]` |
| reduced motion | `motion-reduce:transition-none motion-reduce:animate-none` |
| hover gate | `[@media(hover:hover)]:hover:bg-…` or `hover:` with `hoverOnlyWhenSupported: true` in config |
