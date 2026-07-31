# ==============================================================================
#
#   WEEK 6 · PREDICT THE OUTPUT  —  the voting game
#
#   HOW THIS WORKS (teacher):
#     · Run this whole file once:  python 3-predict-the-output.py
#     · Before each reveal, the terminal waits for you.
#     · The class reads the round's code HERE in the editor, votes A/B/C
#       (hands up, fingers, or shouting — your call), THEN you press Enter
#       in the terminal to reveal the answer.
#     · Ask someone who got it right to explain WHY.
#
#   Answers with explanations: answer-key.md
#
# ==============================================================================


# ══ ROUND 1 · what does range hand out? ══════════════════════════════════════
#
#     for i in range(3):
#         print(i)
#
#   What appears?
#     A)  1  2  3
#     B)  0  1  2
#     C)  0  1  2  3
#
input("ROUND 1 — read the code above, vote A/B/C... then press Enter to reveal: ")
for i in range(3):
    print(i)
print()


# ══ ROUND 2 · the wall ═══════════════════════════════════════════════════════
#
#     for n in range(1, 4):
#         print(n)
#
#   Does the 4 get printed?
#     A)  1  2  3        (no — the stop is a wall)
#     B)  1  2  3  4     (yes — it's right there in the code!)
#     C)  1  4           (just the two numbers written)
#
input("ROUND 2 — vote A/B/C... then press Enter to reveal: ")
for n in range(1, 4):
    print(n)
print()


# ══ ROUND 3 · counting laps ══════════════════════════════════════════════════
#
#     for e in range(2, 10, 2):
#         print("beep")
#
#   How many beeps?
#     A)  5
#     B)  4
#     C)  8
#
input("ROUND 3 — vote A/B/C... then press Enter to reveal: ")
for e in range(2, 10, 2):
    print("beep")
print()
# (The values are 2, 4, 6, 8 — the wall at 10 is excluded. Four laps.)


# ══ ROUND 4 · the snowball ═══════════════════════════════════════════════════
#
#     total = 0
#     for n in range(1, 4):
#         total = total + n
#     print(total)
#
#   Careful: the print is OUTSIDE the loop (look at the indentation!).
#   What appears?
#     A)  6
#     B)  1  then  3  then  6
#     C)  1  2  3
#
input("ROUND 4 — vote A/B/C... then press Enter to reveal: ")
total = 0
for n in range(1, 4):
    total = total + n
print(total)
print()


# ══ ROUND 5 · multiplying text ═══════════════════════════════════════════════
#
#     print("*" * 3)
#
#   What appears?
#     A)  ***
#     B)  * * *
#     C)  *3
#
input("ROUND 5 — vote A/B/C... then press Enter to reveal: ")
print("*" * 3)
print()


# ══ FINAL ROUND · the indentation trap ═══════════════════════════════════════
#
#     total = 0
#     for n in range(1, 4):
#         total = total + n
#         print(total)
#
#   Round 4's code... but the print moved INSIDE the loop (indented!).
#   What appears?
#     A)  6
#     B)  1  then  3  then  6
#     C)  6  6  6
#
input("FINAL ROUND — vote A/B/C... then press Enter to reveal: ")
total = 0
for n in range(1, 4):
    total = total + n
    print(total)
print()
# (Inside the loop = a progress report every lap. Outside = the finale only.
#  Indentation isn't decoration — it decides WHEN things happen.)

print("=" * 40)
print("Game over! Count up your points, class.")
print("=" * 40)
