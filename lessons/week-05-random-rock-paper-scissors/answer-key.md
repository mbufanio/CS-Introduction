# Week 5 — Answer Key (teacher only)

## `2-fill-in-the-blank.py` — completed code

```python
# TASK 1 — the toolbox with the dice in it
import random

print("Toolbox loaded. Let the chaos begin.")

# TASK 2 — both ends included, so 6 gives rolls of 1–6
roll = random.randint(1, 6)
print("The class die says:", roll)

# TASK 3 — both ends are 3 → only one possible outcome
print("Rigged roll:", random.randint(3, 3))
print("Rigged roll:", random.randint(3, 3))

# TASK 4 — any school-appropriate string WITH QUOTES, e.g.:
mood = random.choice(["happy", "chaotic", "sleepy"])
print("The computer is feeling:", mood)

# TASK 5 — the rule says 1 means heads
flip = random.randint(1, 2)
if flip == 1:
    print("HEADS!")
else:
    print("TAILS!")

# TASK 6 — typed live; the class supplies the double equals
computer = random.choice(["rock", "paper", "scissors"])
throw = input("Teacher types the class's throw (rock/paper/scissors): ")
print("Class threw   :", throw)
print("Computer threw:", computer)
if throw == computer:
    print("TIE! Great minds... and one of them isn't even a mind.")
else:
    print("Not a tie — who won? Check the grid on your handout!")
```

Common wrong answers worth typing anyway: Task 1 `dice` → `ModuleNotFoundError`
(no such toolbox); Task 4 a mood **without quotes** → `NameError` (Python thinks
it's a variable); Task 5 `heads` → `NameError` again — the coin lands on a *number*.

## `3-predict-the-output.py` — answers

| Round | Answer | Why |
|-------|--------|-----|
| 1 | **B** — 6 is possible | `randint(1, 6)` includes BOTH ends: 1 and 6 count, 0 and 7 never appear. |
| 2 | **B** — 5, 5, 5 forever | Both ends are 5, so 5 is the *only* possible value. Rigged, but legal. |
| 3 | **B** — yes, it can repeat | Each roll is fresh; the computer has no memory of the last one. (Doubles: 2 of the 4 equally likely pairs — 50%.) |
| 4 | **A** — scissors | `choice` prints exactly ONE item from the brackets. `lizard` isn't in there; all three at once isn't how choice works. |
| 5 | **B** — both, JACKPOT rarer | Only 9 and 10 pass `n > 8`: 2 chances out of 10, not 50/50. The number of *outputs* (2) isn't the number of *chances*. |
| Final | **B** — only "just a horse" | `randint(1, 3)` gives 1, 2, or 3 — never 4. The `if` is checking for a number that cannot exist. Random ≠ anything can happen: only what's in the range can happen. |

## Handout answers

**1 · Prove the game is fair** (from the class's point of view)

| CLASS ↓ · COMPUTER → | rock | paper | scissors |
|---|---|---|---|
| **rock** | T | L | W |
| **paper** | W | T | L |
| **scissors** | L | W | T |

W: **3** L: **3** T: **3** → Fair? **YES** — 9 equally likely outcomes, split 3-3-3;
nobody has an edge.

**2 · Which spinner is fair?**

- Fair spinner: **B** (three different items, 1/3 each)
- Spinner A: red is **2 out of 3**
- Spinner C: lose is **1 out of 4**

**3 · What's possible?**

Circle **3, 4, 5, 6, 7** — both ends included, nothing outside them.

## 🧠 Brain teaser guidance

Best throw: **paper**, and you can never lose. The computer's spinner gives
rock 2/3 of the time and paper 1/3. With paper: vs rock (2/3) you **win**;
vs paper (1/3) you **tie**; it never throws scissors, so you never lose.
Win chance: **2/3**. Praise any kid who lists all three cases — that's a
sample-space argument, the exact skill from today's grid. (Fun follow-up
question: why is rock the *worst* pick? Ties 2/3, loses 1/3, never wins.)
