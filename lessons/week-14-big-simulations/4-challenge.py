# ==============================================================================
#
#   WEEK 14 · CHALLENGE  —  for fast classes, curious kids, or a big finish
#
#   Three more jobs for the Monte Carlo method — including the most famous
#   argument in the history of probability.
#   Run the whole file, or run a section at a time (highlight + Shift+Enter).
#
# ==============================================================================

import random


# ------------------------------------------------------------------------------
# CHALLENGE 1 · THE MONTY HALL PROBLEM — the puzzle that fooled the professors
# ------------------------------------------------------------------------------
# The legend, told properly (take your time — it's a great story):
#
#   It's a TV game show. Three closed doors. Behind one: a CAR. Behind the
#   other two: goats. You pick a door — say door 1. The host, who KNOWS
#   where the car is, opens one of the OTHER doors and always reveals a
#   goat. Then comes the famous offer:
#
#       "Do you want to STAY with your door... or SWITCH to the other one?"
#
#   In 1990, a magazine columnist named Marilyn vos Savant wrote that you
#   should ALWAYS SWITCH — switching wins twice as often. Thousands of
#   readers wrote in to tell her she was wrong. Many were math professors.
#   They were all wrong, and she was right — and today, in this classroom,
#   we settle it in one second with 100,000 games.
#
# ⭐ CLASS VOTES FIRST (before pressing Enter!):
#      Does switching matter?  A) stay is better  B) 50/50  C) switch is better
#
# How the simulation works with only randint and if (no tricks needed):
#   · If your FIRST pick was the car (1 chance in 3) → STAYING wins.
#   · If your first pick was a goat (2 chances in 3) → the host clears away
#     the other goat, so SWITCHING lands on the car every time. Switch wins!
#   So we just count how often the first pick is right.

input("MONTY HALL — class votes stay / 50-50 / switch... then press Enter: ")

games = 100000
stay_wins = 0
switch_wins = 0

for game in range(games):
    car_door = random.randint(1, 3)        # the car hides at random
    first_pick = random.randint(1, 3)      # the player guesses at random
    if first_pick == car_door:
        stay_wins = stay_wins + 1          # picked right → staying wins
    else:
        switch_wins = switch_wins + 1      # picked wrong → switching wins

print(f"Out of {games} games:")
print(f"  STAY   won {stay_wins} times  ({100 * stay_wins / games}%)")
print(f"  SWITCH won {switch_wins} times  ({100 * switch_wins / games}%)")
print()
print("Switching wins about 66% — TWICE as often as staying.")
print("Your gut said 50/50. The simulation doesn't care about your gut.")
print()


# ------------------------------------------------------------------------------
# CHALLENGE 2 · PI AGAIN, WITH A WHOLE CIRCLE — same idea, new dartboard
# ------------------------------------------------------------------------------
# This morning we rained on a QUARTER circle in a 1×1 square. The method
# doesn't care about the shape — here's a FULL circle of radius 1 inside a
# 2×2 square (corners at -1 and 1). Now uniform gets NEGATIVE decimals too!
#
#   area of circle   π × 1²         π
#   ─────────────  = ───────  =    ───     → fraction inside × 4 ≈ π again
#   area of square   2 × 2          4
#
# ⭐ ASK THE CLASS: same test, x*x + y*y <= 1 — why does it still work for
#    negative x? (Squaring wipes out the minus sign. Pythagoras doesn't
#    care which direction the triangle points.)

darts = 200000
inside = 0
for dart in range(darts):
    x = random.uniform(-1, 1)
    y = random.uniform(-1, 1)
    if x * x + y * y <= 1:
        inside = inside + 1

print(f"{darts} darts at the full-circle board say pi is about {4 * inside / darts}")
print()


# ------------------------------------------------------------------------------
# CHALLENGE 3 · THE STREAK JACKPOT — a bet that LOOKS generous
# ------------------------------------------------------------------------------
# New booth at the carnival:
#
#     ★ STREAK JACKPOT ★  Pay $5. Flip a coin 5 times.
#     ALL FIVE heads → win $100!!!
#
# ⭐ CLASS VOTES: deal or no deal? ($100 for $5! It FEELS amazing...)
#
# Expected value by hand first:
#   P(5 heads in a row) = 1/2 × 1/2 × 1/2 × 1/2 × 1/2 = 1/32
#   average payout = $100 × 1/32 = $3.125       ← less than the $5 ticket!
#   expected result: LOSE about $1.88 per ticket. Now let the machine check:

tickets = 200000
jackpots = 0
for ticket in range(tickets):
    heads = 0
    for flip in range(5):
        if random.randint(0, 1) == 1:      # 1 = heads, 0 = tails
            heads = heads + 1
    if heads == 5:                          # all five — the jackpot streak
        jackpots = jackpots + 1

average_payout = 100 * jackpots / tickets
print(f"Out of {tickets} tickets, {jackpots} hit the jackpot.")
print(f"Average payout per ticket: ${average_payout}")
print(f"Average RESULT per ticket: ${average_payout - 5}")
print()
print("A giant prize with a tiny probability can still be a terrible bet.")
print("Expected value sees through the flashing lights. Every time.")
