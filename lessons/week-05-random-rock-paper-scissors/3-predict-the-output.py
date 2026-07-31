# ==============================================================================
#
#   WEEK 5 · PREDICT THE OUTPUT  —  the voting game
#
#   HOW THIS WORKS (teacher):
#     · Run this whole file once:  python 3-predict-the-output.py
#     · Before each reveal, the terminal waits for you.
#     · The class reads the round's code HERE in the editor, votes A/B/C
#       (hands up, fingers, or shouting — your call), THEN you press Enter
#       in the terminal to reveal the answer.
#     · Ask someone who got it right to explain WHY.
#
#   NEW THIS WEEK: the code is RANDOM, so nobody can predict the exact
#   output — not even you. Instead, every round asks what output is
#   POSSIBLE. That question always has one right answer.
#
#   Answers with explanations: answer-key.md
#
# ==============================================================================

import random


# ══ ROUND 1 · warm-up ════════════════════════════════════════════════════════
#
#     print(random.randint(1, 6))
#
#   Which of these COULD appear on the screen?
#     A)  0
#     B)  6
#     C)  7
#
input("ROUND 1 — read the code above, vote A/B/C... then press Enter to reveal: ")
print(random.randint(1, 6))
print()


# ══ ROUND 2 · the rigged die ═════════════════════════════════════════════════
#
#     print(random.randint(5, 5))
#     print(random.randint(5, 5))
#     print(random.randint(5, 5))
#
#   What appears?
#     A)  Three random numbers from 1 to 5
#     B)  5, then 5, then 5 — every single time you run it
#     C)  Error — the two ends of randint can't be the same
#
input("ROUND 2 — vote A/B/C... then press Enter to reveal: ")
print(random.randint(5, 5))
print(random.randint(5, 5))
print(random.randint(5, 5))
print()


# ══ ROUND 3 · does random mean different? ════════════════════════════════════
#
#     print(random.randint(1, 2))
#     print(random.randint(1, 2))
#
#   Could BOTH lines show the SAME number?
#     A)  No — random means the second one must be different
#     B)  Yes — each roll is fresh; the computer has no memory of the last one
#     C)  No — the second line is an error (you can't roll twice)
#
input("ROUND 3 — vote A/B/C... then press Enter to reveal: ")
print(random.randint(1, 2))
print(random.randint(1, 2))
print()
# (If they came out different this run, run the file again later —
#  doubles happen half the time!)


# ══ ROUND 4 · what can choice choose? ════════════════════════════════════════
#
#     print(random.choice(["rock", "paper", "scissors"]))
#
#   Which of these COULD appear?
#     A)  scissors
#     B)  lizard
#     C)  rock paper scissors   (all three at once)
#
input("ROUND 4 — vote A/B/C... then press Enter to reveal: ")
print(random.choice(["rock", "paper", "scissors"]))
print()


# ══ ROUND 5 · random meets if ════════════════════════════════════════════════
#
#     n = random.randint(1, 10)
#     if n > 8:
#         print("JACKPOT")
#     else:
#         print("try again")
#
#   Which outputs are POSSIBLE?
#     A)  Only "try again"
#     B)  Both — but "JACKPOT" needs a 9 or a 10, so it's rarer
#     C)  Both — it's 50/50
#
input("ROUND 5 — vote A/B/C... then press Enter to reveal: ")
n = random.randint(1, 10)
if n > 8:
    print("JACKPOT")
else:
    print("try again")
print()
# (Only 9 and 10 pass the check: 2 chances out of 10. Not 50/50!)


# ══ FINAL ROUND · the unicorn trap ═══════════════════════════════════════════
#
#     number = random.randint(1, 3)
#     if number == 4:
#         print("UNICORN!")
#     else:
#         print("just a horse")
#
#   Which outputs are POSSIBLE?
#     A)  Both — it's random, anything can happen
#     B)  Only "just a horse"
#     C)  Only "UNICORN!"
#
input("FINAL ROUND — vote A/B/C... then press Enter to reveal: ")
number = random.randint(1, 3)
if number == 4:
    print("UNICORN!")
else:
    print("just a horse")
print()

print("==========================================")
print("Game over! Count up your points, class.")
print("No unicorns were generated today. Or ever.")
print("==========================================")
