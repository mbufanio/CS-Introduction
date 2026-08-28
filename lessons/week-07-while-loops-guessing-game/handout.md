# Week 7 — While Loops & The Guessing Game

**Name: ______________________ Date: __________**

> A `while` loop repeats **until its condition fails**. No update line → it never stops!

## Today's words

| Word | What it means |
|------|---------------|
| **`while` loop** | repeats as long as its condition holds |
| **condition** | the yes/no check (1 or 0) before every lap |
| **update line** | the line inside that changes the variable — the escape route |
| **infinite loop** | a loop that never stops (escape hatch: **Ctrl+C**) |
| **binary search** | always guess the middle — half the suspects vanish each time |

## 1 · Be the computer: trace the loop 🤖

```matlab
n = 6;
while n > 0
    disp(n)
    n = n - 2;
end
disp('done')
```

| lap | what prints | `n` after the update |
|---|---|---|
| 1 | | |
| 2 | | |
| 3 | | |

Last line on the screen: ____________

Danger question: if the line `n = n - 2;` were deleted, what would happen?

_________________________________________________

## 2 · The halving chain ⛓️

Each higher/lower answer cuts the suspects in half (round down). Fill in the chain:

**100 → 50 → 25 → ____ → ____ → ____ → 1**

Count the numbers in the chain: ____ — that's why ____ guesses always win.
Check: 2⁷ = ____, which is bigger than 100. ✔

## 3 · Binary search on paper 🔎

A friend picks **11**, from 1 to 16. You always guess the **middle** of what's left
(round down). Finish the hunt — row 1 is done for you:

| numbers still possible | your guess | friend says |
|---|---|---|
| 1–16 | 8 | higher! |
| 9–16 | | |
| | | |
| | | correct! 🎉 |

---

## 🧠 Brain teaser (optional — take it home)

Seven guesses crack 1–100 because 2⁷ = 128 > 100.
**How many guesses would you need for 1 to 1,000? For 1 to 1,000,000?**
(Hint: keep doubling — 2, 4, 8, 16... — and count how many doublings pass each
target.) Then the mind-bender: going from 1,000 to 1,000,000 multiplies the
suspects by a THOUSAND — how many *extra* guesses did it cost? Bring your answer
next week for a shout-out.
