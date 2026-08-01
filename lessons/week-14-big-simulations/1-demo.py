# ==============================================================================
#
#   WEEK 14  ·  🎉 BIG SIMULATIONS  —  the Monte Carlo method
#
#   Last week we rolled dice 10,000 times and watched the results crawl
#   toward the theory. Today we aim that same trick at two BIG questions:
#
#     ACT ONE: can falling RAIN measure a circle?   (it computes π. really.)
#     ACT TWO: should you ever play a casino game?  (bring a calculator.)
#
#   Answering hard questions with a mountain of random tries is called the
#   MONTE CARLO METHOD — named after a famous casino town. By the end of
#   class, that name will make perfect sense.
#
# ==============================================================================

import random    # our random-number machine, back again (week 5)
import math      # NEW today: Python's math toolbox — we only need one tool


# ------------------------------------------------------------------------------
# SECTION 1 · A NEW FLAVOR OF RANDOM — random.uniform()
# ------------------------------------------------------------------------------
# random.randint(1, 6) picks WHOLE numbers: 1, 2, 3, 4, 5, or 6. Six choices.
# random.uniform(0, 1) picks a DECIMAL between 0 and 1... ANY decimal.
# 0.5?  Possible.  0.0721?  Possible.  0.999814?  Possible.
# Infinitely many outcomes — that's what we need for raindrops.
#
# ⭐ ASK THE CLASS: could uniform(0, 1) ever hand us 2?   (never — out of range)
#                  could it hand us 0.5?                  (absolutely)

print("Three rolls with randint(1, 6):")
print(random.randint(1, 6))
print(random.randint(1, 6))
print(random.randint(1, 6))
print()
print("Three decimals with uniform(0, 1):")
print(random.uniform(0, 1))
print(random.uniform(0, 1))
print(random.uniform(0, 1))
print()


# ------------------------------------------------------------------------------
# SECTION 2 · A RAINDROP IS JUST TWO RANDOM DECIMALS
# ------------------------------------------------------------------------------
# Picture a 1-meter-by-1-meter square of sidewalk. A raindrop lands on it
# somewhere — completely at random. TWO numbers say exactly where:
#   x = how far RIGHT it landed (0 to 1)
#   y = how far UP it landed    (0 to 1)
#
# ⭐ ASK THE CLASS: run this a few times (highlight + Shift+Enter).
#    Will we ever see the same raindrop twice? (with infinite decimals? no.)

drop_x = random.uniform(0, 1)
drop_y = random.uniform(0, 1)
print(f"A raindrop just landed at ({drop_x}, {drop_y})")
print()


# ------------------------------------------------------------------------------
# SECTION 3 · THE CIRCLE TEST  —  ⭐ PYTHAGORAS CAMEO ⭐
# ------------------------------------------------------------------------------
# Now draw a quarter circle inside the square: its center is the corner
# (0, 0), its radius is 1, so the arc curves from (0, 1) across to (1, 0).
#
# Question: did our raindrop land INSIDE the arc, or OUTSIDE it?
# "Inside" means: LESS THAN 1 AWAY from the corner (0, 0).
#
# How far is a point (x, y) from the corner? Draw the right triangle:
# x across, y up, and the distance is the diagonal. You know this one:
#
#        a² + b² = c²          ← PYTHAGORAS. In math class since forever.
#   x*x + y*y = distance²      ← the same theorem, wearing Python clothes.
#
# Python's math.sqrt() finds the square root, so the classic 3-4-5 triangle:

print("Distance across a 3-by-4 right triangle:", math.sqrt(3*3 + 4*4))
# → 5.0. Pythagoras, confirmed by machine, 2500 years later.

# But here's a programmer's shortcut: to ask "is the distance <= 1?" we can
# ask "is the distance SQUARED <= 1?" — same answer, and we skip the square
# root entirely. So the whole inside-the-circle test is one line:
#
#     x*x + y*y <= 1
#
# ⭐ ASK THE CLASS: is the point (0.5, 0.5) inside?  Vote... then:

print("(0.5, 0.5):  x*x + y*y =", 0.5*0.5 + 0.5*0.5)     # → 0.5, and 0.5 <= 1 → INSIDE

# ⭐ ASK THE CLASS: is (0.9, 0.9) inside? (0.9 is less than 1... right?) Vote!

print("(0.9, 0.9):  x*x + y*y =", 0.9*0.9 + 0.9*0.9)     # → 1.62 ... 1.62 > 1 → OUTSIDE!
print()

# Gut says inside. Pythagoras says the CORNER of the square is farther from
# (0,0) than the arc is — that's exactly the sliver of square that's outside
# the circle. Guts are bad at geometry. That's why we compute.


# ------------------------------------------------------------------------------
# SECTION 4 · THE RAINSTORM — measuring π with weather
# ------------------------------------------------------------------------------
# The plan, in full:
#   · rain random drops on the 1×1 square             (area of square: 1)
#   · count how many land inside the quarter circle   (area of arc: π/4 ≈ 0.785)
#   · fraction inside  ≈  π/4        (fraction of DROPS = fraction of AREA!)
#   · so:  fraction × 4  ≈  π        ← that's the whole algorithm
#
# We'll wrap the rainstorm in a function so we can order storms of any size.
# (def, parameters, return — week 10. Everything today is old parts.)

def estimate_pi(drops):
    inside = 0                             # the counter (week 13's accumulator)
    for drop in range(drops):              # one loop turn = one raindrop
        x = random.uniform(0, 1)
        y = random.uniform(0, 1)
        if x * x + y * y <= 1:             # the Pythagoras test from section 3
            inside = inside + 1
    return 4 * inside / drops              # fraction inside, times 4

# ⭐ ASK THE CLASS: before each run — closer to π or farther than the last?
#    (Usually closer with more drops... but 100 drops can get lucky. Week 13!)

print("   100 raindrops say pi is about:", estimate_pi(100))
print(" 10000 raindrops say pi is about:", estimate_pi(10000))

print("Now ONE MILLION raindrops... (a second of silence, please)")
print("1000000 raindrops say pi is about:", estimate_pi(1000000))

print("        the real pi starts with:", math.pi)
print()
print("We just measured a circle USING NO CIRCLES. Only rain.")
print()

# ⭐ ASK THE CLASS: where was the circle in our code? (There wasn't one!
#    No circle formula, no protractor — just random points and ONE
#    Pythagoras test. That's the Monte Carlo method: when a question is
#    hard, rain on it.)


# ------------------------------------------------------------------------------
# SECTION 5 · ACT TWO: THE CASINO  —  the "Lucky Die" game
# ------------------------------------------------------------------------------
# A carnival booth appears in the cafeteria. The sign says:
#
#     ★ LUCKY DIE ★   Pay $2 to play. Roll ONE die.
#     Win $1 for every dot!  (roll a 3 → win $3, roll a 6 → win $6!)
#
# ⭐ CLASS VOTES: is this game fair, a scam, or secretly great for players?
#
# Don't simulate yet — MATH first. On average, what does one roll pay out?
# Each face comes up 1/6 of the time, so the average payout is:

average_payout = (1 + 2 + 3 + 4 + 5 + 6) / 6
print(f"Average payout per roll: ${average_payout}")

# → $3.50. That number is called the EXPECTED VALUE: each outcome times its
# probability, all added up. It's what one game is WORTH, on average.
#
# ⭐ ASK THE CLASS: wait. The ticket costs $2... and the average win is
#    $3.50?! Who's getting rich here?  (THE PLAYERS. +$1.50 per game.
#    This booth goes bankrupt by lunch.)
#
# No real casino would ever run that game. Watch them "fix" it — they only
# have to change ONE number:

ticket_price = 4
net_per_game = average_payout - ticket_price
print(f"New ticket price: ${ticket_price}")
print(f"Player's average result per game: ${net_per_game}")
print()

# → −$0.50. Lose fifty cents per game, ON AVERAGE. Not every game — you
# might win $2 on your next roll! But the AVERAGE is rigged, and averages
# are the only thing a casino cares about.


# ------------------------------------------------------------------------------
# SECTION 6 · DOES THE MACHINE AGREE? — 100,000 games in one second
# ------------------------------------------------------------------------------
# The hand math says $3.50 average payout and −$0.50 per game. Let's make
# the computer play Lucky Die 100,000 times and check.
#
# ⭐ ASK THE CLASS: predict the average payout the simulation will find.

plays = 100000
total_winnings = 0                          # accumulator, one more time
for play in range(plays):
    roll = random.randint(1, 6)             # roll the lucky die
    total_winnings = total_winnings + roll  # collect $1 per dot

average = total_winnings / plays
bank = total_winnings - ticket_price * plays    # winnings minus all the tickets

print(f"After {plays} games of Lucky Die at ${ticket_price} a ticket:")
print(f"  average payout per game:  ${average}")        # ≈ 3.50 — the math!
print(f"  average net per game:     ${average - ticket_price}")   # ≈ −0.50
print(f"  the players' total bank:  ${bank}")           # ≈ −$50,000 (!!)
print()

# (That net line may print a tail like $-0.5018400000000001 — the .0184 part
#  is real randomness, the long tail is binary rounding dust. One sentence,
#  move on: "computers store decimals in binary; tiny dust appears.")

# The hand math and the machine AGREE. Fifty cents sounds like nothing —
# and 100,000 games later it's fifty thousand dollars.


# ------------------------------------------------------------------------------
# SECTION 7 · GRAND FINALE
# ------------------------------------------------------------------------------

print("*" * 46)
print("*                                            *")
print("*   A casino is a building built on a        *")
print("*   half-dollar, repeated a billion times.   *")
print("*                                            *")
print("*" * 46)
print()
print("Today randomness measured a circle and audited a casino.")
print("Next week: no new commands. YOU design a game — we build it.")
