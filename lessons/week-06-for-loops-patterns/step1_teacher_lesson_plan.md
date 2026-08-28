# Week 6 — For Loops & Patterns

> **Unit 3: Loops** · First loops lesson — the week 1 cliffhanger pays off

## Objectives

By the end of class, students can:

1. Read `for i = 1:10` as "repeat this block, counting i from 1 to 10 — then `end`"
2. Predict what the **colon sequence** hands out — `start:step:stop` walks any
   arithmetic sequence, even backward, and **the last number is included**
3. Trace the **accumulator** (snowball) pattern: `total = total + n`
4. Use `repmat('*', 1, i)` — the repeater — to explain how loops build patterns row by row

## Vocabulary

| Word | Kid-friendly definition |
|------|------------------------|
| **loop** | Code the computer runs again and again |
| **`for` loop** | A loop that repeats a set number of times, closed by `end` |
| **loop variable** | The lap counter (the `i`) — a real variable that changes each lap |
| **colon sequence `start:step:stop`** | The number-dealer: first term, jump size, last term — **last one included** |
| **accumulator** | A snowball variable that grows each lap: `total = total + n` |
| **`repmat('*', 1, n)`** | The repeater: n copies of the text, glued together |

## Math tie-in

**Arithmetic sequences ARE the colon** — and this is the strongest math tie-in of the
whole course: `first:difference:last` is *literally* how you write a sequence in math
class, typed into the computer. `5:5:50` *is* the sequence 5, 10, 15, … 50. The demo
generates evens, count-by-5s, and any times table the class shouts (sequences unit,
meet automation). Then the centerpiece: **Gauss's sum**. The class hears the story
(pair 1+100, 2+99, … → 50 pairs of 101 = 5050), the loop brute-forces `1+2+…+100` by
sheer speed, and the formula `n(n+1)/2` lands on the *same* 5050 on the same screen —
a formula being *verified* by 10 million-times-dumber-but-faster arithmetic. That's
the "check your answer two ways" habit, industrialized.

## Before class

- [ ] Print `step6_class_handout.pdf` (one per student), have `step2_teacher_answer_key.md` open or printed for you
- [ ] Open MATLAB, set the Current Folder to this lesson's folder, zoom fonts for the
      smartboard (see `TEACHER-GUIDE.md`), type `clc`
- [ ] Test-run `step3_class_demo.m` once (no typing needed — it runs straight through)
- [ ] Have the board ready for the number-line drawing (demo Section 2) and the
      Gauss pairing (hook)

## Lesson plan — 45 minutes

### 0:00–0:02 · Last time

Quick-fire recap of week 5: *"What command rolls the electronic die?"* (`randi`.)
*"Can `randi([1 6])` roll a 6?"* (Yes — both ends count.) *"And who won the
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

### 0:07–0:22 · Demo: `step3_class_demo.m`

Walk the file top-to-bottom, running each `%%` section (`Ctrl+Enter`) as you go.
Beats to hit:

- **Section 1**: the 5-push-up loop, then change one number → 500. The week 1
  cliffhanger, resolved. Ask what a million would take. (Same code.)
- **Section 2**: run the `1:5` reveal — i goes 1…5, *including 5*. Draw the number
  line from the comments on the board and land the chant: **MATLAB counts like
  humans.** This is the day's most important 90 seconds. ⭐ Afterward, point at the
  Workspace: `i`'s box still holds its final lap, 5.
- **Section 3**: the colon IS a sequence machine — `first:difference:last`, the
  difference in the MIDDLE. Evens `2:2:10`, count-by-5s `5:5:50`, and the
  7-times-table three-liner — take requests, including absurd ones.
- **Section 4**: negative step — the backward rocket countdown `10:-1:1`. Tease
  `5:1:1` for the voting game; don't resolve it yet.
- **Section 5**: the accumulator ("snowball"). Ask for the running total after laps
  1, 2, 3 *before* running. ⭐ Watch `total`'s box in the Workspace. Then Gauss's
  formula agrees: 5050 twice.
- **Section 6**: `repmat('*', 1, i)` — the repeater; the triangle and the
  laugh-o-meter.

### 0:22–0:30 · Class writes code: `step4_class_fill_in_the_blank.m`

Kids call out what goes in each blank; you type and run after every task
(`Ctrl+Enter` runs just that task's section). One trap is marked in the comments: the
missing minus on the countdown (an empty run — zero lines — is the teachable moment).
Task 7 is typed live: the class dictates the `*`. Completed code in `step2_teacher_answer_key.md`.

### 0:30–0:38 · Voting game: `step5_class_predict_the_output.m`

Class votes A/B/C, you press Enter to reveal. Round 1 settles "does the last number
count?" (YES) for anyone still doubting; round 4 is the sneaky one — `5:1:1` is an
impossible climb, so the loop runs *zero* times, silently. Round 5's snowball prints
only the finale because the `fprintf` sits after the `end` — milk that comparison.

### 0:38–0:43 · Handout

Kids match sequences to colon expressions and hand-trace a snowball loop into a
table — being the computer, lap by lap. Circulate. Point out the take-home brain
teaser.

### 0:43–0:45 · Wrap-up

Say it once, plainly: *"A for loop repeats a block a set number of times. The colon
deals the sequence: first, difference, last — and the last one COUNTS. An accumulator
is a snowball rolling through the loop."* Tease week 7: *"A for loop knows in advance
how many laps it gets. Next week: a loop that keeps going until something HAPPENS —
and I'll show you the most famous bug in programming: the loop that never stops."*

## If you have extra time

Open `step7_class_challenge.m`: all 99 verses of "99 Bottles of Pop" in a blink (with if/elseif
on grammar duty), a giant centered star mountain (two repeaters glued), the
sum-of-odd-numbers-makes-squares discovery (1, 4, 9, 16… live on screen — a genuine
theorem), and a real-time rocket launch with `pause(1)` — the guaranteed big finish.

## Common pitfalls

- **Wall thinking.** Some kids assume the last number can't count ("computers are
  weird like that") and guess `1:13` for 12 claps. Don't fight it, farm it: every
  wrong guess is a vote round. Anchor them to the chant: *MATLAB counts like humans —
  the last number is a step, not a wall.*
- **The step goes on the END.** Kids write `2:10:2` for evens. The difference sits
  in the MIDDLE: `first:difference:last`. Type their version anyway — `2:10:2` deals
  just 2 (one lap!) and stops. Ask why (next jump would be 12 — past the last term).
- **`end` drift.** A line accidentally inside/outside the loop (above vs below the
  `end`) silently changes everything — that's the *point* of voting round 5. When it
  happens live in the fill-in file, connect it back: "we've seen this movie."
- **The accumulator reads as magic.** `total = total + n` looks illegal to algebra
  eyes (no equation has x = x + 1!). Say it as a *command*, right to left: "take the
  old total, add n, store it back." The handout's trace table is the cure — don't
  skip it.
- **Running long.** The times-table request line and the laugh-o-meter are cuttable;
  the number-line moment and the accumulator are not.
