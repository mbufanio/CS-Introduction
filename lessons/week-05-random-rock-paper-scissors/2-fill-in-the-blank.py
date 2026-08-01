# ==============================================================================
#
#   WEEK 5 · FILL IN THE BLANK  —  the class writes the code, you type it
#
#   HOW THIS WORKS (teacher):
#     · Every blank looks like this:  ____
#     · Read the task aloud. Kids call out what goes in the blank.
#     · Type their answer — even wrong ones! — and run the file.
#       Wrong answers crash, the class reads the error, everyone debugs. Perfect.
#     · Run after EACH task so the class sees their code work immediately.
#       (Until Task 1's blank is filled, the file stops immediately with
#        "ModuleNotFoundError: No module named '____'" — Python went looking
#        for a toolbox literally named ____. That's your cue to fill it in.
#        After that, an unfilled blank further down gives the usual
#        "NameError: name '____' is not defined".)
#
#   Completed version: answer-key.md
#
# ==============================================================================


# ── TASK 1 ────────────────────────────────────────────────────────────────────
# Nothing random can happen until we borrow the right toolbox.
# ⭐ Ask the class: which toolbox holds the dice and spinners?

import ____

print("Toolbox loaded. Let the chaos begin.")


# ── TASK 2 · THE CLASS DIE ────────────────────────────────────────────────────
# Build a fair six-sided die. randint includes BOTH ends —
# so what should the top number be if we want rolls of 1, 2, 3, 4, 5, 6?

roll = random.randint(1, ____)
print("The class die says:", roll)


# ── TASK 3 · THE RIGGED DIE ───────────────────────────────────────────────────
# Now build a die that ALWAYS rolls 3. No ifs. No tricks. Just randint.
# ⭐ Ask: if both ends are included... what makes a die with only ONE outcome?

print("Rigged roll:", random.randint(____, 3))
print("Rigged roll:", random.randint(____, 3))     # same blank — same answer


# ── TASK 4 · THE MOOD SPINNER ─────────────────────────────────────────────────
# The computer wakes up in a random mood. The class invents the missing one!
# Any school-appropriate mood works — don't forget the QUOTES
# (it's a string going into the collection).

mood = random.choice(["happy", ____, "sleepy"])
print("The computer is feeling:", mood)

# ⭐ Follow-up: with three moods in the brackets, what's the chance
#    of each one?  (1 out of 3 — equally likely. That's fairness.)


# ── TASK 5 · THE COIN FLIP ────────────────────────────────────────────────────
# A coin is just a two-sided die: randint(1, 2).
# Our rule: 1 means HEADS. Fill the blank so the if-check matches the rule.

flip = random.randint(1, 2)
if flip == ____:
    print("HEADS!")
else:
    print("TAILS!")

# ⭐ Run this task several times in a row. Can it repeat? (Yes! Every flip
#    is fresh — the coin has no memory.)


# ── TASK 6 · FINALE — TIE DETECTOR (you type this one live) ──────────────────
# No ____ here, because the class is supplying an OPERATOR this time.
# The code below throws for both players but never announces a tie.
# ⭐ Ask the class: what SYMBOL asks "are these two things EQUAL?"
#    (Careful — one = STORES a value. Asking takes TWO: the double equals.)
#
# When they've got it, TYPE these three lines below the code, live,
# with the class dictating the operator:
#
#       if throw == computer:
#           print("TIE! Great minds... and one of them isn't even a mind.")
#       else:
#           print("Not a tie — who won? Check the grid on your handout!")

computer = random.choice(["rock", "paper", "scissors"])
throw = input("Teacher types the class's throw (rock/paper/scissors): ")
print("Class threw   :", throw)
print("Computer threw:", computer)
# → type the if / else right here, live
