# ==============================================================================
#
#   WEEK 11 · CHALLENGE  —  for fast classes, curious kids, or a big finish
#
#   Four stretch drawings built from today's toolbox. Run the whole file:
#   it pauses in the TERMINAL between challenges (press Enter), and wipes
#   the canvas before each one. The turtle window may hide behind VS Code.
#
# ==============================================================================

import turtle


# ------------------------------------------------------------------------------
# CHALLENGE 1 · THE FIVE-POINTED STAR
# ------------------------------------------------------------------------------
# ⭐ ASK THE CLASS FIRST: a star has 5 points, so the turn should be
#    360 / 5 = 72... right?  (No! Turn 72 and you get a pentagon.)
#
# To draw the POINTY star, the turtle turns 144 at every point.
# 5 turns x 144 = 720 degrees — the turtle spins around TWICE before it
# comes home. A pentagon is one lap of turning; a star is two.
# (turn = 720 / 5 = 144. File that away — art class uses it next week.)

input("CHALLENGE 1 — press Enter to draw the star: ")

turtle.speed(6)
for point in range(5):
    turtle.forward(300)
    turtle.right(144)


# ------------------------------------------------------------------------------
# CHALLENGE 2 · INITIALS — the turtle learns the alphabet
# ------------------------------------------------------------------------------
# Ada's initials: a block letter A, then an L for her friend Leo.
# No new commands — just forward, turns, and penup/pendown for the hops.
# ⭐ Swap in a student's initials next time: sketch the letter on the board
#    first, then translate each stroke into a command, as a class.

input("CHALLENGE 2 — press Enter to draw the initials: ")

turtle.reset()
turtle.speed(6)

turtle.left(90)          # face north — letters are drawn bottom-to-top
turtle.forward(120)      # A: left side, going up
turtle.right(90)
turtle.forward(60)       # A: the top
turtle.right(90)
turtle.forward(120)      # A: right side, coming down
turtle.backward(60)      # back up to the middle...
turtle.right(90)
turtle.forward(60)       # ...and across: the crossbar. That's an A!

turtle.right(180)        # about-face, now heading east
turtle.penup()
turtle.forward(120)      # hop (invisibly) to the L's neighborhood
turtle.left(90)
turtle.forward(60)       # climb to the L's top-left corner
turtle.pendown()
turtle.right(180)        # face south
turtle.forward(120)      # L: the tall stroke, going down
turtle.left(90)
turtle.forward(60)       # L: the foot. Done — "AL"!


# ------------------------------------------------------------------------------
# CHALLENGE 3 · THE SEWING MACHINE — a dashed line
# ------------------------------------------------------------------------------
# penup/pendown inside a loop = stitches. Draw 20, skip 12, repeat.
# ⭐ ASK THE CLASS: how would you turn this into a DASHED SQUARE?
#    (Wrap this whole loop in the square recipe — try it live if time!)

input("CHALLENGE 3 — press Enter for the dashed line: ")

turtle.reset()
turtle.speed(6)
turtle.penup()
turtle.backward(200)     # start at the left so the stitching fits on screen
for dash in range(12):
    turtle.pendown()
    turtle.forward(20)   # draw a stitch...
    turtle.penup()
    turtle.forward(12)   # ...skip a gap


# ------------------------------------------------------------------------------
# CHALLENGE 4 · POLYGON MORPH  —  ⚡ sneak peek of week 12
# ------------------------------------------------------------------------------
# Every polygon from triangle to decagon, drawn from the same corner and
# fanned out 20 degrees apart. The master formula draws ALL of them.
#
# Look closely: that's a loop INSIDE a loop. You don't need to explain it —
# just say: "next week, this trick fills the whole screen with art."

input("CHALLENGE 4 — press Enter for the polygon morph: ")

turtle.reset()
turtle.speed(0)          # speed 0 = NO speed limit (art class runs on this)
for n in range(3, 11):   # n = 3, 4, 5, ... 10
    for side in range(n):
        turtle.forward(70)
        turtle.right(360 / n)    # the master formula, working overtime
    turtle.right(20)     # fan out before the next polygon

print()
print("Eight polygons, one formula. See you in art class next week.")

turtle.done()            # keeps the window open — always the last line
