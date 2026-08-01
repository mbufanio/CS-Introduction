# ==============================================================================
#
#   WEEK 8  ·  STRINGS INSIDE-OUT
#
#   Today we crack a string open and look at the machinery inside.
#   Two big secrets:
#     1. Every letter has a POSITION — and positions start at ZERO.
#     2. Every letter IS a number, wearing a costume.
#
#   Run this file section by section (highlight + Shift+Enter) —
#   each section has its own reveal.
#
# ==============================================================================


# ------------------------------------------------------------------------------
# SECTION 1 · EVERY LETTER HAS AN ADDRESS
# ------------------------------------------------------------------------------
# A string isn't a blob — it's letters parked along a number line:
#
#        P  Y  T  H  O  N
#        0  1  2  3  4  5      ← the ADDRESS of each letter (its INDEX)
#
# Why start at 0? Same reason a ruler does: the index measures how far
# you are FROM THE START. P is zero steps from the start.
#
# Square brackets ask for the letter at one address:  word[0]

word = "PYTHON"

print("The whole word:", word)
print("word[0] is:", word[0])

# ⭐ ASK THE CLASS: so what is word[1]?
#    (Almost everyone's gut says P — "the 1st letter!" — because humans
#     count from 1. Take the vote, THEN run the line. Welcome to index 1.)

print("word[1] is:", word[1])

# ⭐ ASK THE CLASS: which address holds the H? (Count from zero... 3!)

print("word[3] is:", word[3])


# ------------------------------------------------------------------------------
# SECTION 2 · COUNTING FROM THE BACK — NEGATIVE ADDRESSES
# ------------------------------------------------------------------------------
# The number line runs both ways. Negative indexes count from the END:
#
#        P   Y   T   H   O   N
#       -6  -5  -4  -3  -2  -1
#
# word[-1] means "the LAST letter" — no counting required.
#
# ⭐ ASK THE CLASS: what will word[-1] print? And word[-2]?

print("word[-1] is:", word[-1])
print("word[-2] is:", word[-2])


# ------------------------------------------------------------------------------
# SECTION 3 · len() — HOW LONG IS THIS STRING?
# ------------------------------------------------------------------------------
# len() counts the characters. Every character: letters, spaces, punctuation.
#
# ⭐ ASK THE CLASS: len("PYTHON") is... ?  (6 — easy.)
#    But the LAST index was 5. Length 6, last address 5. Why the mismatch?
#    (Because we started counting addresses at 0! The last index is
#     ALWAYS len minus 1. This off-by-one bites every programmer alive.)

print("len(word) is:", len(word))
print("...but the last index is:", len(word) - 1)

# len() counts EVERYTHING between the quotes — spaces included:

print(len("I LOVE MATH CLASS"))     # ⭐ predict first! (spaces count: 17)


# ------------------------------------------------------------------------------
# SECTION 4 · SLICING — CUTTING OUT A PIECE
# ------------------------------------------------------------------------------
# word[0:3] means: START at index 0, STOP BEFORE index 3.
#
#        P  Y  T | H  O  N
#        0  1  2 | 3           ← the 3 is a fence, not a letter
#
# ⭐ ASK THE CLASS: so word[0:3] gives how many letters? Which ones?

print("word[0:3] is:", word[0:3])
print("word[2:5] is:", word[2:5])

# "Stop BEFORE the end number" should feel familiar...
# ⭐ ASK THE CLASS: what did range(0, 3) give us back in week 6?

for i in range(0, 3):
    print("range gave me:", i)

# range(0, 3) → 0, 1, 2 — it stops before 3 TOO.
# Slices and range() follow ONE rule: include the start, exclude the end.
# In math language: the interval [0, 3) — square bracket in, round bracket out.


# ------------------------------------------------------------------------------
# SECTION 5 · A LOOP CAN WALK THROUGH A STRING
# ------------------------------------------------------------------------------
# In week 6, for-loops walked through numbers. They can walk letters too:
# "for letter in word" visits each character, in order, one at a time.
#
# ⭐ ASK THE CLASS: how many times will this loop run? (One per letter: 6.)

for letter in word:
    print(letter)

# There's the word — printed VERTICALLY, one loop-lap per letter.


# ------------------------------------------------------------------------------
# SECTION 6 · THE BIG REVEAL — EVERY LETTER IS SECRETLY A NUMBER
# ------------------------------------------------------------------------------
# Deep down, a computer only stores numbers. So every character you have
# EVER typed is stored as a number — the letter is just a costume.
# ord() pulls the costume off.
#
# ⭐ ASK THE CLASS: any guess what number hides inside "A"?
#    (Take a few guesses, then run. Nobody guesses 65.)

print('ord("A") is:', ord("A"))
print('ord("B") is:', ord("B"))
print('ord("Z") is:', ord("Z"))

# It's not just capital letters. EVERYTHING on the keyboard has a number:

print('ord("a") is:', ord("a"))     # lowercase a... 97?! remember that.
print('ord(" ") is:', ord(" "))     # even the SPACE BAR has a number: 32
print('ord("0") is:', ord("0"))     # the CHARACTER "0" is secretly... 48!?

# ⭐ ASK THE CLASS: A is 65 and a is 97. What's the gap? (97 - 65 = 32.)
#    Hold that thought — it comes back in Section 8.

# chr() goes BACKWARDS: number in, character out.

print("chr(66) is:", chr(66))
print("chr(77) is:", chr(77))

# ⭐ ASK THE CLASS: chr(ord("A")) — costume off, costume back on — gives...?

print('chr(ord("A")) is:', chr(ord("A")))


# ------------------------------------------------------------------------------
# SECTION 7 · THE ALPHABET, BUILT FROM BARE NUMBERS
# ------------------------------------------------------------------------------
# If A=65 and Z=90, we can manufacture the ENTIRE alphabet from numbers.
# The accumulator pattern from week 6 — but growing a STRING instead of a sum:
# start empty, and glue one letter on every lap.
#
# ⭐ ASK THE CLASS: range(65, 91)... why 91, not 90? (Exclude the end —
#    Section 4's rule, already paying rent.)

alphabet = ""                          # start with an EMPTY string
for code in range(65, 91):             # 65, 66, 67, ... 90
    alphabet = alphabet + chr(code)    # glue on one more letter

print("Built from numbers:", alphabet)

# Three lines. Twenty-six letters. Zero typing of letters.


# ------------------------------------------------------------------------------
# SECTION 8 · .upper() AND .lower() — THE VOLUME KNOBS
# ------------------------------------------------------------------------------
# Every string knows two tricks: SHOUT and whisper.

quiet = "please work quietly"
print(quiet.upper())

loud = "STOP SHOUTING AT THE SMARTBOARD"
print(loud.lower())

# ⭐ ASK THE CLASS: remember the gap? A=65, a=97 — exactly 32 apart.
#    And it's 32 for EVERY letter (b−B, z−Z... always 32):

print('ord("b") - ord("B") is:', ord("b") - ord("B"))
print('ord("z") - ord("Z") is:', ord("z") - ord("Z"))

#    So .upper() is secretly just... subtracting 32 from every letter's
#    number. It's not magic. It's ARITHMETIC. Everything today is.


# ------------------------------------------------------------------------------
# SECTION 9 · NEXT WEEK — a two-second trailer
# ------------------------------------------------------------------------------
# Watch what happens when you ADD something to a letter's secret number:

print("Take chr(ord('A') + 3) ... and A becomes:", chr(ord("A") + 3))

# A slid 3 places down the alphabet. Every letter can slide like that.
# Next week: sliding letters lets us write unbreakable* secret messages,
# exactly like Julius Caesar did 2,000 years ago.
#
#     (*very breakable. But VERY fun.)

print()
print("Week 8 complete: the alphabet has been caught undercover.")
