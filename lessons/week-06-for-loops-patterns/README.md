# Week 6 — For Loops & Patterns

> **Unit 3: Loops** · First loops lesson — the week 1 cliffhanger pays off

## Objectives

By the end of class, students can:

1. Read `for i in range(n):` as "repeat this block n times, counting laps in i"
2. Predict what `range` hands out — **starts at 0, excludes the stop**, and
   `range(start, stop, step)` walks any arithmetic sequence, even backward
3. Trace the **accumulator** (snowball) pattern: `total = total + n`
4. Use `"*" * i` to explain how loops build patterns row by row

## Vocabulary

| Word | Kid-friendly definition |
|------|------------------------|
| **loop** | Code the computer runs again and again |
| **`for` loop** | A loop that repeats a set number of times |
| **loop variable** | The lap counter (the `i`) — a real variable that changes each lap |
| **`range(start, stop, step)`** | The number-dealer: starts at start, jumps by step, **stops before** stop |
| **accumulator** | A snowball variable that grows each lap: `total = total + n` |

## Math tie-in

**Arithmetic sequences ARE `range`** — first term = start, common difference = step:
`range(5, 51, 5)` *is* the sequence 5, 10, 15, … The demo generates evens, count-by-5s,
and any times table the class shouts (sequences unit, meet automation). Then the
centerpiece: **Gauss's sum**. The class hears the story (pair 1+100, 2+99, … → 50 pairs
of 101 = 5050), the loop brute-forces `1+2+…+100` by sheer speed, and the formula
`n(n+1)/2` lands on the *same* 5050 on the same screen — a formula being *verified* by
10 million-times-dumber-but-faster arithmetic. That's the "check your answer two ways"
habit, industrialized.

## Before class

- [ ] Print `handout.md` (one per student), have `answer-key.md` open or printed for you
- [ ] Open this folder in VS Code, zoom fonts for the smartboard (see `TEACHER-GUIDE.md`)
- [ ] Test-run `1-demo.py` once (no typing needed — it runs straight through)
- [ ] Have the board ready for the number-line drawing (demo Section 2) and the
      Gauss pairing (hook)

## Lesson plan — 45 minutes

### 0:00–0:02 · Last time

Quick-fire recap of week 5: *"What line borrows the random toolbox?"* (`import
random`.) *"Can `randint(1, 6)` roll a 6?"* (Yes — both ends count.) *"And who won the
match?"* (Let them gloat or grumble.) Then the bridge: *"To play best-of-5 we
copy-pasted the same block FIVE times. Today that never happens again."*

### 0:02–0:07 · Hook: the 8-year-old who beat the teacher

Tell the Gauss story properly — it deserves drama. ~1787: a teacher wants quiet time
and orders the class to add every number from 1 to 100. Eight-year-old Carl Friedrich
Gauss walks up in *seconds* with the answer: **5050**. His trick, on the board:

```
1 + 100 = 101,  2 + 99 = 101,  3 + 98 = 101, ...
50 pairs × 101 = 5050
```

Let the class check a pair or two. Then the turn:

> *"Gauss needed genius. You get something better — a machine that doesn't even need
> the trick. Today you learn the three lines I teased in week 1, when the computer
> did 500 push-ups."*

### 0:07–0:22 · Demo: `1-demo.py`

Walk the file top-to-bottom, running section by section. Beats to hit:

- **Section 1**: the 5-push-up loop, then change one number → 500. The week 1
  cliffhanger, resolved. Ask what a million would take. (Same code.)
- **Section 2**: run the `range(5)` reveal — i goes 0…4, *never 5*. Draw the number
  line from the comments on the board. This is the day's most important 90 seconds.
- **Section 3**: `range(1, 11)` counts like a human; the 7-times-table two-liner —
  take requests, including absurd ones.
- **Section 4**: step = common difference — evens, count-by-5s, and the backward
  rocket countdown.
- **Section 5**: the accumulator ("snowball"). Ask for the running total after laps
  1, 2, 3 *before* running. Then Gauss's formula agrees: 5050 twice.
- **Section 6**: `"*" * i` — multiplying text; the triangle and the laugh-o-meter.

### 0:22–0:30 · Class writes code: `2-fill-in-the-blank.py`

Kids call out what goes in each blank; you type and run after every task. Two traps
are marked in the comments: "13" on the applause machine (range(12) *is* 12 laps) and
the missing minus on the countdown (an empty run — zero lines — is the teachable
moment). Task 7 is typed live: the class dictates the `*`. Completed code in
`answer-key.md`.

### 0:30–0:38 · Voting game: `3-predict-the-output.py`

Class votes A/B/C, you press Enter to reveal. Rounds 4 and 6 are the same accumulator
with the `print` outside vs *inside* the loop — the indentation trap. Milk the
comparison: scroll back to round 4 after the final reveal.

### 0:38–0:43 · Handout

Kids match sequences to `range` calls and hand-trace a snowball loop into a table —
being the computer, lap by lap. Circulate. Point out the take-home brain teaser.

### 0:43–0:45 · Wrap-up

Say it once, plainly: *"A for loop repeats a block a set number of times. `range`
starts at 0 and stops BEFORE the wall. An accumulator is a snowball rolling through
the loop."* Tease week 7: *"A for loop knows in advance how many laps it gets. Next
week: a loop that keeps going until something HAPPENS — and I'll show you the most
famous bug in programming: the loop that never stops."*

## If you have extra time

Open `4-challenge.py`: all 99 verses of "99 Bottles of Pop" in a blink (with if/else
on grammar duty), a giant centered star mountain, the sum-of-odd-numbers-makes-squares
discovery (1, 4, 9, 16… live on screen — a genuine theorem), and a real-time rocket
launch with `time.sleep(1)` — the guaranteed big finish.

## Common pitfalls

- **Off-by-one everything.** "range(12) does 13 laps," "range(1, 10) reaches 10" —
  don't fight it, farm it: every wrong guess is a vote round. Anchor them to the
  chant: *starts at 0, stops before the wall.*
- **"Why does the computer start at 0?!"** Short answer that satisfies: computers
  count *distance from the start*, and the first item is 0 steps away. It's week 8's
  string indexing in disguise — plant the seed, move on.
- **Indentation drift.** A `print` accidentally in/out of the loop body silently
  changes everything — that's the *point* of voting rounds 4 vs 6. When it happens
  live in the fill-in file, connect it back: "we've seen this movie."
- **The accumulator reads as magic.** `total = total + n` looks illegal to algebra
  eyes (no equation has x = x + 1!). Say it as a *command*, right to left: "take the
  old total, add n, store it back." The handout's trace table is the cure — don't
  skip it.
- **Running long.** The times-table request line and the laugh-o-meter are cuttable;
  the number-line moment and the accumulator are not.
