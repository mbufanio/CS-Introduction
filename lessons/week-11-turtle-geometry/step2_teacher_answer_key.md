# Week 11 — Answer Key (teacher only)

## `step4_class_fill_in_the_blank.m` — completed code

```matlab
% TASK 1 — turtle_start wakes the turtle (no import needed: the nine
% function files live in this folder, and MATLAB finds them by name)
turtle_start()

turtle_speed(0.05)

% TASK 2 — forward makes it walk (and draw)
forward(150)

% TASK 3 — right spins it clockwise; the two lines make a corner (an L / a 7)
right(90)
forward(150)

% TASK 4 — a square: 4 repeats, 90-degree turns
turtle_start
turtle_speed(0.05)
for side = 1:4
    forward(120)
    right(90)
end

% TASK 5 — the triangle turns 120, NOT 60!
% (If the class says 60, type 60 and run it — they get half a hexagon
%  wandering off. The turtle turns the EXTERIOR angle: 180 − 60 = 120.)
turtle_start
turtle_speed(0.05)
for side = 1:3
    forward(150)
    right(120)
end

% TASK 6 — 360 divided by n (the number of sides)
% The line has no semicolon on purpose: turn announces itself (turn = 60),
% and its box appears in the Workspace pane. Point at it before the run.
turtle_start
turtle_speed(0.05)
n = 6;
turn = 360 / n
for side = 1:n
    forward(90)
    right(turn)
end

% TASK 7 — any 3–12 the class picks, e.g. 9:
turtle_start
turtle_speed(0.03)
sides = 9;
for side = 1:sides
    forward(80)
    right(360 / sides)
end

fprintf('A polygon with %d sides — each turn was %g degrees.\n', sides, 360 / sides)
```

*(Live-typing notes: `turtle_start` works with or without the `()` — both run the
function. If a kid's answer is a command that doesn't exist, MATLAB stops with
`Unrecognized function or variable 'Forward'.` — capital letters strike again,
week-1 style. And if a turtle command runs before Task 1 is filled, the toolbox
itself complains: `The turtle is asleep! Run turtle_start first.` — an error message
written by the toolbox, which is a nice meta-moment: programs you write can talk
back too.)*

## `step5_class_predict_the_output.m` — answers

| Round | Answer | Why |
|-------|--------|-----|
| 1 | **B** — a corner | `right(90)` only spins the turtle in place; the second `forward` walks in the new direction. Two lines, one 90° corner. |
| 2 | **A** — a square | The floor recipe: 4 × (forward 100, right 90). All sides equal → square, not just a rectangle. |
| 3 | **A** — a triangle | 120 is the *exterior* angle (180 − 60). Three 120° turns total 360°, so it closes. B is the trap for kids still thinking "60 is the triangle number." |
| 4 | **A** — 360 | 5 × 72 = 360. One lap around *any* polygon = one full spin. This is the whole lesson in one number. |
| 5 | **B** — two lines with a gap | `penup` stops the *drawing*, not the *walking*. The middle 100 steps happen invisibly. |
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

**3 · Spot the bug** — the `right(90)` is **after the loop's `end`**, so it's
outside the loop. The loop draws forward(100) four times in a row with no turning:
**one long 400-step straight line** (then a single pointless turn at the very end).
Fix: move `right(90)` above the `end` so the turn happens after *every* side.
(MATLAB doesn't care about indentation — only the `end` decides what's inside
the loop. The pretty indenting is for humans.)

**Brain teaser guidance:** the rectangle needs the pattern
`forward(200), right(90), forward(100), right(90)` — twice. Praise anyone who
notices the turns are still all 90° (a rectangle's corners are 90° even though its
sides differ) and that the four turns still total 360°. For letters, praise
penup/pendown hops and any sketch-first planning. If a design is sound, run it on
the smartboard next week — instant celebrity.
