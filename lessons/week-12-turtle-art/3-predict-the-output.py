# ==============================================================================
#
#   WEEK 12 · PREDICT THE OUTPUT  —  the voting game
#
#   HOW THIS WORKS (teacher):
#     · Run this whole file once:  python 3-predict-the-output.py
#     · Before each reveal, the terminal waits for you.
#     · The class reads the round's code HERE in the editor, votes A/B/C,
#       THEN you press Enter in the terminal to reveal the answer.
#     · Ask someone who got it right to explain WHY.
#
#   NOTE: there is NO turtle in this file — on purpose. Number rounds run
#   for real; drawing rounds reveal a text sketch, so the whole game stays
#   in the terminal.
#
#   Answers with explanations: answer-key.md
#
# ==============================================================================


# ══ ROUND 1 · closing time ═══════════════════════════════════════════════════
#
#     print(360 // 20)
#
#   A spirograph tilts 20 degrees after each shape. How many repeats until
#   the tilts total 360 and the pattern closes perfectly?
#     A)  18
#     B)  20
#     C)  36
#
input("ROUND 1 — read the code above, vote A/B/C... then press Enter to reveal: ")
print(360 // 20)
print()
print("(18 repeats of 20 degrees = 360 — one full spin, pattern closed.")
print(" You're computing 360 ÷ tilt. Divisors of 360 make the neat mandalas.)")
print()


# ══ ROUND 2 · the growing side ═══════════════════════════════════════════════
#
#     for i in range(1, 6):
#         print("this side is", i * 10, "steps long")
#
#   This is a spiral's diary. What does its LAST line say?
#     A)  this side is 40 steps long
#     B)  this side is 50 steps long
#     C)  this side is 60 steps long
#
input("ROUND 2 — vote A/B/C... then press Enter to reveal: ")
for i in range(1, 6):
    print("this side is", i * 10, "steps long")
print()
print("(range(1, 6) stops BEFORE 6, so the last i is 5 → 50 steps.")
print(" Side lengths 10, 20, 30, 40, 50 — an arithmetic sequence = a spiral.)")
print()


# ══ ROUND 3 · the cycle ══════════════════════════════════════════════════════
#
#     for i in range(6):
#         print(i % 3)
#
#   What sequence prints (top to bottom)?
#     A)  0 1 2 0 1 2
#     B)  0 1 2 3 4 5
#     C)  0 0 1 1 2 2
#
input("ROUND 3 — vote A/B/C... then press Enter to reveal: ")
for i in range(6):
    print(i % 3)
print()
print("(% 3 wraps the count around at 3, like a 3-hour clock: 0 1 2 0 1 2.")
print(" THIS is how a short color list paints a long drawing.)")
print()


# ══ ROUND 4 · which paint? ═══════════════════════════════════════════════════
#
#     colors = ["red", "gold", "blue"]
#     print(colors[7 % 3])
#
#   Shape number 7 is about to be painted. Which color?
#     A)  red
#     B)  gold
#     C)  blue
#
input("ROUND 4 — vote A/B/C... then press Enter to reveal: ")
colors = ["red", "gold", "blue"]
print(colors[7 % 3])
print()
print("(7 % 3 = 1... and positions start at ZERO — week 8 flashback! —")
print(" so colors[1] is the SECOND color: gold. 'red' is the off-by-one trap.)")
print()


# ══ ROUND 5 · star or polygon? ═══════════════════════════════════════════════
#
#     for i in range(5):
#         turtle.forward(200)
#         turtle.right(144)
#
#   Five sides, turning 144 each time. What appears?
#     A)  A pentagon
#     B)  A five-pointed star
#     C)  It never closes — the turtle wanders off
#
input("ROUND 5 — vote A/B/C... then press Enter to reveal: ")
print("A five-pointed STAR:")
print()
print(r"          /\ ")
print(r"         /  \ ")
print(r"  ______/    \______")
print(r"  \                /")
print(r"   \              /")
print(r"    \    /\      /")
print(r"     \  /  \    / ")
print(r"      \/    \  /")
print(r"       \     \/")
print()
print("Why it closes: 5 × 144 = 720 = TWO full spins. Pentagon = one lap of")
print("turning (5 × 72 = 360); star = two. Turn 72 → pentagon. Turn 144 → star.")
print()


# ══ FINAL ROUND · one degree of chaos (sneaky!) ══════════════════════════════
#
#     for i in range(150):
#         turtle.forward(i)
#         turtle.right(91)
#
#   A square spiral turns 90... but this one turns 91. What appears?
#     A)  A square spiral, identical to the 90 version
#     B)  A square spiral that slowly twists into a whirlpool
#     C)  An error — spirals need exactly 90
#
input("FINAL ROUND — vote A/B/C... then press Enter to reveal: ")
print("The WHIRLPOOL — the demo's gasp moment, and now you know why:")
print()
print("Every corner over-rotates by just 1 degree. One degree × 150 corners")
print("= 150 degrees of extra twist, spread smoothly through the picture.")
print("The squares stop stacking and start swirling. Tiny change, huge art —")
print("in code, ONE number can be the whole difference.")
print()

print("=" * 40)
print("Game over! Count up your points, class.")
print("=" * 40)
