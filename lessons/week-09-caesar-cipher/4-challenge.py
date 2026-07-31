# ==============================================================================
#
#   WEEK 9 · CHALLENGE  —  for fast classes, curious kids, or a big finish
#
#   Three upgrades to today's cipher. Run the whole file, or run a section
#   at a time (highlight + Shift+Enter).
#   Note: Challenge 3 asks YOU to type in the terminal — it's a booth that
#   encrypts one student's name per lap and asks if anyone else wants a turn.
#
# ==============================================================================


# ------------------------------------------------------------------------------
# CHALLENGE 1 · ROT13 — the cipher that undoes itself
# ------------------------------------------------------------------------------
# ⭐ ASK THE CLASS FIRST: every shift needs a different decode shift...
#    5 decodes with 21, 3 decodes with 23. Is there a shift that decodes
#    with ITSELF — where the scrambler and unscrambler are the SAME machine?
#
#    Hunt for it: the pair must add up to 26... and be EQUAL...
#    so shift + shift = 26... shift = 13!
#
# Watch: encode with 13, then push the RESULT through the SAME machine.

word = "HELLO"
shift = 13                              # the magic self-undoing shift

scrambled = ""
for letter in word:
    position = ord(letter) - ord("A")
    scrambled = scrambled + chr((position + shift) % 26 + ord("A"))

print("HELLO   --ROT13-->", scrambled)

back_again = ""
for letter in scrambled:
    position = ord(letter) - ord("A")
    back_again = back_again + chr((position + shift) % 26 + ord("A"))

print(scrambled, "  --ROT13-->", back_again)

# Same code. Both directions. 13 + 13 = 26 = one full lap of the clock —
# so doing it twice walks every letter all the way home.
# (Real thing: internet forums used ROT13 for decades to hide spoilers.)
print()


# ------------------------------------------------------------------------------
# CHALLENGE 2 · THE POLITE ENCODER — punctuation sails through
# ------------------------------------------------------------------------------
# Today's encoder only knew about spaces. This one checks whether each
# character is actually a capital letter — using a double comparison,
# read exactly like math class reads  0 ≤ x ≤ 10:
#
#     "A" <= letter <= "Z"     "is letter between A and Z?"
#
# Letters get shifted; EVERYTHING else (spaces, ! ? ' , digits) passes
# through untouched.

message = "WE COME IN PEACE... MOSTLY!"
shift = 7

secret = ""
for letter in message.upper():
    if "A" <= letter <= "Z":
        position = ord(letter) - ord("A")
        secret = secret + chr((position + shift) % 26 + ord("A"))
    else:
        secret = secret + letter        # not a letter? sail on through

print("Message:", message)
print("Secret :", secret)

# ⭐ ASK THE CLASS: the ... and the ! survived. Helpful or a security leak?
#    (Leak! Punctuation reveals sentence shapes. Spies strip everything.)
print()


# ------------------------------------------------------------------------------
# CHALLENGE 3 · THE ENCRYPTION BOOTH — one spy name per customer
# ------------------------------------------------------------------------------
# A while loop (week 7!) keeps the booth open until you type STOP.
# Each lap: type a student's name and a shift they pick (1-25), and out
# comes their encrypted spy name. Line forms to the left.

print("THE ENCRYPTION BOOTH IS OPEN")

customer = input("Name to encrypt (or STOP to close the booth): ")

while customer.upper() != "STOP":
    shift = int(input("Pick a shift, 1 to 25: "))

    spy_name = ""
    for letter in customer.upper():
        if "A" <= letter <= "Z":
            position = ord(letter) - ord("A")
            spy_name = spy_name + chr((position + shift) % 26 + ord("A"))
        else:
            spy_name = spy_name + letter

    print("   ", customer.upper(), "is now Agent", spy_name)
    print()
    customer = input("Next customer (or STOP to close the booth): ")

print("BOOTH CLOSED. All spy names are final. No refunds.")
