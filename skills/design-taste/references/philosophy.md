# Philosophy Reference

Each entry is written by an AI from the designer's own public material where that could be read, from secondary summaries where it could not, and from the author's notes where neither was available. It is a paraphrase, not a quotation, and it is **not endorsed by the designer**.

**Status** tells you how far to trust an entry:

- **Checked:** the designer's own page or text was read, and it supports the core of the entry. Cite these by name in findings.
- **Partial:** some support exists, from a designer's own page, from publisher or review summaries, or from search excerpts of their writing. The rest comes from the author's notes or was not confirmed. Never cite these by name in a finding; cite the checklist item.
- **Unverified:** no usable material was found, or it did not support the entry. Do not cite it as the designer's view.

Format: **Principle** · practice · review question.

Last checked: 2026-10-20. 24 entries: 20 Checked, 4 Partial, 0 Unverified.

`vision.md` is the higher layer: it turns these entries into questions asked of a screen. Read it first.

---

## Restraint and utility

### Dieter Rams: less, but better
**Status: Checked.** His page describes design as useful, honest, understandable, durable, and restrained. It asks designers to avoid trends and reduce waste and clutter over a product's life.
- Practice: remove what does not serve the product. Prefer lasting choices over fashion.
- Review question: what breaks if this element is deleted?

### John Maeda: reduction and meaning
**Status: Checked.** His "Laws of Simplicity" page says simplicity comes from thoughtful reduction, that simplicity and complexity need each other, and that good design subtracts the obvious and adds the meaningful.
- Practice: remove what is self-evident. Add back only what carries meaning.
- Review question: what here exists only because it was easy to add?

### Oliver Reichenstein: typography as interface
**Status: Partial.** His iA news page supports simplicity that takes effort, design that recedes, and criticism of AI-generated imagery and formatting-heavy software. The typography-as-interface view comes from the author's notes.
- Practice: keep text comfortable to read, with a reasonable line length and no decoration that competes with the words.
- Review question: could someone read this for ten minutes without strain?

### Matthew Butterick: typography has consequences
**Status: Checked.** His book *Practical Typography* argues that anyone who writes is already a typographer, that typography has real consequences, and that good typography helps readers engage with, follow, and be persuaded by text. The chapter "Why typography matters" uses the Palm Beach County butterfly ballot to show how poor design choices can cause harm.
- Practice: treat each typographic choice as something that changes what the reader does. Choose it on purpose, and check it against the reader's task.
- Review question: what does this typographic choice make the reader do, and was that intended?

### Amber Case: calm technology
**Status: Checked.** Her calm technology principles state that technology should require the smallest possible amount of attention, should inform and create calm, should use the periphery, should work even when it fails, and should be the minimum needed to solve the problem.
- Practice: keep interruptions rare, and let information sit at the edge of attention. Keep the interface working when something breaks.
- Review question: does this interruption need the user's attention now, or can it wait at the edge?

---

## Structure and system

### Khoi Vinh: the grid as a tool
**Status: Partial.** His own blog posts describe the typographic grid as a main layout tool. A 2007 post also says he is not a methodical grid designer and sizes items by eye. His book *Ordering Disorder* covers grid principles. The emphasis on order and symmetry comes from the author's notes.
- Practice: use a grid as a starting structure, not a rule to follow everywhere. Align edges and keep rhythm consistent.
- Review question: where do these elements sit on the grid, and does that position do any work?

### Erik Spiekermann: craft, material, and typography as infrastructure
**Status: Checked.** His page stresses craft and touch, typography as cultural infrastructure for orientation, legibility, and identity, and working within material limits over screens.
- Practice: favor clear, durable type structure. Treat constraints as useful, not as obstacles to remove.
- Review question: does the typography help people find their way, or just look good?

### Brad Frost: atomic design
**Status: Checked.** His essay "Atomic Web Design" argues that designers are building systems of components, not pages. It organizes them into atoms, molecules, organisms, templates, and pages, and recommends assembling from small parts so the system stays coherent from the start.
- Practice: name and reuse the smallest parts, such as labels and buttons, before composing screens. Build pages from components rather than one-off layouts.
- Review question: is this element an existing component, or a one-off that should become one?

### Ahmad Shadeed: defensive CSS
**Status: Checked.** His article "Defensive CSS" and the defensivecss.dev project argue that CSS should anticipate dynamic content, user uploads, and unusual viewports. Techniques include `flex-wrap`, `min-width: 0` on flex items, `minmax(0, 1fr)` in grids, `object-fit` on images, `overscroll-behavior` on modals, `scrollbar-gutter: stable`, fallbacks for CSS variables, and testing short viewports as well as narrow ones.
- Practice: assume text will be longer, images will be the wrong ratio, and counts will change. Write the layout so it survives that.
- Review question: what happens to this layout with a 40-character name, a missing image, or a 320px wide viewport?

---

## Usability and access

### Jakob Nielsen: ten usability heuristics
**Status: Checked.** His article lists ten heuristics: visibility of system status, match between system and real world, user control and freedom, consistency and standards, error prevention, recognition rather than recall, flexibility and efficiency, aesthetic and minimalist design, help users recognize and recover from errors, and help and documentation.
- Practice: show status for every async action, give every destructive action an exit, write errors that name the problem and the fix, and keep rarely needed content out of the way.
- Review question: which heuristic does this screen break, and what would the user see at that moment?

### Don Norman: human-centered design
**Status: Partial.** His page asks designers to design for people as they are, not as designers wish they were, and to learn from being wrong.
- Practice: fit the design to how people actually think and act. Make complex tasks understandable.
- Review question: would a first-time user guess what this does without help?

### Jon Yablonski: laws of UX
**Status: Checked.** His site Laws of UX lists psychology principles with design takeaways. Relevant ones: Fitts's law (large, close, well-spaced targets), Hick's law (fewer choices decide faster), Jakob's law (users expect your product to work like the ones they already use), Doherty threshold (respond under about 400ms), Miller's law (chunk information), law of proximity and common region (grouping by space and bounds), and Tesler's law (complexity can only move, not vanish).
- Practice: size and place targets for the hand, cut choices, follow platform conventions, and group by spacing before adding boxes.
- Review question: which law explains why this feels slow, confusing, or hard to hit?

### Heydon Pickering: inclusive components
**Status: Checked.** His site Inclusive Components builds common patterns piece by piece with accessibility first. The toggle button article says to use a real `<button type="button">` with `aria-pressed` set explicitly to true or false, to change either the label or the state but not both, and to use `role="switch"` with `aria-checked` for on/off controls, noting uneven assistive technology support.
- Practice: build from native elements. Expose on/off state through `checked`, `aria-checked`, or `aria-pressed`, set explicitly. Test what a screen reader announces.
- Review question: what does a keyboard or screen reader user get from this control, and is it the same thing a mouse user gets?

---

## Mobile and responsive

### Luke Wroblewski: mobile first
**Status: Checked.** His essay "Mobile First" argues for designing the mobile version before the desktop one, because small screens force teams to prioritize the most important content and actions, and because phones add capabilities such as location and touch. His book list and site also show a preference for clear, visible controls over dropdowns.
- Practice: design for the smallest screen first. Prefer clear, visible controls to hidden ones. Cut what the small screen cannot hold rather than hiding it.
- Review question: what did the phone layout force out, and was it worth keeping on desktop?

### Josh Clark: designing for touch
**Status: Checked.** His A List Apart excerpt from *Designing for Touch* reports that thumbs drive about three quarters of phone use, that only about a third of the screen is easy to reach one-handed, and that the top of the screen always needs a stretch. He advises designing for the most constrained grip, keeping core controls near the bottom and middle of phones, enlarging targets placed in hard-to-reach zones, and keeping tablet controls near the sides.
- Practice: put the primary action and frequent controls in the lower half of phone screens. Put rare and destructive actions where they need a stretch. Make hard-to-reach targets bigger.
- Review question: can the main action be hit with one thumb on the largest supported phone?

### Ethan Marcotte: responsive web design
**Status: Checked.** His A List Apart article argues for one flexible layout that adapts to the viewing context instead of separate device sites, built from fluid grids, flexible images, and media queries, and enhanced progressively.
- Practice: lay out in proportions and `rem`, let images scale, and add breakpoints where the content breaks, not at device sizes.
- Review question: at which width does this layout break, and is that where the breakpoint sits?

---

## Craft and feedback

### Emil Kowalski: taste, restraint, and motion
**Status: Checked.** His page argues that friction filters bad ideas, that animation is often overused, that settling for good enough is not good enough, and that taste can be learned and passed to AI agents. His article "Developing taste" calls taste a trained instinct built by studying the best work, analyzing why something works instead of labelling it good or bad, and practicing with critique. His article "You don't need animations" gives three filters for every animation: purpose, frequency, and speed. The more often users see it, the less it should animate; keyboard-triggered actions get none; UI animation stays under about 300ms.
- Practice: animate only where it helps. Ask why a piece of good work works. Treat taste as something that can be taught, including to tools.
- Review question: would the user miss this animation if it were gone, and how often will they see it?

### Rauno Freiberg: invisible details, depth as meaning
**Status: Checked.** His essay "Invisible Details of Interaction Design" argues that gestures should respond immediately and mid-gesture, that motion should keep momentum and stay interruptible, that destructive actions should wait for a gesture to end, that animations should show where things come from, and that frequent actions, such as menus opened many times a day, may be better with no animation at all. His essay "Designing depth" argues that blurring or dimming the layer behind an overlay pushes it back on the z-axis and signals that only the overlay responds, that motion should be choreographed in layers with deliberate delays, and that a layer kept sharp while others blur reads as still interactive.
- Practice: give every control the same visual response to hover, press, and focus. Keep motion interruptible. Remove animation from high-frequency actions. Blur the layer behind a tray.
- Review question: does each layer and motion tell the user where they are and what responds?

### Josh W. Comeau: motion that behaves
**Status: Checked.** His article on CSS transitions advises against `transition: all`, prefers `transform` and `opacity` over layout properties, matches easing to the motion (ease-out for entering, ease-in for leaving), gives enter and exit different timings, uses delays to keep hover targets open across gaps, separates the hover trigger from the animated element to avoid flicker, and disables transitions under `prefers-reduced-motion`.
- Practice: name the transitioned properties. Animate transform and opacity. Pick easing by direction. Honor reduced motion.
- Review question: which property is being animated, and does its easing match what the element is doing?

### Benji Taylor: trays, disclosure, and delight by rarity
**Status: Checked.** His post "Family Values" on his own site, written from inside the Family team, states: keep core functions visible and reveal the rest when relevant; use trays for short-lived actions (they overlay the current screen and keep the user oriented) and full screens for longer or permanent tasks; make transitions show where you are going and how you got there ("we fly instead of teleport"); put delight in features used rarely and keep frequent ones subtle; and give rarely used parts the same polish, because a neglected corner makes the whole product feel unfinished.
- Practice: decide tray or screen by how long the task lives. Spend delight where it is rare. Polish the settings page as carefully as the home screen.
- Review question: is this a transient action in a tray and a persistent one on a screen, and is delight placed where the user will not tire of it?

---

## Character and humanity

### Frank Chimero: narrative and gaps
**Status: Checked.** The "Stories and Voids" chapter of *The Shape of Design* argues that good design carries a story, that stories are change over time, and that gaps invite the audience to contribute. It discusses designers controlling the experience of time through ordering and pacing.
- Practice: pace what the user sees so it shows what matters first. Leave room for the user to fill in.
- Review question: does the order of screens tell the user what matters first, and leave room for them?

### Tobias van Schneider: a point of view
**Status: Partial.** His page describes brands and products that have a point of view, personal and crafted design, and calm digital tools. "Anti-sterility" as a label comes from the author's notes.
- Practice: make deliberate choices in tone, type, and color. Avoid defaults nobody chose.
- Review question: could this screen belong to any product? If yes, it has no character.

### Maggie Appleton: tools as cultural practice
**Status: Checked.** Her page argues that software for thinking should be understood as cultural practice, that challenging tools are better than flattering ones, and that users should shape their own tools.
- Practice: favor tools that push thinking and let users adapt them. Question tools that only flatter.
- Review question: does this tool challenge the user, or only please them?

### Andy Allen: special for no one
**Status: Checked.** His essay "No more boring apps" (signed Andy, founder of Not Boring Software, co-founder of FiftyThree) argues that app design has become formulaic because companies design for everyone, and "when you design something to work for everyone, you make it special for no one". There is no single chair for everyone. Small teams should be distinctive on purpose. Software is a medium for a point of view, not only a tool that performs on metrics.
- Practice: say what the app knows about its users in the words, units, and defaults. Prefer one clear point of view over broad blandness.
- Review question: could this screen belong to any app in any country? What here is ours?

---

## Using this file

Pick the two or three entries that match the problem. Do not run through all 24 each time. Names in the table are **Checked** unless marked (P) for Partial; Partial entries are background reading, not citations.

| Problem | Read first |
|---|---|
| Screen has no clear answer or point | `vision.md` Q1–Q3; Chimero, Nielsen (heuristic 8), Case |
| Clutter, decoration, too many elements | Rams, Maeda, Nielsen (heuristic 8) |
| Type, reading comfort, hierarchy, numbers | Butterick, Spiekermann, Reichenstein (P) |
| Spacing, grid, alignment, one-off values | Frost, Yablonski (proximity, common region), Vinh (P) |
| Layout breaks with real content or widths | Shadeed, Marcotte |
| Phone: reach, targets, one-handed use | Clark, Wroblewski, Yablonski (Fitts) |
| Controls, states, keyboard, screen reader | Pickering, Nielsen, Freiberg |
| Errors, feedback, status, confirmation | Nielsen (heuristics 1, 3, 5, 9), Norman (P) |
| Tray or screen, disclosure, where delight goes | Taylor, Freiberg |
| Motion and depth | Kowalski, Freiberg, Comeau, Taylor |
| Notifications, badges, interruptions | Case, Nielsen (heuristic 8) |
| Copy, tone, voice | Checklist W1–W4; Chimero for ordering; van Schneider (P) |
| Generic, could be any product | Allen, Chimero, Appleton, van Schneider (P) |
