# Week 6 — For Loops & Patterns

**Name: ______________________ Date: __________**

> `range` chant: **starts at 0 · jumps by step · stops BEFORE the wall.**

## Today's words

| Word | What it means |
|------|---------------|
| **`for` loop** | repeats a block a set number of times |
| **loop variable** | the lap counter (`i`) — changes every lap |
| **`range(start, stop, step)`** | deals numbers: from start, jumping by step, stopping *before* stop |
| **accumulator** | a snowball variable: `total = total + n` |
| **`"*" * i`** | i copies of the star, glued together |

## 1 · Match the sequence to its range 🔗

Draw a line from each sequence to the `range` that makes it. (One range is a
fake — it matches nothing!)

| Sequence | | `range` call |
|---|---|---|
| 0, 1, 2, 3, 4 | | `range(2, 11, 2)` |
| 2, 4, 6, 8, 10 | | `range(5)` |
| 5, 10, 15, 20 | | `range(10, 0, -1)` |
| 10, 9, 8, … 1 | | `range(1, 5)` |
| | | `range(5, 21, 5)` |

## 2 · Be the computer: trace the snowball 🤖

```python
total = 0
for n in range(1, 5):
    total = total + n
print(total)
```

Fill in the table, one lap per row, then the final line:

| lap | `n` | `total` after the lap |
|---|---|---|
| 1 | | |
| 2 | | |
| 3 | | |
| 4 | | |

The screen shows: ____________

## 3 · What prints? ⭐

```python
for i in range(1, 4):
    print("*" * i)
```

Draw the exact output: 

&nbsp;

---

## 🧠 Brain teaser (optional — take it home)

Gauss beat his teacher by pairing numbers: 1+100, 2+99, … = 50 pairs of 101 = **5050**.

**Use his trick — no computer, no calculator — to add 1 + 2 + 3 + … + 1000.**
How many pairs? What does each pair add up to? Then the showdown question:
which range would make a loop check your answer — `range(1000)` or
`range(1, 1001)` — and *why does the other one get it wrong?*
Bring your answer next week for a shout-out.
