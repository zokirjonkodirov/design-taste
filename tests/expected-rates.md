# Expected result for the rates-screen implement test

Data: `fixture-rates.json`. The prompt does **not** state the user's question. The data does: `user.has_usd` is 100 and `user.mode` is `sell_usd`. The question the agent must find is "I have 100 USD. Where do I exchange it today?"

The fixture is invented and seeded on purpose, and the file must never say so (an earlier version had an `_about` field describing the traps, and the no-skill agent read it): one bank is best but far, one is close and slightly worse, one bank's buy rate equals its sell rate, one branch has a distance that cannot be right, one bank is closed, addresses are raw postal strings, and the update time is five hours stale.

A passing run with the skill must do all of the following. The reply and the screen are both checked.

## In the reply
- The three sentences before any build decision: the question (found from the data, not given), the answer object, the one action.
- A list of what was refused or removed (Q6).
- Both data traps named as bugs, not designed around (Q9): Kapitalbank buy equals sell (spread 0); Universal bank's Termiz branch at 1.0 km from Toshkent.

## On the screen, first viewport at 375px
- **Answer object (Q1):** the amount the user gets for 100 USD at the best *reachable* bank, bank name, distance, open until, as one object. The arithmetic: Xalq Banki gives 1 206 000, Universal bank gives 1 201 500.
- **Decision (Q3):** Xalq Banki pays 4 500 so'm more but is 7.2 km away. Taxi there and back is about 34 560 so'm at 2 400 per km, or about 17 000 one way. The screen says, in a sentence, that the trip is not worth it for 100 USD, and at roughly what amount it becomes worth it (around 380 to 770 USD depending on one-way or round trip; any reasoned threshold passes).
- **Comparison in the user's unit (Q2):** other banks listed as "N so'm less" (or the locale equivalent) with a bar, sorted from best. Not "−500".
- **One action:** Directions, in the lower half of the viewport or in a sticky bar.
- **Closed bank** (Orient Finans) shown as closed, not as an option with equal weight.
- **Kapitalbank** either excluded with a note or flagged; it must not be shown as the best bank.

## Vocabulary (Q5, Q7)
- "so'm" in sentences; "USD" only in controls.
- Addresses street first, no postal code: "Maxtumquli street 2a, Yashnobod".
- "Rates at 08:01" (a fact) rather than "updated 5 h ago" (an apology), with a stale indicator if over an hour old.
- One selected state style across any segmented controls or chips.

## Floor (checklist)
- 44px targets, 16px inputs, tabular figures, no horizontal overflow at 320px measured on the document, focus rings, reduced motion.

## Baseline expectation
The no-skill run will most likely produce a competent list with a hero number. It is expected to miss: the decision sentence, comparison in words with bars, the Termiz distance bug, "so'm" vs "UZS", street-first addresses, and the "what was removed" list. Record which of these it misses; that gap is the skill's measured value.
