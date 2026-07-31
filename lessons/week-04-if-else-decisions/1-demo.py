# ==============================================================================
#
#   WEEK 4  ·  IF/ELSE — THE PROGRAM LEARNS TO DECIDE
#
#   Until today, our programs treat everyone exactly the same.
#   Today they get a spine: IF this, do that. OTHERWISE, do something else.
#   By the end of class, a program will be sorting this class into teams.
#
#   TEACHER: the Sorting Hat at the end uses input() — kids shout, you type.
#
# ==============================================================================


# ------------------------------------------------------------------------------
# SECTION 1 · COMPARISONS ARE QUESTIONS
# ------------------------------------------------------------------------------
# Put a comparison symbol between two values and Python answers a QUESTION.
# The answer is always one of exactly two words: True or False.
# Those two words are called BOOLEANS — the smallest type in Python.
#
# ⭐ ASK THE CLASS: before each line runs — True or False? Thumbs up / down.

print("Is 3 bigger than 2?  ", 3 > 2)
print("Is 3 bigger than 300?", 3 > 300)
print("Is 10 equal to 10?   ", 10 == 10)     # note the DOUBLE equals — more soon!
print("Is 7 NOT equal to 8? ", 7 != 8)       # != means "not equal"

# Your full toolkit of questions:
#    >   greater than            <   less than
#    >=  greater than OR equal   <=  less than or equal
#    ==  equal                   !=  not equal
#
# In math class you write h ≥ 132 and test values against it.
# Python just spells it >= because keyboards don't have the fancy symbol.


# ------------------------------------------------------------------------------
# SECTION 2 · THE FIRST IF — THE BOUNCER IN CODE
# ------------------------------------------------------------------------------
# The rollercoaster sign from the hook: YOU MUST BE AT LEAST 132 CM TO RIDE.
# Here is that bouncer, as a program. Three pieces of grammar:
#
#     if height >= 132:          ← the CONDITION, ending in a colon
#         print("...")           ← INDENTED = this line BELONGS TO the if
#
# The indented block only runs when the condition's answer is True.
#
# ⭐ ASK THE CLASS: Ada is 140 cm. Does the indented line run?

height = 140

if height >= 132:
    print("Ada, at 140 cm: WELCOME ABOARD. Keep arms inside the ride.")

print("(this line is NOT indented — it runs no matter what)")


# ------------------------------------------------------------------------------
# SECTION 3 · BOUNDARY DRAMA — exactly 132
# ------------------------------------------------------------------------------
# The argument from the hook, settled by a machine.
# Marcus is EXACTLY 132 cm. The sign says "at least 132".
#
# ⭐ ASK THE CLASS: does Marcus ride? Vote! Then look at the operator:
#    >= includes the boundary — the CLOSED circle on your number line.

height = 132

if height >= 132:
    print("Marcus, at exactly 132 cm: RIDES. >= includes the boundary!")

# If the sign wanted "MORE than 132" it would be:   if height > 132:
# — the OPEN circle, and exactly-132 walks home crying.
# One character on the screen. Whole different rollercoaster experience.


# ------------------------------------------------------------------------------
# SECTION 4 · ELSE — WHAT HAPPENS TO EVERYONE THE IF REJECTS
# ------------------------------------------------------------------------------
# else has no condition of its own. It's the catch-all: "...and if the
# answer was False, do THIS instead." Exactly one of the two blocks runs.
#
# ⭐ ASK THE CLASS: Priya is 120 cm. Which of the two prints will we see?

height = 120

if height >= 132:
    print("Priya: WELCOME ABOARD.")
else:
    print("Priya, at 120 cm: enjoy the teacup ride. (It's a good ride!)")


# ------------------------------------------------------------------------------
# SECTION 5 · ELIF — SLICING THE WHOLE NUMBER LINE
# ------------------------------------------------------------------------------
# if/else gives two zones. elif ("else if") gives as many as you want.
# The temperature advisor below cuts the number line into four intervals:
#
#      ...0°...........15°..........28°...........
#   frozen | jacket     | perfect    | melting
#
# Python checks TOP-DOWN and runs the FIRST condition that answers True —
# then skips the whole rest of the chain. Exactly ONE branch ever runs.
#
# ⭐ ASK THE CLASS: it's 20° today. Which line will print? Trace it aloud,
#    top-down: is 20 >= 28? No. Is 20 >= 15? YES — print, and skip the rest.

temperature = 20

if temperature >= 28:
    print(temperature, "degrees: melting. Class outside is cancelled.")
elif temperature >= 15:
    print(temperature, "degrees: perfect. Why are we indoors?")
elif temperature >= 0:
    print(temperature, "degrees: jacket weather.")
else:
    print(temperature, "degrees: frozen. School is now a penguin habitat.")

# ⭐ ASK THE CLASS: change temperature to -5 and trace it — every condition
#    answers False... so who catches it? (else — the safety net.)
#    Re-run with a few class-suggested temperatures. Test 28 EXACTLY.


# ------------------------------------------------------------------------------
# SECTION 6 · == ASKS. = ASSIGNS. (the bug of the century)
# ------------------------------------------------------------------------------
#     score = 100      ONE equals:  PUT 100 in the box        (an action)
#     score == 100     TWO equals:  IS the box 100?           (a question)
#
# Mixing them up is the most famous bug in programming. Say the chant:
# "one equals PUTS, two equals ASKS."

score = 100
print("Is score exactly 100?", score == 100)
print("Is score exactly 99? ", score == 99)

# BROKEN LINE — uncomment it, run, and read the error TOGETHER:
# if score = 100:
#     print("this will never print")
#
# Python stops with:
#     SyntaxError: invalid syntax. Maybe you meant '==' or ':=' instead of '='?
#
# ⭐ ASK THE CLASS: read that error out loud. The computer literally SUGGESTS
#    the fix. Week 1 promised errors are clues — this one is a whole answer key.


# ------------------------------------------------------------------------------
# SECTION 7 · 🎉 THE SORTING HAT
# ------------------------------------------------------------------------------
# A program that JUDGES US. Kids shout their lucky number (1–100), you type
# it, the hat decides their team — with total confidence and zero feelings.
#
# The chain below slices 1–100 into four team zones:
#
#    1.....25 | 26.....50 | 51.....75 | 76.....100
#      GOAT   |   ROBOT   | LIBRARIAN |   WAFFLE
#
# ⭐ RITUAL: before pressing Enter each time, the class chants "SORT! THAT!
#    KID!" Run it for at least 3 students and yourself. To re-run instantly:
#    press the up-arrow in the terminal, or just run the file again.

print()
print("~~~~~  THE SORTING HAT 3000 IS AWAKE  ~~~~~")

lucky = int(input("Student's lucky number (1-100): "))

if lucky >= 76:
    print("The hat says: TEAM FLAMING WAFFLE. Wear it proudly.")
elif lucky >= 51:
    print("The hat says: TEAM NINJA LIBRARIAN. Shhh. But dangerous.")
elif lucky >= 26:
    print("The hat says: TEAM DISCO ROBOT. Beep boop, but funky.")
else:
    print("The hat says: TEAM SCREAMING GOAT. The loudest team.")

print("The hat's decision is final. The hat does not do refunds.")

# ⭐ ASK THE CLASS: someone says 51 — which team? Someone says 50? They're
#    ONE apart and land on different teams. Boundaries decide everything.
#    (Where do the class's OWN team names and boundaries go? Next file —
#    they're about to rebuild this hat from scratch.)
