# ==============================================================================
#
#   WEEK 11 · PREDICT THE OUTPUT  —  the voting game
#
#   HOW THIS WORKS (teacher):
#     · Run this whole file once:  python 3-predict-the-output.py
#     · Before each reveal, the terminal waits for you.
#     · The class reads the round's code HERE in the editor, votes A/B/C,
#       THEN you press Enter in the terminal to reveal the answer.
#     · Ask someone who got it right to explain WHY.
#
#   NOTE: there is NO turtle in this file — on purpose. Shape rounds reveal
#   a text sketch of what the turtle WOULD draw, so the whole game stays in
#   the terminal. (The real drawings live in 1-demo.py and 4-challenge.py.)
#
#   Answers with explanations: answer-key.md
#
# ==============================================================================


# ══ ROUND 1 · warm-up ════════════════════════════════════════════════════════
#
#     turtle.forward(100)
#     turtle.right(90)
#     turtle.forward(100)
#
#   The turtle starts facing right (east). What has it drawn so far?
#     A)  One straight line, 200 steps long
#     B)  A corner — two sides of a square
#     C)  A letter V
#
input("ROUND 1 — read the code above, vote A/B/C... then press Enter to reveal: ")
print("It drew a CORNER — across, then down. Like a 7:")
print()
print("   #########")
print("           #")
print("           #")
print("           #")
print()
print("(right(90) only SPINS the turtle — the second forward walks the new way.)")
print()


# ══ ROUND 2 · the recipe ═════════════════════════════════════════════════════
#
#     for side in range(4):
#         turtle.forward(100)
#         turtle.right(90)
#
#   What does this draw?
#     A)  A square
#     B)  A rectangle, wider than it is tall
#     C)  Four separate lines scattered around
#
input("ROUND 2 — vote A/B/C... then press Enter to reveal: ")
print("A SQUARE — the floor recipe: 4 x (forward, turn right 90).")
print()
print("   ##########")
print("   #        #")
print("   #        #")
print("   #        #")
print("   ##########")
print()
print("(All four sides are forward(100) — same length every time. That's what")
print(" makes it a square and not just any rectangle.)")
print()


# ══ ROUND 3 · triangle, take two ═════════════════════════════════════════════
#
#     for side in range(3):
#         turtle.forward(100)
#         turtle.right(120)
#
#   Turning 120 at each corner... what appears?
#     A)  A triangle
#     B)  A hexagon
#     C)  Nothing closes — the turtle wanders off
#
input("ROUND 3 — vote A/B/C... then press Enter to reveal: ")
print("A TRIANGLE — 120 is the EXTERIOR angle (180 - 60).")
print()
print("   #############")
print("    #         #")
print("     #       #")
print("      #     #")
print("       #   #")
print("        # #")
print("         #")
print()
print("(3 turns x 120 = 360: one full spin, so the shape closes perfectly.)")
print()


# ══ ROUND 4 · the 360 rule ═══════════════════════════════════════════════════
#
#     print(5 * 72)
#
#   A turtle walks a full pentagon: five turns of 72 degrees each.
#   How many degrees did it turn IN TOTAL?
#     A)  360
#     B)  500
#     C)  72
#
input("ROUND 4 — vote A/B/C... then press Enter to reveal: ")
print(5 * 72)
print()
print("(360 — one full spin. Triangle: 3 x 120 = 360. Square: 4 x 90 = 360.")
print(" EVERY polygon: 360. That's why the master formula is turn = 360 / n.)")
print()


# ══ ROUND 5 · the invisible walk ═════════════════════════════════════════════
#
#     turtle.forward(100)
#     turtle.penup()
#     turtle.forward(100)
#     turtle.pendown()
#     turtle.forward(100)
#
#   The turtle walked 300 steps in a straight line. What got DRAWN?
#     A)  One 300-step line
#     B)  Two 100-step lines with a gap between them
#     C)  Nothing — the pen was up
#
input("ROUND 5 — vote A/B/C... then press Enter to reveal: ")
print("Two lines with a gap — a giant dash-dash:")
print()
print("   ##########          ##########")
print("             ^^^^^^^^^^")
print("             the middle 100 steps: walked, but the pen was UP")
print()
print("(penup() doesn't stop the turtle from moving — it stops it from DRAWING.)")
print()


# ══ FINAL ROUND · for all the glory (sneaky!) ════════════════════════════════
#
#     for side in range(4):
#         turtle.forward(100)
#         turtle.right(100)
#
#   Four sides, four turns... but look CLOSELY at the turn. What appears?
#     A)  A square, just slightly tilted
#     B)  An open zigzag — the shape never closes
#     C)  An error — 100 degrees isn't allowed
#
input("FINAL ROUND — vote A/B/C... then press Enter to reveal: ")
print("An OPEN zigzag — it never comes home! (rough sketch:)")
print()
print("   ########")
print("           #")
print("            #")
print("      ######## ...and off it goes, never closing.")
print()
print("Why: 4 turns x 100 = 400 degrees, but closing a shape takes EXACTLY 360.")
print("Those extra 40 degrees make every corner over-rotate, so the path drifts.")
print("(Next week we do this ON PURPOSE — tiny angle changes make amazing art.)")
print()

print("=" * 40)
print("Game over! Count up your points, class.")
print("=" * 40)
