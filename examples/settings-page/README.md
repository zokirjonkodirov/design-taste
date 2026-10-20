# Example: settings page, with and without the skill

Same prompt, same model, same session day. One agent had no skill. One was told to read `skills/design-taste/SKILL.md` and follow it. Neither saw the other's output. Nothing was edited afterwards.

Prompt given to both:

> Build a settings page for a task-management web app as one self-contained HTML file (inline CSS and JS, no external assets). Requirements: a profile section (display name, email, save), a notifications section with four toggles, an appearance section (theme choice), an integrations section that is currently empty, and a danger zone with account deletion. It must work on phones and desktops. Make it look good.

Open `compare.html` for the side-by-side, or the two pages directly:

- `without-skill.html`
- `with-skill.html`

Screenshots are light mode, Chrome, 375×812 (2x) and 1280 wide.

| Without skill | With skill |
|---|---|
| <img src="without-skill-phone.png" width="375" alt="Settings page built without the skill, phone width"> | <img src="with-skill-phone.png" width="375" alt="Settings page built with the skill, phone width"> |

| Without skill, desktop | With skill, desktop |
|---|---|
| <img src="without-skill-desktop.png" alt="Without skill, 1280 wide"> | <img src="with-skill-desktop.png" alt="With skill, 1280 wide"> |

## What differs

Both pages are competent. Both have labelled inputs, real switches with ARIA state, focus rings, a confirmed delete step, a dark theme, and a `prefers-reduced-motion` rule. The base model already knows this material. The difference is in what the skill forbids and what it forces.

| | Without skill | With skill |
|---|---|---|
| Grouping | Every section is a white card with border and shadow | Sections separated by hairlines; a box only where it carries meaning (empty state, danger zone) |
| Extra elements | Avatar with initials, sticky section nav, three theme preview tiles, planned-integration chips | None of these. One segmented control for theme |
| Spacing and type | Its own values, consistent within the page | The `tokens.md` scale verbatim, 4px base, fluid type |
| Hover and press | Transitions on most controls | Only on controls, named properties, 120–200ms |
| Verification | Agent did not render the page | Agent rendered at 375px and 1280px, light and dark, error state, dialog, and reported it |
| Agent's own report | 10 decisions, no sources | 10 decisions, each tied to a checklist item or a Checked designer |

Which one is "better" is partly taste. The skill's version is quieter and every choice is traceable. The no-skill version has more product polish and more elements to maintain. The skill did not make the page correct; it made it restrained, consistent with one scale, and verified.

## A defect the skill version has and the other does not

The with-skill page scrolls 18px sideways on a 375px phone. Its three visually-hidden theme radio inputs use `position: absolute` with no offset and no positioned ancestor, so they land at x=393 and widen the document. The body stays 375px wide, which is why the agent's own check ("no horizontal overflow") passed: it measured the body, not the document. That is checklist item M1 failing on the page that was supposed to pass it.

The page is kept as generated. The checklist was changed instead: M1 now says to measure `document.documentElement.scrollWidth`. The no-skill page does not have this problem; its horizontal nav strip scrolls inside its own container and the document stays 375px.

## Reproduce

See `tests/README.md`. The implement test there is this exact prompt.
