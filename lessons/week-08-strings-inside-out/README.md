# Week 8 — Text Inside-Out

> **Unit 4: Text & Secrets** · First lesson of the unit — everything here powers next week's cipher

## Objectives

By the end of class, students can:

1. Find any letter in a string by its **index** — MATLAB counts from **1**, like humans
2. Use `length()` and `word(end)`, and explain why length and last index are the *same* number
3. Read a **slice** like `word(2:4)` and explain that both ends are included — the same colon rule as week 6's loops
4. Explain that every character has a secret number (`double()`), and that `char()` goes backwards
5. Trace a loop that walks through a string letter by letter, building a new string as it goes

## Vocabulary

| Word | Kid-friendly definition |
|------|------------------------|
| **index** | a letter's position number in a string — the 1st letter is number 1 |
| **`end`** | inside the parentheses, the word that means "the last position" — `word(end)` is the last letter |
| **`length()`** | the command that counts how many characters a string has |
| **slice** | a piece cut out of a string, like `word(2:4)` — BOTH end numbers are included |
| **`double()`** | reveals a character's secret number (`double('A')` → 65) |
| **`char()`** | goes backwards — turns a secret number into its character (`char(66)` → B) |
| **accumulator** | a variable that starts empty and grows inside a loop (they met it with numbers in week 6 — today it grows a *string*) |

## Math tie-in

**The number line, starting at 1 — and inclusive intervals.** A string is a number
line with a letter parked at each position, and MATLAB numbers the positions the way
humans do: the 1st letter is number 1, so length and last position are the *same*
number — no off-by-one. Slices are *intervals* on that line: `word(2:4)` is the closed
interval [2, 4] — includes 2 AND 4 — the exact same convention as the loop range `2:4`
from week 6, so MATLAB's colon turns out to be ONE rule used everywhere: inclusive on
both ends. Then the day's showstopper: `double()` exposes the letter↔number lookup
table hiding inside every keyboard (A=65 … Z=90), and uppercase/lowercase differ by
exactly 32 — a constant-difference pattern the class can *discover* by subtracting.
All of it appears on screen in the demo.

## Before class

- [ ] Print `handout.pdf` (one per student — it has the mini ASCII table they'll need), have `answer-key.md` open or printed for you
- [ ] Open MATLAB, set the Current Folder to this lesson's folder, zoom fonts for the smartboard (see `TEACHER-GUIDE.md`), type `clc`
- [ ] Test-run `lesson_demo.m` once — each `%%` section has its own reveal
- [ ] Board prep for the hook: leave room to write MATLAB large, with space *under* each letter for a number

## Lesson plan — 45 minutes

### 0:00–0:02 · Last time

Two-minute recap of week 7: *"Last week a `while` loop kept our guessing game running
until you won — the loop repeated as long as its condition stayed `1`. And your
guesses kept cutting the number line in half. Today we put a whole WORD on the number
line."* If anyone tried the brain teaser, shout-outs now.

### 0:02–0:07 · Hook: every letter gets an address

Write **MATLAB** big on the board. Under it, number the letters, starting at **1**:

```
M  A  T  L  A  B
1  2  3  4  5  6
```

Ask: *"Which number is under the T?"* (3.) *"So if I ask MATLAB for letter number 3
of this word, what do I get?"* (T.) *"Correct. MATLAB counts like humans — the 1st
letter is number 1. You already know indexing. Class dismissed."* (Don't dismiss them.)

Then the one aside worth making: *"Fun fact — many other languages (Python, Java,
C...) start counting at ZERO: their 'letter 0' is our letter 1. If you ever meet one
of those languages, remember this day."* Then the teaser: *"Also — every letter you
have ever typed is secretly a number. Today we catch the alphabet undercover."*

### 0:07–0:22 · Demo: `lesson_demo.m`

Walk the file top to bottom on the smartboard, running section by section
(`Ctrl+Enter` — each section has its own payoff). Beats to hit:

- `word(1)` is `M`… so ⭐ what's `word(2)`? It's `A` — the second letter, exactly as
  a human would guess. Let them enjoy being right
- `word(end)` — the `end` keyword means "last position," any word length; `end - 1`
  works too (the number line runs backwards from `end`)
- `length(word)` is 6 and the last index is *also* 6 — length and last position
  MATCH, worth 30 seconds of gloating over the zero-counting languages
- Slicing `word(2:4)` includes BOTH ends — then the reveal that the loop range `2:4`
  obeys the same rule. One colon, one rule, everywhere
- A `for` loop walks the string via `word(i)` and prints the word vertically — watch
  `i` and `letter` tick in the Workspace
- **The big reveal:** `double('A')` → 65. Every character has a secret number — even
  the space bar (32), even the *character* `'0'` (48!). `char()` goes backwards
- The alphabet built from bare numbers — `for n = 65:90` with `fprintf('%s', char(n))`,
  then again with a string accumulator growing in the Workspace
- `upper()` / `lower()`, the trap that `upper(word)` doesn't change the stored
  variable, and the secret-number reason the cases are exactly 32 apart

### 0:22–0:30 · Class writes code: `fill_in_the_blank.m`

The class picks the word of the day, then indexes it, grabs its last letter with
`end`, measures it, slices it, loops over it, and x-rays it with `double()`. You
type, they shout, run after every task. Wrong answers get typed and debugged — as
always. Completed code is in `answer-key.md`.

### 0:30–0:37 · Voting game: `predict_the_output.m`

Six rounds, escalating: `word(2)` (the second letter — trust the count!), `length`
and the matching last address, an inclusive slice, `repmat('ha', 1, 3)`,
`char(double('A') + 1)`, and a sneaky `upper()` finale. Vote A/B/C, press Enter,
someone who got it right explains why.

### 0:37–0:43 · Handout

Kids index MATLAB by hand, use the printed mini ASCII table to encode and decode, and
crack a real numbers-only message. Point out the take-home brain teaser — it's a
full secret message in numbers, and next week's lesson is built on exactly this trick.

### 0:43–0:45 · Wrap-up

Say it plainly: *"The 1st letter is number 1. `end` means the last one. Slices and
loop ranges include both ends. And every character is secretly a number."* Then the
tease, word for word if you like: *"Next week those secret numbers let us write
unbreakable\* messages. (\*Very breakable. But very fun.) Julius Caesar will be
involved."*

## If you have extra time

Open `challenge.m`: a spell-your-name-in-secret-numbers converter (run it once per
volunteer), the mirror trick — `word(end:-1:1)` reverses any word, presented as
labeled magic — and a vertical name-banner maker built on `repmat`.

## Common pitfalls

- **Kids who've heard "programmers count from 0."** A sibling or YouTube may have
  planted it. Acknowledge it once (the hook's aside) and re-anchor: *in MATLAB* the
  1st letter is number 1 — and `word(0)` is an error you can happily demo (MATLAB
  refuses: index must be a positive integer).
- **`length` vs last index.** Easy today: they're the SAME number. Say it anyway —
  "a 6-letter word ends at address 6" — because next week's formula leans on counting
  positions confidently.
- **Slice doubts.** If anyone hesitates on `word(2:4)`, re-anchor to week 6: the
  colon made the loop numbers 2, 3, 4 — both ends included. Same colon, same rule.
- **`double()`/`char()` direction mix-ups.** Anchor: `double()` = "give me the
  number" (numbers in MATLAB are called doubles); `char()` = "give me the CHaRacter."
  The handout table shows both directions.
- **Someone asks "but WHY 65?"** Park it with the 30-second rule: decades ago
  engineers agreed on a big table (it's called ASCII) so computers could swap text.
  The number itself is arbitrary — the *agreement* is the point.
- **`upper()` "not working."** It hands back a new string; the variable only changes
  if you store it back (`word = upper(word)`). The Workspace pane proves it either way.
