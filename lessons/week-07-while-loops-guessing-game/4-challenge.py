# ==============================================================================
#
#   WEEK 7 · CHALLENGE  —  for fast classes, curious kids, or a big finish
#
#   Three encores for the while loop.
#   Run the whole file, or run a section at a time (highlight + Shift+Enter).
#
# ==============================================================================

import random


# ------------------------------------------------------------------------------
# CHALLENGE 1 · THE GUESSING GAME WITH 7 LIVES ❤️
# ------------------------------------------------------------------------------
# Today's game, but now the class can LOSE. Seven lives, one secret.
# ⭐ Ask before playing: is 7 lives ENOUGH to always win — or a trap?
#    (The class proved it today: 2**7 = 128 > 100, so seven middle-aimed
#     guesses ALWAYS win. If they lose, the math didn't fail — the aim did.)
#
# New trick inside: 'playing' is a FLAG variable — a light switch.
# The loop runs while the switch says "yes"; any ending flips it to "no".

secret = random.randint(1, 100)
lives = 7
playing = "yes"

while playing == "yes":
    print("❤️ Lives left:", lives)
    guess = int(input("Your guess (1-100): "))
    if guess == secret:
        print("🎉 WIN! The number was", secret)
        playing = "no"                      # flip the switch — game over
    elif lives == 1:
        print("💀 That was your last life. It was", secret, "— the machine survives.")
        playing = "no"                      # flip the switch — game over
    elif guess < secret:
        print("Higher!")
        lives = lives - 1
    else:
        print("Lower!")
        lives = lives - 1
print()


# ------------------------------------------------------------------------------
# CHALLENGE 2 · THE DOUBLING PENNY 🪙 — a while loop gets rich
# ------------------------------------------------------------------------------
# The classic offer: one penny today, doubled every day. Take it?
# ⭐ Ask for bets FIRST: how many days until the penny passes $1,000,000?
#    A year? A decade? Write guesses on the board, then unleash the loop.
#    (Halving crushed 100 in 7 steps — doubling is the same monster,
#     climbing instead of crushing.)

money = 0.01
day = 0
while money < 1000000:
    day = day + 1
    money = money * 2
    print("Day", day, "→ $", money)
print()
print("Under a month. Doubling is not polite growth — it's an explosion.")
print()


# ------------------------------------------------------------------------------
# CHALLENGE 3 · THE AUTO-GUESSER 🤖 — the computer plays itself
# ------------------------------------------------------------------------------
# No humans needed: one line of code hides a secret, and the middle-aiming
# strategy from THE FLIP hunts it down. Re-run this section over and over
# (highlight + Shift+Enter) and watch the tries column.
# ⭐ Challenge to the class: catch it needing MORE than 7. (It never will —
#    and now they know exactly why. 2**7 = 128 > 100.)

secret = random.randint(1, 100)
low = 1
high = 100
tries = 0
guess = 0

while guess != secret:
    guess = (low + high) // 2
    tries = tries + 1
    print("try", tries, "→ I guess", guess)
    if guess < secret:
        low = guess + 1
    elif guess > secret:
        high = guess - 1
print("Secret was", secret, "— found in", tries, "tries. Never more than 7.")
print()

# 🔮 SNEAK PEEK OF WEEK 10: soon you'll wrap this hunter in a single
#    reusable command — def guess_it(...) — and fire it at ANY range:
#    1 to 1000 (10 tries), 1 to 1,000,000 (just 20!). Same halving magic.
