# ==============================================================================
#
#   WEEK 8 · FILL IN THE BLANK  —  the class writes the code, you type it
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
#   Completed version: answer-key.md
#
# ==============================================================================


# ── TASK 1 · WORD OF THE DAY ─────────────────────────────────────────────────
# The class picks ONE word for today's experiments. Rules: ALL CAPS, at least
# 5 letters, school-appropriate (you're the filter). Don't forget what
# strings always wear... quotes!

word = ____
print("Today's word is:", word)


# ── TASK 2 · GRAB THE FIRST LETTER ───────────────────────────────────────────
# Fill in the ADDRESS of the first letter.
# ⭐ Ask first: "the FIRST letter lives at index...?" (Ruler rules!)

print("First letter:", word[____])


# ── TASK 3 · GRAB THE LAST LETTER — WITHOUT COUNTING ─────────────────────────
# There's an index that means "last letter" no matter how long the word is.
# ⭐ If someone counts forward instead (e.g. index 4 for a 5-letter word),
#    type THAT too — it works, but then ask: "would that still work if we
#    made the word longer?" That's why the backwards index wins.

print("Last letter:", word[____])


# ── TASK 4 · MEASURE IT ──────────────────────────────────────────────────────
# Which command counts the characters in a string? Fill in the command name.
# ⭐ Follow-up after it runs: "so what's the index of the last letter?"
#    (One less than the length. Always. Forever.)

print("Length:", ____(word))


# ── TASK 5 · SLICE THE FIRST THREE LETTERS ───────────────────────────────────
# We want EXACTLY the first three letters. Start is filled in — the class
# supplies the stop number.
# ⭐ Trap alert: many will say 2 ("indexes 0, 1, 2!"). Type it, run it,
#    count the letters, debug together. The stop number is a fence — the
#    slice stops BEFORE it. Same rule as range().

print("First three letters:", word[0:____])


# ── TASK 6 · WALK THE WORD ───────────────────────────────────────────────────
# A for-loop can visit every letter, in order. What goes after "in"?
# ⭐ Ask before running: "how many lines will this print?"

for letter in ____:
    print("-->", letter)


# ── TASK 7 · X-RAY A LETTER ──────────────────────────────────────────────────
# The class picks ONE character — any letter, or even a space — and we
# x-ray it to see its secret number. Quotes required!
# ⭐ Ask for a guess at the number BEFORE running. Then, if there's a
#    minute left, the reverse trick — you type this line live and the class
#    supplies a number between 65 and 90:   print(chr(  their number  ))
#    Instant letter. Two volunteers, two numbers, two letters.

print("Secret number:", ord(____))
