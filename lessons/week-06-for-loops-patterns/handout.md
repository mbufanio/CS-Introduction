# Week 6 — For Loops & Patterns

**Name: ______________________ Date: __________**

> Colon chant: **first : difference : last — and the last one COUNTS.**

## Today's words

| Word | What it means |
|------|---------------|
| **`for` loop** | repeats a block a set number of times, closed by `end` |
| **loop variable** | the lap counter (`i`) — changes every lap |
| **colon sequence `start:step:stop`** | deals numbers: first term, jump size, last term — last one **included** |
| **accumulator** | a snowball variable: `total = total + n` |
| **`repmat('*', 1, n)`** | the repeater — n copies of the star, glued together |

## 1 · Match the sequence to its colon 🔗

Draw a line from each sequence to the colon expression that makes it. (One
expression is a fake — it makes NOTHING: an empty sequence!)

| Sequence | | colon expression |
|---|---|---|
| 1, 2, 3, 4, 5 | | `2:2:10` |
| 2, 4, 6, 8, 10 | | `1:5` |
| 5, 10, 15, 20 | | `10:-1:1` |
| 10, 9, 8, … 1 | | `5:1:1` |
| | | `5:5:20` |

## 2 · Be the computer: trace the snowball 🤖

```matlab
total = 0;
for n = 1:4
    total = total + n;
end
disp(total)
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

```matlab
for i = 1:3
    disp(repmat('*', 1, i))
end
```

Draw the exact output:

&nbsp;

---

## 🧠 Brain teaser (optional — take it home)

Gauss beat his teacher by pairing numbers: 1+100, 2+99, … = 50 pairs of 101 = **5050**.

**Use his trick — no computer, no calculator — to add 1 + 2 + 3 + … + 1000.**
How many pairs? What does each pair add up to? Then the showdown question:
which colon sequence would make a loop check your answer — `1:1000` or
`0:999` — and *why does the other one get it wrong?* (Both deal exactly 1000
numbers…) Bring your answer next week for a shout-out.
