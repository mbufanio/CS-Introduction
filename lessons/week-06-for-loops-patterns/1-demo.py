# ==============================================================================
#
#   WEEK 6  ·  FOR LOOPS & PATTERNS
#
#   In week 1, this course made a promise. The computer did 500 push-ups
#   in THREE lines of code, and we said: "one day you'll write this."
#
#   Today is the day. Today you learn the three lines.
#
# ==============================================================================


# ------------------------------------------------------------------------------
# SECTION 1 · THE THREE LINES — your first loop
# ------------------------------------------------------------------------------
# A FOR LOOP tells the computer: "run this block AGAIN and AGAIN,
# a set number of times."
#
#   for i in range(5):        ← "do this 5 times; call the lap counter i"
#       print(...)            ← the indented block is what gets repeated
#
# Indentation again! Just like if/else: the indented lines belong to the loop.
#
# ⭐ ASK THE CLASS: how many push-ups will this print?

for i in range(5):
    print("push-up number", i + 1)
print()

# Five push-ups from two lines. Now the week 1 flashback — change ONE number:

for i in range(500):
    print("push-up number", i + 1)
print()
print("...done. It is not even tired. And now YOU know how it works.")
print()

# ⭐ ASK THE CLASS: what would I change to make it do a MILLION?
#    (Just the number. The code doesn't get longer. THAT is the power.)


# ------------------------------------------------------------------------------
# SECTION 2 · MEET THE LOOP VARIABLE — and range's weird counting
# ------------------------------------------------------------------------------
# That little i is a real variable — the LOOP VARIABLE. Each lap, range
# hands it the next number. Let's actually look at what range(5) hands out.
#
# ⭐ ASK THE CLASS: five laps... so i will be 1, 2, 3, 4, 5. Right?
#    Vote before running!

print("What range(5) really hands out:")
for i in range(5):
    print("this lap, i is", i)
print()

# 🚨 THE NUMBER-LINE MOMENT (draw this on the board):
#
#     0   1   2   3   4   | 5
#     ●   ●   ●   ●   ●   | ✗
#
#   range(5) is 0, 1, 2, 3, 4 — FIVE numbers, and none of them is 5.
#   · It STARTS AT 0  (computers start counting at zero)
#   · It EXCLUDES THE STOP  (5 is the wall, not a step)
#
# Weird? Very. Memorize it now, because it never changes.
# (It's also why Section 1 printed i + 1 — humans like counting from 1.)


# ------------------------------------------------------------------------------
# SECTION 3 · range(start, stop) — counting like a human
# ------------------------------------------------------------------------------
# Give range TWO numbers and it starts where you say (stop is still a wall):

print("range(1, 11) — human counting:")
for number in range(1, 11):
    print(number)
print()

# ⭐ ASK THE CLASS: why 11 and not 10?  (The stop is excluded —
#    to reach 10 you must aim one PAST it.)
#
# And with the loop variable doing real math each lap, homework dissolves:

print("The 7 times table, in two lines:")
for i in range(1, 11):
    print(7, "x", i, "=", 7 * i)
print()

# ⭐ Change the 7 to any number the class shouts. Re-run. Any times table,
#    instantly. (They will request 1,000,000. Oblige them.)


# ------------------------------------------------------------------------------
# SECTION 4 · range(start, stop, step) — arithmetic sequences
# ------------------------------------------------------------------------------
# A third number sets the STEP — how far to jump each lap.
# Math class calls these ARITHMETIC SEQUENCES:
#   first term = start · common difference = step
#
# ⭐ ASK THE CLASS before each one: what will it print?

print("Evens — range(2, 21, 2):")
for n in range(2, 21, 2):
    print(n)
print()

print("Counting by 5s — range(5, 51, 5):")
for n in range(5, 51, 5):
    print(n)
print()

# The step can even be NEGATIVE — the loop counts BACKWARD:

print("Rocket launch — range(10, 0, -1):")
for n in range(10, 0, -1):
    print(n, "...")
print("BLASTOFF! 🚀")
print()

# ⭐ ASK THE CLASS: why does the countdown stop at 1, not 0?
#    (0 is the stop — and the stop is ALWAYS excluded, even backward.)


# ------------------------------------------------------------------------------
# SECTION 5 · THE ACCUMULATOR — Gauss vs the machine
# ------------------------------------------------------------------------------
# Little Gauss added 1+2+3+...+100 in seconds with a genius trick.
# The computer doesn't need a trick — it needs a SNOWBALL:
#
#   total = 0                 ← start an empty snowball
#   each lap:  total = total + number   ← roll the next number into it
#
# That pattern is called an ACCUMULATOR. Watch it eat Gauss's problem:

total = 0
for number in range(1, 101):
    total = total + number
print("1 + 2 + 3 + ... + 100 =", total)

# ⭐ ASK THE CLASS: what was total after the first lap? (1)
#    After the second? (3)  Third? (6)  ...and after all 100? Run and see.
#
# Now check it against Gauss's trick: 50 pairs of 101 → n(n+1)/2:

print("Gauss's formula, 100 * 101 // 2 =", 100 * 101 // 2)
print("The formula and the loop AGREE. Math and code are the same universe.")
print()

# ⭐ ASK THE CLASS: which would win for 1 to a BILLION — the loop grinding
#    a billion laps, or the formula in one multiplication?
#    (The formula. Gauss's trick still matters — cleverness scales.)


# ------------------------------------------------------------------------------
# SECTION 6 · PATTERN ART — multiplying text
# ------------------------------------------------------------------------------
# One last superpower: Python can multiply TEXT.
#
#   "*" * 3   is   ***      (three copies, glued together)
#
# ⭐ ASK THE CLASS: so what happens if we print "*" * i while i climbs?

for i in range(1, 9):
    print("*" * i)
print()

# A triangle, built from multiplication. Art class is now math class.

print("The laugh-o-meter:")
for i in range(1, 6):
    print("HA" * i)
print()

print("Loops: because the computer NEVER gets bored. See you at the handout.")
