# ==============================================================================
#
#   WEEK 14 · PREDICT THE OUTPUT  —  the voting game
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


# ══ ROUND 1 · warm-up — which COULD it print? ════════════════════════════════
#
#     print(random.uniform(0, 1))
#
#   It's random, so: which of these COULD appear on screen?
#     A)  0.5347219...  (some decimal between 0 and 1)
#     B)  2.1
#     C)  -0.5
#
input("ROUND 1 — read the code above, vote A/B/C... then press Enter to reveal: ")
print(random.uniform(0, 1))
print()


# ══ ROUND 2 · corner distance, part one ══════════════════════════════════════
#
#     x = 0.5
#     y = 0.5
#     print(x * x + y * y)
#
#   What appears?
#     A)  0.5
#     B)  1.0
#     C)  0.25
#
input("ROUND 2 — vote A/B/C... then press Enter to reveal: ")
x = 0.5
y = 0.5
print(x * x + y * y)
print()


# ══ ROUND 3 · the gut-check ══════════════════════════════════════════════════
#
#     x = 0.9
#     y = 0.9
#     if x * x + y * y <= 1:
#         print("inside the quarter circle")
#     else:
#         print("outside the quarter circle")
#
#   0.9 is less than 1... so what appears?
#     A)  inside the quarter circle
#     B)  outside the quarter circle
#     C)  Error — you can't compare decimals
#
input("ROUND 3 — vote A/B/C... then press Enter to reveal: ")
x = 0.9
y = 0.9
if x * x + y * y <= 1:
    print("inside the quarter circle")
else:
    print("outside the quarter circle")
print()


# ══ ROUND 4 · expected value, by hand ════════════════════════════════════════
#
#     print((1 + 2 + 3 + 4 + 5 + 6) / 6)
#
#   One die, $1 per dot — the average payout. What appears?
#     A)  3
#     B)  3.5
#     C)  21
#
input("ROUND 4 — vote A/B/C... then press Enter to reveal: ")
print((1 + 2 + 3 + 4 + 5 + 6) / 6)
print()


# ══ ROUND 5 · the slow leak ══════════════════════════════════════════════════
#
#     net_per_game = 3.5 - 4
#     games = 1000
#     print(net_per_game * games)
#
#   A thousand games of Lucky Die at $4 a ticket. What appears?
#     A)  -500.0
#     B)  -50.0
#     C)  500.0
#
input("ROUND 5 — vote A/B/C... then press Enter to reveal: ")
net_per_game = 3.5 - 4
games = 1000
print(net_per_game * games)
print()


# ══ FINAL ROUND · one MILLION games, live ════════════════════════════════════
#
#     bank = 0
#     for play in range(1000000):
#         roll = random.randint(1, 6)
#         bank = bank + roll - 4
#     print(bank)
#
#   The whole class plays Lucky Die a million times ($4 a ticket, $1 per
#   dot). It's random — but after a MILLION games, the bank is CLOSEST to:
#     A)  $0            (fifty cents is basically nothing, right?)
#     B)  -$500,000
#     C)  -$50,000
#
input("FINAL ROUND — vote A/B/C... then press Enter (the run takes a second): ")
bank = 0
for play in range(1000000):
    roll = random.randint(1, 6)
    bank = bank + roll - 4
print(bank)
print()

print("=" * 40)
print("Game over! Count up your points, class.")
print("The house, as always, counted faster.")
print("=" * 40)
