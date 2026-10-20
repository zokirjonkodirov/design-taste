# design-taste

An agent skill for reviewing, suggesting, and implementing UI with taste. It is built to counter default generated "AI slop" UI: generic cards, arbitrary spacing, decorative gradients, and missing interaction states.

The guidance is distilled from 24 practitioners' published design philosophies. Each principle is paraphrased, attributed, and linked to its source.

## What's inside

```
design-taste/
  skills/design-taste/SKILL.md     entry point: modes, core rules, quick reference
  skills/design-taste/references/
    philosophy.md                  one entry per designer: principle, practice, review question
    anti-slop-checklist.md         observable checks for review
    tokens.md                      starter CSS tokens (spacing, type, color, motion, a11y)
    sources.md                     links and attribution
  LICENSE                          MIT
```

## Install

### Option 1: Claude Code plugin (recommended, supports updates)

In Claude Code:

```
/plugin marketplace add zokirjonkodirov/design-taste
/plugin install design-taste@design-taste
```

Update later with:

```
/plugin marketplace update design-taste
/plugin update design-taste
```

### Option 2: Install script

```bash
git clone https://github.com/zokirjonkodirov/design-taste.git
cd design-taste
scripts/install.sh              # user-level: ~/.claude/skills/
scripts/install.sh --project    # project-level: ./.claude/skills/
```

To update, run `git pull` and re-run the script.

## Use

Invoke when working on UI. Modes:

- **Review:** critique existing screens or components against the checklist
- **Suggest:** offer 2–3 directions, each tied to a named principle
- **Implement:** build with the token scale and complete interaction states

If the project has its own design system, the project wins on conflicts.

## Open-source notes

- Designers' work is paraphrased, not quoted. Check `references/sources.md` before quoting directly.
- The one-line summaries that seed `philosophy.md` were written from notes and should be verified against each designer's own writing.
- Several philosophies pull in different directions (restraint vs. expressive character). The skill asks for the trade-off to be named rather than resolved by default.

## Contributing

Pull requests welcome, especially:

- Corrections to a designer's paraphrased position, with a link to the source
- Additional checklist items that are observable in code or on screen
- Token sets for other stacks (Tailwind, native mobile)

Please keep entries paraphrased, and keep each principle tied to a review question.
