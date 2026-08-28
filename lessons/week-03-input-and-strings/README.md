# Week 3 — Input & Text → 🎉 MAD LIBS

> **Unit 1: Variables & Math** · payoff lesson — the class's words become the program

## Objectives

By the end of class, students can:

1. Explain that `input()` makes the program **stop and wait** for an answer — and that
   the answer lands in a variable
2. Explain that plain `input()` hands back a real **number**, ready for math — but
   reads a typed *word* as **code** and crashes hunting for it; the **`'s'` flag**
   ("expect words, not code") is the fix
3. Read and predict **`fprintf`** lines — fill-in-the-blank sentences where `%s` is a
   word slot, `%d` is a number slot, and `\n` presses Enter
4. Glue text with `[ ]` brackets and use `num2str()` to give a number its text costume

## Vocabulary

| Word | Kid-friendly definition |
|------|------------------------|
| **`input()`** | the command that asks a question, then WAITS for an answer |
| **the `'s'` flag** | `input('…', 's')` — tells input to expect WORDS, not code |
| **`fprintf`** | the Mad Libs machine: prints a sentence with slots, then fills them in order |
| **slot** | a blank in an fprintf sentence: `%s` for a word, `%d` for a number |
| **`\n`** | "press Enter" — every fprintf sentence ends with one |
| **`num2str()`** | the translator that turns a number into text so it can be glued with `[ ]` |

## Math tie-in

**Variables as unknowns that receive values later.** All year in algebra, `x` is a
placeholder that gets its value at solving time. `name = input(…)` is the same move:
the program is written *before* anyone knows what `name` will hold — it's solved at
run time. And the day's second idea is pure math-brain: **numbers and words are
different KINDS of things.** `age + 1` works because `age` holds a real number;
gluing `['I am ', 12]` produces a mystery character because text and numbers live in
different worlds (`num2str` is the border crossing). Knowing *what kind of object
you're holding* before operating on it is the same discipline as knowing whether
that's a length, an area, or a coordinate.

## Before class

- [ ] Print `handout.pdf` (one per student), have `answer-key.md` open or printed for you
- [ ] Open MATLAB, set the Current Folder to this lesson's folder, zoom fonts
      (see `TEACHER-GUIDE.md`), type `clc` and `clear`
- [ ] Test-run `lesson_demo.m` once — it has `input()` now, so YOU type answers in
      the Command Window; rehearse section 3's staged crash (uncomment, crash, fix)
- [ ] Pick a colleague who's a good sport — their name is going in the Mad Libs
- [ ] Shout-outs for anyone who brought back the two-box swap

## Lesson plan — 45 minutes

### 0:00–0:02 · Last time

Two minutes: *"What's a variable?"* (a labeled box — visible in the Workspace) —
*"What does `score = score + 10` do?"* (take, add, put back — instruction, not
equation) — *"What does the semicolon do?"* (hushes the line; the box still fills).
Swap shout-outs. Then: *"So far WE do all the typing before the program runs.
Today the program talks back."*

### 0:02–0:07 · Hook: the computer waits forever

Run the first section of `lesson_demo.m`. The Command Window prints
`Pick a number, any number: ` and stops. Say nothing. Let the cursor blink. Let the
silence get weird. Then:

> *"It's waiting for us. It will wait for the rest of class. It will wait until June.
> It has NOTHING else going on — this program cannot continue until someone answers.
> Somebody give me a number."*

Type the class's number, hit Enter, and let the program double it instantly.

### 0:07–0:24 · Demo: `lesson_demo.m`

Walk the file top-to-bottom, running each `%%` section; you type all answers (kids
shout them to you). Beats to hit:

- **The echo bot** — `input()` asks, waits, and drops the answer into a box; point at
  the Workspace when `age` appears. `age + 1` just works — input hands back a real
  number, math-ready.
- **The gotcha, LIVE**: section 3. Uncomment the no-`'s'` line, ask for a name, type
  `Ada`, CRASH: `Unrecognized function or variable 'Ada'.` Read it together like a
  week-1 error — and enjoy that MATLAB then *asks again* (it will crash-and-re-ask
  all day; escape with a number or Ctrl+C). The reveal: plain `input()` reads answers
  as CODE — week 1's rule, *no quotes means look it up*. The fix: the `'s'` flag —
  *"tell input to expect words, not code."*
- **Gluing with `[ ]`** — and `num2str`, the number-to-text translator. The live
  experiment `disp(['I am ', 12])` prints a mystery character (and `65` prints `A` —
  a week-8 secret, leaked early).
- **`fprintf`, the Mad Libs machine** — `%s` word slot, `%d` number slot, filled in
  order, `\n` presses Enter. Say the words *"fprintf IS a Mad Libs machine"* out
  loud, because it is, and that's where today ends.
- **🎉 THE MAD LIBS** — collect a plural noun, a verb, an adjective, a teacher's
  name, a number, and a place from the class, then read the story off the smartboard
  with full dramatic commitment. Have the class spot the one collector *without* the
  `'s'` (the number!) before you run. This is the moment of the unit; don't rush it.

### 0:24–0:32 · Class writes code: `fill_in_the_blank.m`

The class builds Mad Libs 2.0 — "The Field Trip of Doom." Kids fill the collector
blanks, name a box, compose one prompt themselves, choose the right twin in the
number task (`'s'` or no `'s'`?), and dictate a bonus fprintf line that you type
live. Run after every task; wrong answers are debugging fuel. Completed code in
`answer-key.md`.

### 0:32–0:39 · Voting game: `predict_the_output.m`

Run the file (F5); class votes A/B/C, you press Enter to reveal. Three rounds ask
for typed answers — the round's comment tells you exactly what to type so everyone's
predicting the same thing. The final round crashes on purpose (simulated) — read the
error together.

### 0:39–0:43 · Handout

Kids trace an input program, sort gluing-vs-adding problems, and spot the
missing-`'s'` bug. Brain teaser: design their own Mad Libs on paper — and yes,
promise that next week you'll RUN the best one, because that promise turns homework
into a contest.

### 0:43–0:45 · Wrap-up

Say it once, plainly: *"`input()` asks and waits. Numbers come back ready for math.
Words need the `'s'` flag — otherwise MATLAB reads them as code and goes hunting.
And `fprintf` is a Mad Libs machine: `%s` for words, `%d` for numbers, `\n` to press
Enter."* Tease week 4: *"Next week the program learns to make DECISIONS — if you're
tall enough, you ride; if not, you don't. It's going to start judging us."*

## If you have extra time

Open `challenge.m`: the MEGA Mad Libs (a number input does live math *inside* the
story — `%d` slots holding `donuts * 365`), BRAINBOT 9000 (a "chatbot" that seems
eerily smart but only echoes their own words back through fprintf slots), and a
clearly-labeled sneak peek of week 5's `randi`.

## Common pitfalls

- **The program looks frozen.** It's `input()` waiting — click the Command Window
  and type. This WILL happen at least once today; the guide's troubleshooting table
  has it too.
- **The crash that won't quit.** When plain `input()` gets a word, MATLAB shows the
  red error and then asks the question AGAIN — it's not broken, it's stubborn. Type
  a number to escape, or press Ctrl+C. Then fix the line with `'s'`.
- **Forgetting the `'s'`.** Every word-collecting `input` needs it. When it bites
  later in the year, point back to Ada.
- **Forgetting the `\n`.** The next printout glues onto the story's last line. It's
  staged in the fill-in file's bonus task on purpose — enjoy it, fix it, move on.
- **Apostrophes in the story.** A string carries an apostrophe by doubling it:
  `'that''s'`. If the class dictates a line with one and it breaks, that's why.
- **Mad Libs words going off the rails.** Collect several shouted options and pick —
  you're the filter. Naming a real teacher: pick a colleague who'll laugh about it.
- **Kids ask "why `'s'`?"** "s is for *string* — week 1's word for text. It tells
  input to expect words, not code."
- **Running long.** The Mad Libs payoff is non-negotiable; the handout segment is
  the shock absorber.
