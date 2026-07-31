# ==============================================================================
#
#   WEEK 7  ·  WHILE LOOPS  →  🎉 THE NUMBER GUESSING GAME
#
#   Last week: for loops — "repeat this N times."
#   This week: while loops — "repeat this UNTIL something happens."
#
#   A for loop knows when it will finish. A while loop finds out.
#
#   Today the class plays the computer's guessing game... and then the
#   tables turn, and the computer plays ours. It will not lose. By the
#   end of the file you'll know exactly why it CAN'T.
#
# ==============================================================================

import random


# ------------------------------------------------------------------------------
# SECTION 1 · YOUR FIRST WHILE LOOP
# ------------------------------------------------------------------------------
# A while loop repeats its block AS LONG AS a condition stays True:
#
#   while count > 0:        ← the CONDITION — checked before every lap
#       ...                  ← the block, indented as always
#
# Every healthy while loop has three parts. Point at each one below:
#   1. a START value        (count = 5)
#   2. a CONDITION to check (count > 0)
#   3. an UPDATE inside     (count = count - 1)
#
# ⭐ ASK THE CLASS: how many lines will this print? What's the last one?

count = 5
while count > 0:
    print("count is", count)
    count = count - 1
print("...and count is now 0, so the condition went False. Loop over.")
print()

# ⭐ ASK THE CLASS: which of the three parts could a FOR loop have done
#    for us? (All of them — for a countdown, for is fine. While shines
#    when you DON'T know the number of laps. Keep watching.)


# ------------------------------------------------------------------------------
# SECTION 2 · THE INFINITE LOOP — the most famous bug in programming
# ------------------------------------------------------------------------------
# ⭐ ASK THE CLASS: what happens if the condition NEVER goes False?
#
# The loop below is caged in comments. LIVE ACTIVITY:
#   1. Uncomment the two lines (remove the #).
#   2. Run the file. Enjoy the waterfall. The computer will happily
#      do this until the sun burns out.
#   3. Click in the terminal and press  Ctrl+C  — the emergency brake.
#      Python reports "KeyboardInterrupt" — you interrupted, with the keyboard.
#   4. Put the #'s back before moving on!
#
# while True:
#     print("HELP, I CANNOT STOP")
#
# True is never False, so the check never fails. No bug is more famous —
# every programmer has built one by accident. Today you built one ON PURPOSE.

print("(The infinite loop stays caged in the comments above. Uncomment to feed it.)")
print()


# ------------------------------------------------------------------------------
# SECTION 3 · BUILDING THE GUESSING GAME — rigged practice round
# ------------------------------------------------------------------------------
# The game: the computer hides a number, we guess, it answers
# "higher" or "lower" until we nail it. Four pieces, all old friends:
#
#   PIECE 1 · the secret        → a variable                    (week 2)
#   PIECE 2 · keep asking       → while + int(input())          (week 3 + today)
#   PIECE 3 · the hints         → if / elif / else              (week 4)
#   PIECE 4 · count the guesses → an accumulator                (week 6)
#
# For this practice build the secret is RIGGED to 42 so we can watch the
# machinery. Teacher: guess wrong ON PURPOSE — try 10, then 60 — and have
# the class read which hint fires and why. Then let them steer you to 42.

secret = 42                      # PIECE 1 — rigged, just for practice
guess = 0                        # 0 is safely wrong, so the loop starts
guesses = 0

while guess != secret:           # PIECE 2 — "keep going UNTIL they match"
    guess = int(input("Practice round — your guess: "))
    guesses = guesses + 1        # PIECE 4 — the guess counter ticks
    if guess < secret:           # PIECE 3 — the hints
        print("Higher!")
    elif guess > secret:
        print("Lower!")
    else:
        print("GOT IT in", guesses, "guesses!")
print()

# ⭐ ASK THE CLASS: why did the loop stop? (guess finally EQUALED secret,
#    so 'guess != secret' went False — same story as count hitting 0.)
# ⭐ ASK THE CLASS: could a FOR loop run this game? (No — nobody knows how
#    many guesses it'll take. That's exactly when you reach for while.)


# ------------------------------------------------------------------------------
# SECTION 4 · 🎉 PAYOFF 1 — THE REAL GAME, 1 TO 100
# ------------------------------------------------------------------------------
# Same machine, one change: the secret comes from last week's toolbox.
# Now NOBODY in the room knows it — including the computer's owner (you).
#
# The class shouts guesses, you type them. Count the guesses out loud —
# and write the final count on the board. It matters in a minute.

print("=== THE REAL GAME — I'm thinking of a number from 1 to 100 ===")
secret = random.randint(1, 100)
guess = 0
guesses = 0

while guess != secret:
    guess = int(input("The class guesses: "))
    guesses = guesses + 1
    if guess < secret:
        print("Higher!")
    elif guess > secret:
        print("Lower!")
    else:
        print("🎉 GOT IT!", secret, "— in", guesses, "guesses!")
print()

# ⭐ ASK THE CLASS: what STRATEGY were you using? Random stabs, or...
#    was somebody aiming for the middle? Hold that thought.


# ------------------------------------------------------------------------------
# SECTION 5 · 🎉 PAYOFF 2 — THE FLIP: the computer guesses YOUR number
# ------------------------------------------------------------------------------
# Revenge time. The class agrees on a secret number from 1 to 100 and
# writes it on paper (hold it up — no changing it mid-game, the computer
# has feelings... okay, it doesn't, but still).
#
# The computer's strategy is beautiful: it always guesses the MIDDLE of
# what's still possible. You answer with h (higher), l (lower), or c (correct).
#
# ⭐ ASK BEFORE RUNNING: the class took ___ guesses (it's on the board).
#    How many will the machine need? Take bets. It will use SEVEN OR FEWER.

print("=== THE FLIP — think of a number from 1 to 100. I WILL find it. ===")
low = 1
high = 100
tries = 0
answer = ""

while answer != "c":
    middle = (low + high) // 2           # the exact middle of what's left
    tries = tries + 1
    print("Guess", tries, "— I say", middle, "  (possible:", low, "to", high, ")")
    answer = input("   higher (h), lower (l), or correct (c)? ")
    if answer == "h":
        low = middle + 1                 # everything below the guess: eliminated
    elif answer == "l":
        high = middle - 1                # everything above the guess: eliminated
print()
print("Found it in", tries, "guesses. Seven or fewer. Every. Single. Time.")
print()

# (The computer trusts your h's and l's completely. Answer dishonestly and
#  it corners itself into nonsense — a fun thing to try with extra time.)


# ------------------------------------------------------------------------------
# SECTION 6 · WHY THE COMPUTER CAN'T LOSE — the halving chain
# ------------------------------------------------------------------------------
# Every answer CUTS THE POSSIBILITIES IN HALF. Start with 100 suspects;
# one guess leaves at most 50, then 25, then 12... watch the collapse —
# and of course we'll watch it with a while loop:

size = 100
step = 0
while size >= 1:
    step = step + 1
    print("guess", step, "→ numbers still possible:", size)
    size = size // 2
print()

# Seven guesses to get from 100 suspects down to 1. And the pincer proof:

print("2 ** 7 =", 2 ** 7, "— seven halvings handle up to 128 numbers.")
print("128 > 100, so seven guesses ALWAYS suffice. The computer can't lose.")
print()

# 🏅 BONUS WORD for the class: this halving strategy is called BINARY SEARCH,
#    and it's one of the most famous ideas in all of computer science.
#    You just watched it beat the whole room. Say it once, sound smart forever.
