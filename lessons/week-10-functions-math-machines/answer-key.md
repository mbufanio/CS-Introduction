# Week 10 — Answer Key (teacher only)

## `2-fill-in-the-blank.py` — completed code

```python
# TASK 1 — doubling means times 2
def double(x):
    return x * 2

# TASK 2 — call the machine by name; second line is a stealth composition
print(double(4))            # → 8
print(double(double(4)))    # → 16 (inner 8, then doubled again)

# TASK 3 — live-typed; the class supplies the keyword: return
#   def half(x):
#       return x / 2
#   print(half(10))          # → 5.0
# If someone says print instead — type it! print(half(10)) still shows 5.0
# (the machine printed on its way through), but print(half(10) + 1) crashes:
#   TypeError: unsupported operand type(s) for +: 'NoneType' and 'int'
# Translation: a machine with no return hands back NOTHING (Python calls it
# None), and you can't add 1 to nothing. Switch to return; watch it fly.

# TASK 4 — any name works if BOTH blanks match; e.g.:
def cheer(name):
    print("GO", name, "GO! You are a CODE MACHINE!")

cheer("Ada")
cheer("Leo")

# TASK 5 — the second slot: height, in both places
def rectangle_area(width, height):
    return width * height

print("6 x 7 room:", rectangle_area(6, 7))     # → 42

# TASK 6 — any expression using x; e.g.:
def class_machine(x):
    return x * 10 + 1

print("class_machine(5) =", class_machine(5))      # → 51
print("class_machine(10) =", class_machine(10))    # → 101

# TASK 7 — any one-slot machine from today, e.g.:
for n in range(1, 6):
    print(n, "-->", double(n))      # → 2, 4, 6, 8, 10
```

## `3-predict-the-output.py` — answers

| Round | Answer | Why |
|-------|--------|-----|
| 1 | **A** — `8` | `double(4)` drops 4 in the slot; `return 4 * 2` hands back 8; `print` catches it. C is the trap for kids who think the *code* comes out of the chute instead of the *answer*. |
| 2 | **B** — `12` | Inside out: `double(3)` → 6, then `double(6)` → 12. Exactly f(f(3)) from math. |
| 3 | **A** — `12` then `12` | Arguments fill slots in order, but multiplication doesn't care: 3×4 = 4×3. A false sense of security, on purpose... |
| 4 | **B** — `7` then `-7` | ...because subtraction DOES care. `gap(2, 9)` puts 2 in `a`, 9 in `b`: 2 − 9 = −7. Order of arguments = which variable is which. |
| 5 | **B** — nothing at all | The sneaky classic. `mystery(5)` computes 105 and `return` hands it back — but no `print`, no variable, nobody catches it. Not an error; just silence. (The narration line after the reveal is the file talking, not the round.) |
| Final | **A** — `3 6 9` | The loop calls the machine three times with i = 1, 2, 3. B catches kids who think a machine gives the same output every time regardless of input. |

## Handout answers

**1 · Be the machine**

| x | `triple(x)` | | x | `machine(x)` |
|---|---|---|---|---|
| 1 | 3 | | 2 | 3 |
| 2 | 6 | | 3 | 8 |
| 5 | 15 | | 4 | 15 |
| 10 | 30 | | 10 | 99 |

(`machine` is x² − 1. A kid who notices `triple(5)` = `machine(4)` = 15 gets a high-five.)

**2 · Match the call to its output**

- `print(double(6))` → `12`
- `print(gap(9, 4))` → `5`
- `print(gap(4, 9))` → `-5`
- `print(double(double(2)))` → `8`
- Left over: `24` (bait for anyone who read `double(double(2))` as 2 × 2 ×... × something)

**3 · Build a machine on paper**

```python
def add_ten(x):
    return x + 10
```

Accept any parameter name as long as it's used consistently. The four things
to check: `def` + colon, indented body, `return` (not `print`), and the
parameter actually appearing in the expression.

## Brain teaser

1. `double(add_three(2))` = **10** (inside out: 2 + 3 = 5, then 5 × 2)
2. `add_three(double(2))` = **7** (2 × 2 = 4, then 4 + 3)
3. **NO** — composition order matters. f(g(x)) ≠ g(f(x)) in general.

The socks-and-shoes connection: socks-then-shoes and shoes-then-socks both
"compose" the same two operations, with very different results. Same idea,
fewer tears. If a kid asks whether the order EVER doesn't matter — great
question: try `double` with `triple` (×2 then ×3 vs ×3 then ×2 — both 6x).
Multiplication machines commute; mixed add/multiply machines don't.
