# ==============================================================================
#
#   WEEK 15 · THE CLASS GAME SKELETON  —  the class designs it, you type it
#
#   HOW THIS WORKS (teacher):
#     · This is not an exercise file — it's THE actual class game, empty.
#     · The engine is already built: five rooms, two endings, wiring, the
#       play-again loop. The BLANKS are where the class's STORY goes.
#     · Every blank looks like ____ and its comment names the design-sheet
#       field to read from. Type the group's words (in quotes!) and run.
#     · Fill the title first, then rooms in whatever order sheets arrive.
#       Running past an unfilled blank crashes with
#       "NameError: name '____' is not defined" — that's just the game
#       telling you which room isn't written yet.
#     · The choice-destination blanks get filled with one of:
#          room_2   room_3   room_4   room_5   ending_good   ending_bad
#       (no quotes on these — they're function names, followed by the ()!)
#
#   A complete sample filling (in case designs stall): answer-key.md
#
# ==============================================================================


# ------------------------------------------------------------------------------
# THE ENDINGS — from the class's ENDINGS design sheet
# ------------------------------------------------------------------------------

def ending_good():
    print()
    print("*" * 50)
    print(____)          # ← endings sheet: what happens in the WIN ending? (in quotes)
    print(____)          # ← second sentence of the win (or type a victory yell)
    print("             >>> YOU WIN! <<<")
    print("*" * 50)


def ending_bad():
    print()
    print("*" * 50)
    print(____)          # ← endings sheet: what happens in the LOSE ending? (in quotes)
    print(____)          # ← second sentence (funny beats gory — house rule)
    print("             >>> GAME OVER <<<")
    print("*" * 50)


# ------------------------------------------------------------------------------
# ROOM 1 — the game starts here (fill from the Room 1 design sheet)
# ------------------------------------------------------------------------------

def room_1():
    print()
    print("-" * 50)
    print(____)          # ← Room 1 sheet: "what the player sees", sentence 1 (in quotes)
    print(____)          # ← sentence 2
    print()
    print(____)          # ← choice A text — type it starting with "A) "
    print(____)          # ← choice B text — starting with "B) "

    choice = input("Type A or B: ").upper()
    while choice != "A" and choice != "B":
        choice = input("That's not one of the choices. A or B: ").upper()

    if choice == "A":
        ____()           # ← Room 1 sheet: choice A leads to...? (a function name, no quotes)
    else:
        ____()           # ← choice B leads to...?


# ------------------------------------------------------------------------------
# ROOM 2 — fill from the Room 2 design sheet
# ------------------------------------------------------------------------------

def room_2():
    print()
    print("-" * 50)
    print(____)          # ← Room 2 sheet: what the player sees, sentence 1
    print(____)          # ← sentence 2
    print()
    print(____)          # ← choice A text
    print(____)          # ← choice B text

    choice = input("Type A or B: ").upper()
    while choice != "A" and choice != "B":
        choice = input("That's not one of the choices. A or B: ").upper()

    if choice == "A":
        ____()           # ← choice A leads to...?
    else:
        ____()           # ← choice B leads to...?


# ------------------------------------------------------------------------------
# ROOM 3 — fill from the Room 3 design sheet
# ------------------------------------------------------------------------------

def room_3():
    print()
    print("-" * 50)
    print(____)          # ← Room 3 sheet: what the player sees, sentence 1
    print(____)          # ← sentence 2
    print()
    print(____)          # ← choice A text
    print(____)          # ← choice B text

    choice = input("Type A or B: ").upper()
    while choice != "A" and choice != "B":
        choice = input("That's not one of the choices. A or B: ").upper()

    if choice == "A":
        ____()           # ← choice A leads to...?
    else:
        ____()           # ← choice B leads to...?


# ------------------------------------------------------------------------------
# ROOM 4 — fill from the Room 4 design sheet
# ------------------------------------------------------------------------------

def room_4():
    print()
    print("-" * 50)
    print(____)          # ← Room 4 sheet: what the player sees, sentence 1
    print(____)          # ← sentence 2
    print()
    print(____)          # ← choice A text
    print(____)          # ← choice B text

    choice = input("Type A or B: ").upper()
    while choice != "A" and choice != "B":
        choice = input("That's not one of the choices. A or B: ").upper()

    if choice == "A":
        ____()           # ← choice A leads to...?
    else:
        ____()           # ← choice B leads to...?


# ------------------------------------------------------------------------------
# ROOM 5 — fill from the Room 5 design sheet
# ------------------------------------------------------------------------------

def room_5():
    print()
    print("-" * 50)
    print(____)          # ← Room 5 sheet: what the player sees, sentence 1
    print(____)          # ← sentence 2
    print()
    print(____)          # ← choice A text
    print(____)          # ← choice B text

    choice = input("Type A or B: ").upper()
    while choice != "A" and choice != "B":
        choice = input("That's not one of the choices. A or B: ").upper()

    if choice == "A":
        ____()           # ← choice A leads to...?
    else:
        ____()           # ← choice B leads to...?


# ==============================================================================
#   TITLE SCREEN + GAME LOOP — already wired; only the title is a blank
# ==============================================================================

print("*" * 50)
print(____)              # ← THE GAME'S NAME, in quotes — the class's first decision!
print("*" * 50)

playing = "Y"
while playing == "Y":
    room_1()             # every playthrough starts at Room 1
    print()
    playing = input("Play again? (Y/N): ").upper()

print()
print("Designed by this class. See you next week for the grand opening.")
