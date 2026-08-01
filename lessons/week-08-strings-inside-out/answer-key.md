# Week 8 — Answer Key (teacher only)

## `2-fill-in-the-blank.py` — completed code

*(Examples below use the word "ROCKET" — your class's word will differ; the
answers that matter are the indexes and command names.)*

```python
# TASK 1 — any ALL-CAPS word, 5+ letters, in quotes
word = "ROCKET"
print("Today's word is:", word)

# TASK 2 — the first letter lives at index 0 (ruler rules)
print("First letter:", word[0])

# TASK 3 — -1 means "last letter", any word length
print("Last letter:", word[-1])

# TASK 4 — len counts the characters
print("Length:", len(word))          # → 6 ... and the last index is 5

# TASK 5 — stop BEFORE 3: indexes 0, 1, 2 = three letters
print("First three letters:", word[0:3])     # → ROC

# TASK 6 — loop over the word itself
for letter in word:
    print("-->", letter)

# TASK 7 — any quoted character, e.g.:
print("Secret number:", ord("R"))    # → 82   (a space gives 32!)
```

## `3-predict-the-output.py` — answers

| Round | Answer | Why |
|-------|--------|-----|
| 1 | **B** — `Y` | Indexes start at 0, so index 1 is the *second* letter. The day's signature trap. |
| 2 | **B** — `5` | `len` counts characters: h-e-l-l-o. Sneaky twist for discussion: the last letter `o` sits at index **4** — length 5, last index 4. |
| 3 | **A** — `COM` | The slice stops *before* index 3 — indexes 0, 1, 2. Same rule as `range(0, 3)`. |
| 4 | **A** — `hahaha` | `*` on a string repeats it. (Week 1's `"=" * 40` scoreboard line, finally explained!) |
| 5 | **B** — `B` | Inside out: `ord("A")` → 65, plus 1 → 66, `chr(66)` → B. C is the trap for kids who stop before the `chr`. |
| Final | **B** — `WHISPER` then `whisper` | `.upper()` hands back a NEW string — it does not change the original. `word` is still lowercase. Strings never change in place. |

## Handout answers

**1 · Address every letter**

```
P=0  Y=1  T=2  H=3  O=4  N=5
```

- `word[2]` = `T` · `word[-1]` = `N` · `len(word)` = `6` · `word[1:4]` = `YTH`
  (starts at 1, stops before 4)

**2 · X-ray the alphabet**

- `ord("C")` = 67 · `chr(72)` = `H` · `chr(ord("M") + 1)` = `N` (77 + 1 = 78)
- `ord("c")` = 99 (67 + 32)

**3 · Crack the number message**

`72 73 32 90 79 69` → **HI ZOE** (72=H, 73=I, 32=space, 90=Z, 79=O, 69=E)

## Brain teaser

The take-home message decodes to **YOU FOUND THE SECRET**
(89=Y 79=O 85=U · 70=F 79=O 85=U 78=N 68=D · 84=T 72=H 69=E ·
83=S 69=E 67=C 82=R 69=E 84=T).

For the write-your-own-name part there's no single answer — check a couple of
letters against the table. Praise anyone who used 32 for a space in a full name,
and anyone who noticed lowercase letters need the +32 numbers. Next week,
connect it: *"You hand-encoded a message. Caesar's cipher just adds one more
step — sliding each number before putting the costume back on."*
