# Week 6 — Answer Key (teacher only)

## `2-fill-in-the-blank.py` — completed code

```python
# TASK 1 — range(12) IS 12 laps (values 0–11, but twelve of them)
for i in range(12):
    print("CLAP 👏")

# TASK 2 — start at 1; the wall must be one PAST the last number we want
for number in range(1, 11):
    print(number)

# TASK 3 — odd to odd is a jump of 2
for n in range(1, 20, 2):
    print(n)

# TASK 4 — backward needs a negative step
for t in range(10, 0, -1):
    print(t, "...")
print("LUNCH TIME 🍕")

# TASK 5 — snowball starts empty (0); each lap rolls in n
total = 0
for n in range(1, 21):
    total = total + n
print("1 + 2 + ... + 20 =", total)          # → 210 (Gauss: 20 × 21 ÷ 2)

# TASK 6 — row already counts 1, 2, 3, ... — multiply the star by it
for row in range(1, 8):
    print("*" * row)

# TASK 7 — typed live; the class supplies the * operator
table = 7                     # or whatever the class picked
for i in range(1, 11):
    print(table, "x", i, "=", table * i)
```

Wrong answers worth typing anyway: Task 1 `13` → count the claps together, there
are 13 — then fix; Task 4 `1` or `2` → the loop prints *nothing* (range can't
climb from 10 up to 0), and zero output is itself a clue; Task 5 first blank `1`
→ total comes out 211, off by exactly one — debugging gold.

## `3-predict-the-output.py` — answers

| Round | Answer | Why |
|-------|--------|-----|
| 1 | **B** — 0 1 2 | `range(3)` starts at 0 and stops before 3. Three laps, but the *values* are 0, 1, 2. |
| 2 | **A** — 1 2 3 | The stop is a wall, not a step. To print 4 you'd need `range(1, 5)`. |
| 3 | **B** — 4 beeps | Values 2, 4, 6, 8 — then 10 hits the wall. Count laps, not the stop number. |
| 4 | **A** — just `6` | The `print` is *outside* the loop (not indented), so only the finished snowball shows: 1+2+3 = 6. |
| 5 | **A** — `***` | Multiplying text makes copies, glued: three stars, no spaces, no `*3`. |
| Final | **B** — 1, 3, 6 | Same code, but the `print` moved *inside* — a progress report every lap. Indentation decides WHEN, not just what. Scroll back to round 4 and compare. |

## Handout answers

**1 · Match the sequence**

- 0, 1, 2, 3, 4 → `range(5)`
- 2, 4, 6, 8, 10 → `range(2, 11, 2)`
- 5, 10, 15, 20 → `range(5, 21, 5)`
- 10, 9, 8, … 1 → `range(10, 0, -1)`
- The fake: **`range(1, 5)`** — that's 1, 2, 3, 4, which matches nothing listed.

**2 · Trace the snowball**

| lap | `n` | `total` after the lap |
|---|---|---|
| 1 | 1 | 1 |
| 2 | 2 | 3 |
| 3 | 3 | 6 |
| 4 | 4 | 10 |

The screen shows: **10** (one line only — the `print` is outside the loop).

**3 · What prints?**

```
*
**
***
```

(Three rows — the wall at 4 is excluded.)

## 🧠 Brain teaser guidance

1 + 2 + … + 1000: pair 1+1000, 2+999, … → **500 pairs of 1001 = 500500**.
The checking loop needs `range(1, 1001)` — `range(1000)` deals 0…999, which
*skips 1000 and sneaks in a useless 0*, landing on 499500 (off by exactly 1000 —
ask them why by exactly that much, it's a lovely follow-up). Shout-out anyone who
wrote both the pair count *and* the wall reasoning.
