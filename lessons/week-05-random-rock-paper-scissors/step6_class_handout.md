# Week 5 — Random Numbers & Rock-Paper-Scissors

**Name: ______________________ Date: __________**

> `randi` rolls the dice. The **mapping** gives the numbers meaning. Every outcome gets an **equal chance**.

## Today's words

| Word | What it means |
|------|---------------|
| **`randi([a b])`** | a whole number from a to b — **both ends included** |
| **`randi(n)`** | shortcut for `randi([1 n])` — a number from 1 up to n |
| **mapping** | the if/elseif chain that gives each number a meaning (1 means rock…) |
| **`strcmp(a, b)`** | the word-matcher — "same word?" → 1 (yes) or 0 (no) |
| **equally likely / fair** | every outcome has the same chance — no player has an edge |

## 1 · Prove the game is fair 🪨📄✂️

Fill every box with **W** (class wins), **L** (class loses), or **T** (tie).
Remember: rock smashes scissors · paper wraps rock · scissors cut paper.

| CLASS throws ↓ · COMPUTER throws → | rock | paper | scissors |
|---|---|---|---|
| **rock** | | | |
| **paper** | | | |
| **scissors** | | | |

Count your letters: W: ____ L: ____ T: ____ → Is the game fair? **YES / NO**

## 2 · Which spinner is fair? 🎡

Three computer "spinners" — each rolls a die, then maps the number to a color or
word. **Circle the fair one** (all outcomes equally likely):

```
A)  r = randi(3)     1 means red    2 means red    3 means blue
B)  r = randi(3)     1 means red    2 means blue   3 means green
C)  r = randi(4)     1 means win    2 means win    3 means win    4 means lose
```

In spinner A, the chance of red is ____ out of ____.
In spinner C, the chance of lose is ____ out of ____.

## 3 · What's possible? 🎲

Circle **every** number that `randi([3 7])` could give:

> 0 1 2 3 4 5 6 7 8 9

---

## 🧠 Brain teaser (optional — take it home)

A sneaky computer plays rock-paper-scissors, but it picks its throw with this
rigged mapping:

```
r = randi(3)     1 means rock    2 means rock    3 means paper
```

You get to pick ONE throw and stick with it. **Which throw gives you the best
chance — and what is your chance of winning? Can you ever lose?** (Hint: list
the 3 things the computer might do and what happens to your throw in each.)
Bring your answer next week for a shout-out.
