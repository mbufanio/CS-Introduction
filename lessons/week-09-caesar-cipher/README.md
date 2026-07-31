# Week 9 — 🎉 THE CAESAR CIPHER

> **Unit 4: Strings & Secrets** · The payoff lesson — week 8's parts assemble into a 2,000-year-old spy tool

## Objectives

By the end of class, students can:

1. Encode a letter by hand with a shift, including **wrapping** past Z back to A
2. Explain the wraparound with **clock math**: the alphabet is a 26-hour clock, and `% 26` is what makes it tick
3. Trace the three-step formula: letter → position (`ord`) → slide (`+ shift`, `% 26`) → letter (`chr`)
4. Explain decoding as shifting *forward* by `26 - shift` (going the long way around the clock)
5. Explain **brute force** — trying all 25 shifts — and why a human spots the answer instantly

## Vocabulary

| Word | Kid-friendly definition |
|------|------------------------|
| **cipher** | a rule for scrambling a message so outsiders can't read it |
| **encode / decode** | scramble a message / unscramble it back |
| **shift (the key)** | how far each letter slides down the alphabet — the secret both spies must know |
| **wraparound** | falling off the end at Z and reappearing at A — like a clock passing 12 |
| **`% 26`** | the remainder operator doing clock math: it wraps any number back onto 0–25 |
| **brute force** | cracking a code by trying every possible key |

## Math tie-in

**Modular arithmetic IS clock arithmetic — and week 2's `%` finally pays off.** Kids
already do mod math daily without the name: 10 o'clock + 4 hours is 2 o'clock, because
time lives on a 12-hour wheel. The alphabet is a 26-hour wheel, so
`new_position = (position + shift) % 26` — the whole cipher is one remainder. Decoding
adds the *complement*: instead of subtracting the shift (and risking negative numbers),
go forward by `26 − shift` and let the clock carry you home — the same "going the long
way around" reasoning as clock problems. The demo puts the 12-hour clock and the
26-letter clock side by side on screen, and the fill-in file drills the `% 26`
arithmetic bare, before it hides inside the code.

## Before class

- [ ] **Board prep (do this first!):** write the mystery ciphertext big, before students arrive: `WKH ILUVW UXOH RI FRGH FOXE`
- [ ] Print `handout.md` (one per student — it has the cipher strip they decode with), have `answer-key.md` open or printed for you
- [ ] Open this folder in VS Code, zoom fonts for the smartboard (see `TEACHER-GUIDE.md`)
- [ ] Test-run `1-demo.py` once — make sure the brute-force finale scrolls readably at smartboard font size

## Lesson plan — 45 minutes

### 0:00–0:02 · Last time

Point at the mystery on the board but don't touch it yet. Recap week 8 in one breath:
*"Positions start at 0, `ord()` strips a letter down to its secret number, `chr()`
dresses it back up, and a loop can walk a string letter by letter building a new one."*
Shout-outs for brain-teaser decoders — they'll recognize today immediately.

### 0:02–0:07 · Hook: the mystery on the board

*"That gibberish is a real message. It is 2,000 years old — well, the trick is. By the
end of class, this computer will crack it in one second. And you'll understand every
line of the code that does it."* Take theories about what the trick might be (someone
may notice the three-letter word `WKH` appears where THE would fit — celebrate that,
it's real codebreaking). Then the story: Julius Caesar sent battle orders scrambled by
sliding every letter 3 places down the alphabet. It worked for decades — most enemies
couldn't read at all, let alone decrypt.

### 0:07–0:24 · Demo: `1-demo.py`

Walk the file section by section (`Shift+Enter`). This demo is the longest of the unit
— the fill-in file is short to compensate. Beats to hit:

- Shift A→D, B→E by hand… then ⭐ **THE Z PROBLEM**: Z + 3 = ? There's nothing after Z.
  Collect ideas — someone always says "go back to the start." YES:
- **Clock math on screen**: `(10 + 4) % 12` → 2, then `(25 + 3) % 26` → 2. Same move,
  different wheel. This is the aha of the day — don't rush it
- The three-step formula on one letter: `ord` → slide with `% 26` → `chr`. Z becomes C
- The full encoder loop, assembled from week 8's parts (accumulator + `for letter in`
  + an `if` that lets spaces through). Swap in a class-invented message and re-run
- Decoding = shifting forward by `26 - shift` — the long way around the clock
- **The finale**: brute force. All 25 shifts hammer the board's mystery; the class
  scans the wall of gibberish and SPOTS the real sentence. Land the line: *"the
  computer can't tell which row is English — but 25 human brains can, instantly"*

### 0:24–0:31 · Class writes code: `2-fill-in-the-blank.py`

Clock-math warm-ups bare, then the class rebuilds a one-letter machine and a full
encoder by filling the key numbers and letters. You type, they shout, run every task.
Completed code is in `answer-key.md`.

### 0:31–0:38 · Voting game: `3-predict-the-output.py`

Six rounds of pure cipher arithmetic: `% 26` warm-ups, `ord` subtraction, the Z
wraparound, a sneaky Y+3 trap, and a full two-character encode. Vote A/B/C, press
Enter, winners explain.

### 0:38–0:43 · Handout

The handout has a printed cipher strip (A–Z with positions 0–25). Kids encode PDWK—
sorry, MATH — by hand, decode a short word, and grind a `% 26` column. Point out the
brain teaser: a take-home ciphertext with a riddle for the key.

### 0:43–0:45 · Wrap-up

*"One formula: position plus shift, mod 26. The `%` you met in week 2 turned out to be
a spy tool."* Tease week 10: *"Next week we teach the computer NEW COMMANDS — we'll
invent our own, name them, and reuse them forever. Math class calls them f(x). You'll
call them yours."*

## If you have extra time

Open `4-challenge.py`: ROT13, the shift that encodes and decodes with the SAME
operation (ask the class why 13 is special before revealing); an upgraded encoder that
lets punctuation sail through; and a rerunnable encrypt-your-name booth — one student
per run, spy names for everyone.

## Common pitfalls

- **Subtracting for decode goes negative.** If a kid proposes `position - shift`,
  honor it — it's right-minded — then hit them with A − 3. Negative letter? The
  demo's fix (add `26 - shift` instead) exists exactly for this. Going backwards 3
  = going forwards 23.
- **`ord(letter) + shift` without converting to 0–25 first.** The formula needs the
  *position* (`ord(letter) - ord("A")`), or `% 26` wraps to the wrong place. If it
  comes up, trace Z + 1 both ways and watch the wrong one produce `[`.
- **Kids want to encode lowercase/punctuation.** The encoder shouts everything with
  `.upper()` first and only shifts A–Z; spaces pass through via the `if`. Punctuation
  is the challenge file's upgrade — park requests there.
- **The brute-force wall scrolls too fast.** Scroll back up calmly — the terminal
  keeps everything. Let the class read rows aloud until someone yells. Do not point
  at row 3 yourself; the discovery is theirs.
- **"Is this how real secrets work now?"** Great question, 30-second rule: modern
  encryption still slides numbers around — just with numbers so huge that brute force
  would take longer than the universe. Caesar is the great-great-grandparent.
