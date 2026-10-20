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

  /* Color: neutrals plus one accent; define meaning, not just hue */
  --color-bg: #fafaf9;
  --color-surface: #ffffff;
  --color-text: #1c1c1a;
  --color-text-muted: #5f5f5a;
  --color-border: #e4e4e0;
  --color-accent: #2f5bd3;
  --color-accent-text: #ffffff;
  --color-danger: #b42318;
  --color-focus: #2f5bd3;

  /* Motion */
  --duration-fast: 120ms;
  --duration-base: 200ms;
  --ease-out: cubic-bezier(0.2, 0.7, 0.2, 1);
}

@media (prefers-color-scheme: dark) {
  :root:not([data-theme="light"]) {
    --color-bg: #121211;
    --color-surface: #1b1b19;
    --color-text: #ededea;
    --color-text-muted: #a3a39c;
    --color-border: #2c2c29;
    --color-accent: #7b9cff;
    --color-accent-text: #0d0d0c;
    --color-danger: #ff8a80;
    --color-focus: #7b9cff;
  }
}

:root[data-theme="dark"] {
  --color-bg: #121211;
  --color-surface: #1b1b19;
  --color-text: #ededea;
  --color-text-muted: #a3a39c;
  --color-border: #2c2c29;
  --color-accent: #7b9cff;
  --color-accent-text: #0d0d0c;
  --color-danger: #ff8a80;
  --color-focus: #7b9cff;
}

body {
  background: var(--color-bg);
  color: var(--color-text);
  font-size: var(--text-base);
  line-height: var(--leading-body);
}

/* Focus: visible, consistent, never removed */
:focus-visible {
  outline: 2px solid var(--color-focus);
  outline-offset: 2px;
}

/* Motion: respect user preference */
@media (prefers-reduced-motion: reduce) {
  *, *::before, *::after {
    animation-duration: 0.01ms !important;
    animation-iteration-count: 1 !important;
    transition-duration: 0.01ms !important;
    scroll-behavior: auto !important;
  }
}
```

## Notes

- Hex values are placeholders. Replace with the brand or with values checked for contrast.
- Keep the spacing scale closed. Adding a step means a deliberate decision, not a one-off.
- Interactive minimum target: 44px on touch (`min-height: 44px` on controls).
