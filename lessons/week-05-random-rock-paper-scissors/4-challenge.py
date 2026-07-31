# ==============================================================================
#
#   WEEK 5 · CHALLENGE  —  for fast classes, curious kids, or a big finish
#
#   Three encores for the random toolbox.
#   Run the whole file, or run a section at a time (highlight + Shift+Enter).
#
# ==============================================================================

import random


# ------------------------------------------------------------------------------
# CHALLENGE 1 · THE MAGIC 8-BALL 🎱
# ------------------------------------------------------------------------------
# A fortune teller in four lines. The class asks a yes/no question out loud,
# you type it in, and random.choice picks the universe's answer.
# ⭐ Ask before the reveal: how many different answers COULD it give? (Six —
#    one per item in the brackets, each equally likely: 1 chance in 6.)

question = input("Ask the Magic 8-Ball a yes/no question: ")
answer = random.choice(["Definitely yes.", "No chance.", "Ask again louder.",
                        "The signs point to maybe.", "Obviously.", "The 8-ball is asleep."])
print("You asked:", question)
print("The 8-ball says:", answer)
print()

# Re-run this section (highlight + Shift+Enter) for every question the
# class has. The 8-ball is never wrong. It is also never right. It's random.


# ------------------------------------------------------------------------------
# CHALLENGE 2 · THE STREAK HUNTER  —  🔮 SNEAK PEEK OF WEEK 7
# ------------------------------------------------------------------------------
# How many coin flips does it take to get 3 HEADS IN A ROW?
# This uses a WHILE LOOP — a week 7 tool that repeats code until a goal
# is reached. Don't explain the machinery; just read the goal line aloud
# ("WHILE the streak is under 3... keep flipping") and let it rip.
# ⭐ Ask for guesses first! Kids guess 5 or 6 flips. Reality: often 10+.
#    Run it a few times — streaks are rarer than human brains expect.

streak = 0
flips = 0
while streak < 3:                       # ← week 7 magic: repeat until 3 in a row
    flips = flips + 1
    coin = random.randint(1, 2)         # 1 means heads, 2 means tails
    if coin == 1:
        streak = streak + 1
        print("Flip", flips, "→ HEADS!  Streak:", streak)
    else:
        streak = 0
        print("Flip", flips, "→ tails.  Streak resets to 0.")
print()
print("🎉 3 heads in a row — it took", flips, "flips!")
print()


# ------------------------------------------------------------------------------
# CHALLENGE 3 · ROCK, PAPER, SCISSORS, LIZARD, SPOCK 🖖
# ------------------------------------------------------------------------------
# The famous 5-throw upgrade. TEN rules instead of three:
#
#   scissors cut paper       paper covers rock        rock crushes lizard
#   lizard poisons Spock     Spock smashes scissors   scissors decapitate lizard
#   lizard eats paper        paper disproves Spock    Spock vaporizes rock
#   rock crushes scissors
#
# The computer picks below — but writing if/elif for all ten rules would
# take an afternoon. So today the CLASS is the judge: read the rules and
# rule the round out loud.
# ⭐ Tease: in week 10 we'll learn a tool (functions) that makes big rule
#    sets like this way less painful.

computer = random.choice(["rock", "paper", "scissors", "lizard", "Spock"])
throw = input("Class throw (rock/paper/scissors/lizard/Spock): ")
print("Class threw   :", throw)
print("Computer threw:", computer)
print("Judges — check the rules above. Who won?")
print()

# ⭐ Fairness bonus question: 5 throws, each with chance 1 in 5.
#    Every throw beats exactly 2 others and loses to exactly 2 others.
#    25 matchups: 10 class wins, 10 computer wins, 5 ties. Still perfectly fair!
