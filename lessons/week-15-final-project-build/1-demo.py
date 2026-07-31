# ==============================================================================
#
#   WEEK 15  ·  FINAL PROJECT  —  "ESCAPE THE TEACHERS' LOUNGE"
#
#   A complete text adventure in ~100 lines. Play it FIRST (the class shouts
#   the choices), explain it SECOND. Because here's the secret:
#
#       THERE IS NOTHING NEW IN THIS FILE.
#
#   Every single technique below has a week number next to it. This is the
#   course's greatest-hits album — and next week the class plays THEIR OWN.
#
#   The shape of a text adventure:
#     · each ROOM is a function                          (functions — week 10)
#     · each room PRINTS a scene                         (print — week 1)
#     · each room ASKS for a choice                      (input() — week 3)
#     · the choice DECIDES the next room                 (if/else — week 4)
#     · ...and the next room is just a function call     (week 10 again)
#
# ==============================================================================


# ------------------------------------------------------------------------------
# THE ENDINGS — rooms where the game stops (no choice, no next room)
# ------------------------------------------------------------------------------
# We define these first, but Python doesn't mind the order: def only TEACHES
# the computer a recipe (week 10) — nothing runs until it's called below.

def ending_freedom():                                    # def — week 10
    print()
    print("*" * 44)                                      # string math — week 8
    print("You shove the door open into glorious daylight")
    print("just as the bell rings. Phone: rescued.")
    print("Dignity: mostly intact.   >>> YOU WIN! <<<")
    print("*" * 44)


def ending_busted():
    print()
    print("*" * 44)
    print("A shadow falls over you. Principal Ortega.")
    print("One eyebrow rises. Slowly.")
    print("Sentence: organizing the pencil drawer.")
    print("ALL the pencil drawers.   >>> GAME OVER <<<")
    print("*" * 44)


# ------------------------------------------------------------------------------
# ROOM 3 · THE SUPPLY CLOSET
# ------------------------------------------------------------------------------

def supply_closet():
    print()
    print("-" * 44)
    print("The floor vent spits you into the SUPPLY CLOSET —")
    print("a jungle of mops and a fort of paper towels.")
    print("Two doors: one marked EXIT, one marked")
    print("'ABSOLUTELY NOT AN EXIT'.")
    print()
    print("  A) Take the door marked EXIT")
    print("  B) Take the door marked ABSOLUTELY NOT AN EXIT")

    choice = input("Type A or B: ").upper()              # input — week 3; .upper() forgives 'a'
    while choice != "A" and choice != "B":               # while — week 7: re-ask until valid
        choice = input("That's not a door. A or B: ").upper()

    if choice == "A":                                    # if/else — week 4
        print()
        print("The EXIT opens directly into... the main office.")
        print("Of course it does.")
        ending_busted()                                  # calling a function — week 10
    else:
        print()
        print("The janitor labels doors to keep kids out.")
        print("This one leads straight outside.")
        ending_freedom()


# ------------------------------------------------------------------------------
# ROOM 2 · THE HALLWAY
# ------------------------------------------------------------------------------

def hallway():
    print()
    print("-" * 44)
    print("You burst into the HALLWAY, phone in hand.")
    print("Principal Ortega stands at the far end, reading")
    print("a clipboard. A fire-drill door is to your left.")
    print()
    print("  A) Walk past casually. Be cool. BE COOL.")
    print("  B) Slip out the fire-drill door")

    choice = input("Type A or B: ").upper()
    while choice != "A" and choice != "B":
        choice = input("That's not a door. A or B: ").upper()

    if choice == "A":
        print()
        print("You are extremely cool for nine entire steps.")
        print("Then your left shoe squeaks like a fire alarm.")
        ending_busted()
    else:
        ending_freedom()


# ------------------------------------------------------------------------------
# ROOM 1 · THE TEACHERS' LOUNGE  (the game starts here)
# ------------------------------------------------------------------------------

def teachers_lounge():
    print()
    print("-" * 44)
    print("You've snuck into the forbidden TEACHERS' LOUNGE")
    print("to rescue your confiscated phone. There it is —")
    print("in the snack cupboard, guarded by the world's")
    print("oldest coffee machine. Footsteps approach!")
    print()
    print("  A) Grab the phone and SPRINT for the hallway")
    print("  B) Grab the phone and dive into the floor vent")

    choice = input("Type A or B: ").upper()
    while choice != "A" and choice != "B":
        choice = input("Quick, they're coming! A or B: ").upper()

    if choice == "A":
        hallway()                                        # a room leading to a room:
    else:                                                # the whole game is functions
        supply_closet()                                  # calling functions (week 10)


# ==============================================================================
#   THE GAME ITSELF — a title screen and a play-again loop. That's it.
# ==============================================================================

print("*" * 44)
print("*      ESCAPE THE TEACHERS' LOUNGE          *")
print("*      a text adventure by this class       *")
print("*" * 44)

playing = "Y"
while playing == "Y":                                    # the game loop — week 7
    teachers_lounge()                                    # start the story
    print()
    playing = input("Play again? (Y/N): ").upper()

print()
print("Thanks for playing. Next week: YOUR story runs here.")
