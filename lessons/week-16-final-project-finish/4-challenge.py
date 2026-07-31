# ==============================================================================
#
#   WEEK 16 · CHALLENGE — "WHAT'S NEXT: THE SHOWCASE"
#
#   Three short demos of where this road goes — a chatbot, a real security
#   tool, and a fireworks finale. Each ends with a note on what teaches
#   more of it.
#
#   TEACHER: run this file top to bottom in class. Demos 1 and 2 run in the
#   terminal (you type the class's answers). Demo 3 OPENS A GRAPHICS WINDOW
#   — it's last on purpose, so the fireworks are the final image of the
#   course. Close the window (or Ctrl+C the terminal) when the applause dies.
#
# ==============================================================================

import random


# ------------------------------------------------------------------------------
# DEMO 1 · THE CHATBOT — "wait, is this how Siri works?" (basically. 1966 edition.)
# ------------------------------------------------------------------------------
# In 1966, a program called ELIZA pretended to be a therapist using almost
# exactly this trick: scan the sentence for keywords, reply with a canned
# line, and when in doubt say "tell me more." People poured their hearts
# out to it. It was an if/elif chain. You could have written it in week 4.
#
# ONE tiny parting-gift trick makes it shine — the word  in  asks whether
# one string hides inside another:   "HOME" in "HOMEWORK"  →  True
#
# ⭐ RUN IT LIVE: the class shouts messages, you type them. Type BYE to end.

print("=" * 50)
print("DOC v1.0 — the school counselor-bot. Type BYE to leave.")
print("=" * 50)

talking = True
while talking:                                     # while + boolean — weeks 4 + 7
    text = input("You: ").upper()                  # .upper() so 'bye' works too
    if text == "BYE":
        print("DOC: Farewell. My office hours are eternal.")
        talking = False
    elif "HOMEWORK" in text:
        print("DOC: Homework, you say. And how does that make you FEEL?")
    elif "GAME" in text or "PLAY" in text:
        print("DOC: Games are important research. Tell me your findings.")
    elif "TIRED" in text or "SLEEP" in text:
        print("DOC: Have you tried turning yourself off and on again?")
    elif "PYTHON" in text:
        print("DOC: I hear that course changed lives. Sixteen of the weeks, anyway.")
    elif "?" in text:
        print("DOC: An excellent question. What do YOU think?")
    else:
        print("DOC: Interesting. Tell me more.")

print()
# WANT MORE OF THIS? The field is called natural language processing.
# Step one is just... more elifs. Step two fills university departments.


# ------------------------------------------------------------------------------
# DEMO 2 · THE PASSWORD-STRENGTH CHECKER — a program you'll actually use
# ------------------------------------------------------------------------------
# Four tests, one score, a verdict. Every real "password strength" meter
# you've ever seen is a fancier version of this exact loop.
#
# ⭐ RUN IT LIVE: the class invents a PRETEND password (never a real one —
#    say why: never type real passwords where others can see!).

password = input("Invent a PRETEND password to test: ")

score = 0
if len(password) >= 8:                             # len — week 8
    score = score + 1
    print("  long enough (8+) ............ +1")
else:
    print("  too short — length is the #1 defense")

has_digit = False
has_upper = False
has_symbol = False
for letter in password:                            # loop over a string — week 8
    if letter in "0123456789":
        has_digit = True
    if letter in "ABCDEFGHIJKLMNOPQRSTUVWXYZ":
        has_upper = True
    if letter in "!@#$%&*?":
        has_symbol = True

if has_digit:
    score = score + 1
    print("  contains a digit ............ +1")
if has_upper:
    score = score + 1
    print("  contains a CAPITAL .......... +1")
if has_symbol:
    score = score + 1
    print("  contains a symbol ........... +1")

if score == 4:                                     # if/elif ladder — week 4
    print(f"Score {score}/4 — vault-grade. Museums wish they had this.")
elif score == 3:
    print(f"Score {score}/4 — solid. A determined ghost gives up.")
elif score == 2:
    print(f"Score {score}/4 — meh. A bored ghost gets in.")
else:
    print(f"Score {score}/4 — a golden retriever could guess this.")

print()
# WANT MORE OF THIS? The field is called cybersecurity, and it hires
# people who think exactly like week 9's code-breakers.


# ------------------------------------------------------------------------------
# DEMO 3 · FIREWORKS — the turtle's final bow    ⚠️ OPENS A GRAPHICS WINDOW
# ------------------------------------------------------------------------------
# Six starbursts at random spots in random colors — weeks 11 and 12, plus
# week 5's randomness, saying goodbye. Let it be the last thing on the
# smartboard.
#
# WANT MORE OF THIS? Computer graphics and game engines — every explosion
# in every game is a loop like this one, wearing a fancier costume.

import turtle

turtle.bgcolor("black")
turtle.speed(0)                                    # fastest — week 12
turtle.pensize(2)
turtle.hideturtle()

colors = ["red", "gold", "cyan", "magenta", "lime", "orange"]

for burst in range(6):
    turtle.penup()
    turtle.goto(random.randint(-250, 250), random.randint(-150, 150))
    turtle.pendown()
    turtle.color(colors[burst % 6])                # cycle colors — week 12's % trick
    for ray in range(36):                          # 36 rays × 10° = 360° — week 11!
        turtle.forward(60)
        turtle.backward(60)
        turtle.right(10)

turtle.penup()
turtle.goto(0, -220)
turtle.color("white")
turtle.write("THE END — CLASS DISMISSED", align="center", font=("Arial", 18, "bold"))

turtle.done()                                      # keeps the window open — always last
