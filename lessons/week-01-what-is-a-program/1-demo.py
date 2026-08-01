# ==============================================================================
#
#   WEEK 1  ·  WHAT IS A PROGRAM?
#
#   A PROGRAM is a list of instructions that a computer follows,
#   in order, EXACTLY as written.
#
#   This file is a program. Everything you're reading right now is inside it.
#   The lines that start with a '#' (like this one) are called COMMENTS —
#   they are notes for HUMANS. The computer skips them completely.
#
# ==============================================================================


# ------------------------------------------------------------------------------
# SECTION 1 · YOUR FIRST COMMAND
# ------------------------------------------------------------------------------
# The command below is the most famous line of code in the world.
# Since the 1970s, the first program every programmer writes says hello.
# Today, this class joins a 50-year tradition.
#
#   print(...)  means:  "computer, display this on the screen"
#
# ⭐ ASK THE CLASS: before we run it — what do you think will appear?

print("Hello, world!")


# ------------------------------------------------------------------------------
# SECTION 2 · INSTRUCTIONS RUN IN ORDER, TOP TO BOTTOM
# ------------------------------------------------------------------------------
# A program isn't one instruction — it's a LIST of them.
# The computer does line 1, then line 2, then line 3. It never skips,
# never rearranges, never gets creative.
#
# ⭐ ASK THE CLASS: what order will these three lines appear in?
#    Could the computer decide to print the greeting first because it's nicer?
#    (No. It CAN'T decide anything. That's the whole point.)

print("First, the computer does this line.")
print("Then this one.")
print("It never skips. It never guesses. It just follows the list.")


# ------------------------------------------------------------------------------
# SECTION 3 · STRINGS — TEXT IN QUOTES
# ------------------------------------------------------------------------------
# The text inside the quotes is called a STRING.
# A string is just characters — letters, spaces, punctuation — and the
# computer repeats it WITHOUT thinking about what it means.
#
# Which leads to a very sneaky question...
#
# ⭐ ASK THE CLASS: these two lines look almost identical.
#    Will they print the same thing? Vote before running!

print("2 + 2")
print(2 + 2)

# What happened:
#   "2 + 2"  has quotes → it's a STRING → the computer just repeats the text
#    2 + 2   has NO quotes → it's MATH → the computer calculates it
#
# This is the difference between WRITING a math expression and SOLVING it.
# (Next week we turn the computer into a full super-calculator.)


# ------------------------------------------------------------------------------
# SECTION 4 · COMPUTERS ARE LITERAL (the sandwich rule)
# ------------------------------------------------------------------------------
# Remember the sandwich robot? The computer does what you SAY,
# not what you MEAN. If you say it even slightly wrong, it won't guess —
# it will stop and show an ERROR MESSAGE.
#
# An error message is NOT the computer being mean.
# It's the computer saying: "I got stuck HERE, and HERE'S why."
# Programmers see hundreds of these a day. Reading them is a superpower.
#
# ⭐ LIVE ACTIVITY: uncomment the broken lines below ONE AT A TIME
#    (remove the '#' at the start), run the file, and read the error
#    out loud together. Then put the '#' back and try the next one.
#
# BROKEN LINE 1 — Capital P. Python's commands are lowercase. To Python,
#                 'Print' and 'print' are as different as 'cat' and 'dog'.
# Print("Why doesn't this work?")
#
# BROKEN LINE 2 — The closing quote is missing. Python reads to the end of
#                 the line still waiting for it, then gives up.
# print("Where does this string end?)
#
# BROKEN LINE 3 — No quotes at all. Python thinks these words are commands
#                 it should know... and it doesn't know them.
# print(Hello there)
#
# ⭐ ASK THE CLASS after each one: what is the error message trying to
#    tell us? Which line number does it point at?

print("Errors are clues, not failures.")


# ------------------------------------------------------------------------------
# SECTION 5 · COMMENTS — NOTES FOR HUMANS
# ------------------------------------------------------------------------------
# You've been reading comments this whole time. One more thing about them:
# programmers use comments to explain code to OTHER PEOPLE (and to
# themselves, next week, after they've forgotten everything).

# The computer ignores this line completely.
print("...but it runs this one, because there's no '#' in front.")  # (a comment can share a line with code, too)


# ------------------------------------------------------------------------------
# SECTION 6 · GRAND FINALE
# ------------------------------------------------------------------------------
# Everything below is just print() — the ONE command you learned today.
# That's all it takes to make the computer put on a show.

print()
print("*************************************")
print("*                                   *")
print("*   THIS CLASS NOW SPEAKS PYTHON    *")
print("*                                   *")
print("*************************************")
print()
print("Instructions followed: all of them.")
print("Questions asked by the computer: zero.")
print("See you next week.")
