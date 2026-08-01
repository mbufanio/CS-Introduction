# Week 3 — Input & Strings → 🎉 MAD LIBS

> **Unit 1: Variables & Math** · payoff lesson — the class's words become the program

## Objectives

By the end of class, students can:

1. Explain that `input()` makes the program **stop and wait** for an answer — and that
   the answer lands in a variable
2. Explain that `input()` ALWAYS hands back a **string**, even when the user types a number
3. Read and predict **f-strings** — fill-in-the-blank sentences with variables in the braces
4. Explain why `age + 1` crashes on input and how `int()` fixes it — `"7"` and `7` are
   different creatures

## Vocabulary

| Word | Kid-friendly definition |
|------|------------------------|
| **`input()`** | the command that asks a question, then WAITS for an answer |
| **f-string** | a fill-in-the-blank sentence: `f"Hi, {name}!"` — the braces get replaced by the box's value |
| **type** | what KIND of thing a value is — text (string) or number |
| **`int()`** | the converter that turns a string like `"7"` into the actual number 7 |
| **concatenation** | gluing strings together with `+`: `"mad" + "libs"` → `"madlibs"` |

## Math tie-in

**Variables as unknowns that receive values later.** All year in algebra, `x` is a
placeholder that gets its value at solving time. `name = input(...)` is the same move:
the program is written *before* anyone knows what `name` will hold — it's solved at
run time. And the day's second idea is pure math-brain: **`"7"` and `7` look identical
and behave completely differently** — `7 + 7` is 14, `"7" + "7"` is `"77"`. Knowing
*what kind of object you're holding* before operating on it is the same discipline as
knowing whether that's a length, an area, or a coordinate.

## Before class

- [ ] Print `handout.md` (one per student), have `answer-key.md` open or printed for you
- [ ] Open this folder in VS Code, zoom fonts (see `TEACHER-GUIDE.md`)
- [ ] Test-run `1-demo.py` once — it has `input()` now, so YOU type answers in the terminal
- [ ] Pick a colleague who's a good sport — their name is going in the Mad Libs
- [ ] Shout-outs for anyone who brought back the two-box swap

## Lesson plan — 45 minutes

### 0:00–0:02 · Last time

Two minutes: *"What's a variable?"* (a labeled box) — *"What does `score = score + 10`
do?"* (take, add, put back — instruction, not equation) — *"Quotes mean...?"* (say it)
*"No quotes mean...?"* (look it up). Swap shout-outs. Then: *"So far WE do all the
typing before the program runs. Today the program talks back."*

### 0:02–0:07 · Hook: the computer waits forever

Run the first section of `1-demo.py`. The terminal prints `What is your name? ` and
stops. Say nothing. Let the cursor blink. Let the silence get weird. Then:

> *"It's waiting for us. It will wait for the rest of class. It will wait until June.
> It has NOTHING else going on — this program cannot continue until someone answers.
> Who wants to name our computer?"*

Type the class's chosen name, hit Enter, and let the program greet them back.

### 0:07–0:24 · Demo: `1-demo.py`

Walk the file top-to-bottom, running each section; you type all terminal answers
(kids shout them to you). Beats to hit:

- **The echo bot** — `input()` asks, waits, and drops the answer into a box
- **f-strings** — a fill-in-the-blank sentence; say the words *"this is literally Mad
  Libs"* out loud, because it is, and that's where today ends
- **The gotcha, LIVE**: ask an age, uncomment `print(age + 1)`, CRASH. Read the
  TypeError together like a week-1 error: *input always hands you a STRING, even when
  it looks like a number.* Then `int()` rescues it.
- `"7" + "7"` is `"77"` but `7 + 7` is `14` — the week-1 quotes lesson, all grown up
- **🎉 THE MAD LIBS** — collect a noun, a verb, an adjective, a teacher's name, a
  number, and a place from the class, then read the story off the smartboard with
  full dramatic commitment. This is the moment of the unit; don't rush it.

### 0:24–0:32 · Class writes code: `2-fill-in-the-blank.py`

The class builds Mad Libs 2.0 — "The Field Trip of Doom." Kids fill the collector
blanks, design one prompt themselves, and dictate a bonus story line that you type
live. Run after every task; wrong answers are debugging fuel. Completed code in
`answer-key.md`.

### 0:32–0:39 · Voting game: `3-predict-the-output.py`

Class votes A/B/C, you press Enter to reveal. Two rounds ask for typed answers —
the round's comment tells you exactly what to type so everyone's predicting the same
thing. The final round crashes on purpose (simulated) — read the error together.

### 0:39–0:43 · Handout

Kids trace an input program, sort `"7"` vs `7` problems, and spot the missing-`int()`
bug. Brain teaser: design their own Mad Libs on paper — and yes, promise that next
week you'll RUN the best one, because that promise turns homework into a contest.

### 0:43–0:45 · Wrap-up

Say it once, plainly: *"`input()` asks and waits. Whatever comes back is a STRING.
If you need a number, `int()` converts it."* Tease week 4: *"Next week the program
learns to make DECISIONS — if you're tall enough, you ride; if not, you don't. It's
going to start judging us."*

## If you have extra time

Open `4-challenge.py`: the MEGA Mad Libs (a number input does live math *inside* the
story — donuts per day becomes donuts per year), BRAINBOT 9000 (a "chatbot" that
seems eerily smart but only echoes their own words back), and a clearly-labeled
sneak peek of week 5's `random`.

## Common pitfalls

- **The program looks frozen.** It's `input()` waiting — click the terminal and type.
  This WILL happen at least once today; the guide's troubleshooting table has it too.
- **Forgetting the `f`.** Without it, the braces print literally: `Hi, {name}!`.
  It's a predict-round on purpose — when it bites later, point back to it.
- **`age + 1` crashing feels like failure.** Frame it as the plan: today's crash is
  the lesson. Input gives strings. Every programmer has been bitten by this exact bug.
- **Mad Libs words going off the rails.** Collect several shouted options and pick —
  you're the filter. Naming a real teacher: pick a colleague who'll laugh about it.
- **Kids ask "why `int`?"** "Short for *integer* — math-speak for a whole number.
  You've seen the word on your number-line worksheets."
- **Running long.** The Mad Libs payoff is non-negotiable; the handout segment is the
  shock absorber.
