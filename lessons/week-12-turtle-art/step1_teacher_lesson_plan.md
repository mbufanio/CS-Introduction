# Week 12 — 🎉 Turtle Art

> **Unit 6: Turtle Graphics** · The payoff lesson

## Objectives

By the end of class, students can:

1. Color a drawing with `pencolor()` — one-letter pens or a mixed `[r g b]` — and
   unleash `turtle_speed(0)`
2. Explain how `forward(i)` inside a loop makes a **spiral** (sides 1, 2, 3, ... —
   an arithmetic sequence drawn in space)
3. Explain the **spirograph pattern**: draw a shape, turn a little, repeat — and why
   36 turns of 10° close the pattern perfectly (36 × 10 = 360)
4. Read `colors(mod(i, 6) + 1)` as "cycle through the color string" — week 9's
   `mod()` wraparound plus week 8's indexing, now painting

## Vocabulary

| Word | Kid-friendly definition |
|------|------------------------|
| **`pencolor()`** | set the pen's ink: `'r' 'g' 'b' 'c' 'm' 'y' 'k'`, or mix your own `[1 0.5 0]` |
| **`turtle_speed(0)`** | zero seconds of pause per step — the turtle teleports |
| **spiral** | a path that grows as it turns — `forward(i)` makes each side longer |
| **spirograph** | draw a shape, turn a little, repeat — until the turns total 360° |
| **`colors(mod(i, 6) + 1)`** | pick from the color string, wrapping around — mod cycles the six pens forever (the + 1 keeps it on MATLAB's 1-to-6 shelf) |

## Math tie-in

**Rotational symmetry, made by hand (well, by turtle).** The spirograph is a rotation
machine: draw a square, rotate 10°, repeat — and it closes into a perfect mandala
*exactly* when the turns tile 360° (36 × 10° = 360°). The class predicts repeat counts
for other angles (20° → 18, 45° → 8: they're computing 360 ÷ angle, i.e. hunting
divisors of 360), and the demo's 91° gasp shows what happens when the angle *doesn't*
divide 360: the pattern "walks around," and keeps going until the math catches up.
Meanwhile `colors(mod(i, 6) + 1)` recycles week 9's modular arithmetic — the same
wraparound that turned Z into A now cycles red → green → ... → yellow → red. Rotation,
divisors, and mod, all visible on one screen.

## Before class

- [ ] Print `step6_class_handout.md` (one per student) — today's has a **design-your-own
      spirograph** section kids fill in; collect or photograph the best ones,
      because **next week's warm-up is running student designs**
- [ ] Have `step2_teacher_answer_key.md` open or printed for you
- [ ] Dry-run `step3_class_demo.m` — especially Section 0, the masterpiece. It's your
      hook; it should run within 15 seconds of class starting
- [ ] Same screen setup as week 11: MATLAB and the figure window side by side, and
      the Current Folder set to THIS folder (the nine turtle files live here too)

## Lesson plan — 45 minutes

### 0:00–0:02 · Last time

Quick recall, ask the class: *"What does the turtle turn at each corner — the inside
or the outside? And the master formula for any polygon?"* (Exterior; turn = 360/n.)
Shout-outs for rectangle/initial brain teasers — if one is good, type and run it in
30 seconds.

### 0:02–0:06 · Hook: run the masterpiece FIRST

No warm-up, no theory. Open `step3_class_demo.m`, run it (F5), press Enter at Section 0,
and let the class watch 30 seconds of art bloom — a rainbow spirograph unfolding on
the canvas. Then the promise:

> *"Everything you just saw is made of things you already know: a square, a for loop,
> the mod() from cipher week. By the end of class you'll know exactly how it works —
> and you'll design your own."*

### 0:06–0:22 · Demo: `step3_class_demo.m` (continue from Section 1)

Keep pressing Enter through the sections; predict before every run. Beats to hit:

- Paint: `pencolor('r')` — the same square, suddenly red. Then the art-class secret:
  `pencolor([1 0.5 0])` mixes a custom orange from the `[r g b]` sliders
- `turtle_speed(0)` — *"we remove the turtle's speed limit"* (the class should gasp:
  zero seconds of pause per step — teleportation)
- **THE SPIRAL**: `forward(i)` — each side one step longer: 1, 2, 3, ... —
  *"that's an arithmetic sequence, drawn in space"*
- The 91° twist: change ONE degree, square spiral → whirlpool. Predict first!
- **THE SPIROGRAPH**: square + turn 10° + repeat 36. ⭐ Why 36? 36 × 10 = 360 —
  the rotations tile a full circle, so the pattern closes perfectly
- `colors(mod(i, 6) + 1)` — walk the cycle out loud with the Command Window table:
  *"the mod() from cipher week is now painting"* (and the + 1 is week 8's fault:
  MATLAB counts from 1). Point at `colors` in the Workspace — a 1×6 char, six pens
  in one string
- **CLASS DESIGN MOMENT** (Section 7): the class votes on the `TWEAK THESE` dials —
  `SIDES`, `TILT`, `SIZE`, `COLORS` — you edit 4 lines and re-run just that section
  (Ctrl+Enter). Twice if time allows.

### 0:22–0:31 · Class writes code: `step4_class_fill_in_the_blank.m`

Kids call out what goes in each blank; you type and run after every task. Task 6 has
no blank — you type the color-cycling line live while the class supplies the
wraparound function (`mod`) and, from the week 8 veterans, the reason for the `+ 1`.
Completed code is in `step2_teacher_answer_key.md`.

### 0:31–0:38 · Voting game: `step5_class_predict_the_output.m`

Command-Window-only, no turtle: number rounds run for real, shape rounds reveal a
text sketch. The final round replays the 91° trick — see who was paying attention.

### 0:38–0:43 · Handout

The star of today's handout is **Design your own spirograph**: kids pick sides, a
tilt angle, and colors, then *sketch their prediction*. Tell them explicitly:
*"Bring this back — next week's warm-up is running YOUR designs on the smartboard."*
(And then actually do it — collect the sheets or remind them to keep them.)

### 0:43–0:45 · Wrap-up

*"One shape, rotated until the turns fill 360 degrees — that's a spirograph. The
loop draws, the angle rotates, and mod() paints."* Tease week 13: *"Next week the
computer rolls a die a MILLION times before the bell rings — and we find out whether
my real die is broken."*

## If you have extra time

Open `step7_class_challenge.m`: the circle-edition rainbow spirograph (each "circle" is a 20-gon
in a trench coat — also a great re-hook), the drunk turtle (random right-angle walk —
modern art every run), a star-burst generator with random colors, and the
four-preset **art contest** — change one variable, `PRESET`, and the class votes on
the best result.

## Common pitfalls

- **Made-up color letters crash — but later.** `pencolor('p')` stores the bad color
  quietly; the error appears the moment the turtle next *draws* (an invalid-color
  complaint from deep in the plotting machinery). Applause moment, week-1 style:
  read it, fix it (`'m'` is the purple-ish one — magenta), re-run.
- **A tilt angle that doesn't divide 360.** Not a bug — the pattern just needs more
  repeats to close. If a class design picks 25°, add repeats and enjoy the ride
  ("the math catches up eventually").
- **Speed-0 impatience in reverse.** After seeing `turtle_speed(0)`, kids won't
  tolerate 0.05 again. Fine — but keep ONE slow run early so they *see* the square
  being drawn before it becomes a blur.
- **Big shapes overflow the canvas.** The canvas ends at ±250, and a hexagon with
  SIZE 130 reaches past it — the drawing just gets cut off at the edge, no error.
  Shrink SIZE (or open `turtle_start.m` and widen the `axis` line — a great
  "we can read the toolbox" flex).
- **Kids shouting color requests mid-draw.** Channel it into the design moment:
  votes only, one re-run per design.
- **The masterpiece leaks its secrets early.** If someone asks "how does it work?"
  during the hook: *"That's the whole lesson. Ask me again in 20 minutes."*
