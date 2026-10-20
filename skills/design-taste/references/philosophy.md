# Philosophy Reference

Each entry is a paraphrase of the designer's published position, written as working guidance. It is not a quotation. Check the source in `sources.md` before relying on the nuance.

Format: **Principle** · what it means in practice · review question.

---

## Restraint and utility

### Dieter Rams — less, but better
Design should serve unobtrusive utility and not compete for attention. Every element should justify itself; removing one should make the thing worse.
- In practice: fewer colors, fewer borders, fewer competing emphases. Default to removing.
- Review question: what breaks if this element is deleted?

### Maeda — subtraction reveals meaning
Computation and art meet when the obvious is subtracted until the meaningful part is visible.
- In practice: strip chrome until the content or task is the loudest thing on screen.
- Review question: what here is there only because it was easy to add?

### Jenny Odell — calm interfaces
Interfaces should give attention room to breathe rather than extract engagement.
- In practice: no unnecessary notifications, badges, or infinite pulls. Let empty space be empty.
- Review question: does this pattern exist to help the user, or to keep them here?

### Oliver Reichenstein — typography as interface
Text is the interface. Setting, measure, and contrast carry most of the usability, and should be treated as the primary design material.
- In practice: body measure of roughly 45–75 characters, sensible line height, no decorative fonts for running text.
- Review question: could the content be read comfortably for ten minutes?

### Kenya Hara — emptiness and material honesty
Emptiness is not absence; it is a deliberate quality that lets things be felt. Materials should look like what they are.
- In practice: generous whitespace used on purpose, no faux textures that pretend to be physical, no skeuomorphism for its own sake.
- Review question: is the empty space doing work, or is it leftover?

---

## Structure and system

### Khoi Vinh — grid discipline
Order, structural symmetry, and mathematical alignment make an interface intuitive.
- In practice: one column grid, aligned baselines and edges, consistent gutters.
- Review question: can you draw the grid lines that these elements sit on?

### Erik Spiekermann — typography as voice
Information architecture depends on typographic hierarchy, weight, and rhythm. Type is how the content speaks.
- In practice: a small set of weights and sizes, each with a job. Hierarchy by type first.
- Review question: can you tell the reading order from the type alone, with color removed?

### Rasmus Andersson — rigor in type, systems, and tools
Careful type metrics, systematic scales, and well-made tools produce good results. Details compound.
- In practice: tabular numerals for data, optical sizing where available, a documented scale rather than eyeballed sizes.
- Review question: is every size on the scale, or did someone pick one by feel?

### Don Norman — human-centered design
Systems must match human psychological expectations. The user should not have to learn the designer's logic.
- In practice: standard affordances for standard controls, visible state, clear feedback after every action, error messages that say what to do.
- Review question: would a first-time user guess what this does without help?

### Luke Wroblewski — interaction geometry
Design around thumb reach and device physics, not around an idealized desktop.
- In practice: primary actions within thumb reach on mobile, adequate hit areas, layouts that survive real screen sizes.
- Review question: can the main action be reached one-handed on the smallest supported device?

---

## Craft and feedback

### Emil Kowalski — motion as craft
Easing, springs, and duration are craft decisions. Often the right choice is to not animate at all.
- In practice: short durations for UI feedback, easing that matches the motion's meaning, no animation on repeated high-frequency actions.
- Review question: would the user miss this animation if it were gone?

### Rauno Freiberg — invisible details of interaction
Microscopic details (hover timing, focus rings, subtle depth, cursor changes) separate "clean" from "crafted".
- In practice: consistent focus rings, responsive hover, tactile press states, subtle depth that reads as light rather than decoration.
- Review question: does every control respond to hover, press, and focus in the same visual language?

### Benji Taylor — simplicity, fluidity, delight in a utility app
A utility app can be simple, fluid, and delightful at once. Delight comes from the quality of the basics.
- In practice: smooth transitions between states, clear hierarchy, small moments of care in routine tasks.
- Review question: does the most frequent task feel better after the delight was added, not worse?

### Dan Saffer — single-purpose micro-interactions
A micro-interaction has a trigger, rules, feedback, and loops or modes. One interaction should do one thing well.
- In practice: define trigger, feedback, and end state for each. Keep it single-purpose.
- Review question: can you state this interaction's single purpose in one sentence?

### Paco Coursey — extreme tactility
Zero-latency feedback, fluid keyboard navigation, and physical responsiveness make software feel direct.
- In practice: immediate optimistic feedback, complete keyboard paths, no input lag, keyboard shortcuts for frequent actions.
- Review question: can the most common workflow be done without touching the mouse?

### Julie Zhou — metrics-informed craft
Aesthetic polish is valuable when it measurably improves comprehension, intent, and clarity. Polish that does not move a metric is still open to question.
- In practice: tie each craft change to a task outcome (completion, error rate, time to understand). Keep the ones that move it.
- Review question: what measurable change should this polish produce, and how would we know?

### Robin Rendle — elastic typography
The browser is a dynamic typographic canvas. Fluid sizing and readable measure are part of the design, not afterthoughts.
- In practice: fluid type with clamp(), respect for user font-size settings, measure controlled by container.
- Review question: does the text still read well at 200% zoom and on a very wide screen?

---

## Character and humanity

### Frank Chimero — design as narrative framing
Form, pacing, and visual voice reveal context over time. The order of what the user sees tells a story.
- In practice: intentional sequence in onboarding and empty states; clear entry points; progressive disclosure.
- Review question: does the order of the screens tell the user what matters first?

### Tobias van Schneider — anti-sterility
Functional elegance benefits from emotional personality and a distinct character.
- In practice: a specific tone in copy, type, and color; a point of view. Avoid defaults nobody chose.
- Review question: could this screen belong to any product? If yes, it has no character.

### Maggie Appleton — embodied cognition
Abstract ideas become easier to grasp as tactile, spatial metaphors.
- In practice: use spatial relationships (containment, adjacency, layering) to show structure. Metaphors must be earned, not decorative.
- Review question: does the spatial layout match the mental model of the data?

### Jason Yuan — a place, not a list
Interfaces can feel humane and emotional when they present things as places the user returns to.
- In practice: spatial organization, persistent landmarks, a sense of home. Use sparingly, and check it against the task.
- Review question: does the user know where they are without reading the title?

### Alexander Obenauer — items over apps
Personal computing can be organized around items and their relationships rather than around apps.
- In practice: surface the object the user cares about; show how saved things relate.
- Review question: is the user organizing things, or organizing apps?

### Devine Lu Linvega — radical personal software
Austere, personal software has a clear vision because it refuses to accommodate everyone. Clarity of purpose matters more than breadth.
- In practice: decide who the product is for and remove features outside that. Accept that some people will bounce.
- Review question: what would this look like if it served only one person well?

### Andy Allen — delight and sensory richness
Utility apps can use sound, haptics, materials, and shaders to create a sense of game-like quality. This approach is polarizing and easy to overdo.
- In practice: use sensory feedback where it confirms a meaningful action. Cap intensity. Always provide a way to disable it.
- Review question: does the richness make the task faster or more pleasant, or only more noticeable?

---

## Using this file

When reviewing, pick the two or three principles that match the problem. Do not run through all 24 every time. The point is decisions, not a checklist of quotes.
