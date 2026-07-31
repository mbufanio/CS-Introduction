# ==============================================================================
#
#   WEEK 8 · CHALLENGE  —  for fast classes, curious kids, or a big finish
#
#   Four mini-shows built from today's tools. Run the whole file, or run a
#   section at a time (highlight + Shift+Enter).
#   Note: Challenge 1 asks YOU to type a name in the terminal — grab a
#   volunteer and type theirs.
#
# ==============================================================================


# ------------------------------------------------------------------------------
# CHALLENGE 1 · THE SECRET-NUMBER NAME CONVERTER
# ------------------------------------------------------------------------------
# Type a volunteer's name and watch it turn into pure numbers.
# The loop x-rays one letter per lap; the accumulator glues the numbers
# into one secret message. Re-run once per volunteer — instant spy names.

name = input("Volunteer's name (then press Enter): ")

print()
print("CONVERTING", name.upper(), "TO SECRET NUMBERS...")

secret_numbers = ""                                # the accumulator — starts empty
for letter in name.upper():
    print("   ", letter, "is secretly", ord(letter))
    secret_numbers = secret_numbers + f"{ord(letter)} "

print()
print("Agent code:", secret_numbers)
print("(Write it on paper. Only people who know ord() can read it. Muahaha.)")
print()


# ------------------------------------------------------------------------------
# CHALLENGE 2 · THE MIRROR TRICK (a labeled magic trick)
# ------------------------------------------------------------------------------
# A slice can hold a SECRET THIRD NUMBER: the step. We haven't learned it —
# and we won't today. Step -1 means "walk the string BACKWARDS."
# For now it's pure magic. Enjoy the trick; the secret stays in the box.
#
# ⭐ ASK THE CLASS: can anyone think of a word that survives the mirror
#    unchanged? (LEVEL, RACECAR, MOM... math calls these palindromes!)

trick_word = "STRESSED"
print("The word:      ", trick_word)
print("In the mirror: ", trick_word[::-1])         # ...DESSERTS. You're welcome.

print("LEVEL in the mirror:", "LEVEL"[::-1])
print()


# ------------------------------------------------------------------------------
# CHALLENGE 3 · THE EMOJI SURPRISE
# ------------------------------------------------------------------------------
# The secret numbers do NOT stop at the alphabet. Or at 100. Or at 1,000.
# The table has MORE THAN 100,000 characters — every alphabet on Earth,
# and... other things. Watch what lives at 128512:
#
# (If the terminal shows an empty box instead, its font is missing that
#  emoji — the number is still right; the costume shop is out of stock.)

print("Character number 128512 is:", chr(128512))
print("Character number 128013 is:", chr(128013))   # ...this one is on-brand
print("Character number 127881 is:", chr(127881))

# ⭐ ASK THE CLASS: so when you text someone an emoji... what are you
#    ACTUALLY sending? (A number. It's numbers all the way down.)
print()


# ------------------------------------------------------------------------------
# CHALLENGE 4 · THE NAME-BANNER MAKER
# ------------------------------------------------------------------------------
# One loop lap per letter — and each lap prints a whole decorated row.
# The row uses week 6's string repetition: letter * 9.
# Swap in a student's name and re-run. Instant smartboard poster.

banner_name = "ZOE"                    # ⭐ swap for a volunteer, re-run

print("NOW SHOWING ON THE SMARTBOARD:")
print()
for letter in banner_name:
    print("   ", letter * 9)

print()
print("Every letter, nine copies wide. Loops don't get tired.")
