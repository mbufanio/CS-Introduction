# ==============================================================================
#
#   WEEK 3 · FILL IN THE BLANK  —  the class BUILDS Mad Libs 2.0
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
#     · This file has input() — when the terminal blinks, kids shout answers
#       and YOU type them. Task 6 has no blank: the class dictates, you type.
#
#   Today's build: "THE FIELD TRIP OF DOOM" — a Mad Libs the class designs.
#   Completed version: answer-key.md
#
# ==============================================================================


# ── TASK 1 · THE FIRST COLLECTOR ─────────────────────────────────────────────
# We need a command that ASKS a question, WAITS, and hands us the answer.
# What command goes in the blank?

place = ____("Where is our field trip going? ")


# ── TASK 2 · LABEL THE BOX ───────────────────────────────────────────────────
# This collector asks for a plural animal — but the box has no label yet!
# The class names the box. (Rules from week 2: one word, no spaces, no quotes.
# Pick a label that says what's inside... or don't, and enjoy the confusion
# when we write the story.)

____ = input("Give me a PLURAL ANIMAL: ")


# ── TASK 3 · THE CLASS WRITES THE QUESTION ───────────────────────────────────
# Now flip it: the box is labeled, but the QUESTION is missing.
# The class composes the prompt — the exact words the computer will ask.
# ⭐ Ask first: what must the prompt be wearing? (Quotes! It's a string.)

adjective = input(____)


# ── TASK 4 · THE NUMBER (careful...) ─────────────────────────────────────────
# The story needs to know how many kids fit on the bus — and later we'll do
# MATH with it. Remember today's disaster: input() hands back a STRING.
# What converter goes in the blank so the box holds a real number?

kids_text = input("How many kids fit on one bus? ")
kids = ____(kids_text)


# ── TASK 5 · STORY TIME — FILL THE STORY'S BLANKS ────────────────────────────
# The story below has two unfilled {____} blanks. The class decides which
# boxes go in them. (Any box we made today is legal — chaos is a feature.)
# ⭐ Before running: which line uses the NUMBER box to do math? What will
#    it print if kids is 30?

print()
print("========  THE FIELD TRIP OF DOOM  ========")
print(f"Our class took a field trip to {place}.")
print(f"The brochure promised it would be {adjective}.")
print(f"The brochure did not mention the {____}.")
print(f"There were {kids} kids on our bus — but with 2 buses,")
print(f"that's {kids * 2} kids for the {____} to chase.")
print("Nobody has returned the permission slips since.")
print("==========================================")


# ── TASK 6 · THE CLASS'S BONUS LINE (no blank — they dictate, you type) ──────
# The story needs one more line, written 100% by the class. They dictate a
# sentence using AT LEAST ONE box from today; you type it LIVE as a new
# print(f"...") line right here below. Say the rules out loud:
#     · start with   print(f"
#     · box names go in {braces}
#     · end with   ")
# Forgetting the f is traditional. Run it, watch the braces sit there
# unfilled, let the class yell "THE F!", fix it, run again. Standing ovation.
