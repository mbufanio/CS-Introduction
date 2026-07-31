# ==============================================================================
#
#   WEEK 9  ·  🎉 THE CAESAR CIPHER
#
#   On the board: WKH ILUVW UXOH RI FRGH FOXE
#
#   That message is locked. Today we build the key — out of parts the class
#   already owns: ord(), chr(), a for-loop, an accumulator... and the %
#   operator from week 2, which has been waiting SEVEN WEEKS for this moment.
#
#   Run this file section by section (highlight + Shift+Enter).
#
# ==============================================================================


# ------------------------------------------------------------------------------
# SECTION 1 · THE 2,000-YEAR-OLD TRICK
# ------------------------------------------------------------------------------
# Julius Caesar sent battle orders his enemies couldn't read. His trick:
# slide every letter 3 places down the alphabet.
#
#     A → D      B → E      C → F      ...
#
# The slide amount (3) is called the SHIFT — it's the secret key.
# Only someone who knows the shift can slide the letters back.
#
# ⭐ ASK THE CLASS: with shift 3, what does H become? (K)  And E? (H)
#    So "HE" encodes to... KH. You are all now Roman spies.
#
# ⭐ NOW THE TRAP — ASK: what does Z become?  Z + 3 = ...?
#    There IS no letter after Z. Collect ideas. Someone will say
#    "start over from A" — hold that thought and run Section 2.

print("A + 3 =", chr(ord("A") + 3))
print("B + 3 =", chr(ord("B") + 3))
print("H + 3 =", chr(ord("H") + 3))

# (That's week 8's move: secret number, plus 3, costume back on.
#  It works great... until Z. Do NOT run Z this way yet — Section 3
#  shows what goes wrong.)


# ------------------------------------------------------------------------------
# SECTION 2 · CLOCK MATH — the class already knows the answer
# ------------------------------------------------------------------------------
# ⭐ ASK THE CLASS: it's 10 o'clock. What time is it in 4 hours?
#    (Everyone says 2. Nobody says 14. Why not? The clock WRAPS.)
#
# Week 2's remainder operator % is a wrapping machine:
# (10 + 4) % 12 asks "where do we land on a 12-hour wheel?"

print("(10 + 4) % 12 =", (10 + 4) % 12)

# The alphabet is just a bigger clock — 26 hours, labeled A to Z,
# with positions 0 to 25 (week 8: we always count from 0!).
# Z sits at position 25. Z + 3 on the 26-hour clock:

print("(25 + 3) % 26 =", (25 + 3) % 26)

# Position 2 is... C!  So Z + 3 = C:  Z → A → B → C. The wrap is real.
#
# ⭐ ASK THE CLASS: what is (25 + 1) % 26?  (0 — Z + 1 lands on A.)


# ------------------------------------------------------------------------------
# SECTION 3 · THE FORMULA — one letter through the machine
# ------------------------------------------------------------------------------
# Three steps turn any letter into its encoded twin:
#
#     step 1:  position     = ord(letter) - ord("A")     costume off → 0..25
#     step 2:  new_position = (position + shift) % 26    slide on the clock
#     step 3:  new_letter   = chr(new_position + ord("A"))   costume back on
#
# Watch the hardest letter in the alphabet survive the trip:

letter = "Z"
shift = 3

position = ord(letter) - ord("A")           # 90 - 65 = 25
print("position of Z:", position)

new_position = (position + shift) % 26      # (25 + 3) % 26 = 2
print("new position:", new_position)

new_letter = chr(new_position + ord("A"))   # chr(2 + 65) = chr(67) = C
print("Z + 3 =", new_letter)

# ⭐ ASK THE CLASS: what if we'd skipped the % 26?
#    chr(28 + 65) = chr(93) — let's see what non-letter lives there:

print("without the clock, Z + 3 would be:", chr(28 + ord("A")))   # yikes

# The % 26 is the difference between a cipher and keyboard soup.


# ------------------------------------------------------------------------------
# SECTION 4 · THE ENCODER — the whole machine, assembled
# ------------------------------------------------------------------------------
# Now the formula goes inside week 8's loop-and-accumulator pattern:
#   · .upper() first — our cipher speaks ALL CAPS only
#   · spaces don't get shifted — an if lets them pass through untouched
#   · everything else takes the three-step trip
#
# ⭐ CLASS CHOICE: run it once as-is, then replace the message below with
#    one the class invents (LETTERS AND SPACES ONLY) and run it again.

message = "MEET AT THE BIG TREE"        # ← swap in the class's message
shift = 3

secret = ""                             # the accumulator — starts empty
for letter in message.upper():          # walk the message, letter by letter
    if letter == " ":
        secret = secret + " "           # spaces sneak through unshifted
    else:
        position = ord(letter) - ord("A")
        new_position = (position + shift) % 26
        secret = secret + chr(new_position + ord("A"))

print("Message:", message)
print("Secret :", secret)

# ⭐ ASK THE CLASS: why do we keep the spaces? Doesn't that leak clues?
#    (YES — word lengths are a huge hint. Real spies removed them.
#     We keep them because we're learning, not invading Gaul.)


# ------------------------------------------------------------------------------
# SECTION 5 · DECODING — the long way around the clock
# ------------------------------------------------------------------------------
# To decode, slide every letter BACK by 3... but backwards risks negative
# numbers (A - 3 = ?!). The clock saves us again:
#
#     going BACK 3 hours  ==  going FORWARD 26 - 3 = 23 hours
#
# Same wheel, long way around. So decoding is just ENCODING with
# shift 26 - 3. We don't need a new machine at all.
#
# ⭐ ASK THE CLASS: on a normal clock, going back 4 hours is the same as
#    going forward how many? (8 — because 4 + 8 = 12. Same idea here.)

coded = secret                          # the secret we just made
decode_shift = 26 - 3                   # 23 — the complement of the key

original = ""
for letter in coded:
    if letter == " ":
        original = original + " "
    else:
        position = ord(letter) - ord("A")
        new_position = (position + decode_shift) % 26
        original = original + chr(new_position + ord("A"))

print("Coded   :", coded)
print("Decoded :", original)

# Round trip complete. Shift 3 out, shift 23 home, and 3 + 23 = 26 —
# one full lap of the alphabet clock.


# ------------------------------------------------------------------------------
# SECTION 6 · THE FINALE — BRUTE FORCE the board's mystery
# ------------------------------------------------------------------------------
# The message on the board was NOT encoded with a shift we know.
# No key? No problem. There are only 25 possible shifts...
# so we try ALL OF THEM. That strategy is called BRUTE FORCE.
#
# A loop inside a loop: the outer loop picks a shift to try,
# the inner loop decodes the whole message with it. Loop-ception.
#
# ⭐ SAY BEFORE RUNNING: "25 wrong answers and 1 right one are about to
#    fill this screen. The computer has NO IDEA which is which — it can't
#    read English. YOU can. Shout when you see it."

mystery = "WKH ILUVW UXOH RI FRGH FOXE"

print("BRUTE-FORCING THE MYSTERY... all 25 shifts:")
print()

for guess_shift in range(1, 26):        # try shifting back by 1, 2, ... 25
    attempt = ""
    for letter in mystery:
        if letter == " ":
            attempt = attempt + " "
        else:
            position = ord(letter) - ord("A")
            new_position = (position + 26 - guess_shift) % 26
            attempt = attempt + chr(new_position + ord("A"))
    print(f"shift {guess_shift}:  {attempt}")

# ⭐ AFTER THE SHOUT: which shift was it? (3 — Caesar's own favorite.)
#    The computer generated all 25 rows in a blink but couldn't pick one.
#    Twenty-five human brains picked instantly. Teamwork.

print()
print("Cracked by: this class. Time needed: one second. Caesar: furious.")
