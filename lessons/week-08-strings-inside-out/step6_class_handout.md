# Week 8 — Text Inside-Out

**Name: ______________________ Date: __________**

> The 1st letter is number **1**. Slices include **both** ends. And every character is secretly a **number**.

## Today's words

| Word | What it means |
|------|---------------|
| **index** | a letter's position number — the 1st letter is number 1 |
| **`end`** | means "the last position" — `word(end)` is the last letter |
| **`length()`** | counts the characters in a string |
| **slice** | a cut-out piece, like `word(2:4)` — BOTH end numbers are included |
| **`double()` / `char()`** | `double('A')` → 65 reveals the secret number; `char(66)` → B goes backwards |

## Mini ASCII table (you'll need this!)

| A | B | C | D | E | F | G | H | I | J | K | L | M |
|---|---|---|---|---|---|---|---|---|---|---|---|---|
| 65 | 66 | 67 | 68 | 69 | 70 | 71 | 72 | 73 | 74 | 75 | 76 | 77 |

| N | O | P | Q | R | S | T | U | V | W | X | Y | Z |
|---|---|---|---|---|---|---|---|---|---|---|---|---|
| 78 | 79 | 80 | 81 | 82 | 83 | 84 | 85 | 86 | 87 | 88 | 89 | 90 |

*(space = 32)*

## 1 · Address every letter 📍

Write the index under each letter of MATLAB, then answer:

`M___  A___  T___  L___  A___  B___`

- `word(3)` = ______ · `word(end)` = ______ · `length(word)` = ______ · `word(2:4)` = ______

## 2 · X-ray the alphabet 🔍

Use the table (no computer needed — YOU are the computer):

- `double('C')` = ______ · `char(72)` = ______ · `char(double('M') + 1)` = ______
- Lowercase letters sit exactly 32 higher. So `double('c')` = ______

## 3 · Crack the number message 🕵️

Each number is one character (remember: 32 = space). Decode:

**72 · 73 · 32 · 90 · 79 · 69** → `___ ___ ___ ___ ___ ___`

---

## 🧠 Brain teaser (optional — take it home)

A secret message, in pure numbers. Decode it with your table:

**89 79 85 · 32 · 70 79 85 78 68 · 32 · 84 72 69 · 32 · 83 69 67 82 69 84**

Then write **your own name** as secret numbers and test it on someone at home.
Bring both next week for a shout-out — next week we build a 2,000-year-old
cipher on top of exactly this trick.
