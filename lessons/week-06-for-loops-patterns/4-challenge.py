# ==============================================================================
#
#   WEEK 6 · CHALLENGE  —  for fast classes, curious kids, or a big finish
#
#   Four loop spectaculars.
#   Run the whole file, or run a section at a time (highlight + Shift+Enter).
#
# ==============================================================================

import time     # a toolbox with a stopwatch in it — used in Challenge 4


# ------------------------------------------------------------------------------
# CHALLENGE 1 · 99 BOTTLES OF POP ON THE WALL 🍾
# ------------------------------------------------------------------------------
# The song that ruins every bus trip: all 99 verses, faster than one kid
# can sing the first line.
# ⭐ Ask first: how long would this take to WRITE by hand? To SING?
#    (About 45 minutes to sing. The loop: a blink.)

for bottles in range(99, 0, -1):
    if bottles == 1:
        print("1 bottle of pop on the wall, 1 bottle of pop!")
        print("Take it down, pass it around... 0 bottles of pop on the wall. 😢")
    elif bottles == 2:
        print("2 bottles of pop on the wall, 2 bottles of pop!")
        print("Take one down, pass it around... 1 bottle of pop on the wall.")
    else:
        print(bottles, "bottles of pop on the wall,", bottles, "bottles of pop!")
        print("Take one down, pass it around...", bottles - 1, "bottles of pop on the wall.")
print()
print("The bus driver thanks you for your efficiency.")
print()

# (Spot the if/elif/else doing grammar duty near the end — week 4 skills
#  keeping "1 bottles" from embarrassing us. Loops + decisions, teamed up.)


# ------------------------------------------------------------------------------
# CHALLENGE 2 · MOUNTAIN RANGE — giant star art ⛰️
# ------------------------------------------------------------------------------
# Two tricks at once:  " " * spaces  slides each row over,
#                      "*" * stars   builds the peak. A centered mountain!

for row in range(1, 21):
    print(" " * (20 - row) + "*" * (2 * row - 1))
print()

# ⭐ Ask: row 5 has how many stars? (2×5−1 = 9 — odd numbers make it
#    symmetrical.) Change 21 to 31 and re-run for a bigger mountain.


# ------------------------------------------------------------------------------
# CHALLENGE 3 · THE ODD SECRET — a genuine math discovery 🤯
# ------------------------------------------------------------------------------
# Add up odd numbers one at a time and watch the running totals CLOSELY.
# ⭐ Run it, then ask: "raise your hand when you recognize the totals."
#    1, 4, 9, 16, 25... the SQUARES. Sum of the first n odd numbers = n².
#    This blows mathematicians' minds too — it's a real theorem.

total = 0
count = 0
for odd in range(1, 20, 2):
    total = total + odd
    count = count + 1
    print("first", count, "odd numbers →", total, "  (and", count, "squared is", count * count, ")")
print()

# Why? Picture a square of dots. To grow a 3×3 into a 4×4, you wrap one
# new row + one new column around the corner — an L-shape of 7 dots.
# Every L-shape is the next odd number. Draw it on the board!


# ------------------------------------------------------------------------------
# CHALLENGE 4 · LIVE ROCKET LAUNCH 🚀 — countdown in real time
# ------------------------------------------------------------------------------
# time.sleep(1) makes the computer WAIT one real second.
# Suddenly the countdown isn't instant — it's THEATER.
# ⭐ Get the class counting along out loud. You have ten seconds to
#    build maximum drama.

print("LAUNCH SEQUENCE INITIATED...")
for t in range(10, 0, -1):
    print(t, "...")
    time.sleep(1)
print("🚀 BLASTOFF! 🚀")
print("*" * 40)
