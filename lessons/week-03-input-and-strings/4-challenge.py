# ==============================================================================
#
#   WEEK 3 · CHALLENGE  —  for fast classes, curious kids, or a big finish
#
#   Three showpieces built from today's tools: input(), f-strings, int().
#   Run the whole file, or run a section at a time (highlight + Shift+Enter).
#   All of these ask questions — kids shout, you type.
#
# ==============================================================================


# ------------------------------------------------------------------------------
# CHALLENGE 1 · MEGA MAD LIBS — the story does MATH
# ------------------------------------------------------------------------------
# The upgrade: a number input gets CRUNCHED inside the story. The braces of
# an f-string can hold a whole expression — Python evaluates it mid-sentence.
#
# ⭐ ASK THE CLASS before the reveal: if donuts is 3, what number will
#    {donuts * 365} become?

hero = input("Name someone in this room: ")
food = input("Give me a food (plural): ")
donuts = int(input("How many donuts could you eat in ONE day? "))

print()
print("========  BREAKING NEWS  ========")
print(f"Local legend {hero} claims to eat {donuts} donuts a day.")
print(f"That's {donuts * 7} donuts a week... {donuts * 365} donuts a year!")
print(f"Doctors recommend replacing at least {donuts * 364} of those with {food}.")
print(f"{hero} could not be reached for comment. (Mouth full.)")
print("=================================")
print()

# (Spot the trick on line 3: int(input(...)) converts the answer the moment
#  it arrives — two of today's tools stacked in one line. If a kid asks:
#  Python works from the INSIDE out, like nested parentheses in math.)


# ------------------------------------------------------------------------------
# CHALLENGE 2 · BRAINBOT 9000 — a "smart" chatbot that is 100% dumb
# ------------------------------------------------------------------------------
# This bot will feel eerily intelligent. It is not. It stores their words in
# boxes and mirrors them back in f-strings — that's the entire trick.
#
# ⭐ AFTER RUNNING: ask the class — did it understand ANYTHING? How does it
#    seem so smart? (It's a mirror. Fast-but-dumb, wearing a smart costume.)

print("BRAINBOT 9000 ONLINE. I know all. Ask me anything.")
print()

feeling = input("BRAINBOT asks: how are you feeling today, human? ")
print(f"BRAINBOT: Ah yes... {feeling}. I predicted you would say {feeling}.")

worry = input("BRAINBOT asks: what is your biggest worry this week? ")
print(f"BRAINBOT: Interesting. When humans say '{worry}', they usually mean it.")
print(f"BRAINBOT: My advice: do not think about {worry} during math tests.")

dream_job = input("BRAINBOT asks: what job do you want someday? ")
print(f"BRAINBOT: {dream_job}?! I have run the numbers. A {feeling} human")
print(f"BRAINBOT: who overcomes {worry} would make an EXCELLENT {dream_job}.")
print("BRAINBOT: My wisdom is complete. That will be $500.")
print()


# ------------------------------------------------------------------------------
# CHALLENGE 3 · SNEAK PEEK OF WEEK 5 — the computer gets dice 🎲
# ------------------------------------------------------------------------------
# Everything so far is predictable: same inputs, same story, every time.
# In two weeks the computer learns to SURPRISE US. Don't explain this —
# run it two or three times and let them notice the answers CHANGE.

import random

victim = input("One more name, for the Compliment Cannon: ")
compliment = random.choice(["a genius", "basically a superhero", "the future"])
lucky = random.randint(1, 100)

print(f"COMPLIMENT CANNON says: {victim} is {compliment}.")
print(f"Also, {victim}'s lucky number today is {lucky}.")
print()
print("Run it again — the cannon never fires the same way twice.")
print("How? Week 5. Bring dice-rolling energy.")
