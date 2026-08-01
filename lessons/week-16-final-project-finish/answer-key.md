# Week 16 — Answer Key (teacher only)

## `2-fill-in-the-blank.py` — completed polish tasks

```python
import time

# TASK 1 — THE TITLE SCREEN (both blanks are strings; class supplies the words)
print("*" * 50)
print("        ESCAPE FROM ROOM 204")          # ← the class game's real title
print("           the director's cut")         # ← any subtitle with swagger
print("*" * 50)

# TASK 2 — THE PLAY-AGAIN LOOP: the input is .upper()-ed, so the loop
# keeps going only while the answer matches uppercase "Y"
again = "Y"
while again == "Y":
    print("(pretend one entire playthrough happens here)")
    again = input("Play again? (Y/N): ").upper()
print("Thanks for playing!")

# TASK 3 — THE GAMES-PLAYED COUNTER: counters start at 0, one play adds 1
games_played = 0
again = "Y"
while again == "Y":
    print("(one playthrough!)")
    games_played = games_played + 1
    again = input("Play again? (Y/N): ").upper()
print(f"Games played today: {games_played}")

# TASK 4 — THE SUSPENSE PAUSE: any number of seconds works; 1 is drama
time.sleep(1)

# TASK 5 — THE CREDITS ROLL: each blank is a string with real names from
# the design sheets, e.g.:
print("Room 1 designed by: Ada & Marcus")
print("Room 2 designed by: Priya & Zoe")
print("Room 3 designed by: Leo & Sam")
print("Room 4 designed by: Maya & Jordan")
print("Room 5 designed by: Elena & Chris")
print("Endings & secret room by: the back row, surprisingly")
```

Watch-outs worth typing wrong on purpose: a lowercase `"y"` in task 2 (the loop
ends instantly — *why?* `.upper()` already converted the answer, so only `"Y"`
matches) and starting the counter at `1` in task 3 (the report over-counts by one —
off-by-one errors are a programmer rite of passage).

## `3-predict-the-output.py` — answers

| Round | Answer | Why |
|-------|--------|-----|
| 1 (wk 1) | **B** — `9 + 10`, then `19` | Quotes = string, repeated as-is. No quotes = math, evaluated. The very first trap of the course, one last time. (And no, 21 was never an option.) |
| 2 (wk 2) | **C** — `6` | `%` gives the *remainder* of 2026 ÷ 10. Dividing by 10 always leaves the last digit — a nice party trick. |
| 3 (wk 6) | **B** — `2 3 4 5` | `range(2, 6)` starts at 2 and *excludes* the stop. Four numbers, none of them 6. |
| 4 (wk 8) | **B** — `YP` | Counting starts at 0: `word[1]` is `Y`, `word[0]` is `P`, and `+` glues strings in the order written. |
| 5 (wk 10) | **A** — `GRADUATION!!!` then `None` | `cheer` *prints* but never *returns*, so Python hands back `None` — and the second print dutifully displays it. The return-vs-print classic. |
| Final boss | **A** — `CDR` | `i` runs 0–4; the even values 0, 2, 4 pass the `% 2 == 0` test, picking `secret[0]`, `secret[2]`, `secret[4]` → `C`, `D`, `R`. Three weeks of the course in five lines. |

Before class: put the current year into the trophy banner's `____` (it's inside a
string — safe to edit), and re-pad the line so the border stays aligned at 50
characters.

## Handout answers

The certificate requires no key — the only correct answer is their name, and
they've earned every checkbox on the page (the hint says so).

**Final brain teaser:** no key, only guidance. If families report back, ask
students what "bug" happened at home and what "fix" they taught. The full-circle
payoff to name out loud: in week 1 *they* were the confused robot's programmer —
now they're the one explaining precision, order, and debugging to someone else.
That's the course, complete.
