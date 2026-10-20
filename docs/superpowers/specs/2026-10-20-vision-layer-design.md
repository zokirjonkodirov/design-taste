# design-taste 0.4.0: the vision layer

Date: 2026-10-20. Status: approved in chat by the project owner.

## Intent

The skill today is a floor: token scales, 44px targets, contrast ratios, a checklist. An agent following it produces a correct, restrained page. It does not produce a *better* page, because it never asks what the screen is for. The owner's own app (Kurs, a currency app for Uzbekistan) was redesigned using the designers' ideas directly, and the difference was large. The skill must carry what made that difference: an expert who asks the right questions and sets priorities, not a doer who applies rules.

## Goals

1. **A vision layer that leads the skill.** New `references/vision.md`, read first in every mode. Each principle is operational: a question the agent asks, a move it makes, and a before/after instance from Kurs. Principles, all taken from the Kurs redesign and its sources:
   - One question per screen; one object answers it; every other number is a comparison against it.
   - Comparison in the user's unit ("1 500 less" and a bar, not "−1 500").
   - Decide for the user when the data allows ("not worth going unless over 378 USD").
   - Five chairs: the person doing the task, the typographer, the interaction designer, the data designer, the founder. Review from each.
   - One vocabulary: one selected state, one meaning per color, trays for transient and screens for persistent, delta color judged from the user's side, units as words in sentences and codes in controls, one precision.
   - Say no ninety-nine times: every screen loses something; name what was removed.
   - Local voice is the brand.
   - Depth and motion carry meaning: blur means not interactive, frequency decides animation, press feedback.
   - Data honesty: a design review catches data bugs ("Spread 0", three branches at 4.1 km) and says so.
   - Delight scales with rarity.
2. **Modes start from the question.** Every mode's first step: name the user's question in one sentence, name the answer object, name the one action. Review runs the five chairs before the checklist and reports vision findings first. Suggest gives directions that answer the question differently. Implement builds the answer object before anything else.
3. **Roster correction.** Benji Taylor ("Family Values") and Andy Allen ("No more boring apps") return as Checked; both pages read in full on 2026-10-20. Rauno Freiberg gains "Designing depth"; Emil Kowalski gains "Developing taste" and "You don't need animations". Two Partial entries leave to keep 24: Rasmus Andersson and Paco Coursey (bios only, no principle on the page). Jason Yuan is not restored (no primary source).
4. **A test with a question in it.** New implement test: a rates screen for a currency app, with a fixed data file so both agents work from the same numbers. The settings page stays as the floor test. Both recorded in `tests/README.md`.
5. **Kurs as the worked example.** `examples/kurs/`: four before screenshots, the v3 after screenshots, and the prototype's captions and "five chairs" critique, credited to the project owner. The README leads with this example.
6. Version 0.4.0, CHANGELOG, re-run of the review test on the fixture (owed since 0.3.0).

## Non-goals

- Removing or shrinking the checklist. It stays as the floor.
- Redesigning Kurs further.
- Native iOS or Android token sets.
- Keeping SKILL.md under any word target at the cost of the vision layer. It may grow; the references carry the weight.

## Anti-goals

- `vision.md` as platitudes ("be bold", "have taste"). Every principle must have a question the agent can ask of a specific screen and a concrete move. If a principle has no Kurs instance, it does not go in.
- A vision finding that is not actionable. "No point of view" must come with what the point of view would be.
- Naming a Partial designer. Checked-only rule stands.

## Constraints

- Captions and critique text come from the owner's `kurs-redesign/index.html`, written with an AI in a prior session. Credit the project, not a designer.
- Screenshots are the owner's; permission given in chat on 2026-10-20.
- Sources named by the designers must be the ones in `sources.md`.

## Decided how

- `vision.md` is a reference file, not a second skill.
- Review output gains a top block, "What this screen is for", before the severity bands.
- The rates test prompt includes the data as JSON in `tests/fixture-rates.json`; the prompt tells the agent the user's question ("I have 100 USD, where do I exchange it today?") so the test measures whether the agent *builds* the answer, not whether it guesses the question.

## Builder decisions (after the builder check)

- Vision principles carry IDs Q1–Q10 inside `vision.md` (Q for question; V is taken by the checklist's Verification section). A vision finding is `screen · Qn · what is wrong · the move`; no `file:line` required. Vision findings sit in a top block above the severity bands and do not enter the checklist.
- Principles are the project's own, credited to the Kurs redesign. Each names the Checked designers whose entries support it, and none where none does.
- Taylor: `benji.org/family-values`, first-person post on his own site, read in full. Allen: `notbor.ing/words/no-more-boring-apps`, signed Andy, founder of Not Boring, co-founder of FiftyThree, read in full. Both Checked; bylines recorded in `sources.md`.
- The `after` captures are the owner's shipped app (Today and History from the current build; bank tray and map from the previous round). The prototype HTML is not rendered.
- Every mode reads `vision.md` first; SKILL.md's overview leads with the question.
- The rates fixture is invented data seeded on purpose: one bank best but far, one close and slightly worse, one data inconsistency (best buy equals best sell), one closed bank, one branch with a distance that cannot be right.

## Left to the builder

- Exact wording of `vision.md`.
- Which captions from the prototype to quote, and how many.
- Whether the Kurs "after" captures come from the prototype HTML or the owner's app screenshots (owner's app screenshots preferred; they are the shipped result).
