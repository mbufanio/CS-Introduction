# Week 2 — Variables & Math

> **Unit 1: Variables & Math** · algebra tie-in

## Objectives

By the end of class, students can:

1. Explain that a **variable** is a labeled box in the computer's memory that stores a value
2. Predict what code with variables prints — including the sneaky `print(x)` vs `print("x")`
3. Explain reassignment: `score = score + 10` is an **instruction**, not an equation
4. Evaluate expressions the way Python does — with PEMDAS — and use `**`, `//`, and `%`

## Vocabulary

| Word | Kid-friendly definition |
|------|------------------------|
| **variable** | a labeled box in the computer's memory that holds one value |
| **assignment** | putting a value into a box: `score = 10` means "store 10 in the box named score" |
| **reassignment** | replacing what's in the box with something new |
| **expression** | a math phrase the computer can work out, like `3 * x + 2` |
| **operator** | a math symbol: `+  -  *  /  **  //  %` |

## Math tie-in

**This lesson IS algebra class.** Evaluating `3x + 2` when `x = 7` by substitution is
*exactly* what Python does when it runs `print(3 * x + 2)` — the demo puts that on
screen in those words. Python obeys PEMDAS to the letter (`2 + 3 * 4` is a live vote).
And the day's big idea: in math, `=` **states a fact** ("these are equal"); in Python,
`=` **performs an action** ("put this in that box") — which is why `score = score + 10`
is an impossible equation but a perfectly good instruction. `//` and `%` are the
division-with-remainder they've done since 3rd grade, finally with names.

## Before class

- [ ] Print `handout.md` (one per student), have `answer-key.md` open or printed for you
- [ ] Open this folder in VS Code, zoom fonts for the smartboard (see `TEACHER-GUIDE.md`)
- [ ] Test-run `1-demo.py` once
- [ ] Write the hook's monster expression somewhere you can reveal it fast
  (board flap, sticky note): `437 * 852 + 90210 - 12345`
- [ ] Shout-outs ready for anyone who brought back week 1's brain teaser

## Lesson plan — 45 minutes

### 0:00–0:02 · Last time

Two minutes, no slides: *"What's a program?"* (a list of exact instructions) —
*"What do quotes make?"* (a string) — *"What's red text?"* (a clue, not a failure).
Shout-outs for brain-teaser returners. Then: *"Last week the computer talked.
This week it gets a memory."*

### 0:02–0:07 · Hook: the mental-math race

Reveal the monster expression: `437 * 852 + 90210 - 12345`. Announce a race — the
whole class (paper allowed!) versus the computer. Count down, let them scribble for
30–45 seconds, then run the first section of `1-demo.py`: the computer answers
instantly. Land the point:

> *"The computer did that in under a millisecond — and it would do a MILLION of them
> before you finished writing the 4. It's not smarter than you. It's faster. Today we
> learn to feed it problems."*

### 0:07–0:22 · Demo: `1-demo.py`

Walk the file top-to-bottom on the smartboard, running each section as you reach it.
The comments carry the narration and the ⭐ ASK THE CLASS prompts. Beats to hit:

- The race rematch (section 1) — instant answers
- **Variables**: the computer's memory is a wall of labeled boxes; `score = 10`
  writes a label and stores a value
- `print(score)` vs `print("score")` — box contents vs the word itself
- Substitution: `x = 7` then `3 * x + 2` — *"you did this exact problem in algebra"*
- **Reassignment**: `score = score + 10` — pause here, milk the "impossible equation"
  moment, then reveal it's an instruction: *take what's in the box, add 10, put it back*
- **PEMDAS**: Python respects order of operations exactly like they must
- `**` powers: `2**100` — have the class count the digits on screen
- `//` and `%`: the pizza problem — 17 slices, 5 kids
- Plant the seed: *"`%` looks useless. In week 9 it unlocks secret codes."*

### 0:22–0:31 · Class writes code: `2-fill-in-the-blank.py`

Kids call out what goes in each blank; you type and run after every task. Type wrong
answers too and let the class debug. Task 5 has no blank — you type the pizza lines
live while the class supplies the operators. Completed code is in `answer-key.md`.

### 0:31–0:38 · Voting game: `3-predict-the-output.py`

Run the file; it pauses before each reveal. Class votes A/B/C, you press Enter,
someone who got it right explains why. Round 2 and the final round are traps —
sell the drama.

### 0:38–0:43 · Handout

Hand out `handout.md`. Kids work solo or in pairs on the trace, the PEMDAS drill, and
the pizza problem while you circulate. Point out the take-home brain teaser (the
two-box swap — a real interview question, tell them that, they love it).

### 0:43–0:45 · Wrap-up

Say it once, plainly: *"A variable is a labeled box. `=` puts something in the box.
The computer does math with PEMDAS, exactly like you — just faster."* Tease week 3:
*"Next week the computer stops doing all the talking — it's going to ask YOU
questions. And we're going to make it tell a story about this class."*

## If you have extra time

Open `4-challenge.py`: `2**1000` fills the smartboard (302 digits — let them count a
row and estimate), a your-age-in-seconds calculator to personalize with real ages, and
the penny-doubling wow (1¢ doubled daily = five million dollars by day 30).

## Common pitfalls

- **"`score = score + 10` is impossible!"** Correct — *in math*. Don't rush this;
  the difference between `=` as fact and `=` as action is the whole lesson. Say
  "take, add, put back" while pointing at the line, right side first.
- **`print(x)` vs `print("x")`.** Kids will mix these up for weeks. The rule that
  sticks: *quotes mean "say it", no quotes mean "look it up".*
- **Division surprises.** `10 / 5` prints `2.0`, not `2` — Python's `/` always
  answers with a decimal point. It's noted in the demo; don't let it derail you.
  (`10 // 5` gives a whole `2` — a handy preview of why `//` exists.)
- **Kids naming boxes cursed things.** Channel it — silly variable names like
  `screaming_goat = 17` are legal and memorable. You're the filter.
- **Running long.** The handout segment is the shock absorber — it can shrink to 2
  minutes and go home with them.
