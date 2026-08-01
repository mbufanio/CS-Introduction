# ==============================================================================
#
#   WEEK 12  ·  TURTLE ART  —  the payoff
#
#   Last week: geometry. This week: everything the turtle learned, plus
#   color, plus NO speed limit. The math doesn't change — it just gets
#   beautiful.
#
#   TEACHER — HOW TO RUN THIS FILE:
#     · Run the whole file once:  python 1-demo.py
#     · SECTION 0 IS THE HOOK — run it the moment class starts. Don't
#       explain anything yet. Let them watch art bloom for 30 seconds.
#     · The file pauses in the TERMINAL between sections (press Enter).
#       The turtle window may open BEHIND VS Code — check the taskbar.
#     · Sections wipe the canvas with turtle.reset(). reset() clears the
#       pen's color/size and speed, so each section re-sets its own.
#       (The black background sticks around — gallery walls stay black.)
#
# ==============================================================================

import turtle


# ------------------------------------------------------------------------------
# SECTION 0 · THE MASTERPIECE  (run first — explain NOTHING)
# ------------------------------------------------------------------------------
# 36 squares, each rotated 10 degrees from the last, painted from a
# six-color list. That's it. That's the whole magic trick.
#
# Say only this: "Everything you're about to see is made of things you
# already know. By the end of class, you'll design your own."

input("SECTION 0 — press Enter to run today's finale FIRST: ")

turtle.speed(0)                    # no speed limit (explained in Section 2)
turtle.bgcolor("black")
turtle.pensize(2)
colors = ["red", "orange", "yellow", "green", "blue", "purple"]

for i in range(36):
    turtle.pencolor(colors[i % 6])
    for side in range(4):
        turtle.forward(140)
        turtle.right(90)
    turtle.right(10)


# ------------------------------------------------------------------------------
# SECTION 1 · PAINT  —  pencolor, pensize, bgcolor
# ------------------------------------------------------------------------------
# Three new dials on the robot:
#
#   turtle.pencolor("red")   → the ink
#   turtle.pensize(5)        → how thick the line is
#   turtle.bgcolor("black")  → the paper itself
#
# ⭐ ASK THE CLASS: same square recipe as last week. What's different
#    about the CODE — and what will be different on SCREEN?

input("SECTION 1 — press Enter for one painted square: ")

turtle.reset()                     # fresh canvas (background stays black)
turtle.speed(3)
turtle.pencolor("red")
turtle.pensize(5)
for side in range(4):
    turtle.forward(120)
    turtle.right(90)


# ------------------------------------------------------------------------------
# SECTION 2 · SPEED(0) — REMOVE THE SPEED LIMIT
# ------------------------------------------------------------------------------
# The speed dial goes 1 (slowest) to 10 (fast)... and then there's 0.
# Zero doesn't mean "stopped" — it means NO LIMIT. The turtle teleports.
#
# ⭐ ASK THE CLASS: this is a 36-sided polygon — last week that took
#    forever. Count how long it takes at speed 0. Ready?

input("SECTION 2 — press Enter to remove the speed limit: ")

turtle.reset()
turtle.speed(0)                    # ← the secret setting
turtle.pencolor("white")
turtle.pensize(2)
for side in range(36):
    turtle.forward(25)
    turtle.right(10)               # 360 / 36 = 10 — the master formula lives on


# ------------------------------------------------------------------------------
# SECTION 3 · THE SPIRAL  —  forward(i) changes everything
# ------------------------------------------------------------------------------
# Last week every side was the same:  forward(100), forward(100), ...
# Watch what happens when the side length is THE LOOP VARIABLE:
#
#   side lengths:  0, 1, 2, 3, 4, 5, ...  ← an arithmetic sequence,
#                                            drawn in space
#
# Each lap of the loop, the side grows one step longer. That's it.
# That's a spiral.
#
# ⭐ ASK THE CLASS: predict the shape before you press Enter.

input("SECTION 3 — press Enter for forward(i): ")

turtle.reset()
turtle.speed(0)
turtle.pencolor("cyan")
turtle.pensize(2)
for i in range(120):
    turtle.forward(i)              # ← the whole trick: i, not a fixed number
    turtle.right(90)

print()
print("The side lengths were 0, 1, 2, 3, ... 119 — an arithmetic sequence.")
print("Same turn as a square (90). Growing sides. Result: a square spiral.")


# ------------------------------------------------------------------------------
# SECTION 4 · THE 91-DEGREE GASP
# ------------------------------------------------------------------------------
# ⭐ ASK THE CLASS: same spiral, but the turn changes from 90 to 91.
#    ONE degree different. Vote: (a) looks identical  (b) slightly crooked
#    (c) completely different picture.

input("SECTION 4 — press Enter to change ONE degree: ")

turtle.reset()
turtle.speed(0)
turtle.pencolor("magenta")
turtle.pensize(2)
for i in range(150):
    turtle.forward(i)
    turtle.right(91)               # 91, not 90. That's the only change.

print()
print("One degree. The corners over-rotate a tiny bit every lap, and the")
print("whole picture twists into a whirlpool. Tiny angle change, huge art.")


# ------------------------------------------------------------------------------
# SECTION 5 · THE SPIROGRAPH PATTERN
# ------------------------------------------------------------------------------
# The recipe behind Section 0:
#
#   1. draw a shape          (a square — last week's recipe)
#   2. turn a LITTLE         (10 degrees)
#   3. repeat                (36 times)
#
# ⭐ ASK THE CLASS: why exactly 36 repeats? What is 36 × 10?
#    (360 — the rotations tile one full circle, so the pattern closes
#    PERFECTLY, ending exactly where it began. Rotational symmetry!)

input("SECTION 5 — press Enter for the spirograph skeleton (one color): ")

turtle.reset()
turtle.speed(0)
turtle.pencolor("white")
turtle.pensize(2)
for i in range(36):                # 36 repeats...
    for side in range(4):          # ...of last week's square...
        turtle.forward(140)
        turtle.right(90)
    turtle.right(10)               # ...each tilted 10 more degrees. 36 × 10 = 360.


# ------------------------------------------------------------------------------
# SECTION 6 · % PICKS THE PAINT  —  colors[i % 6]
# ------------------------------------------------------------------------------
# A list of colors, in a variable — and we grab one BY POSITION, exactly
# like week 8's string indexing (word[0] was the first letter):
#
#   colors[0] → "red"      colors[3] → "green"
#   colors[1] → "orange"   colors[4] → "blue"
#   colors[2] → "yellow"   colors[5] → "purple"
#
# But i keeps counting: 6, 7, 8, ... and there IS no colors[6]!
# Week 9 to the rescue: % wraps numbers around, like Z wrapping to A.
# The terminal shows the cycle first; then we repaint Section 5 with it.

input("SECTION 6 — press Enter to see % pick the colors: ")

colors = ["red", "orange", "yellow", "green", "blue", "purple"]
for i in range(9):
    print("shape", i, "→  i % 6 =", i % 6, "→ ", colors[i % 6])
print("...the % from cipher week is now painting: 0 1 2 3 4 5 0 1 2 forever.")

input("           now press Enter to run the spirograph IN COLOR: ")

turtle.reset()
turtle.speed(0)
turtle.pensize(2)
for i in range(36):
    turtle.pencolor(colors[i % 6])   # ← the only new line vs Section 5
    for side in range(4):
        turtle.forward(140)
        turtle.right(90)
    turtle.right(10)

# That's Section 0, fully explained. The magic trick is theirs now.


# ------------------------------------------------------------------------------
# SECTION 7 · CLASS DESIGN MOMENT  —  ⭐ TWEAK THESE ⭐
# ------------------------------------------------------------------------------
# The class votes, you edit the three dials below, re-run the file, and
# tap Enter straight through the earlier sections to get back here (they
# replay fast). Capital letters = a signal to humans: these are the dials.
#
#   SHAPE_SIDES   3 = triangles, 4 = squares, 5 = pentagons, 6 = hexagons...
#   TILT          angles that divide 360 close neatly (5, 8, 9, 10, 12, 15,
#                 20, 24, 30...); angles that DON'T are beautifully weird
#   SIZE          how big each shape is (80–160 fits the screen well)
#
# 72 repeats is enough for most designs to close (or nearly). Colors are
# up for a vote too — any names the class trusts: "gold", "hotpink",
# "springgreen", "cyan", "orangered", "violet"...

input("SECTION 7 — set the dials with the class, then press Enter: ")

SHAPE_SIDES = 4                    # ← TWEAK THIS
TILT = 10                          # ← TWEAK THIS
SIZE = 130                         # ← TWEAK THIS
colors = ["red", "orange", "yellow", "green", "blue", "purple"]   # ← AND THIS

turtle.reset()
turtle.speed(0)
turtle.pensize(2)
for i in range(72):
    turtle.pencolor(colors[i % 6])
    for side in range(SHAPE_SIDES):
        turtle.forward(SIZE)
        turtle.right(360 / SHAPE_SIDES)
    turtle.right(TILT)

print()
print("Designed by this class. Signed, the turtle.")
print("(Keep your handout design — next week we run student spirographs!)")

turtle.done()                      # keeps the gallery open — always the last line
