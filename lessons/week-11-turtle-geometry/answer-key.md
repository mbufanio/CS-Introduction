# Week 11 — Answer Key (teacher only)

## `2-fill-in-the-blank.py` — completed code

```python
# TASK 1 — the module is turtle
import turtle

turtle.speed(3)

# TASK 2 — forward makes it walk (and draw)
turtle.forward(150)

# TASK 3 — right spins it clockwise; the two lines make a corner (an L / a 7)
turtle.right(90)
turtle.forward(150)

# TASK 4 — a square: 4 repeats, 90-degree turns
turtle.reset()
turtle.speed(3)
for side in range(4):
    turtle.forward(120)
    turtle.right(90)

# TASK 5 — the triangle turns 120, NOT 60!
# (If the class says 60, type 60 and run it — they get half a hexagon
#  wandering off. The turtle turns the EXTERIOR angle: 180 − 60 = 120.)
turtle.reset()
turtle.speed(3)
for side in range(3):
    turtle.forward(150)
    turtle.right(120)

# TASK 6 — 360 divided by n (the number of sides)
turtle.reset()
turtle.speed(3)
n = 6
turn = 360 / n
for side in range(n):
    turtle.forward(90)
    turtle.right(turn)

# TASK 7 — any 3–12 the class picks, e.g. 9:
turtle.reset()
turtle.speed(6)
sides = 9
for side in range(sides):
    turtle.forward(80)
    turtle.right(360 / sides)

print("A polygon with", sides, "sides — each turn was", 360 / sides, "degrees.")

turtle.done()
```

## `3-predict-the-output.py` — answers

| Round | Answer | Why |
|-------|--------|-----|
| 1 | **B** — a corner | `right(90)` only spins the turtle in place; the second `forward` walks in the new direction. Two lines, one 90° corner. |
| 2 | **A** — a square | The floor recipe: 4 × (forward 100, right 90). All sides equal → square, not just a rectangle. |
| 3 | **A** — a triangle | 120 is the *exterior* angle (180 − 60). Three 120° turns total 360°, so it closes. B is the trap for kids still thinking "60 is the triangle number." |
| 4 | **A** — 360 | 5 × 72 = 360. One lap around *any* polygon = one full spin. This is the whole lesson in one number. |
| 5 | **B** — two lines with a gap | `penup()` stops the *drawing*, not the *walking*. The middle 100 steps happen invisibly. |
| Final | **B** — an open zigzag | Closing a shape takes turns totaling exactly 360°. Four turns of 100° = 400° — every corner over-rotates, so the path never comes home. (Sets up week 12's "wrong on purpose" art.) |

## Handout answers

**1 · Be the turtle** — the path goes right 3 squares, down 2, left 3:

```
S━━━━━━━━━┓
          ┃
━━━━━━━━━━┛
```

It's a **rectangle missing its left side** (three sides of a 60 × 40 rectangle).

**2 · The polygon table**

| sides n | turn (exterior) | interior angle |
|---------|-----------------|----------------|
| 3 | **120°** | 60° |
| 4 | 90° | 90° |
| 5 | 72° | **108°** |
| 6 | **60°** | **120°** |
| 8 | **45°** | **135°** |

(Spot-check with the class: every "turn" column entry × n = 360.)

**3 · Spot the bug** — `turtle.right(90)` is **not indented**, so it's outside the
loop. The loop draws forward(100) four times in a row with no turning: **one long
400-step straight line** (then a single pointless turn at the very end). Fix:
indent the turn so it happens after *every* side.

**Brain teaser guidance:** the rectangle needs the pattern
`forward(200), right(90), forward(100), right(90)` — twice. Praise anyone who
notices the turns are still all 90° (a rectangle's corners are 90° even though its
sides differ) and that the four turns still total 360°. For letters, praise
penup/pendown hops and any sketch-first planning. If a design is sound, run it on
the smartboard next week — instant celebrity.
