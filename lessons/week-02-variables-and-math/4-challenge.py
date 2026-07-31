# ==============================================================================
#
#   WEEK 2 · CHALLENGE  —  for fast classes, curious kids, or a big finish
#
#   Three showpieces, all built from today's tools: boxes, operators, print.
#   Run the whole file, or run a section at a time (highlight + Shift+Enter).
#
# ==============================================================================


# ------------------------------------------------------------------------------
# CHALLENGE 1 · THE NUMBER THAT ATE THE SMARTBOARD
# ------------------------------------------------------------------------------
# In the demo, 2 ** 100 had 31 digits. Ask the class: how many digits do you
# think 2 ** 1000 has? Take guesses. Write the closest one on the board.
# Then run this and watch the smartboard drown.

print("Behold: 2 to the power of 1000.")
print(2 ** 1000)
print()
print("(That's 302 digits. Count one row on the screen and estimate —")
print(" your calculator refuses to even attempt this. Python doesn't flinch.)")
print()

# ⭐ CLASS PICKS: let them shout a base and a power — type it and run.
#    3 ** 500? 9 ** 999? The computer does not fear them.


# ------------------------------------------------------------------------------
# CHALLENGE 2 · YOUR AGE IN SECONDS
# ------------------------------------------------------------------------------
# A calculator you build from boxes. Swap in a volunteer's real age and re-run —
# then try YOUR age and let them gasp at the difference.

age_years = 13                          # ← change to a volunteer's age
days = age_years * 365                  # (close enough — leap years, shhh)
hours = days * 24
minutes = hours * 60
seconds = minutes * 60

print("A", age_years, "year old has been alive for roughly:")
print("  days:   ", days)
print("  hours:  ", hours)
print("  minutes:", minutes)
print("  seconds:", seconds)
print("...and spent about", seconds // 3, "seconds asleep. (A third of your life!)")
print()

# ⭐ ASK THE CLASS: which line would we change to compute this for a
#    100-year-old? (Just ONE box — everything downstream updates. That's
#    the power of variables.)


# ------------------------------------------------------------------------------
# CHALLENGE 3 · THE PENNY THAT BROKE THE BANK
# ------------------------------------------------------------------------------
# The deal: I give you ONE CENT today. Tomorrow it doubles. It doubles every
# day for 30 days. OR you can just take $10,000 cash right now.
#
# ⭐ ASK THE CLASS: who takes the penny? Who takes the $10,000?
#    Count hands. THEN run this.

day_1 = 1                       # one measly cent
day_10 = 2 ** 9                 # doubled 9 times by day 10
day_20 = 2 ** 19                # doubled 19 times by day 20
day_30 = 2 ** 29                # doubled 29 times by day 30

print("Day 1:  ", day_1, "cent")
print("Day 10: ", day_10, "cents  (about 5 dollars — the $10,000 crowd is smug)")
print("Day 20: ", day_20, "cents  (about 5 THOUSAND dollars... uh oh)")
print("Day 30: ", day_30, "cents")
print("In dollars, day 30 is:", day_30 / 100)
print()
print("FIVE. MILLION. DOLLARS. Never bet against doubling.")
print()

# SNEAK PEEK · WEEK 6 — in four weeks, one tiny LOOP will print all 30 days
# in a single breath, like this (don't explain it — just run it and walk away):

print("Days 1 to 8, computed by a loop from the future:")
for day in range(1, 9):
    print("  day", day, "→", 2 ** (day - 1), "cents")

print()
print("See you next week — the computer is going to start asking questions.")
