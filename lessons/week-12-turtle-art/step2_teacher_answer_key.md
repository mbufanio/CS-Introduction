# Week 12 — Answer Key (teacher only)

## `step4_class_fill_in_the_blank.m` — completed code

```matlab
% TASK 1 — pencolor picks the ink (any pen letter the class votes works:
% 'r' 'g' 'b' 'c' 'm' 'y' 'k')
turtle_start
turtle_speed(0.05)
pencolor('r')
forward(100)

% TASK 2 — 0 means zero seconds of pause: the teleport setting
% (1 is the trap: one whole SECOND per step — the slowest turtle alive)
turtle_speed(0)
backward(100)

% TASK 3 — forward(i): the loop variable grows every lap → a spiral
turtle_start
turtle_speed(0)
pencolor('b')
for i = 1:100
    forward(i)
    right(90)
end

% TASK 4 — 360 / 12 = 30 repeats to close the pattern
turtle_start
turtle_speed(0)
pencolor('k')
for i = 1:30
    for side = 1:6
        forward(90)
        right(60)
    end
    right(12)
end

% TASK 5 — mod(i, 6): six pens, so the count wraps at 6
colors = 'rgbcmy';

turtle_start
turtle_speed(0)
for i = 1:36
    pencolor(colors(mod(i, 6) + 1))
    for side = 1:4
        forward(120)
        right(90)
    end
    right(10)
end

% TASK 6 — type-it-live: the class supplies mod, the wraparound function
% (and the + 1 is because MATLAB counts from 1 — mod gives 0–5, the
%  string's shelf is 1–6)
turtle_start
turtle_speed(0)
pencolor('k')
for i = 1:150
    pencolor(colors(mod(i, 6) + 1))    % ← the line you type live
    forward(i)
    right(91)
end

% TASK 7 — any class picks work; e.g. pentagons tilting 15:
turtle_start
turtle_speed(0)

sides = 5;
tilt = 15;

for i = 1:72
    pencolor(colors(mod(i, 6) + 1))
    for side = 1:sides
        forward(90)
        right(360 / sides)
    end
    right(tilt)
end

fprintf('Gallery opening: one original artwork, by this class.\n')
```

*(Live-typing notes: an unfilled blank stops with `Unrecognized function or
variable '____'.` — you just haven't gotten there yet. A made-up color like
`pencolor('p')` is sneakier: `pencolor` stores it happily, and the error only
fires at the next `forward`, from inside the plotting machinery — a nice "errors
point at where the computer got stuck, not always where the mistake lives"
conversation. The purple-ish pen is `'m'`, magenta.)*

## `step5_class_predict_the_output.m` — answers

| Round | Answer | Why |
|-------|--------|-----|
| 1 | **A** — 18 | Repeats to close = 360 ÷ tilt = 360 ÷ 20 = 18. (C is the trap: 36 only works for 10° tilts.) |
| 2 | **B** — 50 steps | MATLAB's colon is *inclusive*: `1:5` really ends at 5, so the last side is 5 × 10 = 50. Sides 10, 20, 30, 40, 50: the arithmetic sequence that makes a spiral. |
| 3 | **A** — 1 2 0 1 2 0 | `mod(i, 3)` keeps the remainder, wrapping the count at 3 like a 3-hour clock. This cycle is exactly how a short color string paints a long drawing. |
| 4 | **B** — g | mod(7, 3) = 1, then + 1 = 2, and MATLAB counts from **one** (week 8!), so `colors(2)` is the *second* pen: green. A is the trap for anyone who dropped the + 1. |
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
2–3 student designs is next week's warm-up.** To run one: open `step3_class_demo.m`
Section 7, set `SIDES`, `TILT`, `SIZE`, and `COLORS` to the student's picks, and
re-run just that section (Ctrl+Enter).

**Brain teaser guidance:** the 24 divisors of 360:
1, 2, 3, 4, 5, 6, 8, 9, 10, 12, 15, 18, 20, 24, 30, 36, 40, 45, 60, 72, 90, 120,
180, 360. Kids who find 15+ deserve a shout-out. Why 360 was chosen: it divides
evenly by *so many* numbers (and roughly matches days in a year) — ideal for
splitting circles without fractions. Connect it forward: that's exactly why so many
tilt angles make neat spirographs.
