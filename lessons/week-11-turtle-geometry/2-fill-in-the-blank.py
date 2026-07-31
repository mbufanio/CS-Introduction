# ==============================================================================
#
#   WEEK 11 · FILL IN THE BLANK  —  the class writes the code, you type it
#
#   HOW THIS WORKS (teacher):
#     · Every blank looks like this:  ____
#     · Read the task aloud. Kids call out what goes in the blank.
#     · Type their answer — even wrong ones! — and run the file.
#       (Turn 60 for the triangle? Type it. Run it. Let the picture object.)
#     · Run after EACH task so the class sees their drawing grow.
#       A task below the last filled blank crashes with an error that has
#       '____' in it — that just means you haven't gotten there yet.
#       When the file crashes, the turtle window closes itself; the picture
#       comes back on the next run.
#     · The turtle window may open BEHIND VS Code — check the taskbar.
#
#   Completed version: answer-key.md
#
# ==============================================================================


# ── TASK 1 ────────────────────────────────────────────────────────────────────
# Python's drawing robot lives in a module — a toolbox we have to bring in,
# just like we brought in random back in week 5.
# What's the module called? (Hint: it's slow, green, and carries its house.)

import ____

turtle.speed(3)          # speed dial 1–10 (this line works once Task 1 is filled)


# ── TASK 2 ────────────────────────────────────────────────────────────────────
# Which command makes the robot WALK 150 steps, drawing as it goes?

turtle.____(150)


# ── TASK 3 ────────────────────────────────────────────────────────────────────
# Now make the robot spin 90 degrees clockwise — the soldier's right-face.
# (Remember: turning never draws. Only walking draws.)

turtle.____(90)
turtle.forward(150)      # ...and walk again. What shape do the two lines make?


# ── TASK 4 · THE SQUARE ──────────────────────────────────────────────────────
# Time for the floor-square recipe, computer edition. TWO blanks:
# how many times does the corner routine repeat, and how big is each turn?

turtle.reset()           # wipe the canvas so the square gets a fresh page
turtle.speed(3)
for side in range(____):
    turtle.forward(120)
    turtle.right(____)


# ── TASK 5 · THE TRIANGLE (careful...) ───────────────────────────────────────
# An equilateral triangle. Its angles are 60 degrees. So the turtle turns...
# ⭐ Take the vote seriously — if the class says 60, TYPE 60 and run it.
#    The wandering non-triangle on screen is the best teacher in the room.
#    Then ask: what does the turtle actually turn? (The OUTSIDE of the corner.)

turtle.reset()
turtle.speed(3)
for side in range(3):
    turtle.forward(150)
    turtle.right(____)


# ── TASK 6 · THE MASTER FORMULA ──────────────────────────────────────────────
# A hexagon — but this time, no memorized angle. The turtle's turns around
# ANY polygon total 360 degrees, so each corner's turn is 360 divided by...?

turtle.reset()
turtle.speed(3)
n = 6
turn = 360 / ____
for side in range(n):
    turtle.forward(90)
    turtle.right(turn)


# ── TASK 7 · THE CLASS'S POLYGON ─────────────────────────────────────────────
# The class picks ANY number of sides from 3 to 12 — majority vote.
# The master formula does the rest. Re-run with a second choice if time!

turtle.reset()
turtle.speed(6)
sides = ____
for side in range(sides):
    turtle.forward(80)
    turtle.right(360 / sides)

print("A polygon with", sides, "sides — each turn was", 360 / sides, "degrees.")

turtle.done()            # keeps the window open so everyone can admire the work
