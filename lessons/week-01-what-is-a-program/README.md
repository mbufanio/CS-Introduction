# Week 1 — What Is a Program?

> **Unit 0: Computers & Programs** · First lesson of the course

## Objectives

By the end of class, students can:

1. Explain that a **program** is a list of exact instructions a computer follows in order
2. Read and predict simple `disp()` statements
3. Explain that computers are *literal* — they do what you *say*, not what you *mean*
4. Recognize that an **error message is a clue**, not a failure

## Vocabulary

| Word | Kid-friendly definition |
|------|------------------------|
| **program** | A list of instructions a computer follows, in order, exactly |
| **code** | The written-out instructions (what we type) |
| **MATLAB** | The language (and app) we're writing our instructions in |
| **`disp()`** | The command that makes the computer display something |
| **string** | Text wrapped in quotes — the computer treats it as words, not math |
| **bug / error** | A mistake in the code; the computer tells you about it with red text |

## Math tie-in

**Precise language and order of operations of *instructions*.** Math already demands
this: you show steps in order, and "subtract 3 from 5" ≠ "subtract 5 from 3."
Programming is the same discipline turned up to eleven — today's hook makes that
physical. Also plant the seed for week 2: `disp('2 + 2')` vs `disp(2 + 2)` is the
difference between *writing* an expression and *evaluating* it.

## Before class

- [ ] Print `handout.pdf` (one per student), have `answer-key.md` open or printed for you
- [ ] Open MATLAB, set the Current Folder to this lesson's folder, zoom fonts for the
      smartboard (see `TEACHER-GUIDE.md`), type `clc`
- [ ] Test-run `lesson_demo.m` once — practice `Ctrl+Enter` to run one `%%` section at a time
- [ ] Optional hook prop: bread, peanut butter, jelly, and a knife (or just mime it)

## Lesson plan — 45 minutes

### 0:00–0:07 · Hook: "Program the teacher" (no computer yet)

Announce: *"I am a robot. I do EXACTLY what I'm told — nothing more, nothing less.
Tell me how to make a peanut butter sandwich."*

Take instructions literally and maliciously: "put peanut butter on the bread" → put the
whole *jar* on the bread. "Open the jar" → hold it upside down and twist the bottom.
Two minutes of chaos, then land the point:

> *"Computers are exactly this dumb — and exactly this obedient. A **program** is a
> list of instructions written so carefully that even a machine that can't think gets
> it right. Today you learn to talk to it."*

### 0:07–0:22 · Demo: `lesson_demo.m`

Open the file on the smartboard and walk it top-to-bottom, running each `%%` section
(`Ctrl+Enter`) as you reach it. The comments contain the narration and the
⭐ ASK THE CLASS questions. Beats to hit:

- Their first command: `disp('Hello, world!')` — and the 50-year tradition behind it
- Instructions run **in order**, top to bottom
- Quotes make a **string** — the computer repeats it without thinking about it
- `disp(2 + 2)` vs `disp('2 + 2')` — no quotes means *do the math*
- The **error section**: you'll uncomment broken lines one at a time and read the red
  text together. Sell it: red text = the computer helping you.
- Comments (`%`) — notes for humans that the computer skips

### 0:22–0:31 · Class writes code: `fill_in_the_blank.m`

Kids call out what goes in each blank; you type and run after every task
(`Ctrl+Enter` runs just that task's section). Type wrong answers too and let the class
debug. Completed code is in `answer-key.md`.

### 0:31–0:38 · Voting game: `predict_the_output.m`

Run the file (F5); it pauses before each reveal. Class votes A/B/C, you click the
Command Window and press Enter, someone who got it right explains why. Rounds escalate
from friendly to sneaky.

### 0:38–0:43 · Handout

Hand out the printed handout. Kids work solo or in pairs on "Be the Computer" and
"Spot the Bug" while you circulate. Point out the take-home brain teaser — optional,
never graded, shout-out next week for anyone who tries it.

### 0:43–0:45 · Wrap-up

Say it once, plainly: *"A program is a list of exact instructions. The computer follows
them in order. When it complains, it's giving you a clue."* Tease week 2: *"Next week
the computer becomes the world's fastest calculator — and I'll open a window that shows
you its actual memory."*

## If you have extra time

Open `challenge.m`: ASCII-art banner, a class-customized greeting to re-run with
students' names, and a 3-line loop that prints 500 lines — a deliberate cliffhanger for
week 6 ("by the end of this course you'll write this yourselves").

## Common pitfalls

- **Kids want to touch the keyboard.** Channel it: they *are* writing the code — you're
  just the hands. The fill-in-the-blank file is theirs.
- **Someone says "computers are smart."** Push back gently: computers are *fast*, not
  smart. The sandwich robot proved it. This framing prevents a lot of confusion later.
- **Fear of the error section.** Don't skip it. Meeting errors on day 1, on purpose,
  in a low-stakes way is the single best thing this lesson does.
- **Apostrophes inside strings.** MATLAB strings wear single quotes, so a word like
  `it's` needs its apostrophe doubled: `'it''s'`. If a class message has an apostrophe
  and errors, that's why — fix it live and move on (no need to teach it formally).
- **Running long.** The handout segment is the shock absorber — it can shrink to 2
  minutes and go home with them.
