# Week 5 — Random Numbers & Rock-Paper-Scissors

**Name: ______________________ Date: __________**

> `import random` borrows a **toolbox**. Its tools give every outcome an **equal chance**.

## Today's words

| Word | What it means |
|------|---------------|
| **`import`** | borrows a toolbox (module) of ready-made tools |
| **`random.randint(a, b)`** | a whole number from a to b — **both ends included** |
| **`random.choice([...])`** | picks ONE item from a collection in square brackets |
| **equally likely** | every outcome has the same chance |
| **fair** | no player (and no outcome) has an edge |

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

Three computer "spinners." **Circle the fair one** (all outcomes equally likely):

```python
A)  random.choice(["red", "red", "blue"])
B)  random.choice(["red", "blue", "green"])
C)  random.choice(["win", "win", "win", "lose"])
```

In spinner A, the chance of red is ____ out of ____.
In spinner C, the chance of lose is ____ out of ____.

## 3 · What's possible? 🎲

Circle **every** number that `random.randint(3, 7)` could give:

> 0 1 2 3 4 5 6 7 8 9

---

## 🧠 Brain teaser (optional — take it home)

A sneaky computer plays rock-paper-scissors, but it picks its throw with:

```python
random.choice(["rock", "rock", "paper"])
```

You get to pick ONE throw and stick with it. **Which throw gives you the best
chance — and what is your chance of winning? Can you ever lose?** (Hint: list
the 3 things the computer might do and what happens to your throw in each.)
Bring your answer next week for a shout-out.
