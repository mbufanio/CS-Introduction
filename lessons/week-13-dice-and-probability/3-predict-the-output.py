# ==============================================================================
#
#   WEEK 13 · PREDICT THE OUTPUT  —  the voting game
#
#   HOW THIS WORKS (teacher):
#     · Run this whole file once:  python 3-predict-the-output.py
#     · Before each reveal, the terminal waits for you.
#     · The class reads the round's code HERE in the editor, votes A/B/C,
#       THEN you press Enter in the terminal to reveal the answer.
#     · Ask someone who got it right to explain WHY.
#     · Random rounds ask which result COULD happen — so there's a definite
#       right answer even though the exact number changes. Two reveals run
#       real simulations; the last one rolls a million dice (give it a
#       couple of seconds and narrate).
#
#   Answers with explanations: answer-key.md
#
# ==============================================================================

import random


# ══ ROUND 1 · warm-up ════════════════════════════════════════════════════════
#
#     print(random.randint(1, 6) + random.randint(1, 6))
#
#   Two dice, added together. Which of these COULD it print?
#     A)  1
#     B)  7
#     C)  13
#
input("ROUND 1 — read the code above, vote A/B/C... then press Enter to reveal: ")
print(random.randint(1, 6) + random.randint(1, 6))
print()
print("(Whatever it just printed is between 2 and 12 — the smallest sum is")
print(" 1+1 = 2 and the biggest is 6+6 = 12. So 1 and 13 are IMPOSSIBLE,")
print(" but 7 could absolutely happen. Only B was ever in the running.)")
print()


# ══ ROUND 2 · be the counter ═════════════════════════════════════════════════
#
#     count = 0
#     for n in range(1, 7):
#         if n % 2 == 0:
#             count = count + 1
#     print(count)
#
#   No randomness here — a rigged loop, so there IS one right answer.
#   What prints?
#     A)  3
#     B)  6
#     C)  0
#
input("ROUND 2 — vote A/B/C... then press Enter to reveal: ")
count = 0
for n in range(1, 7):
    if n % 2 == 0:
        count = count + 1
print(count)
print()
print("(n runs 1,2,3,4,5,6 — the if catches the evens: 2, 4, 6. Three hits.")
print(" This exact pattern counted our sixes all class.)")
print()


# ══ ROUND 3 · the percent line (sneaky) ══════════════════════════════════════
#
#     print(25 / 100 * 100)
#
#   25 hits out of 100 trials, as a percentage. What EXACTLY prints?
#     A)  25
#     B)  25.0
#     C)  0.25
#
input("ROUND 3 — vote A/B/C... then press Enter to reveal: ")
print(25 / 100 * 100)
print()
print("(Division with / ALWAYS produces a decimal number in Python — even")
print(" when it comes out even. So 25.0, not 25. C forgot the * 100.)")
print()


# ══ ROUND 4 · the king of sums ═══════════════════════════════════════════════
#
#     twos = 0
#     sevens = 0
#     twelves = 0
#     for i in range(10000):
#         total = random.randint(1, 6) + random.randint(1, 6)
#         if total == 2:
#             twos = twos + 1
#         if total == 7:
#             sevens = sevens + 1
#         if total == 12:
#             twelves = twelves + 1
#     print(twos, sevens, twelves)
#
#   10,000 double-rolls. Which sum gets the BIGGEST count?
#     A)  2
#     B)  7
#     C)  12
#
input("ROUND 4 — vote A/B/C... then press Enter to run the simulation: ")
twos = 0
sevens = 0
twelves = 0
for i in range(10000):
    total = random.randint(1, 6) + random.randint(1, 6)
    if total == 2:
        twos = twos + 1
    if total == 7:
        sevens = sevens + 1
    if total == 12:
        twelves = twelves + 1
print(twos, sevens, twelves)
print()
print("(sum 2:", twos, "  sum 7:", sevens, "  sum 12:", twelves, ")")
print("(7 wins in a landslide — six ways to make it on the grid; 2 and 12")
print(" get one way each. Expect roughly 280, 1670, 280.)")
print()


# ══ ROUND 5 · a million rolls ════════════════════════════════════════════════
#
#     count = 0
#     for i in range(1000000):
#         if random.randint(1, 6) == 6:
#             count = count + 1
#     print(round(count / 1000000 * 100, 2))
#
#   One MILLION rolls, percent of sixes. The result will be closest to:
#     A)  16.7
#     B)  exactly 16.66667, every single time
#     C)  impossible to say — it's random!
#
input("ROUND 5 — vote A/B/C... then press Enter (give it a couple of seconds): ")
count = 0
for i in range(1000000):
    if random.randint(1, 6) == 6:
        count = count + 1
print(round(count / 1000000 * 100, 2))
print()
print("(The law of large numbers: a million trials hug the theory, so A.")
print(" But not B — it still wobbles a little, run to run. And not C —")
print(" 'random' does NOT mean 'anything goes'. Worth a class debate!)")
print()


# ══ FINAL ROUND · for all the glory (very sneaky!) ═══════════════════════════
#
#     count = 0
#     for i in range(10):
#         if random.randint(1, 6) == 6:
#             count = count + 1
#     print(count / 10 * 100, "percent sixes")
#
#   Only TEN rolls this time. Which percentage is IMPOSSIBLE to see?
#     A)  0.0 percent
#     B)  20.0 percent
#     C)  16.7 percent
#
input("FINAL ROUND — vote A/B/C... then press Enter to reveal: ")
count = 0
for i in range(10):
    if random.randint(1, 6) == 6:
        count = count + 1
print(count / 10 * 100, "percent sixes")
print()
print("(With 10 rolls, count is a whole number 0–10, so the percent is")
print(" always a multiple of 10: 0, 10, 20, 30... You can NEVER see 16.7%")
print(" in ten rolls — tiny experiments can't even LAND on the theory.")
print(" That's why my lumpy tally never stood a chance.)")
print()

print("=" * 40)
print("Game over! Count up your points, class.")
print("=" * 40)
