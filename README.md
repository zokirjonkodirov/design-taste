# design-taste

An agent skill for reviewing, suggesting, and implementing web and mobile UI with more craft and less default output. It is aimed at generic generated UI: boilerplate cards, arbitrary spacing, decorative gradients, missing interaction states, and desktop layouts shrunk onto phones.

The guidance is **inspired by** public work from 24 designers. It was written by an AI and is **not endorsed by any of them**. Each entry is marked **Checked** or **Partial** according to what the designer's own page supported. See [NOTICE.md](NOTICE.md).

## Example

Same prompt, same model. The left agent had no skill. The right agent read `SKILL.md`. Nothing was edited afterwards.

| Without skill | With skill |
|:---:|:---:|
| <img src="examples/settings-page/without-skill-phone.png" width="320" alt="Settings page built without the skill, phone width: sticky section nav, avatar, every section in a shadowed card, theme preview tiles"> | <img src="examples/settings-page/with-skill-phone.png" width="320" alt="Settings page built with the skill, phone width: no cards, hairline dividers, full-width inputs, segmented theme control, dashed empty state"> |

| Without skill, 1280 wide | With skill, 1280 wide |
|:---:|:---:|
| <img src="examples/settings-page/without-skill-desktop.png" alt="Without skill at desktop width"> | <img src="examples/settings-page/with-skill-desktop.png" alt="With skill at desktop width"> |

Both pages are competent. The skill's version is quieter, uses one token scale, and was verified by rendering. It also has an 18px horizontal overflow on phones that the agent's own check missed; it is kept as generated and documented. Prompt, source files, and the full diff table are in [`examples/settings-page/`](examples/settings-page/).

## What's inside

```
design-taste/
  skills/design-taste/SKILL.md          entry point: modes, core rules, quick reference
  skills/design-taste/references/
    philosophy.md                       one entry per designer, with status and a problem → entry table
    anti-slop-checklist.md              observable checks for review, including mobile and responsive
    tokens.md                           starter CSS tokens (spacing, type, color, motion, touch, a11y) + Tailwind map
    sources.md                          links, what each page showed, and removed entries
  tests/                                fixture, expected findings, and how to re-run the with/without test
  examples/settings-page/               with/without pages, captures, and a side-by-side compare.html
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
bash scripts/install.sh              # user-level: ~/.claude/skills/
bash scripts/install.sh --project    # project-level: ./.claude/skills/
```

To update, run `git pull` and re-run the script.

## Use

- **Review:** critique existing screens or components against the checklist. Findings come back as `file:line · severity · principle · fix`, Blocking first.
- **Suggest:** offer 2–3 directions, each tied to a named principle and its trade-off
- **Implement:** build with the token scale, phone first, with complete interaction states, then verify at 375px and 1280px

If the project has its own design system, the project wins on conflicts.

## Who is in it

| Area | Designers |
|---|---|
| Restraint and utility | Rams, Maeda, Reichenstein, Butterick, Case |
| Structure and system | Vinh, Spiekermann, Andersson, Frost, Shadeed |
| Usability and access | Nielsen, Norman, Yablonski, Pickering |
| Mobile and responsive | Wroblewski, Clark, Marcotte |
| Craft and feedback | Kowalski, Freiberg, Comeau, Coursey |
| Character | Chimero, van Schneider, Appleton |

18 of 24 entries are **Checked** against the designer's own text. Removed entries and the reason for each are listed in `sources.md`.

## Reliability

- Only **Checked** entries are cited by name in reviews. **Partial** entries are prompts, not positions.
- The skill is tested by running the same task with and without it and comparing (see `tests/`). Each release records the result in `CHANGELOG.md`.
- Dead or redirected sources are listed in `sources.md` rather than hidden.

## Contributing

Pull requests welcome, especially:

- Corrections, with a link to the designer's own page or statement. A correction that cites the source can raise an entry to **Checked**.
- Observable checklist items (something you can see in code or on screen).
- Token sets for other stacks (native iOS and Android).

Keep entries as paraphrases, and keep each principle tied to a review question.

## Removal

Any named designer can ask for their entry to be removed or corrected. See [NOTICE.md](NOTICE.md).

## License

MIT. See [LICENSE](LICENSE). The designers' own work is not covered by this license.
