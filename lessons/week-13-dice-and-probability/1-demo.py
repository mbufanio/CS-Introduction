# ==============================================================================
#
#   WEEK 13  ·  DICE & PROBABILITY  —  rolling a million dice before the bell
#
#   On the board: 10 real rolls, and a lumpy tally that LOOKS broken.
#   Today's question: is the die broken... or is 10 rolls just not enough?
#   The computer's answer: let's roll a MILLION and find out.
#
#   TEACHER — HOW TO RUN THIS FILE:
#     · Run the whole file once:  python 1-demo.py
#     · It pauses in the TERMINAL between sections. Press Enter when the
#       class has made its prediction — never run without a prediction.
#     · Every number on screen will differ from your dry run. That's not
#       a bug — that's the subject of the lesson.
#
# ==============================================================================

import random


# ------------------------------------------------------------------------------
# SECTION 1 · ONE DIGITAL ROLL  (week 5 called — it wants its dice back)
# ------------------------------------------------------------------------------
# random.randint(1, 6) — a whole number from 1 to 6, all equally likely.
# It's the rock-paper-scissors machinery, back for the probability unit.
#
# ⭐ ASK THE CLASS: my real die took me all morning to roll 10 times.
#    How long will the computer need for ONE roll?

input("SECTION 1 — press Enter to roll one digital die: ")

roll = random.randint(1, 6)
print("the computer rolled:", roll)


# ------------------------------------------------------------------------------
# SECTION 2 · TEN ROLLS  —  lumpy, just like the real thing
# ------------------------------------------------------------------------------
# Week 6's for loop + week 5's randint = ten rolls in a blink.
#
# ⭐ ASK THE CLASS: theory says each face is equally likely. Will these ten
#    rolls come out nice and even — one or two of each face?
#    (Compare the result to the tally on the board. Lumpy here too!)

input("SECTION 2 — press Enter for ten rolls: ")

line = ""
for i in range(10):
    roll = random.randint(1, 6)
    line = line + f"{roll} "           # collect the rolls on one line
print("ten rolls:", line)
print("Lumpy — just like my real die. Same cause: ten rolls is a TINY experiment.")


# ------------------------------------------------------------------------------
# SECTION 3 · THE SIMULATION PATTERN  —  count the sixes in 100 rolls
# ------------------------------------------------------------------------------
# This little block is the heart of the whole unit. Four steps:
#
#   step 1: LOOP over many trials         for i in range(trials):
#   step 2: RUN one trial                 roll = random.randint(1, 6)
#   step 3: COUNT the hits with if        if roll == 6:  count = count + 1
#   step 4: TURN it into a percent        count / trials * 100
#
# Theory's prediction: 1 face out of 6 → 1/6 → about 16.67% of rolls.
#
# ⭐ ASK THE CLASS: out of 100 rolls, how many sixes SHOULD we see?
#    (About 16 or 17.) Will we get exactly that? Votes, then Enter.

input("SECTION 3 — press Enter to count sixes in 100 rolls: ")

trials = 100
count = 0
for i in range(trials):
    roll = random.randint(1, 6)
    if roll == 6:
        count = count + 1

percent = count / trials * 100
print("rolls:", trials, "   sixes:", count, "   that is", percent, "percent")
print("theory says: 16.67 percent. Close? Sort of? Hmm...")


# ------------------------------------------------------------------------------
# SECTION 4 · THE ZOOM-OUT  —  100 → 10,000 → 1,000,000
# ------------------------------------------------------------------------------
# Same experiment, bigger and bigger. A week 10 function machine makes it
# reusable — one def, three calls.
#
#   round(number, 2) trims a long decimal to 2 places — that's all it does.
#
# ⭐ ASK THE CLASS before EACH call: closer to 16.67 than the last one,
#    or farther? (The million-roll call takes a couple of seconds —
#    narrate it: "it's on roll four hundred thousand riiiight... now.")

def percent_of_sixes(trials):
    count = 0
    for i in range(trials):
        if random.randint(1, 6) == 6:
            count = count + 1
    return round(count / trials * 100, 2)

input("SECTION 4 — press Enter to zoom out: ")

print("theory:                16.67 percent, forever and always")
print()
print("      100 rolls  →", percent_of_sixes(100), "percent")
print("   10,000 rolls  →", percent_of_sixes(10000), "percent")
print("1,000,000 rolls  →", percent_of_sixes(1000000), "percent   ← rolled before the bell!")
print()
print("The bigger the experiment, the closer it hugs the theory.")
print("Mathematicians call this THE LAW OF LARGE NUMBERS. (Great band name.)")
print("So: the die was never broken. Ten rolls was just too small to tell.")


# ------------------------------------------------------------------------------
# SECTION 5 · TWO DICE  —  why 7 is king
# ------------------------------------------------------------------------------
# New experiment: roll TWO dice, add them. Sums run from 2 to 12.
#
# ⭐ ASK THE CLASS: are all sums equally likely, the way single faces are?
#    Vote: does 7 come up more than 2, less than 2, or the same?

input("SECTION 5 — press Enter to race sum 7 against sum 2 (10,000 rolls): ")

sevens = 0
twos = 0
for i in range(10000):
    total = random.randint(1, 6) + random.randint(1, 6)
    if total == 7:
        sevens = sevens + 1
    if total == 2:
        twos = twos + 1

print("in 10,000 double-rolls:")
print("   sum 7 came up", sevens, "times  →", round(sevens / 10000 * 100, 2), "percent")
print("   sum 2 came up", twos, "times   →", round(twos / 10000 * 100, 2), "percent")
print()
print("Not even close. 7 CRUSHES 2. But... why?")

# THE GRID — every possible two-dice outcome, all 36, all equally likely.
# (In the f-string, :3 just pads each number to 3 spaces so columns line up.)
#
# ⭐ ASK THE CLASS: find the 7s in the grid. How many? Now find the 2s.

input("SECTION 5, part 2 — press Enter to print all 36 possible outcomes: ")

print("           die B:  1  2  3  4  5  6")
for a in range(1, 7):
    row = f"   die A: {a}  →   "
    for b in range(1, 7):
        row = row + f"{a + b:3}"
    print(row)

print()
print("ways to make 7:  1+6, 2+5, 3+4, 4+3, 5+2, 6+1  →  six ways")
print("ways to make 2:  1+1                            →  one way")
print()
print("theory:  7 →", round(6 / 36 * 100, 2), "percent      2 →", round(1 / 36 * 100, 2), "percent")
print("Scroll up to the simulation... THE GRID AND THE EXPERIMENT AGREE.")
print("That's the whole subject of probability in one screen.")


# ------------------------------------------------------------------------------
# SECTION 6 · THE CLIFFHANGER
# ------------------------------------------------------------------------------

input("SECTION 6 — press Enter for the closing thought: ")

print()
print("*" * 58)
print("Who else knows that 7 beats 2, and EXACTLY by how much?")
print("Casinos. Every game on their floor is built from this math,")
print("tilted juuust slightly in the house's favor.")
print("Next week: we simulate it — and find out why the casino")
print("always, always wins.")
print("*" * 58)
