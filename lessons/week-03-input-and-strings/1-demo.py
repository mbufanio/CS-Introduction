# ==============================================================================
#
#   WEEK 3  ·  INPUT & STRINGS  →  🎉 MAD LIBS
#
#   So far, we write the whole show before the curtain opens.
#   Today the program TALKS BACK: it asks questions, waits for answers,
#   and uses them. By the end of class it will write a story about us.
#
#   TEACHER: this file uses input() — when the terminal stops and blinks,
#   it's waiting for YOU to type. Kids shout the answers; you're the hands.
#
# ==============================================================================


# ------------------------------------------------------------------------------
# SECTION 1 · THE COMPUTER ASKS A QUESTION (the hook)
# ------------------------------------------------------------------------------
# input() does three things, in order:
#   1. prints the question
#   2. STOPS and waits — forever, if it has to. It has nothing else going on.
#   3. hands over whatever gets typed, which we catch in a box
#
# ⭐ RUN THIS AND SAY NOTHING. Let the cursor blink. Let it get awkward.
#    Then ask the class to name our computer, type it, and press Enter.

computer_name = input("What is your name? ")

print("Nice. From now on, this computer is called", computer_name)
print("It waited. It would have waited until June.")


# ------------------------------------------------------------------------------
# SECTION 2 · THE ECHO BOT — input lands in a box
# ------------------------------------------------------------------------------
# The answer isn't lost — input() drops it straight into a variable.
# Same labeled boxes as last week; the only new part is WHERE the value
# comes from: not from our code, but from whoever is at the keyboard.
#
# ⭐ ASK THE CLASS: pick a volunteer. I'll type their name when it asks.
#    What will the second line print?

student = input("Which student is our volunteer? ")

print("Hello,", student)
print(student, "is now part of the program. No refunds.")


# ------------------------------------------------------------------------------
# SECTION 3 · F-STRINGS — FILL-IN-THE-BLANK SENTENCES
# ------------------------------------------------------------------------------
# print with commas works, but here's the deluxe version. An f-string is a
# string with an f in front, where {braces} are BLANKS that get filled with
# whatever is in the box:
#
#     f"Hello, {student}!"      ← the {student} part gets swapped for the value
#
# ⭐ ASK THE CLASS: a sentence with blanks that get filled in with words
#    you collected... what game is that? (MAD LIBS. Today ends with Mad Libs.)

print(f"Everyone say hi to {student}, the most famous person in Room 204!")

# The f matters! Without it, Python doesn't fill the blanks — watch:

print("Without the f: Everyone say hi to {student}!")

# ...the braces just sit there, unfilled. The f is the "fill in the blanks" switch.


# ------------------------------------------------------------------------------
# SECTION 4 · THE GOTCHA — input ALWAYS hands you a string
# ------------------------------------------------------------------------------
# Time for this week's beautiful disaster. We ask for an age and do math on it.
#
# ⭐ ASK THE CLASS: I'll type 12 when it asks. What will age + 1 be? (Obvious,
#    right? 13. Right? ...run it, then uncomment the broken line and re-run.)

age = input("How old is our volunteer? ")

# BROKEN LINE — uncomment it, run, and READ THE ERROR TOGETHER like week 1:
# print(age + 1)
#
# It crashes with a TypeError: can only concatenate str (not "int") to str.
# Translation: "you asked me to glue a NUMBER onto TEXT, and I refuse."
#
# Here's the secret: input() ALWAYS hands back a STRING. Even if you type 12,
# the box holds "12" — a piece of TEXT that looks like a number. Text wearing
# a number costume.

print(f"The box actually holds the text {age} — with invisible quotes on.")

# THE FIX: int() converts the string "12" into the actual number 12.
# (int is short for INTEGER — math-speak for a whole number.)

age_number = int(age)

print("Next birthday, our volunteer turns:", age_number + 1)
print("Crisis averted. int() to the rescue.")


# ------------------------------------------------------------------------------
# SECTION 5 · "7" + "7" — THE WEEK-1 QUOTES LESSON, ALL GROWN UP
# ------------------------------------------------------------------------------
# When + sits between two NUMBERS, it adds.
# When + sits between two STRINGS, it GLUES them together (concatenation).
#
# ⭐ ASK THE CLASS: two lines, two votes. What does each print?

print(7 + 7)
print("7" + "7")

# 14... and 77! Same symbols on your screen, completely different creatures.
# "7" is text. 7 is a number. + glues text but adds numbers.
# This is exactly WHY the age line crashed — and why int() exists.

print("mad" + "libs")     # gluing is useful, though. Watch this word appear.


# ------------------------------------------------------------------------------
# SECTION 6 · 🎉 THE MAIN EVENT — MAD LIBS
# ------------------------------------------------------------------------------
# Everything today was training for this. Collect the ingredients from the
# class ONE AT A TIME — take several shouted options, pick the best
# (you are the filter). DO NOT read ahead to the story. The surprise is the fun.
#
# ⭐ COLLECT: a noun (plural!), a verb, an adjective, a teacher in this school,
#    a number, and a place.

noun = input("Give me a PLURAL NOUN (the sillier the better): ")
verb = input("Give me a VERB: ")
adjective = input("Give me an ADJECTIVE: ")
teacher = input("Name a teacher in this school: ")
number = input("Give me a NUMBER between 2 and 99: ")
place = input("Name a PLACE: ")

# Drumroll... every {blank} below gets filled from the boxes.
# Read it aloud with FULL dramatic commitment.

print()
print("==============================================")
print("        A TRUE STORY ABOUT OUR SCHOOL")
print("==============================================")
print(f"Yesterday, {teacher} was walking to {place}")
print(f"when {number} {adjective} {noun} fell out of the sky.")
print(f"'This is fine,' said {teacher}, and started to {verb}.")
print(f"The {noun} were impressed. The school newspaper called it")
print(f"'the most {adjective} thing to ever happen near {place}.'")
print("The end. Based on a true story. (It is not.)")
print("==============================================")

# ⭐ ASK THE CLASS: which boxes got used twice? (teacher, noun, adjective,
#    place — one box, as many blanks as you want. That's the power move.)
#
# Next week: the program stops being a storyteller and becomes a JUDGE —
# it's going to start making decisions about us.
