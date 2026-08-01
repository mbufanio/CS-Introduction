# ==============================================================================
#
#   WEEK 13 · FILL IN THE BLANK  —  the class writes the code, you type it
#
#   HOW THIS WORKS (teacher):
#     · Every blank looks like this:  ____
#     · Read the task aloud. Kids call out what goes in the blank.
#     · Type their answer — even wrong ones! — and run the file.
#       Wrong answers crash, the class reads the error, everyone debugs.
#     · Run after EACH task. A task below the last filled blank crashes
#       with an error that has '____' in it — that just means you haven't
#       gotten there yet.
#     · TASK 3 has NO blank — you type two lines live while the class
#       supplies the operator. Instructions are at the task.
#     · Numbers will differ every run. Randomness is the lesson.
#
#   Completed version: answer-key.md
#
# ==============================================================================

import random


# ── TASK 1 ────────────────────────────────────────────────────────────────────
# One digital die roll: a whole number from 1 to 6, all equally likely.
# Which random command does that? (Week 5 veterans, this is your moment.)

roll = random.____(1, 6)
print("the computer rolled:", roll)


# ── TASK 2 ────────────────────────────────────────────────────────────────────
# Now TEN rolls. How many times should this loop run?

for i in range(____):
    roll = random.randint(1, 6)
    print("roll", i + 1, "→", roll)


# ── TASK 3 · TYPE-IT-LIVE — THE COUNTER ──────────────────────────────────────
# This loop rolls 100 dice... but counts NOTHING. Run it once and look:
# "sixes counted: 0". The counter is missing!
#
# TEACHER: type these TWO lines at the marked spot, indented under the for:
#
#         if roll ?? 6:
#             count = count + 1
#
# ...but DON'T type the '??' — the class supplies the operator that asks
# "is roll EQUAL to 6?"  (Someone will offer a single = — type it, savor
# the error, let the week 4 veterans fix it.)

count = 0
trials = 100
for i in range(trials):
    roll = random.randint(1, 6)
    # ← type the two counting lines HERE, indented like the line above

print("sixes counted:", count, "out of", trials, "rolls")


# ── TASK 4 · THE PERCENT LINE ────────────────────────────────────────────────
# Turn the count into a percentage:  hits ÷ trials × 100.
# Which variable holds the number of sixes we just counted?

percent = ____ / trials * 100
print("that is", percent, "percent — theory says about 16.67")


# ── TASK 5 · GO BIG ──────────────────────────────────────────────────────────
# The law of large numbers says: bigger experiment → closer to 16.67.
# The class picks a BIG number of trials — thousands! (Six digits is fine;
# a million takes a couple of seconds. Narrate the suspense.)

big_trials = ____
count = 0
for i in range(big_trials):
    roll = random.randint(1, 6)
    if roll == 6:
        count = count + 1

print("out of", big_trials, "rolls:", round(count / big_trials * 100, 2), "percent sixes")
# (round(number, 2) just trims the decimal to 2 places)


# ── TASK 6 · TWO DICE ────────────────────────────────────────────────────────
# Roll two dice and add them. The total needs BOTH rolls — what completes it?

roll_a = random.randint(1, 6)
roll_b = random.randint(1, 6)
total = roll_a + ____
print("two dice:", roll_a, "and", roll_b, "→ total:", total)


# ── TASK 7 · HUNT THE KING ───────────────────────────────────────────────────
# One sum rules all two-dice rolls — the grid gave it SIX ways to happen.
# Which total should the counter hunt for?

kings = 0
for i in range(1000):
    total = random.randint(1, 6) + random.randint(1, 6)
    if total == ____:
        kings = kings + 1

print("the king came up", kings, "times in 1000 →", round(kings / 1000 * 100, 1), "percent")
print("theory: 6 ways out of 36 = 16.7 percent. Long live the king.")
