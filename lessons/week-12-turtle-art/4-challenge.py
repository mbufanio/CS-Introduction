# ==============================================================================
#
#   WEEK 12 · CHALLENGE  —  the art wing
#
#   Four showpieces. Run the whole file: it pauses in the TERMINAL between
#   pieces (press Enter) and wipes the canvas before each one.
#   CHALLENGE 1 also works as an alternate class hook — it's the rainbow
#   spirograph, circle edition.
#
# ==============================================================================

import turtle
import random


# ------------------------------------------------------------------------------
# CHALLENGE 1 · RAINBOW SPIROGRAPH — CIRCLE EDITION
# ------------------------------------------------------------------------------
# turtle.circle(120) draws a full circle of radius 120 — one new command,
# and suddenly the spirograph goes from mandala to flower.
# Same skeleton as the demo: draw, tilt 10, repeat 36 (36 × 10 = 360).

input("CHALLENGE 1 — press Enter for the circle spirograph: ")

turtle.speed(0)
turtle.bgcolor("black")
turtle.pensize(2)
colors = ["red", "orange", "yellow", "green", "blue", "purple"]

for i in range(36):
    turtle.pencolor(colors[i % 6])
    turtle.circle(120)             # ← the only change from the square version
    turtle.right(10)


# ------------------------------------------------------------------------------
# CHALLENGE 2 · THE DRUNK TURTLE — random-walk art
# ------------------------------------------------------------------------------
# Week 5 crashes the art party: before every step, the turtle turns a
# RANDOM amount — 0, 90, 180, or 270 — then walks 20 steps. City-block
# wandering, different masterpiece every run.
# ⭐ Re-run it two or three times: "same code, different painting. Why?"
#    (If it wanders off the edge, that's part of its charm. Re-run.)

input("CHALLENGE 2 — press Enter to release the drunk turtle: ")

turtle.reset()
turtle.speed(0)
turtle.pensize(3)
for step in range(250):
    turtle.pencolor(colors[step % 6])
    turtle.right(random.choice([0, 90, 180, 270]))
    turtle.forward(20)


# ------------------------------------------------------------------------------
# CHALLENGE 3 · STAR-BURST GENERATOR — random colors
# ------------------------------------------------------------------------------
# Out 160 steps, back 160 steps, tilt 10, repeat — 36 colored rays.
# random.choice picks the paint, so every burst has its own mood.

input("CHALLENGE 3 — press Enter for the star-burst: ")

turtle.reset()
turtle.speed(0)
turtle.pensize(2)
for ray in range(36):
    turtle.pencolor(random.choice(colors))
    turtle.forward(160)            # shoot a ray out...
    turtle.backward(160)           # ...and reel it back in
    turtle.right(10)               # 36 rays × 10 degrees = full circle


# ------------------------------------------------------------------------------
# CHALLENGE 4 · THE ART CONTEST — change ONE variable
# ------------------------------------------------------------------------------
# Four presets, one engine. Set PRESET to 1, 2, 3, or 4 and re-run.
# Hold a class vote for the winner — artist statements optional.
#
#   1 · GALAXY       squares tilting 11 (11 doesn't divide 360 — it walks
#                    around and around until the math catches up. Lush.)
#   2 · FLOWER       hexagons tilting 20 — closes neatly in 18 repeats
#   3 · SUPERNOVA    STARS (turn 144!) tilting 24 — pointy chaos
#   4 · HURRICANE    a 91-degree spiral in thick pen — the gasp, framed

input("CHALLENGE 4 — set PRESET (1–4) in the code, press Enter to draw: ")

PRESET = 1                         # ← THE dial. Change it, re-run, vote.

if PRESET == 1:                    # GALAXY
    shape_sides = 4
    shape_turn = 90
    tilt = 11
    size = 120
    repeats = 90
elif PRESET == 2:                  # FLOWER
    shape_sides = 6
    shape_turn = 60
    tilt = 20
    size = 100
    repeats = 18
elif PRESET == 3:                  # SUPERNOVA
    shape_sides = 5
    shape_turn = 144               # the star turn — two full spins per star
    tilt = 24
    size = 150
    repeats = 15
else:                              # HURRICANE (preset 4 — or any other number)
    shape_sides = 1                # "shape" is just one growing line...
    shape_turn = 91                # ...turning 91: the whirlpool spiral
    tilt = 0
    size = 0                       # (unused — the hurricane grows on its own)
    repeats = 0                    # (the hurricane has its own loop below)

turtle.reset()
turtle.speed(0)
turtle.pensize(2)

if PRESET == 4:
    turtle.pensize(4)
    for i in range(160):
        turtle.pencolor(colors[i % 6])
        turtle.forward(i)
        turtle.right(shape_turn)
else:
    for i in range(repeats):
        turtle.pencolor(colors[i % 6])
        for side in range(shape_sides):
            turtle.forward(size)
            turtle.right(shape_turn)
        turtle.right(tilt)

print()
print("Entry number", PRESET, "has been submitted to the class art contest.")
print("Change PRESET and re-run to see the competition.")

turtle.done()                      # keeps the gallery open — always the last line
