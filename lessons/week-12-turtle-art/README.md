# Week 12 — 🎉 Turtle Art

> **Unit 6: Turtle Graphics** · The payoff lesson

## Objectives

By the end of class, students can:

1. Color a drawing with `pencolor()`, `bgcolor()`, and `pensize()`, and unleash
   `speed(0)`
2. Explain how `forward(i)` inside a loop makes a **spiral** (sides 1, 2, 3, ... —
   an arithmetic sequence drawn in space)
3. Explain the **spirograph pattern**: draw a shape, turn a little, repeat — and why
   36 turns of 10° close the pattern perfectly (36 × 10 = 360)
4. Read `colors[i % 6]` as "cycle through the color list" — week 9's `%` wraparound,
   now painting

## Vocabulary

| Word | Kid-friendly definition |
|------|------------------------|
| **`pencolor()` / `bgcolor()`** | set the pen's ink color / the background color |
| **`pensize()`** | how thick the pen's line is |
| **`speed(0)`** | the secret setting: NO speed limit — the turtle teleports |
| **spiral** | a path that grows as it turns — `forward(i)` makes each side longer |
| **spirograph** | draw a shape, turn a little, repeat — until the turns total 360° |
| **`colors[i % 6]`** | pick from the color list, wrapping around — % cycles 0,1,2,3,4,5,0,1,... |

## Math tie-in

**Rotational symmetry, made by hand (well, by turtle).** The spirograph is a rotation
machine: draw a square, rotate 10°, repeat — and it closes into a perfect mandala
*exactly* when the turns tile 360° (36 × 10° = 360°). The class predicts repeat counts
for other angles (20° → 18, 45° → 8: they're computing 360 ÷ angle, i.e. hunting
divisors of 360), and the demo's 91° gasp shows what happens when the angle *doesn't*
divide 360: the pattern "walks around," and keeps going until the math catches up.
Meanwhile `colors[i % 6]` recycles week 9's modular arithmetic — the same wraparound
that turned Z into A now cycles red → orange → ... → purple → red. Rotation, divisors,
and mod, all visible on one screen.

## Before class

- [ ] Print `handout.md` (one per student) — today's has a **design-your-own
      spirograph** section kids fill in; collect or photograph the best ones,
      because **next week's warm-up is running student designs**
- [ ] Have `answer-key.md` open or printed for you
- [ ] Dry-run `1-demo.py` — especially Section 0, the masterpiece. It's your hook;
      it should run within 15 seconds of class starting
- [ ] Same screen setup as week 11: VS Code and the turtle window side by side

## Lesson plan — 45 minutes

### 0:00–0:02 · Last time

Quick recall, ask the class: *"What does the turtle turn at each corner — the inside
or the outside? And the master formula for any polygon?"* (Exterior; turn = 360/n.)
Shout-outs for rectangle/initial brain teasers — if one is good, type and run it in
30 seconds.

### 0:02–0:06 · Hook: run the masterpiece FIRST

No warm-up, no theory. Open `1-demo.py`, run it, press Enter at Section 0, and let
the class watch 30 seconds of art bloom — a rainbow spirograph unfolding on a black
screen. Then the promise:

> *"Everything you just saw is made of things you already know: a square, a for loop,
> the % sign from cipher week. By the end of class you'll know exactly how it works —
> and you'll design your own."*

### 0:06–0:22 · Demo: `1-demo.py` (continue from Section 1)

Keep pressing Enter through the sections; predict before every run. Beats to hit:

- Paint: `pencolor`, `pensize`, then `bgcolor("black")` — the same square, suddenly neon
- `speed(0)` — *"we remove the turtle's speed limit"* (the class should gasp)
- **THE SPIRAL**: `forward(i)` — each side one step longer: 0, 1, 2, 3, ... —
  *"that's an arithmetic sequence, drawn in space"*
- The 91° twist: change ONE degree, square spiral → whirlpool. Predict first!
- **THE SPIROGRAPH**: square + turn 10° + repeat 36. ⭐ Why 36? 36 × 10 = 360 —
  the rotations tile a full circle, so the pattern closes perfectly
- `colors[i % 6]` — count around the list out loud: i = 0,1,2,...,6 → *"the % from
  cipher week is now painting"*
- **CLASS DESIGN MOMENT** (Section 7): the class votes on the `TWEAK THESE` dials —
  shape sides, tilt angle, size — you edit 3 lines and re-run. Twice if time allows.

### 0:22–0:31 · Class writes code: `2-fill-in-the-blank.py`

Kids call out what goes in each blank; you type and run after every task. Task 6 has
no blank — you type the color-cycling line live while the class supplies the
wraparound operator. Completed code is in `answer-key.md`.

### 0:31–0:38 · Voting game: `3-predict-the-output.py`

Terminal-only, no turtle window: number rounds run for real, shape rounds reveal a
text sketch. The final round replays the 91° trick — see who was paying attention.

### 0:38–0:43 · Handout

The star of today's handout is **Design your own spirograph**: kids pick sides, a
tilt angle, and colors, then *sketch their prediction*. Tell them explicitly:
*"Bring this back — next week's warm-up is running YOUR designs on the smartboard."*
(And then actually do it — collect the sheets or remind them to keep them.)

### 0:43–0:45 · Wrap-up

*"One shape, rotated until the turns fill 360 degrees — that's a spirograph. The
loop draws, the angle rotates, and % paints."* Tease week 13: *"Next week the
computer rolls a die a MILLION times before the bell rings — and we find out whether
my real die is broken."*

## If you have extra time

Open `4-challenge.py`: the circle-based rainbow spirograph (also a great re-hook),
the drunk turtle (random right-angle walk — modern art every run), a star-burst
generator with random colors, and the four-preset **art contest** file — change one
variable, `PRESET`, and the class votes on the best result.

## Common pitfalls

- **Misspelled color names crash.** `"purpel"` → an error about a bad color string.
  Applause moment, week-1 style: read it, fix it, re-run.
- **A turn angle that doesn't divide 360.** Not a bug — the pattern just needs more
  repeats to close. If a class design picks 25°, add repeats and enjoy the ride
  ("the math catches up eventually").
- **speed(0) impatience in reverse.** After seeing speed 0, kids won't tolerate
  speed 3 again. Fine — but keep ONE slow run early so they *see* the square being
  drawn before it becomes a blur.
- **Kids shouting color requests mid-draw.** Channel it into the design moment:
  votes only, one re-run per design.
- **The masterpiece leaks its secrets early.** If someone asks "how does it work?"
  during the hook: *"That's the whole lesson. Ask me again in 20 minutes."*
