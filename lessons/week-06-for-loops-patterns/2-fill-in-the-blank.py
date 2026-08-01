# ==============================================================================
#
#   WEEK 6 · FILL IN THE BLANK  —  the class writes the code, you type it
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
#
#   Completed version: answer-key.md
#
# ==============================================================================


# ── TASK 1 · APPLAUSE MACHINE ────────────────────────────────────────────────
# The class deserves a round of applause — an EXACT round of 12 claps.
# ⭐ Ask: what number goes in range so the loop runs 12 times?
#    (Trap alert: someone will say 13 "because range is weird."
#     range(12) IS 12 laps — it's the VALUES that start at 0, not the count.)

for i in range(____):
    print("CLAP 👏")


# ── TASK 2 · COUNT LIKE A HUMAN ──────────────────────────────────────────────
# Make this loop print the numbers 1 through 10 — starting at 1 like a
# person, not at 0 like a computer.
# ⭐ Ask for BOTH blanks: where do we start? Where's the wall?

for number in range(____, ____):
    print(number)


# ── TASK 3 · THE ODD SQUAD ───────────────────────────────────────────────────
# Print the odd numbers from 1 to 19: 1, 3, 5, ... 19.
# In math language: first term 1, common difference 2.
# ⭐ Ask: what STEP jumps us from odd to odd?

for n in range(1, 20, ____):
    print(n)


# ── TASK 4 · COUNTDOWN TO LUNCH ──────────────────────────────────────────────
# Count DOWN from 10 to 1. The start and stop are done — the class supplies
# the step that makes the loop walk backward.
# ⭐ Trap alert: "1"? "2"? Type whatever they say and let the silence
#    (an empty run — zero lines!) do the teaching. Backward needs a minus.

for t in range(10, 0, ____):
    print(t, "...")
print("LUNCH TIME 🍕")


# ── TASK 5 · THE SNOWBALL (accumulator) ──────────────────────────────────────
# Add up 1 + 2 + 3 + ... + 20 with the snowball pattern.
# Blank 1: what does the snowball start as, before anything is added?
# Blank 2: what gets rolled into the snowball each lap?
# ⭐ Predict first: what will the answer be? (Gauss says 20 × 21 ÷ 2...)

total = ____
for n in range(1, 21):
    total = total + ____
print("1 + 2 + ... + 20 =", total)


# ── TASK 6 · TRIANGLE ARCHITECT ──────────────────────────────────────────────
# Build a 7-row star triangle:  row 1 has 1 star, row 7 has 7 stars.
# The repetition trick is written — the class picks what to multiply by.
# ⭐ Ask: which variable already counts 1, 2, 3, ... as the loop runs?

for row in range(1, 8):
    print("*" * ____)


# ── TASK 7 · FINALE — ANY TIMES TABLE (you type this one live) ───────────────
# No ____ here, because the class supplies an OPERATOR this time.
# The class picks a number for the table (7? 12? 9000?) — type it into
# the first line. Then ask: what SYMBOL multiplies in Python?
# (Not x! The star does double duty: numbers AND strings.)
#
# TYPE this line inside the loop, live, with the class dictating the star:
#
#       print(table, "x", i, "=", table * i)

table = 7                     # ← the class's chosen number goes here
for i in range(1, 11):
    print("table of", table, "— row", i)
    # → replace the line above with the real one, live
