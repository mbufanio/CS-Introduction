# ==============================================================================
#
#   WEEK 14 · FILL IN THE BLANK  —  the class writes the code, you type it
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
#
#   Today's mission: rebuild the raindrop machine from parts, then set a
#   carnival ticket price so the game is EXACTLY fair.
#
#   Completed version: answer-key.md
#
# ==============================================================================

import random


# ── TASK 1 · ONE RAINDROP ────────────────────────────────────────────────────
# A raindrop lands on our 1×1 square. We need its x position: a random
# DECIMAL between 0 and 1. The two blanks are the lowest and highest
# values uniform is allowed to pick.

drop_x = random.uniform(____, ____)
drop_y = random.uniform(0, 1)          # y is already done for you
print(f"Raindrop at ({drop_x}, {drop_y})")


# ── TASK 2 · THE PYTHAGORAS TEST ─────────────────────────────────────────────
# How far is the drop from the corner (0, 0)? Squared, it's a² + b²...
# x times x, PLUS which variable times itself? Fill both blanks with it.

distance_squared = drop_x * drop_x + ____ * ____
print(f"distance squared from the corner: {distance_squared}")


# ── TASK 3 · IN OR OUT? ──────────────────────────────────────────────────────
# The quarter circle has radius 1. The drop is INSIDE when its squared
# distance is at most... what number?

if distance_squared <= ____:
    print("SPLAT — inside the quarter circle!")
else:
    print("SPLAT — outside, in the corner sliver.")


# ── TASK 4 · THE FULL RAINSTORM ──────────────────────────────────────────────
# Now 10,000 drops at once. Two blanks:
#   first blank — how much does the counter grow per inside-drop? (hint: it
#                 counts DROPS, not meters)
#   second blank — 4 times the fraction inside means dividing by ALL the
#                  drops... which variable holds that count?

inside = 0
drops = 10000
for drop in range(drops):
    x = random.uniform(0, 1)
    y = random.uniform(0, 1)
    if x * x + y * y <= 1:
        inside = inside + ____             # count this drop

pi_estimate = 4 * inside / ____            # fraction inside, times 4
print(f"{drops} raindrops say pi is about {pi_estimate}")


# ── TASK 5 · PRICE CHECK AT THE CARNIVAL ─────────────────────────────────────
# The Lucky Die game pays $1 per dot on one roll. Expected value time:
#   first blank — average payout = the six outcomes added up, divided by
#                 how many faces?
#   second blank — the player's net result is the payout MINUS which
#                  variable from the line above?

ticket_price = 4
average_payout = (1 + 2 + 3 + 4 + 5 + 6) / ____
net_per_game = average_payout - ____
print(f"Average payout ${average_payout}, so at ${ticket_price} a ticket")
print(f"the player averages ${net_per_game} per game. Ouch.")


# ── TASK 6 · MAKE IT FAIR (live typing — no blank) ───────────────────────────
# ⭐ ASK THE CLASS: what ticket_price makes net_per_game EXACTLY $0.00 —
#    a perfectly fair game?  Take guesses, retype ticket_price in TASK 5,
#    and re-run until the class nails it. (Spoiler in the answer key.)
#    Then ask: "would a casino EVER charge that price?" (Never. Fair games
#    don't pay for chandeliers.)


# ── TASK 7 · CRANK THE STORM (live typing — no blank) ────────────────────────
# ⭐ Back in TASK 4: let the class pick a bigger number for  drops  —
#    100000? 1000000? — type it and re-run. Watch the pi estimate sharpen.
#    (A million drops needs a second or two of silence. Narrate the rain.)

print()
print("Machine fair-priced a carnival and measured pi. Not bad for one class.")
