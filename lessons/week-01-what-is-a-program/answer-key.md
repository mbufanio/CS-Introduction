# Week 1 — Answer Key (teacher only)

## `2-fill-in-the-blank.py` — completed code

```python
# TASK 1 — the command is print
print("Good morning! I am your teacher's computer.")

# TASK 2 — strings always wear quotes
print("We speak Python now.")

# TASK 3 — any school-appropriate string the class picks, e.g.:
print("Room 204 is the best class in the school!")

# TASK 4 — joke in the right order: setup, punchline, explanation
print("Why did the program get thrown out of school?")
print("Because it had too many bugs!")
print("...get it? Bugs? That's what we call code mistakes!")

# TASK 5 — keep the no-quotes version; the quoted one is just a string
print(100 + 250)          # → 350

# TASK 6 — any sabotage works; typical picks and their errors:
#   Print("...")   → NameError: name 'Print' is not defined
#   print("...     → SyntaxError: unterminated string literal
#   print "..."    → SyntaxError: Missing parentheses in call to 'print'
print("You survived week 1. The computer is proud of you. Probably.")
```

## `3-predict-the-output.py` — answers

| Round | Answer | Why |
|-------|--------|-----|
| 1 | **A** — `Hello, class!` | `print` shows what's *inside* the quotes; the quotes themselves are packaging, not content. |
| 2 | **B** — banana, then apple | Top to bottom, always. The computer doesn't alphabetize, tidy, or improve anything. |
| 3 | **B** — `10` | No quotes → it's math → Python calculates. |
| 4 | **A** — `5 + 5` | Quotes → it's a string → Python repeats it without thinking. (C is a trap: strings can *contain* anything, including math symbols.) |
| 5 | **B** — only `I am second!` | The `#` makes line 1 a comment; the computer skips it entirely. |
| Final | **A** — 4 lines, and 14 appears | Line 2 has no quotes (math → `14`); line 4 has quotes (string → `10 + 4`). |

*(A kid may ask about `print("=" * 40)` at the end of the file — it prints `=` forty
times. String repetition gets covered properly in week 8; for now: "Python can
multiply text. Told you it was cool.")*

## Handout answers

**1 · Be the computer**

```
Welcome!
7
3 + 4
```

(Line 2 is math — no quotes. Line 3 is a string — quotes.)

**2 · Spot the bug**

1. Capital `P` in `Print` — Python commands are lowercase
2. Missing closing quote after `hello`
3. No quotes around `hello there`

**3 · True or false?**

- Rearranges instructions → **F** (it follows them in order, exactly)
- Same output → **F** (`4` vs `2 + 2`)
- Error = where it got stuck → **T**

**Brain teaser:** no single right answer. Praise: numbered steps, exact lengths and
directions, "move without drawing" steps. Next week, connect it: *"You wrote a program.
Your family member was the computer."*
