# ==============================================================================
#
#   WEEK 9 · FILL IN THE BLANK  —  the class writes the code, you type it
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


# ── TASK 1 · CLOCK WARM-UP ───────────────────────────────────────────────────
# It's 10 o'clock; 4 hours pass. The % needs the size of the CLOCK to wrap
# on. Fill in the number of hours on a normal clock face.

print("10 o'clock + 4 hours =", (10 + 4) % ____, "o'clock")


# ── TASK 2 · A LETTER'S POSITION ─────────────────────────────────────────────
# To get D's position on the alphabet clock (0-25), we subtract the secret
# number of the alphabet's STARTING letter. Which letter? (Quotes on!)
# ⭐ Ask before running: what number should this print? (D is at... 3)

print("Position of D:", ord("D") - ord(____))


# ── TASK 3 · YOU TYPE, THEY SUPPLY THE OPERATOR ──────────────────────────────
# No blank here — an operator can't hide in a ____. Do this one live:
#   1. Say: "Z is at 25. Shift 3. 25 + 3 = 28... but the clock only goes
#      to 25. Which operator from week 2 wraps 28 back onto the clock?"
#   2. Type this line with the operator the class calls out, then run:
#
#          print("28 on the alphabet clock is:", 28 [operator] 26)
#
#   (They're hunting for %. If someone offers // — type it! 28 // 26 gives
#    1, the number of full laps. Interesting... but not where we LANDED.
#    % gives the remainder: 2. Landed on C.)


# ── TASK 4 · ONE LETTER THROUGH THE MACHINE ──────────────────────────────────
# The full three-step formula, with two holes in it. The class fills:
#   · the size of the alphabet clock
#   · the letter whose secret number turns a position back into a CAPITAL
# ⭐ Y is at position 24, shift is 3 ... ask for the final letter BEFORE
#    the run. (24 + 3 = 27, wraps to 1... B!)

letter = "Y"
shift = 3

position = ord(letter) - ord("A")
new_position = (position + shift) % ____
new_letter = chr(new_position + ord(____))

print(letter, "encodes to", new_letter)


# ── TASK 5 · THE FULL ENCODER ────────────────────────────────────────────────
# The whole machine — with two parts missing.
#   Blank 1: which character gets to sneak through UNSHIFTED?
#   Blank 2: which variable holds the freshly-shifted position, ready for
#            its costume? (Look three lines up...)
# ⭐ After it runs, change shift to a number the class picks (1-25) and
#    run again. Same machine, new secret.

message = "CODE CLUB AT NOON"
shift = 5

secret = ""
for letter in message.upper():
    if letter == ____:
        secret = secret + letter
    else:
        position = ord(letter) - ord("A")
        new_position = (position + shift) % 26
        secret = secret + chr(____ + ord("A"))

print("Secret:", secret)


# ── TASK 6 · DECODE IT — WITHOUT GOING BACKWARDS ─────────────────────────────
# Task 5 encoded with shift 5. To decode, we shift FORWARD the rest of the
# way around the 26-letter clock. The class computes the decode shift.
# ⭐ Ask: "5 forward plus HOW MANY more forward makes one full lap of 26?"

decode_shift = ____

original = ""
for letter in secret:
    if letter == " ":
        original = original + " "
    else:
        position = ord(letter) - ord("A")
        new_position = (position + decode_shift) % 26
        original = original + chr(new_position + ord("A"))

print("Decoded:", original)
print("(If that's not English, the decode shift isn't the complement of 5...)")
