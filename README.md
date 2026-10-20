# design-taste

An agent skill for reviewing, suggesting, and implementing UI with more craft and less default output. It is aimed at generic generated UI: boilerplate cards, arbitrary spacing, decorative gradients, and missing interaction states.

The guidance is **inspired by** public work from 24 designers. It was written by an AI and is **not endorsed by any of them**. Each entry is marked **Checked**, **Partial**, or **Unverified** according to what the designer's own page supported. See [NOTICE.md](NOTICE.md).

## What's inside

```
design-taste/
  skills/design-taste/SKILL.md          entry point: modes, core rules, quick reference
  skills/design-taste/references/
    philosophy.md                       one entry per designer, with status
    anti-slop-checklist.md              observable checks for review
    tokens.md                           starter CSS tokens (spacing, type, color, motion, a11y)
    sources.md                          links and what each page showed
  .claude-plugin/                       plugin and marketplace manifests
  scripts/install.sh                    copy-install script
  NOTICE.md                             not-endorsed statement and removal policy
  CHANGELOG.md
  LICENSE                               MIT
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

Restart Claude Code after updating.

### Option 2: Install script

```bash
git clone https://github.com/zokirjonkodirov/design-taste.git
cd design-taste
scripts/install.sh              # user-level: ~/.claude/skills/
scripts/install.sh --project    # project-level: ./.claude/skills/
```

To update, run `git pull` and re-run the script.

## Use

- **Review:** critique existing screens or components against the checklist
- **Suggest:** offer 2–3 directions, each tied to a named principle and its trade-off
- **Implement:** build with the token scale and complete interaction states

If the project has its own design system, the project wins on conflicts.

## Reliability

- Prefer entries marked **Checked**. Treat **Unverified** entries as prompts, not as designers' positions.
- Each release records which pages were re-checked, in `CHANGELOG.md`.
- Dead or redirected sources are listed in `sources.md` rather than hidden.

## Contributing

Pull requests welcome, especially:

- Corrections, with a link to the designer's own page or statement. A correction that cites the source can raise an entry to **Checked**.
- Working sources for **Unverified** entries.
- Observable checklist items (something you can see in code or on screen).
- Token sets for other stacks (Tailwind, native mobile).

Keep entries as paraphrases, and keep each principle tied to a review question.

## Removal

Any named designer can ask for their entry to be removed or corrected. See [NOTICE.md](NOTICE.md).

## License

MIT. See [LICENSE](LICENSE). The designers' own work is not covered by this license.
