# Week 8 — Strings Inside-Out

> **Unit 4: Strings & Secrets** · First lesson of the unit — everything here powers next week's cipher

## Objectives

By the end of class, students can:

1. Find any letter in a string by its **index** — and explain why counting starts at **0**
2. Use `len()` and negative indexes, and explain why the last index is `len - 1`
3. Read a **slice** like `word[0:3]` and explain end-exclusive — the same rule as `range()`
4. Explain that every character has a secret number (`ord()`), and that `chr()` goes backwards
5. Trace a loop that walks through a string letter by letter, building a new string as it goes

## Vocabulary

| Word | Kid-friendly definition |
|------|------------------------|
| **index** | a letter's position number in a string — counting starts at 0 |
| **`len()`** | the command that counts how many characters a string has |
| **slice** | a piece cut out of a string, like `word[0:3]` — the end number is NOT included |
| **`ord()`** | reveals a character's secret number (`ord("A")` → 65) |
| **`chr()`** | goes backwards — turns a secret number into its character (`chr(66)` → B) |
| **accumulator** | a variable that starts empty and grows inside a loop (they met it with numbers in week 6 — today it grows a *string*) |

## Math tie-in

**The number line, starting at 0 — and end-exclusive intervals.** A string is a number
line with a letter parked at each position, and just like a ruler, the first mark is 0,
not 1. Slices are *intervals* on that line: `word[2:5]` is the interval [2, 5) — includes
2, excludes 5 — the exact same convention as `range(2, 5)` from week 6, so the two big
"weird" rules of the course turn out to be ONE rule. Then the day's showstopper:
`ord()` exposes the letter↔number lookup table hiding inside every keyboard (A=65 …
Z=90), and uppercase/lowercase differ by exactly 32 — a constant-difference pattern the
class can *discover* by subtracting. All of it appears on screen in the demo.

## Before class

- [ ] Print `handout.md` (one per student — it has the mini ASCII table they'll need), have `answer-key.md` open or printed for you
- [ ] Open this folder in VS Code, zoom fonts for the smartboard (see `TEACHER-GUIDE.md`)
- [ ] Test-run `1-demo.py` once
- [ ] Board prep for the hook: leave room to write PYTHON large, with space *under* each letter for a number

## Lesson plan — 45 minutes

### 0:00–0:02 · Last time

Two-minute recap of week 7: *"Last week a `while` loop kept our guessing game running
until you won — the loop repeated as long as its condition stayed `True`. And your
guesses kept cutting the number line in half. Today we put a whole WORD on the number
line."* If anyone tried the brain teaser, shout-outs now.

### 0:02–0:07 · Hook: the ruler argument

Write **PYTHON** big on the board. Under it, number the letters — but start at **0**:

```
P  Y  T  H  O  N
0  1  2  3  4  5
```

Someone will object that P should be 1. Perfect — that's the fight you want. Hold up a
ruler (or draw one): *"Where does a ruler start? Zero. The number tells you how far you
are from the start — and P is zero steps from the start. Programmers count like rulers."*
Then the teaser: *"Also — every letter you have ever typed is secretly a number. Today
we catch the alphabet undercover."*

### 0:07–0:22 · Demo: `1-demo.py`

Walk the file top to bottom on the smartboard, running section by section
(`Shift+Enter` works well today — each section has its own payoff). Beats to hit:

- `word[0]` is `P`… so ⭐ what's `word[1]`? The classic shock: it's `Y`, not `P`
- `word[-1]` — negative numbers count from the back (the number line runs both ways)
- `len(word)` is 6 but the last index is 5 — *length vs. position*, worth 30 seconds
- Slicing `word[0:3]` stops BEFORE 3 — then the reveal that `range(0, 3)` obeys the
  same rule. One convention, two features
- A `for` loop walks the string letter by letter and prints the word vertically
- **The big reveal:** `ord("A")` → 65. Every character has a secret number — even the
  space bar (32), even the *character* `"0"` (48!). `chr()` goes backwards
- The alphabet built from bare numbers with a string accumulator — 3 lines
- `.upper()` / `.lower()`, and the secret-number reason they're exactly 32 apart

### 0:22–0:30 · Class writes code: `2-fill-in-the-blank.py`

The class picks the word of the day, then indexes it, measures it, slices it, loops
over it, and x-rays it with `ord()`. You type, they shout, run after every task. Wrong
answers get typed and debugged — as always. Completed code is in `answer-key.md`.

### 0:30–0:37 · Voting game: `3-predict-the-output.py`

Six rounds, escalating: the `word[1]` trap, `len` off-by-one, an end-exclusive slice,
`"ha" * 3`, `chr(ord("A") + 1)`, and a sneaky `.upper()` finale. Vote A/B/C, press
Enter, someone who got it right explains why.

### 0:37–0:43 · Handout

Kids index PYTHON by hand, use the printed mini ASCII table to encode and decode, and
crack a real numbers-only message. Point out the take-home brain teaser — it's a
full secret message in numbers, and next week's lesson is built on exactly this trick.

### 0:43–0:45 · Wrap-up

Say it plainly: *"Positions start at 0. Slices and `range` stop before the end number.
And every character is secretly a number."* Then the tease, word for word if you like:
*"Next week those secret numbers let us write unbreakable\* messages. (\*Very breakable.
But very fun.) Julius Caesar will be involved."*

## If you have extra time

Open `4-challenge.py`: a spell-your-name-in-secret-numbers converter (run it once per
volunteer), a name-reversing magic trick, the emoji surprise — `chr(128512)` proves the
secret numbers go WAY past the alphabet — and a vertical name-banner maker.

## Common pitfalls

- **Kids anchor on 1-counting.** Expect `word[1]` → "P" wrong answers all class. Don't
  rush it — return to the ruler every time: *"the index is how far from the start."*
- **`len` vs last index.** `len("PYTHON")` is 6, last index is 5. Say "length counts,
  index measures" and point at the board diagram; the handout drills it.
- **Slice confusion cuts both ways.** Some kids will now doubt `range()` too. Good!
  Re-anchor: both include the start, both exclude the end — one rule, always.
- **`ord()`/`chr()` direction mix-ups.** Anchor: **ord**inary letter goes in, number
  comes out; `chr()` = "give me the CHaRacter." The handout table shows both directions.
- **Someone asks "but WHY 65?"** Park it with the 30-second rule: decades ago engineers
  agreed on a big table (it's called ASCII) so computers could swap text. The number
  itself is arbitrary — the *agreement* is the point.
