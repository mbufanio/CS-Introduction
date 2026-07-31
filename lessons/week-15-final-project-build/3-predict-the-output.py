# ==============================================================================
#
#   WEEK 15 · PREDICT THE OUTPUT  —  COURSE REVIEW EDITION
#
#   Six rounds sweeping weeks 1 through 14 — the final exam, the fun way.
#   (Nobody tell them it's an exam.)
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

import random


# ══ ROUND 1 · the week-1 classic ═════════════════════════════════════════════
#
#     print("100")
#     print(50 + 50)
#
#   What appears?
#     A)  100  then  100
#     B)  100  then  50 + 50
#     C)  50 + 50  then  100
#
input("ROUND 1 — read the code above, vote A/B/C... then press Enter to reveal: ")
print("100")
print(50 + 50)
print()


# ══ ROUND 2 · the remainder returns ══════════════════════════════════════════
#
#     print(17 % 5)
#
#   What appears?
#     A)  3.4
#     B)  2
#     C)  3
#
input("ROUND 2 — vote A/B/C... then press Enter to reveal: ")
print(17 % 5)
print()


# ══ ROUND 3 · trace the loop ═════════════════════════════════════════════════
#
#     total = 0
#     for i in range(4):
#         total = total + i
#     print(total)
#
#   What appears?
#     A)  10
#     B)  6
#     C)  4
#
input("ROUND 3 — vote A/B/C... then press Enter to reveal: ")
total = 0
for i in range(4):
    total = total + i
print(total)
print()


# ══ ROUND 4 · the double machine ═════════════════════════════════════════════
#
#     def boost(n):
#         return n + 10
#
#     print(boost(boost(5)))
#
#   A function fed into ITSELF. What appears?
#     A)  15
#     B)  25
#     C)  20
#
input("ROUND 4 — vote A/B/C... then press Enter to reveal: ")
def boost(n):
    return n + 10
print(boost(boost(5)))
print()


# ══ ROUND 5 · which COULD it print? ══════════════════════════════════════════
#
#     print(random.randint(1, 6) * 10)
#
#   It's random — but which of these COULD appear?
#     A)  35
#     B)  40
#     C)  65
#
input("ROUND 5 — vote A/B/C... then press Enter to reveal: ")
print(random.randint(1, 6) * 10)
print()


# ══ FINAL ROUND · three weeks in a trench coat ═══════════════════════════════
#
#     word = "GAMES"
#     result = ""
#     for i in range(3):
#         result = result + word[i] * 2
#
#     print(result)
#
#   Loops (week 6) + indexing (week 8) + string math (week 8). What appears?
#     A)  GGAAMM
#     B)  GAMGAM
#     C)  GAMESGAMES
#
input("FINAL ROUND — vote A/B/C... then press Enter to reveal: ")
word = "GAMES"
result = ""
for i in range(3):
    result = result + word[i] * 2
print(result)
print()

print("=" * 44)
print("That was weeks 1, 2, 5, 6, 8, and 10 — and you")
print("just passed. The only exam this course has.")
print("=" * 44)
