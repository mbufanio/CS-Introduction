# ==============================================================================
#
#   WEEK 1 · CHALLENGE  —  for fast classes, curious kids, or a big finish
#
#   Three mini-shows, all built from the ONE command learned today.
#   Run the whole file, or run a section at a time (highlight + Shift+Enter).
#
# ==============================================================================


# ------------------------------------------------------------------------------
# CHALLENGE 1 · ASCII ART — drawing with print()
# ------------------------------------------------------------------------------
# Every line is just a string. Stack enough of them and you get a picture.
# ⭐ CLASS DESIGN MOMENT: after running it, let the class redesign the face —
#    change the eyes, the mouth, the ears — you type, they art-direct.

print(r"      _______      ")
print(r"     /       \     ")
print(r"    |  o   o  |    ")
print(r"    |    ^    |    ")
print(r"    |  \___/  |    ")
print(r"     \_______/     ")
print(r"   I AM A PROGRAM  ")
print()

# (Sharp-eyed kids may spot the little 'r' before some quotes. It tells
#  Python "this string is RAW — the backslashes are just drawings, not
#  special codes." Without it, Python treats '\' as the start of a secret
#  instruction. A good 10-second answer if anyone asks.)


# ------------------------------------------------------------------------------
# CHALLENGE 2 · THE CLASS ROSTER SHOW
# ------------------------------------------------------------------------------
# Replace these names with real students (volunteers only!) and re-run.
# Instant celebrity. Add as many lines as you have time for.

print("*** NOW ENTERING THE PROGRAMMING HALL OF FAME ***")
print("Ada  ...  future game developer")
print("Marcus  ...  future robot engineer")
print("Priya  ...  future app millionaire")
print()


# ------------------------------------------------------------------------------
# CHALLENGE 3 · THE CLIFFHANGER — a sneak peek of week 6
# ------------------------------------------------------------------------------
# Ask the class: "How many print lines would I need to print something
# 500 times?"  (They'll say 500. Reasonable!)
#
# Then show them this. THREE lines. Don't explain how it works —
# just say: "In five weeks, you'll write this yourselves."

print("Here is the computer doing 500 push-ups:")
for i in range(500):
    print("push-up number", i + 1)

print()
print("...it is not even tired. See you next week.")
