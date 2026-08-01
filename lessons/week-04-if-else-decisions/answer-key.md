# Week 4 — Answer Key (teacher only)

## `2-fill-in-the-blank.py` — completed code

```python
# TASK 1 — any number; prediction is the point
print(15 > 9)                     # → True   (then try 3 → False)

# TASK 2 — any height; run both branches by changing it
height = 145                      # → WELCOME ABOARD
height = 131                      # → teacups (tallest teacup rider!)

# TASK 3 — typed live; "at least 13" includes 13, so the answer is >=
age = 13
if age >= 13:
    print("Leo is IN. The dance floor trembles.")
else:
    print("Leo waits outside. The DJ plays a sad song.")
# (with >  Leo is rejected at exactly 13 — riot, then fix)

# TASK 4 — any sensible boundaries, e.g. snow at -10, indoor recess at 0.
# NOTE the chain uses <= , so the COLDER rule must come first:
temperature = -3
if temperature <= -10:
    print("SNOW DAY! School is cancelled. The computer is also sledding.")
elif temperature <= 0:
    print("School's on, but recess is indoors. Bring a deck of cards.")
else:
    print("Normal day. The flag is not even frozen to the pole.")
# → with -3: indoor recess. Test EXACTLY -10 and exactly 0 too.

# TASK 5 — typed live; we're ASKING, so two equals:
password = "waffles"
guess = "pancakes"
print("Correct password?", guess == password)     # → False
# (with =  → SyntaxError: invalid syntax. Maybe you meant '==' or ':='
#  instead of '='? — Python suggests the fix. Read it aloud!)

# TASK 6 — any lucky number and any two school-appropriate team names:
lucky = 50
if lucky >= 50:
    print("The hat says:", "Team Velociraptor")
else:
    print("The hat says:", "Team Suspicious Muffin")
# Exactly 50 → Velociraptor: >= includes the boundary (closed circle!)
```

## `3-predict-the-output.py` — answers

| Round | Answer | Why |
|-------|--------|-----|
| 1 | **A** — `True` | A comparison is a question; Python answers with a boolean, spelled with a capital T. |
| 2 | **B** — only `done` | `5 > 100` is False, so the indented line is skipped. `print("done")` isn't indented — it doesn't belong to the if, so it always runs. |
| 3 | **A** — `Teenager!` | `>=` includes the boundary — the closed circle. 13 satisfies `age >= 13`. |
| 4 | **C** — only `You pass!` | The trap. A chain checks top-down and the FIRST True wins; `95 >= 50` is True, so the `elif` is never even read. Both conditions being true doesn't matter — order decides. |
| 5 | **B** — `False` | `==` ASKS "is x 10?" — it doesn't change the box. x holds 7, so the answer is False. |
| Final | **C** — SyntaxError | One `=` inside an `if` is assignment grammar in question territory — Python refuses to start the program and literally suggests `==`. *(The traceback on screen is simulated with prints so the game can finish — the error text is the real one.)* |

*(After round 4, ask: "how would we FIX the chain so 95 gets AMAZING?" — check
`>= 90` first. Same lesson as the Grade-O-Matic in the challenge file.)*

## Handout answers

**1 · Be the computer**

```
jacket
```

(Top-down: 12 >= 28? No. 12 >= 15? No. 12 >= 0? Yes — print and skip the rest.)

**2 · Closed or open circle?**

131 → **TEACUPS** · 132 → **RIDES** · 133 → **RIDES**

`>= 132` is a **CLOSED** circle. With `> 132`, the rider at exactly 132 would
**go to the teacups** (132 is not *more than* 132 — open circle excludes the boundary).

**3 · Spot the bug**

1. `=` should be `==` — one equals PUTS, two equals ASKS
2. Missing colon at the end of the `if` line
3. The print isn't indented — it doesn't belong to the if (Python actually
   refuses to run this one: `IndentationError: expected an indented block`)

## Brain teaser guidance

The hole: **exactly 50**. `50 > 50` is False and `50 < 50` is False — the hat
says *nothing at all* and the student vanishes into the void (no `else`, no
catch-all). Two classic fixes, both full glory:

1. Change one comparison to include the boundary: `if lucky >= 50:` (or `<= 50`)
2. Replace the `elif` with a plain `else:` — the safety net catches everything
   the if rejects

Praise anyone who *tested the boundary* to find the hole — that instinct
(check the edges!) is the actual lesson, and it's also how you check your work
on every inequality problem in math class.
