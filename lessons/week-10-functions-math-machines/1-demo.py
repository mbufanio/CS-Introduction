# ==============================================================================
#
#   WEEK 10  ·  FUNCTIONS: MATH MACHINES
#
#   On the board: a box labeled f(x) = 2x + 1, with a funnel and a chute.
#   The class has fed that machine by hand all year in math.
#
#   Today the machine becomes REAL. We will build machines, name them,
#   press their buttons, and bolt them together.
#
#   Run this file section by section (highlight + Shift+Enter).
#
# ==============================================================================


# ------------------------------------------------------------------------------
# SECTION 1 · BUILDING A MACHINE — def
# ------------------------------------------------------------------------------
# def means: "computer, BUILD this machine and remember it."
#
#     def double(x):        ← name of the machine, and its input slot: x
#         return x * 2      ← what comes out of the chute
#
# ⭐ ASK THE CLASS: I'm about to run JUST the def. What will print?
#    (Take votes. Then run it. NOTHING prints. Building a machine
#     doesn't run it — same as drawing the box on the board computed
#     nothing. The machine just... exists now. Waiting.)

def double(x):
    return x * 2

# See? Silence. Now let's actually PRESS THE BUTTON.
# Calling the machine = writing its name with a value in the slot:

print(double(5))
print(double(100))
print(double(1000000))

# Built once. Used three times. It will never wear out.


# ------------------------------------------------------------------------------
# SECTION 2 · THE PUNCHLINE — this is math class
# ------------------------------------------------------------------------------
# Here is the EXACT machine from the board, f(x) = 2x + 1, in Python.
# We can even name it f. Python doesn't mind one-letter names.

def f(x):
    return 2 * x + 1

# ⭐ ASK THE CLASS: in MATH class, what is f(3)?  (2·3 + 1 = 7.)
#    Now watch the computer answer the same question, in the SAME notation:

print("f(3) =", f(3))

# Same letter. Same parentheses. Same answer.
# Math's f(x) is not LIKE a Python function. It IS one.
# You have been programming in math class all year. Surprise.


# ------------------------------------------------------------------------------
# SECTION 3 · THE INPUT/OUTPUT TABLE — weeks 6 and 10 shake hands
# ------------------------------------------------------------------------------
# The hook's table took the class a minute to fill by hand for x = 1, 2, 3.
# A week-6 loop feeds the machine every input and prints the whole table:
#
# ⭐ ASK THE CLASS: before running — what will the x = 10 row say? (21)

print("  x | f(x)")
print("----|-----")
for x in range(1, 11):
    print(" ", x, "|", f(x))

# One machine + one loop = any table, any size, zero boredom.
# ⭐ Change range(1, 11) to range(1, 101) and re-run if the class dares you.


# ------------------------------------------------------------------------------
# SECTION 4 · WHAT return REALLY DOES — it hands the answer BACK
# ------------------------------------------------------------------------------
# return doesn't print anything. It hands the answer back to WHOEVER CALLED,
# so the program can keep using it: store it, do more math, feed it onward.

answer = double(10)                 # the returned 20 lands in a variable
print("stored in a variable:", answer)
print("and we can keep going:", answer + 1)
print("or feed it to f:", f(double(10)))     # 20 goes straight into f → 41

# ⭐ ASK THE CLASS: what happens if we call double(50) and DON'T print or
#    store it? Watch closely...

double(50)

#    ...nothing appeared! The machine computed 100, held it out on the
#    chute, and nobody caught it. The 100 evaporated. return HANDS BACK;
#    someone still has to CATCH. (This becomes a voting round later. Shh.)


# ------------------------------------------------------------------------------
# SECTION 5 · TWO SLOTS — a formula becomes a machine
# ------------------------------------------------------------------------------
# Machines can have more than one input slot. Behold, a math formula
# the class knows cold — A = w × h — as a machine:

def rectangle_area(width, height):
    return width * height

# ⭐ ASK THE CLASS: rectangle_area(7, 3) = ?  (21. It's just the formula.)

print("7 x 3 rectangle:", rectangle_area(7, 3))
print("smartboard-ish? ", rectangle_area(160, 90))

# The arguments fill the slots IN ORDER: first value → width,
# second value → height. For multiplication the order doesn't change the
# answer... ⭐ ASK: can anyone think of a formula where order WOULD matter?
# (Subtraction! Division! Save this thought for the voting game.)


# ------------------------------------------------------------------------------
# SECTION 6 · INVENT A COMMAND — cheer()
# ------------------------------------------------------------------------------
# Python has no cheer() command. It does now. This machine PERFORMS
# instead of handing back a number — its insides are print()s.
# (double CALCULATES and returns; cheer PERFORMS. Machines can do either.)

def cheer(name):
    print("Gimme a", name.upper() + "!")
    print("   ", name, "is unstoppable! WOOO!")

# One machine, five students, five calls, one line each:
# ⭐ Swap in real names — volunteers only — and re-run.

cheer("Ada")
cheer("Marcus")
cheer("Priya")
cheer("Zoe")
cheer("Leo")

# ⭐ LIVE-EDIT MOMENT: now change ONE line inside cheer — make the second
#    line say something new (class writes the chant, keep it kind) — and
#    re-run this section. ALL FIVE cheers update instantly.
#    Fix the machine once, every call improves. Laziness is a programmer
#    virtue — we retyped the cipher three times last week. NEVER AGAIN.


# ------------------------------------------------------------------------------
# SECTION 7 · MACHINES BUILT OUT OF MACHINES
# ------------------------------------------------------------------------------
# A machine can press OTHER machines' buttons. triple_cheer doesn't know
# how to cheer — it just calls the machine that does. Three times.

def triple_cheer(name):
    for i in range(3):
        cheer(name)

# ⭐ ASK THE CLASS: how many lines will this print? (cheer prints 2 lines,
#    called 3 times... 6.)

triple_cheer("Ada")

# This is how big programs work: small machines, bolted together.
# Nobody writes 10,000 lines. They write 100 machines of 10 lines.


# ------------------------------------------------------------------------------
# SECTION 8 · GRAND FINALE — COMPOSITION, f(f(3)) for real
# ------------------------------------------------------------------------------
# Math class nests machines: f(g(x)), machine feeding machine.
# Python: identical. Work INSIDE OUT, like nested parentheses:
#
# ⭐ ASK THE CLASS: double(double(3)) — inner machine first!
#    double(3) → 6 ... then double(6) → ?

print("double(double(3)) =", double(double(3)))

# ⭐ Harder — for all the glory: f(double(f(1))) ?
#    inside out: f(1) → 3 ... double(3) → 6 ... f(6) → 13.

print("f(double(f(1))) =", f(double(f(1))))

print()
print("Machines built today: double, f, rectangle_area, cheer, triple_cheer.")
print("Next week the machines learn to DRAW. Bring your protractor instincts.")
