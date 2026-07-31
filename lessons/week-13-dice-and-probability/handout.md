# Week 13 — Dice & Probability

**Name: ______________________ Date: __________**

> The simulation pattern: **loop the trials → `if` counts the hits →
> percent = count ÷ trials × 100.** More trials → closer to the theory.

## Today's words

| Word | What it means |
|------|---------------|
| **simulation** | using the computer to run an experiment thousands of times |
| **trial** | one run of the experiment — one roll, one flip |
| **experimental probability** | what actually happened: hits ÷ trials |
| **theoretical probability** | what math predicts: wanted ÷ possible outcomes |
| **law of large numbers** | bigger experiments crawl toward the theory |

## 1 · The 36-outcome grid 🎲🎲

Each cell = die A + die B. Fill in the blanks, then answer below.

| A ↓ B → | 1 | 2 | 3 | 4 | 5 | 6 |
|---------|---|---|---|---|---|---|
| **1** | 2 | 3 | 4 | 5 | __ | 7 |
| **2** | 3 | 4 | 5 | __ | 7 | 8 |
| **3** | 4 | 5 | __ | 7 | 8 | 9 |
| **4** | 5 | __ | 7 | 8 | 9 | 10 |
| **5** | __ | 7 | 8 | 9 | 10 | __ |
| **6** | 7 | 8 | 9 | 10 | __ | 12 |

Ways to make **7**: ____ of 36 · Ways to make **2**: ____ of 36 ·
Ways to make **10**: ____ of 36

## 2 · Be the computer 🤖

Follow the code exactly. (No randomness — one right answer!)

```python
count = 0
for n in range(2, 9):
    if n > 5:
        count = count + 1
print(count)
```

Which values of `n` does the loop visit? ______________________
What prints? ________

## 3 · Experimental or theoretical? 🔬

Write **E** or **T** next to each:

- ____ "I rolled a die 60 times and got 13 sixes — 21.7%."
- ____ "A die has 6 equal faces, so a six should come up 1/6 of the time."
- ____ "The computer flipped 10,000 coins; 50.3% were heads."

---

## 🧠 Brain teaser (optional — take it home, then BRING IT BACK)

Roll two real dice **30 times** tonight and tally the sums:

| sum | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 10 | 11 | 12 |
|-----|---|---|---|---|---|---|---|---|----|----|----|
| tally | | | | | | | | | | | |

Did 7 win? Did anything weird win instead? **Bring your tally next week** — we'll
combine the whole class's rolls and compare them to the computer's million.
