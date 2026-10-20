# Vision

Read this before any mode. The checklist is the floor: it makes a screen correct. This file is what makes a screen good. Every principle here has a question you ask of a specific screen, a move you make, and an instance from one real redesign: Kurs, a currency app for Uzbekistan (`examples/kurs/`). Before and after used the same data and the same four screens.

The Kurs instances show one solution to one app. They are there so each principle is concrete, not so you reproduce them. Find the question of the screen in front of you.

## Start here: three sentences before any token

Write these first, in your working notes, and repeat them at the top of your final reply. Do it before you read code, open a design file, or pick a color.

1. **The question.** What did the user open this screen to find out, in their words. *"What will I get for my dollars, and where?"*
2. **The answer object.** The one thing on the screen that answers it, readable from across the room. *"1 201 500 so'm. Universal bank, 1 km."*
3. **The one action.** What they do next. *"Directions."*

Everything else on the screen is evidence for the answer or a comparison against it. Anything that is neither is a candidate for removal.

If you cannot write sentence 1, stop and ask the user. Do not design a screen whose question you do not know. If the screen has no question (a settings page, a list of records), say so, skip Q1–Q3, and still sit in the five chairs (Q4): they catch what the checklist has no item for.

## The principles

### Q1 One question, one object
- Ask: can the answer be read from across the room, and is the "where" part of the same object as the "what"?
- Move: make the answer one object: amount, result, place, state. Set every other element smaller, greyer, or lower.
- Kurs: before, "what" was teal at 46px and "where" was grey 14px under it. After, one slip: direction, amount, result, best bank, open until, distance.
- Checked: Chimero (ordering tells the user what matters first), Nielsen (heuristic 8), Rams.

### Q2 Comparison in the user's unit
- Ask: does the user have to do arithmetic to use this number?
- Move: express every secondary number as its difference from the answer, in words the user would say, with a bar so the list is read, not parsed.
- Kurs: "−1 500" next to "1 203 500" is a subtraction in your head. "1 500 less" plus a short rose bar is a comparison you see. Sort by it.
- Checked: Yablonski (cognitive load, Fitts), Nielsen (heuristic 6, recognition over recall).

### Q3 Decide for the user
- Ask: with this screen in hand, what calculation would the person do next? Can the screen do it?
- Move: do the calculation, state the result in one sentence, show the threshold at which it flips, and state the assumption inside the sentence ("taxi there and back", "walking under 2 km"). An unstated assumption is a wrong answer waiting to be found.
- Kurs: "Xalq Banki (7.2 km) gives 4 500 more. A taxi there and back is about 35 000 so'm. Not worth it. Worth it above 770 dollars." The rival in that sentence is the nearest bank among the equally good ones, and never a bank whose rate failed Q9.
- Checked: Case (the minimum needed to solve the problem), Nielsen (heuristic 1).

### Q4 Five chairs
Review the screen as five people. Each sees what the others miss.

| Chair | Their question |
|---|---|
| The person doing the task | Can I get my answer and act without reading twice? |
| The typographer | Do the numbers, labels, and body speak in different voices, and is hierarchy carried by size, weight, and space? |
| The interaction designer | Does every layer, motion, and press tell me where I am and what responds? |
| The data designer | Can all these numbers be true at once? What does the chart say that the number does not? |
| The founder | Could this screen belong to any app in any country? What is ours? |

- Kurs: the data chair found "Spread 0" (best buy equal to best sell cannot both be true) and three branches at "4.1 km" with one 600 km away. The founder chair found "UZS" where everyone says "so'm".
- Report chair findings before checklist findings, as `screen or component · chair · Qn · severity · what is wrong · the move`. Severity uses the same bands as the checklist.

### Q5 One vocabulary
- Ask: how many ways does this app say "selected", "best", "missing", and "changed"?
- Move: one way each. The rules that remove most inconsistencies:
  - One selected state across the app (Kurs had four: white pill, teal outline, ink fill, pill without track).
  - One meaning per accent color: the answer and the way to it. The pick, its bar, and the one action carry the accent. Nothing else does. Ten teal pins means teal no longer says "best". One teal pin, closed banks dashed, no legend.
  - Trays for transient actions, pushed screens for persistent ones. Settings are not a tray.
  - Delta color judged from the user's side: accent only when the change is good for them in the current mode, grey otherwise, and say it in a word ("cheaper").
  - Units as words in sentences ("dollar", "so'm") and codes in controls ("USD"). One precision everywhere except the tooltip.
  - A missing value is said where the value would be ("Distance unknown, turn on"), never as a banner.
  - Tiles in a row always have the same number of lines ("unchanged" when nothing changed).
- Checked: Taylor (trays and screens), Nielsen (heuristic 4), Frost (one system of parts).

### Q6 Say no ninety-nine times
- Ask: what did this screen lose? If nothing, it has not been designed yet.
- Move: list what you removed, or when building from nothing, what you refused to build. If the list is empty, go back.
- Kurs: the gold sparkline (a four-day line that moved 0.17% is a flat stroke; replaced by one sentence: "sell it straight back and you lose 11.4%"), the third branch, the brush chart under the main chart, the grey "updated 2 h ago", "All" as a tab label, the location banner, the second call to action for the same bank.
- Checked: Rams, Maeda, Kowalski (friction filters bad ideas).

### Q7 Local voice is the brand
- Ask: could this screen belong to any app in any country?
- Move: use the units, names, addresses, examples, and habits of the people who will use it. Say what the app knows.
- Kurs: "so'm" not "UZS". "Milliy bank" not "O'zbekiston Milliy banki". "Navoiy street 18A, Shayxontoxur" not "100011, Toshkent sh., Shayxontoxur tumani, ko'ch. Navoiy, 18A". The app knows people walk to the bank, so it shows distance and "open until", and the primary action is Directions.
- Checked: Allen (designing for everyone makes it special for no one), Chimero.

### Q8 Depth and motion carry meaning
- Ask: what does this layer or motion tell the user that they did not know?
- Move: blur and shrink the layer behind a tray so it reads as lower and not interactive. Start a transition where the user touched. Decide animation by frequency: a tab bar used hundreds of times a day does not animate; a tray opened a few times a day gets about 260ms. Press feedback at 3% scale, 120ms; tag it and state-change transitions `.motion-essential` so the reduced-motion block in `tokens.md` keeps them short instead of removing them. Spend delight where it is rare: first launch, saving a bank, a new high. Not the list.
- Kurs: the old sheet slid over a sharp, dimmed screen. The new tray blurs and pushes Today back, so you know where you are and that it does not respond.
- Checked: Freiberg (depth, invisible details), Kowalski (purpose, frequency, speed), Taylor (delight scales with rarity), Comeau.

### Q9 Data honesty
- Ask: can these numbers all be true at once? Is any number on this screen the same quantity shown at two precisions?
- Move: name the bug, say what the correct display would be, and refuse to design around it. A design review that finds a data error reports it as Blocking. When building: a rate that cannot be true keeps its row, shows the number, and says why it is excluded where the value would be, and it never serves as the answer or the rival. A value that cannot be right (a 600 km branch at "1 km") is shown as unknown with the reason, not as the wrong number. Never drop anything silently.
- Kurs: "Spread 0". Three branches all "4.1 km". Hero "12 055.90" beside list "12 050" reads as two sources. "Updated 2 h ago" said the app was asleep; "Rates at 13:34" is a fact and a live dot says someone is awake.
- Checked: Nielsen (heuristic 1), Butterick (choices have consequences).

### Q10 Numbers are typography
- Ask: do numbers, titles, labels, and body speak in different voices, or is hierarchy only size?
- Move: one display face for numbers and titles, one text face for everything else. When fonts cannot be shipped, make the two voices with weight and letter-spacing on the system stack. Tabular figures in every column. The unit sits at the baseline, in words, close enough to read as one phrase. Group thousands with a narrow no-break space (U+202F), never a thin space (U+2009), which breaks lines. If the display face renders U+202F too narrow to see at display size, use U+00A0.
- Kurs: Roboto at nine sizes, one voice. After: two faces, five sizes. "UZS" floating at 40% size in grey became "so'm" at the baseline.
- Checked: Butterick, Spiekermann.

## How this shows up in each mode

**Review.** The report opens with a block titled "What this screen is for": the three sentences (or the statement that the screen has none), then chair findings as `screen or component · chair · Qn · severity · what is wrong · the move`. Then the checklist findings in severity bands. A vision finding is Blocking when the answer object is missing, the data cannot be true, or the user's own current values are not shown; High otherwise.

**Suggest.** Each direction answers the question with a different object, comparison, or action. Say what each direction loses (Q6).

**Implement.** Build the answer object first and check it at 320px before adding anything else. Then the evidence line under it. Then the comparisons. Then the action, in thumb reach. Then everything else, and only what survived Q6. Your reply lists what you refused to build.

Two patterns that the rules above do not settle on their own:
- When the object, its decision sentence, and the action cannot all fit the first phone viewport, the action goes in a sticky bottom bar and the object keeps the viewport.
- Secondary items (other banks, other options) are selectable: selecting one moves the answer object to it. They do not each carry their own action. The one action stays one.

## Common mistakes

- Writing the three sentences and then building a dashboard anyway. The object must dominate the first viewport.
- Treating "point of view" as a color choice. Voice is in the words, units, and what the app knows about its users.
- Reporting vision findings as taste. Each one names a chair, a Q, and a move.
