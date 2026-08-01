# Week 9 — Answer Key (teacher only)

*(For reference: the board's mystery `WKH ILUVW UXOH RI FRGH FOXE` is
**THE FIRST RULE OF CODE CLUB**, shift 3.)*

## `2-fill-in-the-blank.py` — completed code

```python
# TASK 1 — a normal clock face has 12 hours
print("10 o'clock + 4 hours =", (10 + 4) % 12, "o'clock")     # → 2

# TASK 2 — positions are measured from the alphabet's start: "A"
print("Position of D:", ord("D") - ord("A"))                  # → 3

# TASK 3 — live-typed; the class supplies the operator: %
#   print("28 on the alphabet clock is:", 28 % 26)            # → 2
#   (28 // 26 → 1 is the number of full laps — fun, but wrong question)

# TASK 4 — clock size 26; "A" turns a position back into a capital
letter = "Y"
shift = 3
position = ord(letter) - ord("A")
new_position = (position + shift) % 26
new_letter = chr(new_position + ord("A"))
print(letter, "encodes to", new_letter)                       # → Y encodes to B

# TASK 5 — spaces (" ") sneak through; new_position gets the costume
message = "CODE CLUB AT NOON"
shift = 5
secret = ""
for letter in message.upper():
    if letter == " ":
        secret = secret + letter
    else:
        position = ord(letter) - ord("A")
        new_position = (position + shift) % 26
        secret = secret + chr(new_position + ord("A"))
print("Secret:", secret)                     # → HTIJ HQZG FY STTS

# TASK 6 — the complement of 5 on a 26-clock: 26 - 5 = 21
decode_shift = 21
original = ""
for letter in secret:
    if letter == " ":
        original = original + " "
    else:
        position = ord(letter) - ord("A")
        new_position = (position + decode_shift) % 26
        original = original + chr(new_position + ord("A"))
print("Decoded:", original)                  # → CODE CLUB AT NOON
```

## `3-predict-the-output.py` — answers

| Round | Answer | Why |
|-------|--------|-----|
| 1 | **B** — `2` | 25 + 3 = 28; 28 wraps on the 26-clock to 2 (one lap of 26, remainder 2). |
| 2 | **A** — `1` then `0` | 27 is one past a full lap → 1. 26 is *exactly* a full lap → 0. Landing exactly on 26 means landing on A's position. |
| 3 | **B** — `1` | 66 − 65. Subtracting `ord("A")` turns secret numbers into clock positions — B is 1 step from A. C is the trap for kids who forget the subtraction happens *between* two ords. |
| 4 | **A** — `A` | Z is position 25; 25 + 1 = 26; 26 % 26 = 0 → position 0 → A. Option C (`[`) is what you'd get *without* the `% 26`: chr(91). Worth saying out loud. |
| 5 | **A** — `B` | The sneaky one: Y(24) + 3 = 27 → 27 % 26 = 1 → B. Kids who slide on a ruler instead of a clock reach for `\` (chr(92), option B's bait). Y → Z → A → B. |
| Final | **A** — `B C` | The `if` lets the space through untouched; A→B and B→C shift normally. Option B (`BC`) catches anyone who thinks the space gets shifted or dropped. |

## Handout answers

**1 · Encode by hand (shift 3)**

`M → P   A → D   T → W   H → K` — MATH becomes **PDWK**

**2 · Decode by hand (shift 3 back)**

`G → D   R → O   J → G` — the message is a **DOG**

**3 · Clock math**

- `(10 + 4) % 12` = **2**
- `(25 + 3) % 26` = **2** → letter **C**
- `(23 + 5) % 26` = **2** (X + 5 also lands on C!)
- `26 % 26` = **0**
- decode shift for 8 = **18**

## Brain teaser

**DTZ HWFHPJI YMJ HTIJ** with shift 5 decodes to **YOU CRACKED THE CODE**
(D−5=Y, T−5=O, Z−5=U — the Z→U slide needs no wrap, but D→Y wraps backwards
past A: D(3) − 5 = −2 → 24 = Y. If a kid got stuck exactly there, that's the
negative-number trap from class — going back 5 is going forward 21).

Shout-out tiers: solved with the hint = spy. Solved by brute force = analyst.
Solved via the YMJ→THE word-shape trick = cryptographer. Anyone who noticed
that trick reinvented *frequency analysis*, the method that actually killed
the Caesar cipher — tell them so.
