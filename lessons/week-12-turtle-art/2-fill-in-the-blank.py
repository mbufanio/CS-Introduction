# ==============================================================================
#
#   WEEK 12 · FILL IN THE BLANK  —  the class writes the code, you type it
#
#   HOW THIS WORKS (teacher):
#     · Every blank looks like this:  ____
#     · Read the task aloud. Kids call out what goes in the blank.
#     · Type their answer — even wrong ones! — and run the file.
#       (A misspelled color name crashes with a "bad color" error.
#        Read it together, fix it, celebrate. Errors are clues.)
#     · Run after EACH task so the class sees their art grow.
#       A task below the last filled blank crashes with an error that has
#       '____' in it — that just means you haven't gotten there yet.
#       When the file crashes, the turtle window closes itself; the picture
#       comes back on the next run.
#     · TASK 6 has NO blank — you type a line live while the class supplies
#       the operator. Instructions are at the task.
#
#   Completed version: answer-key.md
#
# ==============================================================================

import turtle

turtle.bgcolor("black")            # gallery walls
turtle.pensize(2)


# ── TASK 1 ────────────────────────────────────────────────────────────────────
# Which command chooses the turtle's INK color?
# (And what does the class want — "red"? "cyan"? "hotpink"? Their call.)

turtle.____("red")


# ── TASK 2 ────────────────────────────────────────────────────────────────────
# The turtle still has last week's speed limit. Which number on the speed
# dial means NO LIMIT AT ALL? (Careful — it's not 10...)

turtle.speed(____)


# ── TASK 3 · THE SPIRAL ──────────────────────────────────────────────────────
# A square spiral needs each side a little LONGER than the last.
# A fixed number can't do that... but something in this loop grows
# every single lap. What goes in the blank?

for i in range(100):
    turtle.forward(____)
    turtle.right(90)


# ── TASK 4 · CLOSE THE PATTERN ───────────────────────────────────────────────
# A spirograph of hexagons, tilting 12 degrees after each one.
# How many repeats until the tilts add up to one full 360-degree spin
# and the pattern closes perfectly? ⭐ Make them do the math out loud.

turtle.reset()
turtle.speed(0)
turtle.pencolor("white")
turtle.pensize(2)
for i in range(____):
    for side in range(6):
        turtle.forward(90)
        turtle.right(60)
    turtle.right(12)


# ── TASK 5 · THE PAINT CYCLE ─────────────────────────────────────────────────
# Six colors in the list — but i counts way past 5. What number after the %
# makes i wrap around the list forever? (Cipher-week flashback: % wraps,
# like Z wrapping to A.)

colors = ["red", "orange", "yellow", "green", "blue", "purple"]

turtle.reset()
turtle.speed(0)
turtle.pensize(2)
for i in range(36):
    turtle.pencolor(colors[i % ____])
    for side in range(4):
        turtle.forward(120)
        turtle.right(90)
    turtle.right(10)


# ── TASK 6 · TYPE-IT-LIVE — COLOR THE SPIRAL ─────────────────────────────────
# This spiral runs, but it's stuck in white. TEACHER: type ONE line at the
# marked spot, indented to match the other loop lines:
#
#         turtle.pencolor(colors[i ? 6])
#
# ...but DON'T type the '?' — the class supplies the operator that wraps
# numbers around. (It's the one that painted Task 5 and powered the cipher.)

turtle.reset()
turtle.speed(0)
turtle.pencolor("white")
turtle.pensize(2)
for i in range(150):
    # ← type the new line HERE, indented like the two lines below
    turtle.forward(i)
    turtle.right(91)


# ── TASK 7 · THE CLASS DESIGN ────────────────────────────────────────────────
# Two dials, class vote: how many sides for the shape, and how many degrees
# of tilt between shapes? (Tilts that divide 360 close neatly — 8, 9, 10,
# 12, 15, 20... Tilts that don't are gloriously weird. Either way: art.)

turtle.reset()
turtle.speed(0)
turtle.pensize(2)

sides = ____
tilt = ____

for i in range(72):
    turtle.pencolor(colors[i % 6])
    for side in range(sides):
        turtle.forward(110)
        turtle.right(360 / sides)
    turtle.right(tilt)

print("Gallery opening: one original artwork, by this class.")

turtle.done()                      # keeps the window open so everyone can admire it
