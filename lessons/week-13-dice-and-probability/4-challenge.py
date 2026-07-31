# ==============================================================================
#
#   WEEK 13 · CHALLENGE  —  the casino back room
#
#   Four experiments you could never run with real dice before lunch.
#   Run the whole file: it pauses in the TERMINAL between experiments.
#   Every number changes every run — perfect. Re-run anything on request.
#
# ==============================================================================

import random
import time


# ------------------------------------------------------------------------------
# EXPERIMENT 1 · ROLL UNTIL DOUBLES  (week 7's while loop rides again)
# ------------------------------------------------------------------------------
# Keep rolling two dice until they match. How many tries does it take?
# ⭐ ASK THE CLASS FIRST: guess the average. (Theory: doubles are 6/36 =
#    1 in 6, so ABOUT 6 tries — but watch the wild swings between runs.)

input("EXPERIMENT 1 — press Enter to roll until doubles (3 rounds): ")

for round_number in range(1, 4):
    tries = 1
    die_a = random.randint(1, 6)
    die_b = random.randint(1, 6)
    while die_a != die_b:
        tries = tries + 1
        die_a = random.randint(1, 6)
        die_b = random.randint(1, 6)
    print("round", round_number, "→ doubles (", die_a, "and", die_b, ") after", tries, "tries")

print("Same experiment, three very different answers. Small samples are wild.")


# ------------------------------------------------------------------------------
# EXPERIMENT 2 · THE LONGEST HEADS STREAK
# ------------------------------------------------------------------------------
# 10,000 coin flips. Track the CURRENT run of heads and the BEST run so far.
# ⭐ ASK THE CLASS FIRST: in 10,000 flips, how long is the longest streak
#    of heads in a row? Take guesses. (Most people guess 5-ish. Ha.)

input("EXPERIMENT 2 — press Enter to flip 10,000 coins: ")

current_streak = 0
best_streak = 0
for flip in range(10000):
    coin = random.randint(1, 2)        # 1 = heads, 2 = tails
    if coin == 1:
        current_streak = current_streak + 1
        if current_streak > best_streak:
            best_streak = current_streak
    else:
        current_streak = 0             # tails snaps the streak

print("longest heads streak in 10,000 flips:", best_streak)
print("(Usually 11–15. If a friend flipped 13 heads in a row, you'd swear the")
print(" coin was rigged — but in a big enough experiment, streaks are NORMAL.)")


# ------------------------------------------------------------------------------
# EXPERIMENT 3 · THE GREAT DICE DERBY  —  first face to 20 wins
# ------------------------------------------------------------------------------
# Six faces enter. One leaves (first to be rolled 20 times).
# ⭐ Before running: every student picks a horse (a face, 1–6). Winners
#    get bragging rights. Then ask: is any face ACTUALLY more likely?

input("EXPERIMENT 3 — pick your horses, then press Enter to start the race: ")

ones = 0
twos = 0
threes = 0
fours = 0
fives = 0
sixes = 0
rolls = 0
winner = 0

while winner == 0:
    roll = random.randint(1, 6)
    rolls = rolls + 1
    if roll == 1:
        ones = ones + 1
    elif roll == 2:
        twos = twos + 1
    elif roll == 3:
        threes = threes + 1
    elif roll == 4:
        fours = fours + 1
    elif roll == 5:
        fives = fives + 1
    else:
        sixes = sixes + 1

    if rolls % 10 == 0:                # print the track every 10 rolls
        print()
        print("--- after", rolls, "rolls ---")
        print("face 1:", "#" * ones)
        print("face 2:", "#" * twos)
        print("face 3:", "#" * threes)
        print("face 4:", "#" * fours)
        print("face 5:", "#" * fives)
        print("face 6:", "#" * sixes)
        time.sleep(0.4)                # a heartbeat between updates — drama!

    if ones == 20:
        winner = 1
    if twos == 20:
        winner = 2
    if threes == 20:
        winner = 3
    if fours == 20:
        winner = 4
    if fives == 20:
        winner = 5
    if sixes == 20:
        winner = 6

print()
print("*** FACE", winner, "WINS after", rolls, "total rolls! ***")
print("(Every face had the same 1-in-6 chance — today was just its day.")
print(" Re-run the race and the crown probably moves.)")


# ------------------------------------------------------------------------------
# EXPERIMENT 4 · IS THIS DIE LOADED?  —  a mystery for the class
# ------------------------------------------------------------------------------
# A stranger hands you a die and swears it's fair. The class now owns the
# perfect lie detector: today's fairness test. A fair die gives about
# 16.7 percent sixes... let's run 10,000 rolls and check.
#
# ⭐ Run the test FIRST, read the verdict, THEN scroll to the spoiler.

input("EXPERIMENT 4 — press Enter to test the stranger's die: ")

count = 0
for i in range(10000):
    secret = random.randint(1, 8)      # (the stranger's 'die'... see spoiler)
    if secret >= 7:
        secret = 6
    if secret == 6:
        count = count + 1

percent = round(count / 10000 * 100, 1)
print("10,000 rolls of the stranger's die →", percent, "percent sixes")
print("a fair die would give about 16.7 percent...")
if percent > 25:
    print("VERDICT: LOADED! Nobody is that lucky. Nice try, stranger.")
else:
    print("VERDICT: seems fair... (which would be shocking — re-run this!)")

#
#  ~~~~~~~~~~~~~~~~~~~~  SPOILER — THE RIGGING  ~~~~~~~~~~~~~~~~~~~~
#  (Don't read aloud until the verdict lands!)
#
#  The "die" secretly rolls 1–8, then relabels 7 and 8 as 6. So six
#  gets THREE chances out of eight: 3/8 = 37.5 percent, not 16.7.
#  The class just caught a cheater using experimental probability —
#  no X-ray needed, only enough trials. THAT is why this math matters.
#
#  ⚡ SNEAK PEEK OF WEEK 14: casinos rig nothing so crudely — they tilt
#  games by a whisper (a 5.3 percent house edge) and let the law of
#  large numbers collect the money. Next week we simulate it.
#
