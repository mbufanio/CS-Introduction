# Week 11 — Turtle Geometry

> **Unit 6: Turtle Graphics** · First of two turtle weeks

## Objectives

By the end of class, students can:

1. Command the turtle with `forward()`/`backward()`, `right()`/`left()`, and
   `penup()`/`pendown()`
2. Draw any regular polygon with a **for loop** and the master formula
   **turn = 360 / n**
3. Explain the **exterior angle** insight: the turtle turns the *outside* of each
   corner, and one full trip around any polygon turns exactly **360°**
4. Check interior angles with **interior = 180 − 360/n** (square 90°, triangle 60°,
   hexagon 120°)

## Vocabulary

| Word | Kid-friendly definition |
|------|------------------------|
| **turtle** | Python's drawing robot — it draws everywhere it walks |
| **`forward(n)` / `backward(n)`** | walk n steps in the direction the turtle faces (or the reverse) |
| **`right(d)` / `left(d)`** | spin in place by d degrees — turning never draws |
| **`penup()` / `pendown()`** | lift the pen (walk invisibly) / put it back down |
| **exterior angle** | the turn the turtle makes at a corner — the *outside* of the corner |
| **interior angle** | the angle *inside* the corner — always 180 − the turn |

## Math tie-in

**Exterior angles of any polygon sum to 360° — and the turtle proves it.** Walk any
polygon's boundary once and you end up back where you started, *facing the way you
started* — so your turns must add up to exactly one full spin: 360°, always, for any
polygon. That gives the master formula for regular polygons (**turn = 360/n**) and the
interior-angle formula (**interior = 180 − 360/n**), which the demo verifies live
against values the class already knows: square 90°, equilateral triangle 60°, hexagon
120°. This is the angle content of the geometry unit, made walkable — the "triangle
trap" in the demo (turn 60 draws the wrong shape!) is the best interior-vs-exterior
lesson a protractor never taught.

## Before class

- [ ] Print `handout.md` (one per student), have `answer-key.md` open or printed for you
- [ ] **Dry-run `1-demo.py` on the actual smartboard.** The turtle window often opens
      *behind* VS Code — find it once now, and plan a side-by-side layout (VS Code on
      one half of the screen, turtle window on the other)
- [ ] Clear a few square feet at the front of the room — you're going to be walked
      like a robot
- [ ] Optional hook prop: masking-tape square on the floor as the "target shape"

## Lesson plan — 45 minutes

### 0:00–0:02 · Last time

Two-sentence recap of week 10: *"Last week you built your own commands with `def` —
machines that take an input and return an output. This week we get a whole toolbox of
commands somebody else built: Python's drawing robot."* Shout-outs for anyone who did
the function-machine brain teaser.

### 0:02–0:09 · Hook: program the teacher-robot (no computer yet)

Stand up. Announce: *"I am a robot. I understand exactly TWO commands: 'forward N
steps' and 'turn right N degrees.' Program me to walk a square."*

Obey literally and let the first attempts fail hilariously: someone says "turn right"
with no number → spin a random tiny amount. "Turn 45!" → walk a diamond-ish nothing.
"Turn 100!" → drift off toward the door. Keep asking *"how many degrees?"* until the
class lands on the recipe: **4 × (forward 4 steps, turn right 90)**. Walk it perfectly.
Take a bow. Then the bridge:

> *"You just wrote a program. Now meet a robot that lives in the computer, follows the
> same two commands — and draws everywhere it walks."*

### 0:09–0:24 · Demo: `1-demo.py`

Run the whole file once — it pauses in the **terminal** between sections, so you
control the pacing (click into the terminal to press Enter). Each section wipes the
canvas first. Beats to hit:

- `forward(100)` — a line appears. This is an applause moment; milk it.
- `right(90)` **spins in place**, then the next `forward` walks the new direction
- The square the long way (8 lines) → *"didn't we learn a tool for repeated code?"*
  → the square with a for loop (week 6 and week 11 shake hands)
- ⭐ **THE TRIANGLE TRAP**: the class will say "triangle angles are 60°, so turn 60."
  Run it wrong *first* — it draws half a hexagon. Then the aha: the turtle turns the
  **exterior** angle, 180 − 60 = **120**. Do not skip the wrong run; it's the lesson.
- The master formula **turn = 360/n**: pentagon (72), hexagon (60), decagon (36),
  drawn side by side; the terminal prints the interior-angle checks
- Finale: n = 60 — *"a polygon with so many sides it becomes... a circle."*

### 0:24–0:32 · Class writes code: `2-fill-in-the-blank.py`

Kids call out what goes in each blank; you type and run after every task. Expect the
60-vs-120 mistake to resurface in the triangle task — type it, run it, let the class
catch it. Completed code is in `answer-key.md`.

### 0:32–0:38 · Voting game: `3-predict-the-output.py`

This file stays in the terminal (no turtle window): shape rounds reveal an ASCII
sketch of what the turtle would draw. Class votes A/B/C, you press Enter, someone who
got it right explains why. The final round is sneaky on purpose.

### 0:38–0:43 · Handout

Kids trace turtle commands on the printed grid (their pencil is the pen), fill the
polygon table, and spot the bug in a square program. Circulate. Point out the
brain teaser — turtle commands for a rectangle or their own initial.

### 0:43–0:45 · Wrap-up

Say it once, plainly: *"The turtle turns the OUTSIDE of every corner, and one lap
around any shape is always 360 degrees of turning. Divide 360 by the number of sides
and you can draw anything."* Tease week 12: *"Next week we remove the turtle's speed
limit, hand it six colors, and turn this math into art."*

## If you have extra time

Open `4-challenge.py`: the 5-pointed star (ask the class why the turn is 144, not 72 —
the star turns 720° total, two full spins!), block-letter initials drawn with
penup/pendown, a dashed-line "sewing machine," and a polygon-morph loop that fans
every polygon from n = 3 to 10 — a sneak peek of next week's loop-inside-a-loop.

## Common pitfalls

- **The turtle window hides behind VS Code.** It will happen at least once. Stay calm,
  check the taskbar, and sell the troubleshooting as part of programming life.
- **Interior vs exterior confusion.** Kids will keep reaching for the interior angle
  all class. Anchor phrase: *"the turtle turns the OUTSIDE of the corner."* Repeat it
  every polygon.
- **"Steps" vs "degrees."** `forward(90)` and `right(90)` mean totally different
  90s. If someone mixes them up in fill-in-the-blank, run it — the picture explains.
- **Someone closes the turtle window mid-demo.** The program crashes. Just re-run the
  file and skip ahead with Enter — sections are self-contained.
- **Deleting `turtle.done()`.** Without it the window slams shut the instant the
  drawing finishes. It's the last line of every turtle file for a reason.
