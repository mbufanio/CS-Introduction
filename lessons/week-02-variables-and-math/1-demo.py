# ==============================================================================
#
#   WEEK 2  ·  VARIABLES & MATH
#
#   Last week the computer talked. This week it gets two superpowers:
#     1. A MEMORY  — it can store values in labeled boxes called VARIABLES
#     2. A CALCULATOR — the fastest one in the building
#
#   Reminder from week 1: lines starting with '#' are comments — notes for
#   humans. The computer skips them. Everything else runs, top to bottom.
#
# ==============================================================================


# ------------------------------------------------------------------------------
# SECTION 1 · THE REMATCH — class vs. computer
# ------------------------------------------------------------------------------
# The class just raced this expression on paper. Now it's the computer's turn.
#
# ⭐ ASK THE CLASS: anyone finished? Anyone CLOSE? Watch the screen...

print("The monster expression:  437 * 852 + 90210 - 12345")
print("The computer's answer:", 437 * 852 + 90210 - 12345)
print("Time it took: less than a millisecond. It is not even warmed up.")

# NEW TRICK you just saw: print with a COMMA glues text and a number together
# on one line (with a space). We'll use it all day:
#
#   print("The answer:", 6 * 7)   →   The answer: 42


# ------------------------------------------------------------------------------
# SECTION 2 · VARIABLES — THE WALL OF LABELED BOXES
# ------------------------------------------------------------------------------
# The computer's memory is like a giant wall of boxes. A VARIABLE is one box
# with a label on the front and ONE value inside.
#
#   score = 10   means:  "make a box, label it 'score', put 10 inside"
#
# That '=' sign is NOT the equals sign from math class. It's an ARROW pointing
# left: take the value on the right, store it in the box on the left.
# We call this ASSIGNMENT.

score = 10
teacher_age = 39            # (lie if you want — the computer can't check)
best_class = "Room 204"     # boxes can hold strings too!

# The boxes are filled. Nothing printed yet — storing is silent.
# To see inside a box, print the LABEL (no quotes!):

print("score:", score)
print("teacher_age:", teacher_age)
print("best_class:", best_class)

# ⭐ ASK THE CLASS: these two lines look almost identical.
#    Will they print the same thing? Vote before running!

print(score)
print("score")

# What happened:
#    print(score)    no quotes → "computer, LOOK UP the box called score"  → 10
#    print("score")  quotes    → "computer, SAY the word score"            → score
#
# Quotes mean SAY IT. No quotes mean LOOK IT UP. That rule lasts all year.


# ------------------------------------------------------------------------------
# SECTION 3 · THIS IS SECRETLY YOUR ALGEBRA HOMEWORK
# ------------------------------------------------------------------------------
# In algebra:   "Evaluate 3x + 2 when x = 7."
# You substitute 7 for x, then follow order of operations. Watch Python do
# EXACTLY that — substitution is its whole job:

x = 7
print("3 * x + 2 when x is 7 →", 3 * x + 2)

# ⭐ ASK THE CLASS: I'm changing x to 100. What will the same line print?
#    (Have them compute 3(100) + 2 in their heads BEFORE you run it.)

x = 100
print("3 * x + 2 when x is 100 →", 3 * x + 2)

# Same expression, new value in the box. Python evaluates by substitution —
# the thing your math teacher has been making you do by hand. (Rude, honestly.)


# ------------------------------------------------------------------------------
# SECTION 4 · REASSIGNMENT — THE IMPOSSIBLE EQUATION
# ------------------------------------------------------------------------------
# ⭐ ASK THE CLASS: in MATH class, could this equation ever be true?
#
#        score = score + 10
#
#    (Subtract score from both sides... 0 = 10?! Impossible. No solution.)
#
# But this is not math class, and '=' is not stating a fact — it's an
# INSTRUCTION, and instructions run in steps, RIGHT SIDE FIRST:
#
#    step 1:  open the box 'score', see what's inside          (10)
#    step 2:  add 10 to it                                     (20)
#    step 3:  put the result BACK in the box, replacing the old value
#
# The old value is gone forever. The box only ever holds ONE thing.

print("score before:", score)
score = score + 10
print("score after: ", score)

# This one line is how every game you've ever played keeps score.
# ⭐ ASK THE CLASS: I run 'score = score + 10' one more time. Now what's in
#    the box? Predict, then watch:

score = score + 10
print("and again:  ", score)


# ------------------------------------------------------------------------------
# SECTION 5 · PEMDAS — PYTHON FOLLOWS YOUR RULES
# ------------------------------------------------------------------------------
# ⭐ ASK THE CLASS: what is 2 + 3 * 4?  Shout it out.
#    (Someone will say 20. Someone will say 14. Let them argue for a second.)

print("2 + 3 * 4 =", 2 + 3 * 4)

# 14! Python multiplies BEFORE it adds — order of operations, exactly the
# PEMDAS you learned. The computer never does math left-to-right like a
# calculator app from 2003. And parentheses overrule everything, same as math:

print("(2 + 3) * 4 =", (2 + 3) * 4)

# One heads-up while we're here: division always answers with a decimal point.

print("10 / 5 =", 10 / 5)     # → 2.0  (yes, even though it divides evenly!)


# ------------------------------------------------------------------------------
# SECTION 6 · THE ** OPERATOR — POWERS BEYOND YOUR CALCULATOR
# ------------------------------------------------------------------------------
# Two stars mean "to the power of":   2 ** 3  is  2 × 2 × 2.

print("2 ** 3 =", 2 ** 3)
print("2 ** 10 =", 2 ** 10)

# ⭐ ASK THE CLASS: your calculator gives up around 2 to the 100th and starts
#    saying things like '1.26e30'. Python? Python shows EVERY DIGIT.
#    Count them with me when it appears...

print("2 ** 100 =", 2 ** 100)

# 31 digits. Every one of them exact. (Want to see 302 digits? That's in
# today's challenge file. Bring a snack.)


# ------------------------------------------------------------------------------
# SECTION 7 · // AND % — THE PIZZA OPERATORS
# ------------------------------------------------------------------------------
# The problem: 17 slices of pizza. 5 kids. Nobody is allowed to cry.
#
# ⭐ ASK THE CLASS: how many slices does each kid get? How many are left
#    over for the teacher? (They've done this since 3rd grade — division
#    with remainder. Python just splits it into two operators.)

slices = 17
kids = 5

print("Slices each:  17 // 5 =", slices // kids)   # // : divide, IGNORE the remainder
print("Left over:    17 %  5 =", slices % kids)    # %  : ONLY the remainder

# // is called floor division. % is called "mod" (say it like a programmer).
#
# % looks like the most useless operator in Python. It is not. In week 9,
# % is the exact gear that makes SECRET CODES work — it's how the letter Z
# wraps back around to A. Remember the pizza.


# ------------------------------------------------------------------------------
# SECTION 8 · GRAND FINALE
# ------------------------------------------------------------------------------
# Everything below uses only today's tools: boxes, math, and print with commas.

points_per_week = 1000
weeks = 16
final_score = points_per_week * weeks

print()
print("*******************************************")
print("*   THIS CLASS NOW HAS A MEMORY UPGRADE   *")
print("*******************************************")
print()
print("Weeks of Python so far:", 2)
print("Weeks of Python to go:", weeks - 2)
print("Points this class will earn by June:", final_score)
print("Points the computer cares about:", final_score * 0)
print("It has no feelings. It is very good at math. See you next week.")
