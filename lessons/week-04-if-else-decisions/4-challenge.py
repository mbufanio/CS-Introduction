# ==============================================================================
#
#   WEEK 4 · CHALLENGE  —  for fast classes, curious kids, or a big finish
#
#   Four showpieces built from today's tools: comparisons, if/elif/else.
#   Run the whole file, or run a section at a time (highlight + Shift+Enter).
#   Sections 1–3 use input() — kids shout, you type. Re-run them freely.
#
# ==============================================================================


# ------------------------------------------------------------------------------
# CHALLENGE 1 · THE GRADE-O-MATIC
# ------------------------------------------------------------------------------
# A full elif chain slicing 0–100 into letter grades. The class shouts test
# scores, you type, the machine judges without mercy.
#
# ⭐ BOUNDARY HUNT: after a couple of normal scores, test 90 EXACTLY, then 89.
#    One point apart, different letters. This is why we always check the edges.

score = int(input("GRADE-O-MATIC — enter a test score (0-100): "))

if score >= 90:
    print("Grade: A. Frame it. Show your grandparents.")
elif score >= 80:
    print("Grade: B. Solidly excellent. High five.")
elif score >= 70:
    print("Grade: C. Passing. The machine nods politely.")
elif score >= 60:
    print("Grade: D. The machine is concerned but supportive.")
else:
    print("Grade: F. The machine suggests... studying? Just a thought.")

print()

# ⭐ ASK THE CLASS: why must the chain check 90 FIRST? What breaks if the
#    'score >= 60' line moved to the top? (Round 4 of the voting game —
#    every score above 60 would stop there. Order IS the program.)


# ------------------------------------------------------------------------------
# CHALLENGE 2 · EVEN OR ODD? — the % callback
# ------------------------------------------------------------------------------
# Week 2's pizza operator returns! A number is EVEN when dividing by 2
# leaves NO remainder — in Python: number % 2 == 0.
# That line is a comparison, so it answers True or False... which makes it
# a perfect if condition. Two weeks of tools, snapping together.

number = int(input("EVEN-OR-ODD MACHINE — give me any whole number: "))

if number % 2 == 0:
    print(number, "is EVEN. Splits into pairs perfectly. Very tidy.")
else:
    print(number, "is ODD. There's always one left over. Chaos.")

print()

# ⭐ TRY: a huge number like 999999999997. Kids know instantly by the last
#    digit — and so does the computer, a few million times faster.


# ------------------------------------------------------------------------------
# CHALLENGE 3 · GUESS MY RULE — the class vs. the secret
# ------------------------------------------------------------------------------
# HOW TO PLAY (teacher):
#   · The program knows a SECRET RULE. Do NOT scroll to it! It's hidden
#     below in the code — keep the class's eyes on the terminal.
#   · Kids shout numbers to probe it. Type each one, read the YES or NO.
#   · Re-run as many times as you want (up-arrow in the terminal is fast).
#   · When someone thinks they know the rule, they must PREDICT the next
#     three answers correctly to claim victory.
# This is real mathematician work: gather data → conjecture → test.

probe = int(input("GUESS MY RULE — offer me a number: "))

# ~~~~~~~~~~ THE SECRET RULE LIVES BELOW. EYES ON THE TERMINAL. ~~~~~~~~~~~~~~~
if probe % 10 == 7:
    print("YES. That number pleases the rule.")
else:
    print("NO. The rule is unimpressed.")
print()
# ~~~~~~~~~~ (the secret: numbers ENDING in 7 — that's probe % 10 == 7,
#             the remainder when dividing by ten IS the last digit.
#             When the class cracks it, reveal this code and take a bow.
#             Next round: change the rule and play again — try % 5 == 0,
#             or >= 50, or == 42 if you're feeling cruel.) ~~~~~~~~~~~~~~~~~~~~


# ------------------------------------------------------------------------------
# CHALLENGE 4 · SNEAK PEEK OF WEEK 5 — the computer flips a coin 🎲
# ------------------------------------------------------------------------------
# Today's ifs always decide the SAME way for the same number. Next week the
# computer gets randomness — and if/else is how it will act on it.
# Don't explain — run this a few times and let them see it change its mind.

import random

coin = random.randint(1, 2)

if coin == 1:
    print("The computer flips a coin... HEADS.")
else:
    print("The computer flips a coin... TAILS.")

print()
print("Next week: rock-paper-scissors against the machine. Best of five.")
print("Train hard. It won't.")
