# What each designer's writing teaches you to do

One entry per designer. Each says what their own article or page teaches, as instructions you apply to the screen in front of you, then one question to ask of that screen. Entries are paraphrased by an AI from the source named in `sources.md`; nothing is quoted, and none of this is endorsed by the designer.

**Status** is one word. **Checked:** the source is the designer's own full text and supports every instruction. **Partial:** the source is a bio or summary; treat the instructions as the author's reading and never cite the designer by name in a finding.

Sources read on 2026-10-20. 24 entries: 20 Checked, 4 Partial.

`vision.md` is the layer above this file: it turns these into the questions you ask first. Read it first.

---

## Restraint and utility

### Dieter Rams · Good design
**Checked** · Vitsoe's page on his principles.
- Keep only what makes the product useful. Delete the rest.
- Make the thing honest: no element that promises a function it does not have.
- Choose what will still look right in ten years over what looks right this season.
- Treat thoroughness in the last detail as respect for the user.
- Ask: what breaks if this element is deleted?

### John Maeda · Laws of Simplicity
**Checked** · His laws page.
- Reduce thoughtfully: remove the obvious, then add back only what carries meaning.
- Organize so that many things feel like fewer things.
- Make waiting feel shorter by showing progress or doing something useful during it.
- Let one thing be complex so that the rest can be simple.
- Ask: what here exists only because it was easy to add?

### Oliver Reichenstein · Design that recedes
**Partial** · iA news page.
- Let the text be the interface. Remove anything that competes with reading.
- Treat simplicity as work, not as a style.
- Ask: could someone read this for ten minutes without strain?

### Matthew Butterick · Typography has consequences
**Checked** · *Practical Typography*, "Why typography matters".
- Treat every typographic choice as something that changes what the reader does; the Palm Beach butterfly ballot changed an election.
- Set the text so the reader engages, follows, and is persuaded; that is the job, not decoration.
- Check each choice against the reader's task, not against how it looks in a mockup.
- Ask: what does this typographic choice make the reader do, and was that intended?

### Amber Case · Calm technology
**Checked** · Calm Technology principles page.
- Demand the smallest possible amount of attention. Inform from the periphery; move to the center only when it matters.
- Design the failure: the thing should keep working, in a reduced way, when a part breaks.
- Use the minimum technology that solves the problem.
- Ask: does this interruption need the user's attention now, or can it wait at the edge?

---

## Structure and system

### Khoi Vinh · The grid as a tool
**Partial** · Own blog posts; book *Ordering Disorder*.
- Start from a grid, then break it on purpose where the content asks. He says he sizes by eye.
- Align edges across sections so the page reads as one thing.
- Ask: where does this element sit on the grid, and does that position do any work?

### Erik Spiekermann · Typography as infrastructure
**Checked** · His own site.
- Treat type as the signage of the product: its job is orientation, legibility, identity, in that order.
- Work inside the material's limits (screen, size, rendering) instead of pretending they are not there.
- Favor durable type structure over fashionable faces.
- Ask: does the typography help people find their way, or just look good?

### Brad Frost · Atomic design
**Checked** · "Atomic Web Design".
- Build the smallest parts first (a label, a button), then combine them, then compose screens from the combinations.
- Name and reuse parts; a one-off element on a screen is a part that should have been in the system.
- Keep the system coherent from the start by assembling, not by drawing pages and extracting parts later.
- Ask: is this element an existing part, or a one-off that should become one?

### Ahmad Shadeed · Defensive CSS
**Checked** · "Defensive CSS" and defensivecss.dev.
- Assume text will be longer, images the wrong ratio, counts different, and viewports short as well as narrow.
- Put `flex-wrap` on rows, `min-width: 0` on flex children, `minmax(0, 1fr)` in grids, `object-fit` on images, `overscroll-behavior` on modals, `scrollbar-gutter: stable` on scroll areas.
- Give every CSS variable a fallback and every background image a color behind it.
- Ask: what happens to this layout with a 40-character name, a missing image, or a 320px wide viewport?

---

## Usability and access

### Jakob Nielsen · Ten usability heuristics
**Checked** · The NN/g article.
- Show status for every async action (1). Speak the user's language (2). Give every action an exit (3). Keep words and positions consistent (4).
- Prevent errors before they happen (5). Show options rather than asking people to remember them (6). Give experts shortcuts (7).
- Leave out what is rarely needed (8). Write errors that name the problem and the fix (9). Keep help findable and task-shaped (10).
- Ask: which heuristic does this screen break, and what would the user see at that moment?

### Don Norman · Human-centered design
**Partial** · jnd.org.
- Design for people as they are, not as you wish they were.
- Make the complex understandable; do not simplify by hiding.
- Ask: would a first-time user guess what this does without help?

### Jon Yablonski · Laws of UX
**Checked** · lawsofux.com; authorship confirmed on his own site.
- Make targets big, close, and spaced (Fitts). Cut the number of choices on a screen (Hick).
- Match what users already know from other products (Jakob's law). Respond under about 400ms (Doherty).
- Group by spacing and bounds before adding boxes (proximity, common region). Chunk information (Miller).
- Accept that complexity only moves, it does not vanish; decide who carries it (Tesler).
- Ask: which law explains why this feels slow, confusing, or hard to hit?

### Heydon Pickering · Inclusive Components
**Checked** · The toggle button article.
- Build from the native element: a real `<button type="button">`, a real `<input>`.
- Set state explicitly: `aria-pressed="true"` or `"false"`, never absent. For on/off, `role="switch"` with `aria-checked`.
- Change the label or the state, not both: a button that says "Pause" and is also "pressed" is two messages.
- Test what a screen reader announces, because support is uneven.
- Ask: what does a keyboard or screen reader user get from this control, and is it what a mouse user gets?

---

## Mobile and responsive

### Luke Wroblewski · Mobile first
**Checked** · "Mobile First" (2009) and his site.
- Design the phone layout first; it forces you to decide what matters.
- Cut what the small screen cannot hold instead of hiding it.
- Use what the device has (location, touch) instead of what the desktop had.
- Prefer visible controls to dropdowns.
- Ask: what did the phone layout force out, and was it worth keeping on desktop?

### Josh Clark · Designing for touch
**Checked** · A List Apart excerpt from *Designing for Touch*.
- Design for the most constrained grip: one thumb on a large phone. About a third of the screen is easy to reach; the top always needs a stretch.
- Put the primary action and frequent controls in the lower half; put rare and destructive ones where they need a stretch.
- Make any target in a hard-to-reach zone bigger.
- On tablets, keep frequent controls near the sides, not the top and bottom edges.
- Ask: can the main action be hit with one thumb on the largest supported phone?

### Ethan Marcotte · Responsive web design
**Checked** · The A List Apart article.
- Build one layout that adapts, from fluid grids, flexible images, and media queries.
- Set breakpoints where the content breaks, not at device sizes.
- Enhance progressively: the simple layout works first, the wide layout adds.
- Ask: at which width does this layout break, and is that where the breakpoint sits?

---

## Craft and feedback

### Emil Kowalski · Taste, restraint, motion
**Checked** · His site; "Developing taste"; "You don't need animations".
- Pass every animation through three filters: purpose, frequency, speed. The more often it is seen, the less it should move. Keyboard-triggered actions get none. Under about 300ms.
- Use friction to filter bad ideas; do not settle for good enough.
- Train taste by studying the best work and asking why it works, then practicing with critique.
- Ask: would the user miss this animation if it were gone, and how often will they see it?

### Rauno Freiberg · Invisible details, depth as meaning
**Checked** · "Invisible Details of Interaction Design"; "Designing depth".
- Respond to a gesture immediately and mid-gesture; keep motion interruptible; let destructive actions wait for the gesture to end.
- Show where things come from: a transition starts where the user touched.
- Blur or dim the layer behind an overlay to push it back and say it no longer responds; keep a layer sharp to say it still does.
- Skip animation on high-frequency actions.
- Ask: does each layer and motion tell the user where they are and what responds?

### Josh W. Comeau · Motion that behaves
**Checked** · His CSS transitions article.
- Never `transition: all`. Name the property. Prefer `transform` and `opacity` over layout properties.
- Match easing to direction: ease-out entering, ease-in leaving. Give enter and exit different timings.
- Separate the hover trigger from the animated element so motion does not re-trigger itself.
- Disable transitions under `prefers-reduced-motion`.
- Ask: which property is being animated, and does its easing match what the element is doing?

### Benji Taylor · Family Values
**Checked** · "Family Values" on his own site.
- Use a tray for a short-lived action (confirm, pick, warn); it overlays the screen and keeps the user oriented. Use a full screen for anything that persists.
- Keep core functions visible and reveal the rest when relevant.
- Make transitions show where you are going and how you got there.
- Put delight where it is rare; keep frequent actions subtle. Polish the rarely used corners as carefully as the home screen.
- Ask: is this a transient action in a tray and a persistent one on a screen, and is delight placed where the user will not tire of it?

---

## Character and humanity

### Frank Chimero · Stories and voids
**Checked** · *The Shape of Design*, chapter 7.
- Order and pace what the user sees so that the sequence tells them what matters first.
- Leave gaps the user can fill; a design that explains everything leaves no room for them.
- Ask: does the order of screens tell the user what matters first, and leave room for them?

### Tobias van Schneider · A point of view
**Partial** · vanschneider.com.
- Make deliberate choices in tone, type, and color. A default nobody chose is not a choice.
- Ask: could this screen belong to any product? If yes, it has no character.

### Maggie Appleton · Tools as cultural practice
**Checked** · Her site.
- Prefer tools that push the user's thinking over tools that only flatter.
- Let users shape the tool; do not lock it into one way of working.
- Ask: does this tool challenge the user, or only please them?

### Andy Allen · Special for no one
**Checked** · "No more boring apps".
- Say what the app knows about its users in its words, units, and defaults. Designing for everyone makes it special for no one.
- Pick a point of view and keep it; small teams win by being distinctive on purpose.
- Treat software as a medium for expression, not only a tool that performs on metrics.
- Ask: could this screen belong to any app in any country? What here is ours?

---

## Lookup

Pick the two or three entries that match the problem. Names are Checked unless marked (P).

| Problem | Read first |
|---|---|
| Screen has no clear answer or point | `vision.md` Q1–Q3; Chimero, Nielsen (8), Case |
| Clutter, decoration, too many elements | Rams, Maeda, Nielsen (8) |
| Type, reading comfort, hierarchy, numbers | Butterick, Spiekermann, Reichenstein (P) |
| Spacing, grid, alignment, one-off values | Frost, Yablonski (proximity, common region), Vinh (P) |
| Layout breaks with real content or widths | Shadeed, Marcotte |
| Phone: reach, targets, one-handed use | Clark, Wroblewski, Yablonski (Fitts) |
| Controls, states, keyboard, screen reader | Pickering, Nielsen, Freiberg |
| Errors, feedback, status, confirmation | Nielsen (1, 3, 5, 9), Norman (P) |
| Tray or screen, disclosure, where delight goes | Taylor, Freiberg |
| Motion and depth | Kowalski, Freiberg, Comeau, Taylor |
| Notifications, badges, interruptions | Case, Nielsen (8) |
| Copy, tone, voice | Checklist W1–W5; Chimero for ordering; van Schneider (P) |
| Generic, could be any product | Allen, Chimero, Appleton, van Schneider (P) |
