# Week 7 — While Loops → 🎉 The Number Guessing Game

> **Unit 3: Loops** · Payoff lesson — the class beats the game, then the computer beats the class

## Objectives

By the end of class, students can:

1. Read `while condition ... end` as "keep repeating UNTIL the condition fails"
2. Point at a while loop's three parts: **start value, condition, update line**
3. Explain what an **infinite loop** is, why it happens (no update / condition never
   fails), and how to escape one (**Ctrl+C**)
4. Explain why guess-the-middle finds any number from 1–100 in **at most 7 guesses**

## Vocabulary

| Word | Kid-friendly definition |
|------|------------------------|
| **`while` loop** | Repeats its block as long as its condition holds — it finds out when to stop |
| **condition** | The yes/no check (1 or 0) the loop runs before every lap |
| **update line** | The line inside that changes the variable — the loop's escape route |
| **infinite loop** | A loop whose condition never fails; it runs until the sun burns out (or Ctrl+C) |
| **game loop** | while + if + input, spinning until the game ends |
| **binary search** *(bonus word)* | Always guess the middle — half the suspects vanish each time |

## Math tie-in

**Interval narrowing and powers of 2.** Every "higher/lower" answer shrinks the
interval of possible numbers — the demo prints the collapse live:
100 → 50 → 25 → 12 → 6 → 3 → 1 in seven halvings. The pincer: `2^7 = 128 > 100`,
so seven middle-aimed guesses *always* suffice — the computer literally cannot lose,
and the class watches the proof run (demo Section 6) right after watching it *happen*
(the flip). That's inequalities, exponents, and an airtight argument in one game —
and the handout has them run the same search by hand on 1–16.

## Before class

- [ ] Print `handout.pdf` (one per student), have `answer-key.md` open or printed for you
- [ ] Open MATLAB, set the Current Folder to this lesson's folder, zoom fonts for the
      smartboard (see `TEACHER-GUIDE.md`), type `clc`
- [ ] Test-run `lesson_demo.m` once — and rehearse the Ctrl+C move in Section 2 so
      it's smooth live (click *inside the Command Window* first, then Ctrl+C)
- [ ] Board space for TWO numbers: the class's guess count (hook) and the computer's (flip)

## Lesson plan — 45 minutes

### 0:00–0:02 · Last time

Quick-fire recap of week 6: *"The colon chant?"* (First, difference, last — and the
last one counts.) *"What's the snowball pattern called?"* (Accumulator.) Bridge: *"A
for loop signs a contract — exactly N laps. Today's loop refuses to sign. It repeats
until something HAPPENS... and nobody knows when."*

### 0:02–0:07 · Hook: the guessing game, human edition

*"I'm thinking of a number from 1 to 100."* Class shouts guesses; you only ever say
"higher" or "lower." Tally every guess on the board. When they get it, circle the
count and **leave it up** — the whole lesson orbits that number. If they found it
fast, say so suspiciously: *"Lucky. Later, something in this room does it in seven or
fewer. Guaranteed."*

### 0:07–0:22 · Demo: `lesson_demo.m` (Sections 1–4)

Walk the file top-to-bottom, running each `%%` section (`Ctrl+Enter`) as you go —
but **stop at the end of Section 4**. The flip is for later. Beats to hit:

- **Section 1**: first while loop — point at the three parts (start, condition,
  update) like organs on an anatomy chart. ⭐ Watch `count`'s box shrink in the
  Workspace.
- **Section 2**: THE INFINITE LOOP. Uncomment `while true`, run, let the waterfall
  roar for a few seconds, then click the Command Window and Ctrl+C. *"The most
  famous bug in programming — you just built one on purpose and escaped it."*
  Re-comment it!
- **Section 3**: build the game with the secret rigged to 42 — guess wrong on
  purpose (10, then 60), let the class read which hint fires; then they steer you
  in. Small gift to savor for exactly one sentence: `input()` hands over a *number*,
  ready to compare — nothing to convert.
- **Section 4**: 🎉 the real game, 1–100, `randi([1 100])` secret. The class shouts,
  you type. **Count guesses out loud and write the total on the board next to the
  hook count.**

### 0:22–0:29 · Class writes code: `fill_in_the_blank.m`

Kids call out what goes in each blank; you type and run after every task
(`Ctrl+Enter` runs just that task's section). This week some wrong answers hang
instead of crash — the header says it: Ctrl+C is now a tool, not a panic button (the
snack machine task even invites it). Task 6 is typed live with the class dictating
the `>`. Completed code in `answer-key.md`.

### 0:29–0:35 · Voting game: `predict_the_output.m`

Class votes A/B/C, press Enter to reveal. Round 2 (a loop that runs *zero* times) and
round 5 (the update-order trap) catch almost everyone — celebrate the survivors. The
file never actually hangs: round 3's runaway loop is simulated with prints.

### 0:35–0:41 · 🎉 THE FLIP: `lesson_demo.m` Sections 5–6

The revenge match. The class agrees on a secret 1–100 and writes it on paper (held
up, witnessed, unchangeable). Run Section 5: the computer guesses the middle, you
type `h`, `l`, or `c` honestly at the `input(..., 's')` prompt — last week's
word-matcher `strcmp` reads your answer. Point at the shrinking `possible: low to
high` range every round (⭐ and at `low` and `high` closing like jaws in the
Workspace). When it wins — and it will, in ≤7 — put its count on the board next to
the class's hook count. Then run Section 6: the halving chain and `2^7 = 128`.
Name the bonus word: **binary search**.

### 0:41–0:44 · Handout

Trace a while loop lap by lap, fill in the halving chain, and play binary search on
paper on 1–16. Circulate. Point out the take-home brain teaser.

### 0:44–0:45 · Wrap-up

Say it once, plainly: *"A while loop repeats until its condition fails — and it
needs an update line, or it repeats forever. Guess the middle, and half the
possibilities vanish every turn: that's why 7 guesses always beat 100 numbers."*
Tease week 8: *"Next week we crack open words themselves — every letter in your name
is secretly a number, and I'll prove it."*

## If you have extra time

Open `challenge.m`: the guessing game with 7 lives (is 7 enough? — they can now
*prove* it is; features a **flag variable**, a light switch that ends the game with
no tricks), the doubling penny (days until a penny doubled daily passes
$1,000,000 — take bets, then watch day 27 land), and the auto-guesser, which replays
the flip against a random secret every re-run — dare the class to catch it needing
an eighth guess.

## Common pitfalls

- **The missing update line.** The #1 while-loop bug forever. When it happens live
  (it will), narrate the fix as a checklist: start? condition? *update?* — the
  three-part anatomy from Section 1 is the diagnostic tool.
- **Ctrl+C stage fright.** If MATLAB seems stuck mid-waterfall, click inside
  the Command Window first — Ctrl+C only works where the cursor lives. Practice once
  before class.
- **Typing a word at a number prompt.** `input()` fed `fifty` complains with
  `Unrecognized function or variable 'fifty'.` and asks again — read it aloud, it's
  a *great* error: MATLAB refused to pretend a word was a number. Carry on.
- **The class lies to the flip.** Someone will want to answer `h` when the truth is
  `l`. The computer corners itself into nonsense — actually a fantastic 60-second
  detour if you have it: the algorithm is only as good as its information. (Answers
  other than `h`/`l`/`c` are simply ignored — the loop re-asks the same guess.)
- **"The computer got lucky."** No — rerun the auto-guesser in the challenge file
  five times. Never more than 7. Luck doesn't repeat on command; math does.
- **Running long.** The flip is non-negotiable — it's the lesson's thesis. Trim
  voting rounds or hand the handout out at the door instead.
