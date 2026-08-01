# ==============================================================================
#
#   WEEK 2 · FILL IN THE BLANK  —  the class writes the code, you type it
#
#   HOW THIS WORKS (teacher):
#     · Every blank looks like this:  ____
#     · Read the task aloud. Kids call out what goes in the blank.
#     · Type their answer — even wrong ones! — and run the file.
#       Wrong answers crash, the class reads the error, everyone debugs. Perfect.
#     · Run after EACH task so the class sees their code work immediately.
#       (A task below the last filled blank will crash with
#        "NameError: name '____' is not defined" — that just means
#        you haven't gotten there yet.)
#     · Task 5 has NO blank — you type those lines live while the class
#       supplies the operators.
#
#   Completed version: answer-key.md
#
# ==============================================================================


# ── TASK 1 ────────────────────────────────────────────────────────────────────
# Take a headcount! The class counts everyone in the room (teacher included?
# their call). Fill the blank with the NUMBER — no quotes, it's math fuel.

students = ____


# ── TASK 2 ────────────────────────────────────────────────────────────────────
# Now open the box and show what's inside. What goes in the blank so the
# computer prints the NUMBER — not the word "students"?
# ⭐ Ask first: quotes or no quotes? Why?

print("Humans in this room:", ____)


# ── TASK 3 · THE ALGEBRA MACHINE ─────────────────────────────────────────────
# Straight from math class: evaluate 3x + 2. The class picks a value for x
# (first blank), then fills the second blank so Python SUBSTITUTES x into
# the expression. Predict the answer out loud before you run!

x = ____
print("3 * x + 2 =", 3 * ____ + 2)


# ── TASK 4 · THE IMPOSSIBLE EQUATION ─────────────────────────────────────────
# The class starts with 50 points. They just earned 10 more.
# Fill the blank so the line means: "take what's in the score box, add 10,
# put it back." (Hint: the answer is already on this line's left side...)

score = 50
score = ____ + 10
print("Class score is now:", score)


# ── TASK 5 · THE PIZZA EMERGENCY (no blank — you type, they choose) ──────────
# 23 slices of pizza just arrived for 4 kids. The two boxes below are ready.
# TYPE these four lines LIVE, and make the class supply each ?? operator
# (which symbol answers "how many EACH?" — which one answers "left over?"):
#
#     each = slices ?? kids
#     leftover = slices ?? kids
#     print("Slices each:", each)
#     print("Slices left over:", leftover)
#
# Wrong operator? Run it anyway — the class checks the numbers against the
# pizza story and debugs. (4 kids × 5 slices + 3 left = 23. The math polices
# itself.)

slices = 23
kids = 4


# ── TASK 6 · HOW BIG CAN WE GO? ──────────────────────────────────────────────
# The class picks the power. Fill the blank with their number and run.
# Then raise the stakes: bigger! BIGGER! How many digits before the
# smartboard runs out of room?

print(2 ** ____)


# ── TASK 7 · FINALE — THE EMPTY BOX ──────────────────────────────────────────
# The class's last job today: ask for a box that was NEVER made.
# Fill the blank with any label we did NOT create today (pizza? homework?
# victory?), run it, and read the error together.
# ⭐ Ask: is the computer angry? No — it's telling us EXACTLY what's missing.
# Then fix it the honest way: make the box first (type a line like
# victory = 100 above it) and run again.

print(____)
