# ==============================================================================
#
#   WEEK 15 · CHALLENGE — UPGRADE MODULES for the class game
#
#   Four bolt-on upgrades, each a tiny self-contained demo that runs right
#   here, right now — plus graft instructions for wiring it into the class
#   game next week. Demo one or two and let the class VOTE on which upgrade
#   their game deserves.
#
#   Run the whole file, or one module at a time (highlight + Shift+Enter).
#
# ==============================================================================

import random


# ------------------------------------------------------------------------------
# MODULE 1 · HEALTH POINTS — give the player something to lose
# ------------------------------------------------------------------------------
# A health counter is just an accumulator (week 6) counting DOWN.

health = 3
print(f"You enter the dungeon with {health} health.")

print("A ceiling fan clips you! (-1)")
health = health - 1
print(f"   health: {health}")

print("You trip over a mop bucket! (-1)")
health = health - 1
print(f"   health: {health}")

print("A textbook falls on your head! (-1)")
health = health - 1
print(f"   health: {health}")

if health == 0:
    print("Zero health! In the class game, this is where you'd")
    print("call ending_bad() — no matter which room you're in.")
print()

# HOW TO GRAFT IT: rooms are functions, so the health number must be HANDED
# to each room like a hall pass — make rooms take it as a parameter
# (week 10):   def room_2(health):   ...and pass it on:   room_3(health - 1)
# Then any room can start with:   if health == 0:  ending_bad()  return


# ------------------------------------------------------------------------------
# MODULE 2 · THE RANDOM EVENT — a 10% chance the janitor appears
# ------------------------------------------------------------------------------
# One randint (week 5) + one if (week 4) = a game that's different every
# playthrough. Watch ten doors get opened:

print("Testing the janitor alarm on 10 doors...")
for door in range(1, 11):
    if random.randint(1, 10) == 1:                 # 1 out of 10 → 10% chance
        print(f"  Door {door}: THE JANITOR APPEARS! Everybody act natural!")
    else:
        print(f"  Door {door}: ...all clear.")
print()

# HOW TO GRAFT IT: drop this right at the top of any room's function —
#     if random.randint(1, 10) == 1:
#         print("The janitor rounds the corner! You dive into Room 4!")
#         room_4()
#         return          ← return (week 10) stops the rest of the room
# Suddenly the same game plays differently every time. (Week 13 vocabulary
# bonus: ask the class how they'd TEST that it really fires 10% of the time.)


# ------------------------------------------------------------------------------
# MODULE 3 · THE SECRET ITEM — a True/False flag that unlocks a door
# ------------------------------------------------------------------------------
# A boolean variable (week 4) rides along with the player: found the key or
# not? The same door behaves differently depending on the flag:

def try_the_door(has_key):
    if has_key:
        print("  CLICK. The golden key turns. The door swings open!")
    else:
        print("  Locked. Solid. You need a key for this one.")

print("Without the key:")
try_the_door(False)
print("After finding the key in Room 3:")
try_the_door(True)
print()

# HOW TO GRAFT IT: same trick as health — hand the flag from room to room:
#     def room_3(has_key):  ...
#     room_4(True)      ← the player found the key here!
#     room_4(has_key)   ← just passing through, no key found
# Then one choice in a later room checks it:  if has_key: ending_good()


# ------------------------------------------------------------------------------
# MODULE 4 · THE CIPHERED CLUE — week 9 rides again
# ------------------------------------------------------------------------------
# Scrawl a Caesar-shifted message (week 9) on a wall in one room; let the
# players decode it out loud, or let another room reveal the shift.

def decode(secret, shift):
    message = ""
    for letter in secret:                          # loop over a string — week 8
        if letter == " ":
            message = message + " "                # spaces pass through untouched
        else:
            spot = ord(letter) - ord("A")          # letter → number (week 8)
            new_spot = (spot - shift) % 26         # shift back, wrap with % (week 9!)
            message = message + chr(new_spot + ord("A"))
    return message

clue = "WKH MDQLWRU KDV WKH NHB"
print(f"A note on the closet wall reads:  {clue}")
print("The class decodes it (shift 3)...")
print(f"  {decode(clue, 3)}")
print()

# HOW TO GRAFT IT: print the scrambled clue in an early room. Hide the
# shift number in another room's description ("locker number 3, huh...").
# The class decoding it together on the smartboard IS the puzzle — the
# game never has to check their answer. Cruel bonus: make the clue hint
# at which final door is safe.

print("Four upgrades demoed. The class votes; the game levels up next week.")
