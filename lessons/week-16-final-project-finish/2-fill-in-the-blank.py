# ==============================================================================
#
#   WEEK 16 · POLISH TASKS  —  finishing touches for the class game
#
#   HOW THIS WORKS (teacher):
#     · Five standalone mini-sections, each a finishing touch the class can
#       vote onto their game. Each one RUNS right here (fill its blanks,
#       highlight the section, Shift+Enter) — then graft it into the class
#       game per the note at the end of the section.
#     · Every blank looks like ____ ; kids call out what goes in it, you
#       type — wrong answers included. Running an unfilled blank gives
#       "NameError: name '____' is not defined" — that just means you
#       haven't gotten there yet.
#     · Short on time? TASK 5 (the credits roll) is the one that matters.
#
#   Completed version: answer-key.md
#
# ==============================================================================

import time      # time.sleep(seconds) = "computer, hold this pause" — new but tiny


# ── TASK 1 · THE TITLE SCREEN ────────────────────────────────────────────────
# Every great game opens with its name in lights. The class's game deserves
# the same. Both blanks are STRINGS (quotes!): the game's title, then a
# subtitle with swagger.

print("*" * 50)
print(____)          # ← the class game's name — add spaces in front to center it
print(____)          # ← a subtitle, e.g. "   the director's cut" or "   now with 100% more ghost"
print("*" * 50)

# GRAFT: paste (filled) at the very top of the class game file, replacing
# its plain title banner.


# ── TASK 2 · THE PLAY-AGAIN LOOP ─────────────────────────────────────────────
# A game that ends after one play is a demo. The while loop keeps the game
# alive as long as the player keeps saying yes. What answer — in quotes,
# and remember the .upper() — keeps this loop going?

again = "Y"
while again == ____:
    print("(pretend one entire playthrough happens here)")
    again = input("Play again? (Y/N): ").upper()
print("Thanks for playing!")

# GRAFT: the class game already has this loop at the bottom — point at it
# and let the class recognize it. If their game somehow lost it, this is
# the replacement part.


# ── TASK 3 · THE GAMES-PLAYED COUNTER ────────────────────────────────────────
# Week 6's accumulator, working the door. First blank: what number does a
# counter start at? Second blank: how much does one playthrough add?

games_played = ____
again = "Y"
while again == "Y":
    print("(one playthrough!)")
    games_played = games_played + ____
    again = input("Play again? (Y/N): ").upper()
print(f"Games played today: {games_played}")

# GRAFT: games_played = 0 goes above the class game's loop; the + line goes
# INSIDE the loop; the report line goes after it. Announce the total at the
# end of class like a box-office number.


# ── TASK 4 · THE SUSPENSE PAUSE ──────────────────────────────────────────────
# time.sleep(seconds) makes the computer hold its breath. How many seconds
# of silence before the reveal? (1 is drama. 3 is agony. 10 is a nap.)

print("You reach for the doorknob...")
time.sleep(____)
print("...it is ALREADY TURNING.")

# GRAFT: drop a time.sleep(1) before any ending's first line in the class
# game. One second of silence on a smartboard is LOUD.


# ── TASK 5 · THE CREDITS ROLL ────────────────────────────────────────────────
# The paycheck. Every blank is a STRING naming real designers from the
# design sheets — read the names off the sheets and type them in. Nobody
# gets left out; check every sheet got a line.

print("=" * 50)
print("                C R E D I T S")
print("=" * 50)
time.sleep(1)
print(____)          # ← "Room 1 designed by: " + the real names from that sheet
time.sleep(1)
print(____)          # ← Room 2's designers
time.sleep(1)
print(____)          # ← Room 3's designers
time.sleep(1)
print(____)          # ← Room 4's designers
time.sleep(1)
print(____)          # ← Room 5's designers
time.sleep(1)
print(____)          # ← the endings + secret-room designers
time.sleep(1)
print("=" * 50)
print("        Directed by: THIS ENTIRE CLASS")
print("=" * 50)

# GRAFT: paste (filled) at the very bottom of the class game, AFTER the
# play-again loop ends — the credits roll once, when the player finally
# says N. Roll it during the last minute of class. Let it land.
