# Week 3 — Answer Key (teacher only)

## `2-fill-in-the-blank.py` — completed code

```python
# TASK 1 — the asking command is input
place = input("Where is our field trip going? ")

# TASK 2 — any legal label the class picks (one word, no quotes), e.g.:
animals = input("Give me a PLURAL ANIMAL: ")

# TASK 3 — any prompt the class composes — it must wear quotes:
adjective = input("Give me an ADJECTIVE, the weirder the better: ")

# TASK 4 — the converter is int (input hands back a string!)
kids_text = input("How many kids fit on one bus? ")
kids = int(kids_text)

# TASK 5 — the two story blanks take any box; the natural pick is the
# animal box in both (running gags are comedy law):
print()
print("========  THE FIELD TRIP OF DOOM  ========")
print(f"Our class took a field trip to {place}.")
print(f"The brochure promised it would be {adjective}.")
print(f"The brochure did not mention the {animals}.")
print(f"There were {kids} kids on our bus — but with 2 buses,")
print(f"that's {kids * 2} kids for the {animals} to chase.")
print("Nobody has returned the permission slips since.")
print("==========================================")

# TASK 6 — anything the class dictates, e.g.:
print(f"The {animals} now run the gift shop at {place}.")
```

Common wrong answers worth typing anyway:

- Task 1: `print(...)` — runs, but shows the question and waits for NOTHING;
  the box gets Python's "nothing" value, and the story later reads "a field
  trip to None." Ask the class: did the computer ever actually *ask* us? Great chase.
- Task 3: a prompt without quotes → `NameError` (or `SyntaxError`) — strings wear quotes.
- Task 4: skipping `int` → the story runs but `{kids * 2}` prints `3030`-style
  gibberish (string repetition!) — let the class spot the nonsense number.
- Task 6: forgetting the `f` → braces print literally. Planned. Enjoy it.

## `3-predict-the-output.py` — answers

| Round | Answer | Why |
|-------|--------|-----|
| 1 | **A** — `Hello, Marcus!` | `input()` drops `Marcus` into the box; the f-string swaps `{name}` for the box's value. |
| 2 | **B** — `55` | `+` between two strings GLUES. `"5" + "5"` is text next to text — no math happened, and no error either. |
| 3 | **B** — `Hi, {name}! Welcome back!` | No `f` before the quote → the braces are just characters. Not an error — Python happily prints them unfilled. |
| 4 | **B** — `15` | `int("10")` converts text to the number 10 first, then real addition: 10 + 5. |
| 5 | **C** — `14` then `77` | Same `+`, two jobs: numbers add, strings glue. The quotes decide which world you're in. |
| Final | **C** — it crashes | `age` holds the STRING `"12"`. `"12" + 1` is glue-a-number-to-text → `TypeError: can only concatenate str (not "int") to str`. *(The traceback on screen is simulated with prints so the game can finish — the error text is the real one.)* |

## Handout answers

**1 · Be the computer**

```
A walrus ate my homework!
A {animal} ate my homework!
```

(Line 2 has no `f` — the braces never get filled.)

**2 · Adding or gluing?**

```
6        (numbers add)
33       (strings glue)
5        (int converts first, then adds)
haha     (strings glue — Python's first laugh)
```

**3 · Spot the bug**

The bug: `age` is a **string** (`"12"`), so `age + 1` tries to glue a number onto
text and crashes with a TypeError. Fixed line 2:

```python
print("Next year:", int(age) + 1)
```

(Also correct: converting on line 1 with `age = int(input("Age? "))` — praise
anyone who invents that; it's the pro move from the challenge file.)

## Brain teaser guidance

No single right answer. Praise: prompts that wear quotes, box names in braces,
a box reused twice (running gag!), and any math inside braces like `{number * 100}`.
Common gaps to gently fix when you type theirs in: a missing `f`, a number blank
that never gets `int()` (only matters if they do math with it), and box names with
spaces. **Keep the promise**: type the best one into VS Code next week and run it
with the author supplying the inputs. That 90 seconds buys you weeks of homework
enthusiasm.
