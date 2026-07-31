# ==============================================================================
#
#   WEEK 7 · FILL IN THE BLANK  —  the class writes the code, you type it
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
#     · SPECIAL THIS WEEK: some wrong answers make an INFINITE LOOP instead
#       of an error. That's not a disaster anymore — you know the emergency
#       brake. Ctrl+C, laugh, fix, re-run.
#
#   Completed version: answer-key.md
#
# ==============================================================================

import random      # the week 5 toolbox — already borrowed for Task 5


# ── TASK 1 · LAUNCH COUNTDOWN ────────────────────────────────────────────────
# Make this count down from 5 to 1, then launch.
# ⭐ Ask: what START value does count need?
#    (Then trace it: 5, 4, 3, 2, 1... at 0 the condition goes False. GO!)

count = ____
while count > 0:
    print(count, "...")
    count = count - 1
print("GO! 🚀")


# ── TASK 2 · THE SNACK MACHINE ───────────────────────────────────────────────
# The machine holds 3 snacks and must STOP when it's empty.
# ⭐ Ask: how much should each sale subtract?
# 🚨 If someone says 0 — TYPE IT AND RUN IT. The machine gives out free
#    snacks forever (snacks never shrinks, the condition never goes False).
#    Today, an infinite loop is a demo, not a disaster: Ctrl+C, fix, re-run.

snacks = 3
while snacks > 0:
    print("CLUNK — snack dispensed. Remaining:", snacks - 1)
    snacks = snacks - ____
print("SOLD OUT. Machine goes to sleep.")


# ── TASK 3 · THE PASSWORD GATE ───────────────────────────────────────────────
# This gate keeps asking until the password is right. The class invents
# the secret password (school-appropriate, and don't forget the QUOTES —
# it's a string being compared to a string).
# ⭐ After filling it in: have the class feed you 2–3 WRONG passwords
#    first. The loop just... asks again. That's the whole trick.

password = ""
while password != ____:
    password = input("Enter the password: ")
print("ACCESS GRANTED. Welcome, agent.")


# ── TASK 4 · THE DOUBLER ─────────────────────────────────────────────────────
# Make number double each lap: 1, 2, 4, 8, ... stopping before 100.
# ⭐ Ask BOTH: what goes in the blank... and how many numbers will print?
#    Take bets on the count before running. (Doubling is sneaky-fast.)

number = 1
while number < 100:
    print(number)
    number = number * ____
print("...and the next double would smash through 100. Loop over.")


# ── TASK 5 · MINI GUESSING GAME, 1 TO 10 ─────────────────────────────────────
# Today's payoff, pocket-sized. Two blanks:
#   Blank 1 — the top of the secret range (we want 1 to 10, ends included!)
#   Blank 2 — a starting guess that is SAFELY WRONG, so the loop runs.
# ⭐ Ask about blank 2: why can't we start guess at, say, 7?
#    (If the secret IS 7, the game ends before it starts!)

secret = random.randint(1, ____)
guess = ____
while guess != secret:
    guess = int(input("Guess my number (1-10): "))
    if guess < secret:
        print("Higher!")
    elif guess > secret:
        print("Lower!")
print("🎉 Got it! The secret was", secret)


# ── TASK 6 · FINALE — ARE WE THERE YET? (you type this one live) ─────────────
# No ____ here, because the class supplies a CONDITION OPERATOR this time.
# A road trip: 10 miles to go, one very patient loop.
# ⭐ Ask: the loop should keep going WHILE miles is... what, compared to 0?
#    (Greater than! The class dictates the symbol.)
#
# TYPE these lines below the setup, live, with the class dictating the >:
#
#       while miles > 0:
#           print("Are we there yet? (", miles, "miles left )")
#           miles = miles - 1
#       print("WE'RE THERE. Everyone out.")

miles = 10
# → type the loop right here, live
