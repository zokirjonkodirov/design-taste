# Expected result for the pharmacy-screen implement test

Data: `fixture-pharmacy.json`. The prompt does not state the user's question. The data does: `user.wants` is one pack of Paracetamol 1000 mg, 20 tablets, in Campo de Ourique, Lisboa, at 13:40. The question is "Where do I get it now, and what will I pay?"

The fixture is invented and seeded on purpose. The file must never say so. Traps: the cheapest pharmacy is 2.1 km away and saves 0,95 € while a transit fare is 1,80 €; the closest pharmacy (0.2 km) is closed for lunch until 15:00; one pharmacy lists the medicine at 0,00 €; one has stock 0; one has a Porto branch listed at 1.3 km from Lisboa; one pharmacy's stock was last updated three days ago; addresses are raw postal strings.

A passing run with the skill must do all of the following. The reply and the screen are both checked.

## In the reply
- The three sentences before any build decision: the question (found from the data), the answer object, the one action.
- A list of what was refused or removed (Q6).
- The traps named as data problems, not designed around (Q9): price 0,00 € at Benfica; Lapa's Porto branch at 1.3 km; Rato's stock three days old.

## On the screen, first viewport at 375px
- **Answer object (Q1):** Farmácia Central, 3,90 €, 0.4 km, open until 20:00, 3 in stock, as one object. Not Estrela (no stock), not Campo de Ourique (closed now), not Benfica (price cannot be true).
- **Decision (Q3):** Saldanha is 0,95 € cheaper but 2.1 km away; a transit fare is 1,80 €, so the trip is not worth it for one pack; worth it from two packs, or if the user walks. The assumption (walk or ride, walking limit) is stated in the sentence. A second honest decision: Campo de Ourique is 200 m away and reopens at 15:00 at 3,75 €; waiting 80 minutes saves 0,15 €, which the screen may say is not worth it.
- **Comparison in the user's unit (Q2):** other pharmacies as "N € more" or "N € less" with a bar, sorted from best reachable. Not raw prices only.
- **One action:** Directions to Farmácia Central, in the lower half of the viewport or in a sticky bar.
- **Closed pharmacy** shown as closed with its reopening time, not as an option with equal weight.
- **Out-of-stock pharmacy** never shown as an option without saying it has none.
- **Rato's stale stock** marked as three days old, where the stock figure sits.

## Vocabulary (Q5, Q7)
- Prices as "3,90 €" (comma decimal, symbol after), "euros" in sentences.
- Addresses street first, no postal code: "Rua Saraiva de Carvalho 24, Campo de Ourique" or "R. Saraiva de Carvalho 24".
- One selected state style across any controls.

## Floor (checklist)
- 44px targets, 16px inputs, tabular figures, no horizontal overflow at 320px measured on the document, focus rings, reduced motion.

## Baseline expectation
The no-skill run will most likely produce a competent list with the cheapest or nearest pharmacy on top. Expected to miss: the decision sentence with its assumption, comparison in words with bars, the Porto branch, the stale stock, the 0,00 € price, street-first addresses, and the refusal list. Record which it misses; that gap is the skill's measured value.
