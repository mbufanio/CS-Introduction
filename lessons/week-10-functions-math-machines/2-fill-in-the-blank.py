# ==============================================================================
#
#   WEEK 10 · FILL IN THE BLANK  —  the class writes the code, you type it
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


# ── TASK 1 · FINISH THE MACHINE'S INSIDES ────────────────────────────────────
# This machine is supposed to DOUBLE whatever falls in the slot.
# The class fills in what x gets multiplied by.

def double(x):
    return x * ____


# ── TASK 2 · PRESS THE BUTTON ────────────────────────────────────────────────
# Task 1 built the machine — but building isn't running! Fill in the NAME
# of the machine we just built to actually call it.
# ⭐ Ask before running: what number will appear? (8... then have them
#    predict the second line before it prints.)

print(____(4))
print(____(double(4)))


# ── TASK 3 · YOU TYPE, THEY SUPPLY THE KEYWORD ───────────────────────────────
# No blank here — a keyword can't hide in a ____. Do this one live:
#   1. Say: "I'm building a machine called half. Which keyword hands the
#      answer back out of the chute?"
#   2. Type these two lines below this comment, with the keyword the class
#      calls out, then add  print(half(10))  and run:
#
#          def half(x):
#              [keyword] x / 2
#
#   (They're hunting for return. If someone says print — TYPE IT:
#    print(x / 2) inside the machine still shows 5.0, but then try
#    print(half(10) + 1) and enjoy the crash together: a print-machine
#    hands back NOTHING, so there's nothing to add 1 to. That crash is
#    the whole lesson. Then switch it to return and watch it fly.)


# ── TASK 4 · NAME THE SLOT ───────────────────────────────────────────────────
# The class invents this machine's input-slot name. Rule: the name in the
# parentheses and the name in the body must MATCH — the slot and the
# insides are the same variable. (Any name works — even a silly one —
# as long as both blanks agree. Let them pick. Then run.)

def cheer(____):
    print("GO", ____, "GO! You are a CODE MACHINE!")

cheer("Ada")
cheer("Leo")            # ⭐ swap in real names and add more calls


# ── TASK 5 · THE TWO-SLOT MACHINE ────────────────────────────────────────────
# A = w x h, as a machine with TWO slots. The second slot's name is
# missing — in BOTH places it appears. Same rule as Task 4: they match.
# ⭐ After it runs: ask what rectangle_area(3, 4) vs rectangle_area(4, 3)
#    would give. (Same! Then ask: would a SUBTRACTION machine be so
#    forgiving? Hold the vote — it's in the voting game.)

def rectangle_area(width, ____):
    return width * ____

print("6 x 7 room:", rectangle_area(6, 7))


# ── TASK 6 · THE CLASS INVENTS A MACHINE ─────────────────────────────────────
# Total freedom: the class decides what this machine DOES to x.
# Triple it? x * x? Add a million? Any math expression using x goes in
# the blank. Then feed it 5 and have them verify the output by hand.

def class_machine(x):
    return ____

print("class_machine(5) =", class_machine(5))
print("class_machine(10) =", class_machine(10))


# ── TASK 7 · WIRE A MACHINE INTO A LOOP ──────────────────────────────────────
# Week 6's loop + this week's machine = an instant input/output table.
# Fill in the name of the machine to feed. (Any machine from today with
# ONE slot works — class_machine? double? Their call.)
# ⭐ Ask before running: predict the whole table out loud, row by row.

for n in range(1, 6):
    print(n, "-->", ____(n))
