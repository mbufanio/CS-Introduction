# ==============================================================================
#
#   WEEK 11  ·  TURTLE GEOMETRY  —  meet the drawing robot
#
#   The class just "programmed" the teacher-robot to walk a square.
#   Now they meet a robot that lives in the computer, obeys the same
#   two commands — walk and turn — and DRAWS everywhere it walks.
#
#   TEACHER — HOW TO RUN THIS FILE:
#     · Run the whole file once:  python 1-demo.py
#     · It pauses in the TERMINAL between sections. Click into the terminal
#       and press Enter when the class is ready — you control the pacing.
#     · The turtle window may open BEHIND VS Code — check the taskbar!
#       Best setup: VS Code on one half of the smartboard, turtle window
#       on the other half.
#     · Each section wipes the canvas with turtle.reset() before drawing.
#       (reset() also resets the speed dial, so we re-set it each time.)
#
# ==============================================================================

import turtle


# ------------------------------------------------------------------------------
# SECTION 1 · MEET THE ROBOT
# ------------------------------------------------------------------------------
# The turtle starts in the CENTER of the window, facing RIGHT (east),
# with its pen touching the paper.
#
#   turtle.forward(100)   means:  "walk 100 steps in the direction you face"
#
# ⭐ ASK THE CLASS: when I press Enter, the robot walks 100 steps.
#    What will appear in the window?

input("SECTION 1 — press Enter to wake the turtle (window may open BEHIND VS Code): ")

turtle.speed(3)          # the speed dial: 1 = slowest ... 10 = fast
turtle.forward(100)      # ← the first line your class ever draws. Applause moment.


# ------------------------------------------------------------------------------
# SECTION 2 · THE TURTLE TURNS, *THEN* WALKS
# ------------------------------------------------------------------------------
# turtle.right(90) does NOT move the turtle. It spins it in place, like a
# soldier doing a right-face. Turning never draws — only walking draws.
#
# Also in the toolbox:  turtle.left(degrees)  and  turtle.backward(steps).
#
# ⭐ ASK THE CLASS: the turtle is facing right. After right(90), which way
#    does it face? So which way will the next forward(100) walk? (Down!)

input("SECTION 2 — press Enter to turn, then walk: ")

turtle.right(90)         # spin 90 degrees clockwise — no walking yet!
turtle.forward(100)      # NOW it walks, in the new direction


# ------------------------------------------------------------------------------
# SECTION 3 · A SQUARE, THE LONG WAY
# ------------------------------------------------------------------------------
# The class's floor-square recipe was: 4 × (forward, turn right 90).
# Here it is written out the LONG way — every single command.
#
# ⭐ ASK THE CLASS (after it draws): look at this code. What do you notice?
#    The same two lines, four times in a row... didn't we learn a tool
#    for exactly this back in week 6?

input("SECTION 3 — press Enter to draw a square the LONG way: ")

turtle.reset()           # wipe the canvas; turtle back to center, facing east
turtle.speed(3)
turtle.forward(100)
turtle.right(90)
turtle.forward(100)
turtle.right(90)
turtle.forward(100)
turtle.right(90)
turtle.forward(100)
turtle.right(90)         # last turn: the turtle ends FACING THE WAY IT STARTED


# ------------------------------------------------------------------------------
# SECTION 4 · A SQUARE, THE SMART WAY  (week 6, meet week 11)
# ------------------------------------------------------------------------------
# Eight lines become three. Same square, same robot — but now the NUMBER 4
# is visible in the code: "do this corner routine 4 times."
#
# ⭐ ASK THE CLASS: what would happen if I changed range(4) to range(3)?
#    (Hold that thought — it's about to go wrong in the best way.)

input("SECTION 4 — press Enter for the for-loop square: ")

turtle.reset()
turtle.speed(3)
for side in range(4):
    turtle.forward(100)
    turtle.right(90)


# ------------------------------------------------------------------------------
# SECTION 5 · THE TRIANGLE TRAP
# ------------------------------------------------------------------------------
# ⭐ ASK THE CLASS: let's draw an equilateral triangle. Every angle in it
#    is 60 degrees — the class has known that for years. So the turtle
#    should turn 60 at each corner... right? Vote: will this draw a triangle?
#
# We run their plan EXACTLY as voted. (Spoiler: computers are literal.)

input("SECTION 5 — press Enter to run the class's triangle plan (turn 60): ")

turtle.reset()
turtle.speed(3)
for side in range(3):
    turtle.forward(150)
    turtle.right(60)     # ...the class's idea. Watch what actually happens.

# That is NOT a triangle — it's half a hexagon, wandering off.
#
# THE AHA: 60 degrees is the angle INSIDE the corner (the interior angle).
# But the turtle doesn't stand inside the corner — it walks THROUGH it,
# and turns through the OUTSIDE of the corner:
#
#          /
#         / ) ← interior angle = 60   (inside the shape)
#   _____/                             the turtle turns the rest of the
#         `--→ exterior angle = 180 − 60 = 120   ← what the turtle turns!

input("SECTION 5, part 2 — press Enter for the FIX (turn 120): ")

turtle.reset()
turtle.speed(3)
for side in range(3):
    turtle.forward(150)
    turtle.right(120)    # exterior angle: 180 − 60. THAT'S a triangle.

# ⭐ ASK THE CLASS: the turtle made 3 turns of 120. What do they add up to?
#    (360 — one full spin. Remember that number. It's about to run the show.)


# ------------------------------------------------------------------------------
# SECTION 6 · THE MASTER FORMULA:  turn = 360 / n
# ------------------------------------------------------------------------------
# Walk around ANY polygon and you end up back where you started, facing the
# way you started. So your turns ALWAYS total exactly 360 degrees — one full
# spin — no matter the shape. Split 360 evenly among n corners:
#
#       turn at each corner = 360 / n      ← draws ANY regular polygon
#       interior angle      = 180 − 360/n  ← check it against what you know!
#
# The terminal prints the math while the turtle draws the family portrait.

input("SECTION 6 — press Enter for pentagon, hexagon, decagon: ")

print()
print("THE MASTER FORMULA:  turn = 360 / n      interior = 180 - 360/n")
print("  n = 3  → turn", 360 / 3, " → interior", 180 - 360 / 3, "  ← triangle: checks out!")
print("  n = 4  → turn", 360 / 4, "  → interior", 180 - 360 / 4, "   ← square: checks out!")
print("  n = 5  → turn", 360 / 5, "  → interior", 180 - 360 / 5)
print("  n = 6  → turn", 360 / 6, "  → interior", 180 - 360 / 6, "  ← hexagon: checks out!")
print("  n = 10 → turn", 360 / 10, "  → interior", 180 - 360 / 10)
print()

turtle.reset()
turtle.speed(6)

turtle.penup()           # pen UP: the turtle can travel without drawing
turtle.backward(260)     # scoot left to make room for the whole family
turtle.pendown()         # pen DOWN: back to drawing

for side in range(5):    # PENTAGON — turn 360/5 = 72
    turtle.forward(80)
    turtle.right(72)

# ⭐ ASK THE CLASS: the pentagon is done and the turtle faces east again —
#    exactly how it started. It HAS to: it turned 5 × 72 = 360. Every time.

turtle.penup()
turtle.forward(180)      # hop right (invisibly) to the next easel
turtle.pendown()

for side in range(6):    # HEXAGON — turn 360/6 = 60
    turtle.forward(70)
    turtle.right(60)

turtle.penup()
turtle.forward(180)
turtle.pendown()

for side in range(10):   # DECAGON — turn 360/10 = 36
    turtle.forward(40)
    turtle.right(36)


# ------------------------------------------------------------------------------
# SECTION 7 · GRAND FINALE — WHAT IF n IS HUGE?
# ------------------------------------------------------------------------------
# ⭐ ASK THE CLASS: triangle, square, pentagon, hexagon, decagon... the more
#    sides, the rounder it looks. What if a polygon had SIXTY sides?
#    Predict, then press Enter.

input("SECTION 7 — press Enter for the 60-sided polygon: ")

turtle.reset()
turtle.speed(10)         # crank the dial — 60 corners is a lot of corners
for side in range(60):
    turtle.forward(10)
    turtle.right(6)      # 360 / 60 = 6 degrees per corner

print()
print("A 60-sided polygon: 60 tiny sides, 60 tiny 6-degree turns...")
print("At some point a polygon stops looking like a polygon.")
print("A circle is just a polygon that never skips leg day.")
print()
print("Close the turtle window when the class is done admiring it.")

turtle.done()            # keeps the window open — ALWAYS the last line of a turtle file
