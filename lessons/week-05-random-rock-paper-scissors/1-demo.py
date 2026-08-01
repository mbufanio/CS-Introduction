# ==============================================================================
#
#   WEEK 5  ·  RANDOM NUMBERS  →  🎉 ROCK-PAPER-SCISSORS
#
#   Last week our programs learned to make DECISIONS (if / elif / else).
#   Today they learn something no human is good at: being truly RANDOM.
#
#   By the end of this file the computer plays rock-paper-scissors
#   against the entire class. Best of 5. For all the glory.
#
# ==============================================================================


# ------------------------------------------------------------------------------
# SECTION 1 · BORROWING A TOOLBOX — import
# ------------------------------------------------------------------------------
# Python ships with hundreds of TOOLBOXES full of ready-made tools.
# (Programmers call a toolbox a "module.") They stay locked in the garage
# until you ask for one — and asking takes exactly one line:
#
#   import random   means:  "Python, fetch the RANDOM toolbox and
#                            put it on my workbench."
#
# From this line down, every random tool belongs to us.

import random

print("Toolbox borrowed: random")
print("Contents: dice, coins, spinners, pure chaos.")
print()


# ------------------------------------------------------------------------------
# SECTION 2 · THE ELECTRONIC DIE — random.randint
# ------------------------------------------------------------------------------
# A tool from the toolbox:
#
#   random.randint(1, 6)   means:  "give me a whole number from 1 to 6 —
#                                   and don't tell ANYONE in advance."
#
# ⭐ ASK THE CLASS: I'm about to roll this die 5 times. Can anyone in the
#    room tell me what the numbers will be? Can I? Can the computer?
#    (No, no, and — weirdly — no. Even the computer finds out at the
#    moment it rolls.)

print("Rolling the electronic die 5 times:")
print("Roll 1:", random.randint(1, 6))
print("Roll 2:", random.randint(1, 6))
print("Roll 3:", random.randint(1, 6))
print("Roll 4:", random.randint(1, 6))
print("Roll 5:", random.randint(1, 6))
print()

# ⭐ NOW RUN THE WHOLE FILE AGAIN and watch this section.
#    Every program we've written this semester did the exact same thing
#    every single run. THIS one never runs the same way twice —
#    first time all semester. That's what today unlocks.


# ------------------------------------------------------------------------------
# SECTION 3 · BOTH ENDS COUNT — randint includes its endpoints
# ------------------------------------------------------------------------------
# randint(a, b) can give you a, can give you b, and anything between.
# randint(1, 6) rolls 1s AND 6s. It will NEVER roll a 0. NEVER a 7.
#
# ⭐ ASK THE CLASS: randint(1, 100) — smallest possible? Biggest possible?
# ⭐ ASK THE CLASS: what does randint(5, 5) do?
#    (Both ends are 5... it's the world's most rigged die.)

print("A number from 1 to 100:", random.randint(1, 100))
print("The rigged die, randint(5, 5):", random.randint(5, 5))
print("Still rigged:", random.randint(5, 5))
print()


# ------------------------------------------------------------------------------
# SECTION 4 · random.choice — PICKING FROM A COLLECTION
# ------------------------------------------------------------------------------
# Numbers aren't the only thing worth randomizing. Meet random.choice:
# it grabs ONE item from a collection in square brackets.
#
#   ["pizza", "tacos", "sushi"]   ← square brackets, commas between items.
#   (Its official name is a "list" — we'll get properly introduced to
#    lists later in the course. For now: a collection in square brackets.)
#
# ⭐ ASK THE CLASS: how many different lunches COULD line 1 print?
#    Could it ever print something that's not in the brackets?

print("The computer's lunch:", random.choice(["pizza", "tacos", "sushi", "mystery stew"]))
print("Today's line leader:", random.choice(["Ada", "Marcus", "Priya", "Zoe", "Leo"]))
print()

# ⭐ Swap in five REAL student names and re-run — congratulations,
#    you now own a perfectly fair line-leader picker.


# ------------------------------------------------------------------------------
# SECTION 5 · FAIRNESS — equally likely, or rigged?
# ------------------------------------------------------------------------------
# random.choice gives EVERY item in the brackets the SAME chance.
# 3 items → each one gets 1 chance in 3. That's what "fair" means in math:
# all outcomes equally likely.
#
# ⭐ ASK THE CLASS: with ["rock", "paper", "scissors"], what's the
#    probability of rock?  (1 out of 3.)
#
# But look closely at the second spinner below...
#
# ⭐ ASK THE CLASS: in ["rock", "rock", "paper"], rock appears TWICE.
#    Now what's the chance of rock?  (2 out of 3 — this spinner cheats.)

print("Fair spinner  :", random.choice(["rock", "paper", "scissors"]))
print("Rigged spinner:", random.choice(["rock", "rock", "paper"]))
print()

# Today's handout has a "which spinner is fair?" puzzle about exactly this.


# ------------------------------------------------------------------------------
# SECTION 6 · BUILDING THE GAME — one practice round, in slow motion
# ------------------------------------------------------------------------------
# Rock-paper-scissors is just three ingredients we already own:
#   1. random.choice   → the computer throws          (today)
#   2. a variable      → the class's throw            (week 2)
#   3. if / elif / else → decide the winner           (last week)
#
# STEP 1 — the computer throws:

computer = random.choice(["rock", "paper", "scissors"])

# STEP 2 — the class throws. For this practice round we'll hard-code it:

class_throw = "rock"

# STEP 3 — who wins? The rules:
#   rock smashes scissors · paper wraps rock · scissors cut paper
#
# Here's the trick: glue both throws into ONE sentence with string +
# (week 3 skills!), then check which sentence it is.

matchup = class_throw + " vs " + computer

print("PRACTICE ROUND")
print("Class throws   :", class_throw)
print("Computer throws:", computer)
print("The matchup    :", matchup)

# ⭐ WALK THIS SLOWLY, reading each condition aloud before running:

if class_throw == computer:
    print("Same throw — it's a TIE.")
elif matchup == "rock vs scissors":
    print("Rock smashes scissors — the CLASS wins!")
elif matchup == "paper vs rock":
    print("Paper wraps rock — the CLASS wins!")
elif matchup == "scissors vs paper":
    print("Scissors cut paper — the CLASS wins!")
else:
    print("None of the winning sentences matched... the COMPUTER wins.")
print()

# ⭐ ASK THE CLASS: 3 class throws × 3 computer throws = 9 possible matchups.
#    3 are ties (the first check). 3 are class wins (the three elifs).
#    So how many are computer wins?  (9 − 3 − 3 = 3.)
#    3 wins, 3 losses, 3 ties → NOBODY has an edge → the game is FAIR.
#    You'll PROVE this on today's handout grid.


# ------------------------------------------------------------------------------
# SECTION 7 · 🎉 THE MATCH — class vs computer, best of 5
# ------------------------------------------------------------------------------
# Score lives in two variables. Every round adds 1 to somebody (ties: nobody).
# Teacher: the class agrees on ONE throw per round (vote or shout-out),
# and you type it at the prompt — lowercase, exactly: rock, paper, scissors.
# Milk the drama. Announce the score like a sports commentator.

class_score = 0
computer_score = 0

print("==============================================")
print("   THE MATCH · CLASS vs COMPUTER · BEST OF 5")
print("==============================================")

# ─── ROUND 1 ──────────────────────────────────────────────────────────────────
computer = random.choice(["rock", "paper", "scissors"])
throw = input("ROUND 1 — the class throws: ")
matchup = throw + " vs " + computer
print("Computer threw:", computer)
if throw == computer:
    print("TIE — nobody scores.")
elif matchup == "rock vs scissors":
    class_score = class_score + 1
    print("Rock smashes scissors — POINT TO THE CLASS!")
elif matchup == "paper vs rock":
    class_score = class_score + 1
    print("Paper wraps rock — POINT TO THE CLASS!")
elif matchup == "scissors vs paper":
    class_score = class_score + 1
    print("Scissors cut paper — POINT TO THE CLASS!")
else:
    computer_score = computer_score + 1
    print("The computer takes the round.")
print(f"SCORE → class {class_score} · computer {computer_score}")
print()

# ─── ROUND 2 ── (yes, this is the SAME block again — remember this pain) ─────
computer = random.choice(["rock", "paper", "scissors"])
throw = input("ROUND 2 — the class throws: ")
matchup = throw + " vs " + computer
print("Computer threw:", computer)
if throw == computer:
    print("TIE — nobody scores.")
elif matchup == "rock vs scissors":
    class_score = class_score + 1
    print("Rock smashes scissors — POINT TO THE CLASS!")
elif matchup == "paper vs rock":
    class_score = class_score + 1
    print("Paper wraps rock — POINT TO THE CLASS!")
elif matchup == "scissors vs paper":
    class_score = class_score + 1
    print("Scissors cut paper — POINT TO THE CLASS!")
else:
    computer_score = computer_score + 1
    print("The computer takes the round.")
print(f"SCORE → class {class_score} · computer {computer_score}")
print()

# ─── ROUND 3 ── (copy-paste again... there HAS to be a better way, right?) ───
computer = random.choice(["rock", "paper", "scissors"])
throw = input("ROUND 3 — the class throws: ")
matchup = throw + " vs " + computer
print("Computer threw:", computer)
if throw == computer:
    print("TIE — nobody scores.")
elif matchup == "rock vs scissors":
    class_score = class_score + 1
    print("Rock smashes scissors — POINT TO THE CLASS!")
elif matchup == "paper vs rock":
    class_score = class_score + 1
    print("Paper wraps rock — POINT TO THE CLASS!")
elif matchup == "scissors vs paper":
    class_score = class_score + 1
    print("Scissors cut paper — POINT TO THE CLASS!")
else:
    computer_score = computer_score + 1
    print("The computer takes the round.")
print(f"SCORE → class {class_score} · computer {computer_score}")
print()

# ─── ROUND 4 ── (there IS a better way. It's called a loop. Week 6.) ─────────
computer = random.choice(["rock", "paper", "scissors"])
throw = input("ROUND 4 — the class throws: ")
matchup = throw + " vs " + computer
print("Computer threw:", computer)
if throw == computer:
    print("TIE — nobody scores.")
elif matchup == "rock vs scissors":
    class_score = class_score + 1
    print("Rock smashes scissors — POINT TO THE CLASS!")
elif matchup == "paper vs rock":
    class_score = class_score + 1
    print("Paper wraps rock — POINT TO THE CLASS!")
elif matchup == "scissors vs paper":
    class_score = class_score + 1
    print("Scissors cut paper — POINT TO THE CLASS!")
else:
    computer_score = computer_score + 1
    print("The computer takes the round.")
print(f"SCORE → class {class_score} · computer {computer_score}")
print()

# ─── ROUND 5 ── (last one. Next week: ONE loop replaces all five blocks.) ────
computer = random.choice(["rock", "paper", "scissors"])
throw = input("ROUND 5 — the class throws: ")
matchup = throw + " vs " + computer
print("Computer threw:", computer)
if throw == computer:
    print("TIE — nobody scores.")
elif matchup == "rock vs scissors":
    class_score = class_score + 1
    print("Rock smashes scissors — POINT TO THE CLASS!")
elif matchup == "paper vs rock":
    class_score = class_score + 1
    print("Paper wraps rock — POINT TO THE CLASS!")
elif matchup == "scissors vs paper":
    class_score = class_score + 1
    print("Scissors cut paper — POINT TO THE CLASS!")
else:
    computer_score = computer_score + 1
    print("The computer takes the round.")
print(f"SCORE → class {class_score} · computer {computer_score}")
print()

# ─── THE CEREMONY ────────────────────────────────────────────────────────────
# ⭐ Read the final score with maximum drama. Pause before running this.

print("==============================================")
print(f"   FINAL SCORE → class {class_score} · computer {computer_score}")
print("==============================================")
if class_score > computer_score:
    print("🏆 THE CLASS DEFEATS THE MACHINE! Tell everyone.")
elif computer_score > class_score:
    print("🤖 The computer wins. It isn't even smug about it. (It can't be.)")
else:
    print("A dead tie. With a fair game, that's no accident...")
print()
print("Was this game fair? 3 wins, 3 losses, 3 ties out of 9 matchups.")
print("Prove it yourself on today's handout grid.")
