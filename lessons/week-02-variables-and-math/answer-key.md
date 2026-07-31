# Week 2 — Answer Key (teacher only)

## `2-fill-in-the-blank.py` — completed code

```python
# TASK 1 — whatever the headcount is (no quotes — it's a number)
students = 27

# TASK 2 — no quotes: look up the box, don't say the word
print("Humans in this room:", students)

# TASK 3 — class picks x; second blank is x so Python substitutes
x = 7
print("3 * x + 2 =", 3 * x + 2)          # → 23 (with x = 7)

# TASK 4 — the blank is score: take what's in the box, add 10, put it back
score = 50
score = score + 10
print("Class score is now:", score)      # → 60

# TASK 5 — typed live; class supplies // (each) and % (left over)
slices = 23
kids = 4
each = slices // kids                    # → 5
leftover = slices % kids                 # → 3
print("Slices each:", each)
print("Slices left over:", leftover)

# TASK 6 — any power the class picks
print(2 ** 64)                           # → 18446744073709551616

# TASK 7 — any never-created label, e.g.:
#   print(victory)  →  NameError: name 'victory' is not defined
# Fix: create the box first, then print works:
victory = 100
print(victory)
```

## `3-predict-the-output.py` — answers

| Round | Answer | Why |
|-------|--------|-----|
| 1 | **A** — `5` | No quotes → look up the box named `x` → it holds 5. |
| 2 | **B** — `x` | Quotes → it's a string → the computer says the word without looking anything up. *Quotes mean "say it"; no quotes mean "look it up."* |
| 3 | **B** — `14` | PEMDAS: multiply first (3 × 4 = 12), then add 2. Python never goes left-to-right when order of operations says otherwise. |
| 4 | **C** — `20` | Start 10, add 5 (→15), add 5 again (→20). Each line replaces the box's value. |
| 5 | **A** — `3` then `2` | `//` keeps the whole part of 17 ÷ 5; `%` keeps only the remainder. Pizza: 3 each, 2 left over. |
| Final | **A** — `8` | `b = a ** 3` runs when `a` is 2, so 8 goes in box `b`. Changing `a` afterward does NOT reach back into `b` — **a box stores a value, not a formula.** |

*(The final round is the day's deepest idea — if the class is split, draw two boxes on
the whiteboard and act out all four lines with sticky notes.)*

## Handout answers

**1 · Be the computer**

```
10
x
15
```

(Line 2 has quotes — say the word. Line 3 prints after reassignment: 10 + 5.)

**2 · PEMDAS drill**

```
14      (multiply first)
20      (parentheses overrule)
4       (10 - 6)
8       (2 × 2 × 2)
```

**3 · The pizza operators**

`23 // 4` → **5** each · `23 % 4` → **3** left over · check: 5 × 4 + 3 = **23** ✓

## Brain teaser guidance

The classic solution uses a third box:

```python
temp = a      # temp: 3   (copy a somewhere safe)
a = b         # a: 7
b = temp      # b: 3
```

Any working order with a spare box earns full glory. The most common miss is
`a = b` then `b = a` — both boxes end up holding 7, because the 3 was destroyed
in step 1. If someone brings that in, trace it with two drawn boxes and let *them*
spot the moment the 3 vanishes — then hand them the third-box hint. (A kid who
invents a different correct sequence, e.g. swapping via `b`, is also right.)
