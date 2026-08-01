# Week 12 — Answer Key (teacher only)

## `2-fill-in-the-blank.py` — completed code

```python
import turtle

turtle.bgcolor("black")
turtle.pensize(2)

# TASK 1 — pencolor picks the ink (any real color name works)
turtle.pencolor("red")

# TASK 2 — speed 0 = NO speed limit (10 is the trap: fast, but limited)
turtle.speed(0)

# TASK 3 — forward(i): the loop variable grows every lap → a spiral
for i in range(100):
    turtle.forward(i)
    turtle.right(90)

# TASK 4 — 360 / 12 = 30 repeats to close the pattern
turtle.reset()
turtle.speed(0)
turtle.pencolor("white")
turtle.pensize(2)
for i in range(30):
    for side in range(6):
        turtle.forward(90)
        turtle.right(60)
    turtle.right(12)

# TASK 5 — % 6: six colors, so the count wraps at 6
colors = ["red", "orange", "yellow", "green", "blue", "purple"]

turtle.reset()
turtle.speed(0)
turtle.pensize(2)
for i in range(36):
    turtle.pencolor(colors[i % 6])
    for side in range(4):
        turtle.forward(120)
        turtle.right(90)
    turtle.right(10)

# TASK 6 — type-it-live: the class supplies %, the wraparound operator
turtle.reset()
turtle.speed(0)
turtle.pencolor("white")
turtle.pensize(2)
for i in range(150):
    turtle.pencolor(colors[i % 6])    # ← the line you type live
    turtle.forward(i)
    turtle.right(91)

# TASK 7 — any class picks work; e.g. pentagons tilting 15:
turtle.reset()
turtle.speed(0)
turtle.pensize(2)

sides = 5
tilt = 15

for i in range(72):
    turtle.pencolor(colors[i % 6])
    for side in range(sides):
        turtle.forward(110)
        turtle.right(360 / sides)
    turtle.right(tilt)

print("Gallery opening: one original artwork, by this class.")

turtle.done()
```

## `3-predict-the-output.py` — answers

| Round | Answer | Why |
|-------|--------|-----|
| 1 | **A** — 18 | Repeats to close = 360 ÷ tilt = 360 ÷ 20 = 18. (C is the trap: 36 only works for 10° tilts.) |
| 2 | **B** — 50 steps | `range(1, 6)` stops *before* 6, so the last i is 5 → 5 × 10 = 50. Sides 10, 20, 30, 40, 50: the arithmetic sequence that makes a spiral. |
| 3 | **A** — 0 1 2 0 1 2 | `% 3` wraps the count at 3, like a 3-hour clock. This cycle is exactly how a short color list paints a long drawing. |
| 4 | **B** — gold | 7 % 3 = 1, and positions start at **zero** (week 8!), so `colors[1]` is the *second* color. A is the off-by-one trap. |
| 5 | **B** — a five-pointed star | Turning 144 makes the turtle spin 5 × 144 = 720° = **two** full laps before closing — that's what makes points instead of a pentagon (which is one lap: 5 × 72 = 360). |
| Final | **B** — the whirlpool | Each corner over-rotates by 1°; across 150 corners that's 150° of extra twist spread through the picture. Not an error, not identical — one number changes the whole artwork. |

## Handout answers

**1 · Match the code to the art**

- **C** — the five-pointed star (turn 144 = the two-lap star turn)
- **A** — one plain square (week 11's recipe)
- **B** — the square spiral (`forward(i)` grows each side)
- **D** — the flower/mandala (36 squares × 10° tilt = 360°)

**2 · The rotation table** (repeats = 360 ÷ tilt)

| tilt | repeats |
|------|---------|
| 10° | 36 |
| 20° | **18** |
| 30° | **12** |
| 45° | **8** |
| 120° | **3** |

**3 · Design your own spirograph** — no wrong answers; check that
repeats = 360 ÷ tilt (if the tilt doesn't divide 360, "more repeats until the math
catches up" is a *great* answer). **Collect these or have kids keep them — running
2–3 student designs is next week's warm-up.** To run one: open `1-demo.py`
Section 7, set `SHAPE_SIDES`, `TILT`, and the colors to the student's picks, re-run.

**Brain teaser guidance:** the 24 divisors of 360:
1, 2, 3, 4, 5, 6, 8, 9, 10, 12, 15, 18, 20, 24, 30, 36, 40, 45, 60, 72, 90, 120,
180, 360. Kids who find 15+ deserve a shout-out. Why 360 was chosen: it divides
evenly by *so many* numbers (and roughly matches days in a year) — ideal for
splitting circles without fractions. Connect it forward: that's exactly why so many
tilt angles make neat spirographs.
