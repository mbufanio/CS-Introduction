# ==============================================================================
#
#   WEEK 16  ·  "THE HAUNTED SCHOOL"  —  a complete text adventure
#
#   TO ANY STUDENT READING THIS AT HOME: everything in this file, you
#   learned. Every line. Here's the map of which week taught which trick:
#
#       print() and strings ................ week 1
#       variables .......................... week 2
#       input() and f-strings .............. week 3
#       if / elif / else, booleans ......... week 4
#       import random, randint ............. week 5
#       for loops .......................... week 6
#       while loops ........................ week 7
#       string indexing, ord()/chr() ....... week 8
#       the % wraparound (Caesar cipher) ... week 9
#       def, parameters, return ............ week 10
#
#   Show this file to your family. Then tell them YOU can read it — because
#   you can. (Free ways to RUN it at home are on the graduation handout.)
#
#   FOR THE TEACHER: this is (a) the emergency backup if the class game
#   isn't playable, and (b) the going-away gift. 7 rooms, 3 endings, a
#   secret key, a ciphered clue, and a ghost who appears 25% of the time.
#
# ==============================================================================

import random                                  # week 5 — the randomness machine


# ------------------------------------------------------------------------------
# THE CIPHER MACHINE (week 9's greatest hit, back for the finale)
# ------------------------------------------------------------------------------

def decode(secret, shift):
    message = ""
    for letter in secret:                      # loop over a string — week 8
        if letter == " ":
            message = message + " "            # spaces pass through untouched
        else:
            spot = ord(letter) - ord("A")      # letter → number — week 8
            new_spot = (spot - shift) % 26     # shift back, wrap with % — week 9
            message = message + chr(new_spot + ord("A"))
    return message                             # hand the answer back — week 10


# ------------------------------------------------------------------------------
# THE THREE ENDINGS — rooms where the story stops
# ------------------------------------------------------------------------------

def ending_key_escape():
    print()
    print("*" * 50)
    print("The brass key turns with a CLUNK heard in three")
    print("counties. You walk out the front door like a")
    print("legend. Behind you, the school sighs. It'll get")
    print("the next kid.          >>> YOU ESCAPED! <<<")
    print("*" * 50)


def ending_secret():
    print()
    print("*" * 50)
    print("The fake wall swings open: a candy stash hidden")
    print("by a principal in 1923, and a coal chute sliding")
    print("straight to the sidewalk. You leave rich AND")
    print("free.        >>> THE LEGENDARY ENDING! <<<")
    print("*" * 50)


def ending_forever():
    print()
    print("*" * 50)
    print("Cold hands... a transfer form... you are now")
    print("enrolled as the school's newest GHOST STUDENT.")
    print("Doomed to attend gym class. Forever.")
    print("             >>> GAME OVER <<<")
    print("*" * 50)


# ------------------------------------------------------------------------------
# THE ROOMS — each one is a function; the player's backpack (has_key) gets
# handed from room to room as a PARAMETER (week 10). True or False: booleans,
# week 4. That's the entire inventory system of this game.
# ------------------------------------------------------------------------------

def front_hall(has_key):
    print()
    print("-" * 50)
    print("You're the last student in HAWTHORNE MIDDLE after")
    print("dark. The front doors just locked THEMSELVES.")
    print("Lightning flashes. Somewhere, a locker slams.")
    print()
    print("  A) Follow a flickering light into the library")
    print("  B) Take the dark stairs to the upstairs hallway")

    choice = input("Type A or B: ").upper()            # input — week 3
    while choice != "A" and choice != "B":             # while — week 7
        choice = input("The dark is patient. A or B: ").upper()

    if choice == "A":                                  # if/else — week 4
        library(has_key)
    else:
        hallway_upstairs(has_key)


def library(has_key):
    print()
    print("-" * 50)
    print("The library. Every book is open to page 13.")
    print("On the chalkboard, in dust, someone has written:")
    print()
    print("       WKH ERLOHU URRP ZDOO LV IDNH")
    print()
    print("Caesar cipher! You sound it out, shift 3...")
    print(f"       {decode('WKH ERLOHU URRP ZDOO LV IDNH', 3)}")
    print()
    print("  A) Head for the science lab")
    print("  B) Find the basement stairs to the boiler room")

    choice = input("Type A or B: ").upper()
    while choice != "A" and choice != "B":
        choice = input("The books are watching. A or B: ").upper()

    if choice == "A":
        science_lab(has_key)
    else:
        boiler_room(has_key)


def science_lab(has_key):
    print()
    print("-" * 50)
    print("The science lab. LARRY, the anatomy skeleton,")
    print("has something new: a BRASS KEY on a string around")
    print("his neck, and a sticky note: 'FRONT DOOR. -L'")
    print()
    print("  A) Take the key and sprint for the front door")
    print("  B) Leave it (it's Larry's) and slip into the gym")

    choice = input("Type A or B: ").upper()
    while choice != "A" and choice != "B":
        choice = input("Larry waits politely. A or B: ").upper()

    if choice == "A":
        print()
        print("You lift the key. Larry's jaw drops. Rude.")
        front_door(True)                       # the backpack now holds the key!
    else:
        gym(has_key)


def hallway_upstairs(has_key):
    print()
    print("-" * 50)
    print("The upstairs hallway stretches longer than the")
    print("building is. Classic haunted-school architecture.")

    if random.randint(1, 4) == 1:              # 25% chance — weeks 5 + 13
        print()
        print("A cold light rounds the corner — THE GHOST")
        print("HALL MONITOR! 'PASS, PLEASE,' it moans.")
        print("You do not have a pass. You have never had")
        print("a pass. It escorts you away...")
        detention_room(has_key)
        return                                 # return alone = leave the function
                                               # NOW; skip the rest — week 10
    print("...all clear. This time.")
    print()
    print("  A) Duck into the science lab")
    print("  B) Push through the double doors into the gym")

    choice = input("Type A or B: ").upper()
    while choice != "A" and choice != "B":
        choice = input("The hallway hums. A or B: ").upper()

    if choice == "A":
        science_lab(has_key)
    else:
        gym(has_key)


def gym(has_key):
    print()
    print("-" * 50)
    print("The gym. The scoreboard glows: HOME 13,")
    print("GHOSTS 13, TIME REMAINING: FOREVER.")
    print("A rope ladder behind the bleachers drops toward")
    print("a door marked BOILER ROOM.")
    print()
    print("  A) Climb down to the boiler room")
    print("  B) Go back through the upstairs hallway")

    choice = input("Type A or B: ").upper()
    while choice != "A" and choice != "B":
        choice = input("The scoreboard ticks. A or B: ").upper()

    if choice == "A":
        boiler_room(has_key)
    else:
        hallway_upstairs(has_key)


def detention_room(has_key):
    print()
    print("-" * 50)
    print("The DETENTION ROOM. The ghost hall monitor")
    print("begins filling out a detention slip... dated 1974.")
    print()
    print("  A) Explain, politely, that you're trying to leave")
    print("  B) RUN FOR IT")

    choice = input("Type A or B: ").upper()
    while choice != "A" and choice != "B":
        choice = input("The pen scratches. A or B: ").upper()

    if choice == "A":
        print()
        print("The ghost pauses. Nobody has been polite to it")
        print("since 1974. Moved, it points a glowing finger")
        print("toward... the gym.")
        gym(has_key)
    else:
        ending_forever()


def boiler_room(has_key):
    print()
    print("-" * 50)
    print("The boiler room: pipes, hissing, one bare bulb.")
    print("One wall looks... wrong. Newer. Hollow-sounding.")
    print("(The chalkboard TOLD you about this wall.)")
    print("A coal chute ladder climbs back to the front hall.")
    print()
    print("  A) Push the suspicious wall")
    print("  B) Climb the ladder and try the front door")

    choice = input("Type A or B: ").upper()
    while choice != "A" and choice != "B":
        choice = input("The pipes hiss louder. A or B: ").upper()

    if choice == "A":
        ending_secret()
    else:
        front_door(has_key)


def front_door(has_key):
    print()
    print("-" * 50)
    print("The front door. Massive. Locked. Smug about it.")

    if has_key:                                # the flag gates the door — week 4
        ending_key_escape()
        return
    print("You rattle the handle. Nothing. Somewhere in the")
    print("science lab, you'd swear a skeleton is giggling.")
    print()
    print("  A) Go search the library")
    print("  B) Try the upstairs hallway")

    choice = input("Type A or B: ").upper()
    while choice != "A" and choice != "B":
        choice = input("The door is still smug. A or B: ").upper()

    if choice == "A":
        library(has_key)
    else:
        hallway_upstairs(has_key)


# ==============================================================================
#   TITLE SCREEN + THE GAME LOOP
# ==============================================================================

print("*" * 50)
print("*            THE HAUNTED SCHOOL                  *")
print("*     sixteen weeks of Python, one ghost         *")
print("*" * 50)

playing = "Y"
while playing == "Y":                          # the game loop — week 7
    front_hall(False)                          # every run starts with no key
    print()
    playing = input("Play again? (Y/N): ").upper()

print()
print("The school powers down. It knows you'll be back.")
print("(You speak Python now. Schools can tell.)")
