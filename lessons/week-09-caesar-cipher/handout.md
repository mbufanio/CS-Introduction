# Week 9 — 🎉 The Caesar Cipher

**Name: ______________________ Date: __________**

> Encode: slide each letter **forward** by the shift. Fall off at Z? Wrap to A — the alphabet is a **26-hour clock**, and `% 26` makes it tick.

## Today's words

| Word | What it means |
|------|---------------|
| **cipher** | a rule for scrambling a message |
| **shift (the key)** | how far each letter slides — the secret |
| **wraparound / `% 26`** | past Z, reappear at A — remainder = clock math |
| **brute force** | crack a code by trying every possible key (all 25 of them) |

## Your cipher strip ✂️

| A | B | C | D | E | F | G | H | I | J | K | L | M |
|---|---|---|---|---|---|---|---|---|---|---|---|---|
| 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 10 | 11 | 12 |

| N | O | P | Q | R | S | T | U | V | W | X | Y | Z |
|---|---|---|---|---|---|---|---|---|---|---|---|---|
| 13 | 14 | 15 | 16 | 17 | 18 | 19 | 20 | 21 | 22 | 23 | 24 | 25 |

## 1 · Encode by hand 🔒 (shift 3, forward)

Slide each letter of **MATH** forward 3 places:

`M → ___   A → ___   T → ___   H → ___`

## 2 · Decode by hand 🔓 (shift 3, backward)

Someone sent you **G R J**. Slide each letter *back* 3 places:

`G → ___   R → ___   J → ___`  — the message is a: __________

## 3 · Clock math ⏰

Work these like the computer would:

- `(10 + 4) % 12` = ______
- `(25 + 3) % 26` = ______ → which letter is that? ______
- `(23 + 5) % 26` = ______
- `26 % 26` = ______
- Encoding used shift 8. The decode shift (forward!) is `26 − 8` = ______

---

## 🧠 Brain teaser (optional — take it home)

Crack this ciphertext with your strip:

**DTZ HWFHPJI YMJ HTIJ**

Hint: the key equals the number of letters in the word SHIFT. Too easy?
Then also try it the spy way: ignore the hint and brute-force it — but
notice the three-letter word ending in **J**... a lot of English sentences
have a three-letter word ending in E. Bring your solution (and your method!)
next week for a shout-out.
