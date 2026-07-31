# ==============================================================================
#
#   WEEK 10 · CHALLENGE  —  for fast classes, curious kids, or a big finish
#
#   Three machines-with-a-twist. Run the whole file, or run a section at a
#   time (highlight + Shift+Enter).
#   Note: the LAST section is a week-11 sneak peek that asks permission in
#   the terminal before opening a graphics window. Type YES for the show,
#   or anything else to skip it and end cleanly.
#
# ==============================================================================


# ------------------------------------------------------------------------------
# CHALLENGE 1 · THE ROUND-TRIP MACHINES — temperature converters
# ------------------------------------------------------------------------------
# Two real formulas from science class, machined:
#
#     C = (F - 32) x 5/9          F = C x 9/5 + 32
#
# ⭐ ASK THE CLASS: water boils at 212°F. What should f_to_c(212) print?

def f_to_c(f):
    return (f - 32) * 5 / 9

def c_to_f(c):
    return c * 9 / 5 + 32

print("212F in Celsius:", f_to_c(212))
print("100C in Fahrenheit:", c_to_f(100))
print("Body temp 98.6F:", f_to_c(98.6))

# Now the beautiful part — feed one machine INTO the other.
# ⭐ ASK: c_to_f(f_to_c(212)) ... converts to Celsius, then straight back.
#    What comes out? (212.0 — the machines UNDO each other. Math calls
#    these inverse functions. Last week's encode/decode were inverses too!)

print("round trip:", c_to_f(f_to_c(212)))
print()


# ------------------------------------------------------------------------------
# CHALLENGE 2 · GUESS MY RULE — reverse-engineer the mystery machine
# ------------------------------------------------------------------------------
# ⭐ TEACHER: the machine's secret rule is on the def line right below —
#    SCROLL SO THE CLASS ONLY SEES THE OUTPUT, or stand in front of it
#    (the time-honored technique). Run the section; the class sees only
#    the input/output table and must deduce the rule. Math class plays
#    guess-my-rule with tables all the time — now the table fights back.

def secret_machine(n):
    return n * n            # ← the secret. Do not read aloud. Act natural.

print("THE MYSTERY MACHINE — inputs and outputs:")
for n in range(1, 7):
    print("   in:", n, "  out:", secret_machine(n))

# ⭐ Collect guesses. Test them: "if your rule is right, what's in: 10?"
#    Then run this line to settle it:

print("   in: 10   out:", secret_machine(10))

# (Rule: out = n x n. Squaring. A kid who says 'times itself' is right;
#  a kid who says 'n squared' gets the vocabulary high-five.)
print()


# ------------------------------------------------------------------------------
# CHALLENGE 3 · SNEAK PEEK OF WEEK 11 — machines that DRAW
# ------------------------------------------------------------------------------
# ⚠ CLEARLY-LABELED SNEAK PEEK: turtle graphics arrive properly next week.
#   Today, one taste: a function called square(size) that DRAWS.
#
#   This section OPENS A GRAPHICS WINDOW (it may appear behind VS Code —
#   check the taskbar). Close the window when done; the program ends with
#   turtle.done() so it won't vanish early.
#
# ⭐ ASK THE CLASS: one machine, three calls, three different sizes.
#    If square(80) draws a square 80 steps wide... what will the three
#    calls below draw? (Three nested squares. Same machine. Zero retyping.)

answer = input("Open the graphics window for the week-11 sneak peek? Type YES: ")

if answer.upper() == "YES":
    import turtle                       # the drawing module — star of week 11

    turtle.speed(3)                     # slow enough to watch it think

    def square(size):
        for side in range(4):           # a square is 4 sides...
            turtle.forward(size)        # walk one side...
            turtle.right(90)            # ...turn the corner. That's IT.

    square(60)                          # one machine...
    square(100)                         # ...three buttons pressed...
    square(140)                         # ...three squares. NEVER retyped.

    print("Three squares from ONE def. See you next week, turtle.")
    turtle.done()                       # keeps the window open until closed
else:
    print("Sneak peek skipped — the turtle waits patiently for week 11.")
