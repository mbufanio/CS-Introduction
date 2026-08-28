# Teacher Guide

How to use this repo to teach a 45-minute, smartboard-driven CS class where **you** have
the computer (running MATLAB) and the **students** have their brains, their voices, and
a handout.

---

## 1. One-time MATLAB setup for the smartboard

Kids in the back row need to read the code *and* the results. Before your first class:

- **Fonts**: Home → Preferences → Fonts → bump the code font to ~20pt. This sizes the
  Editor and Command Window together.
- **The three-pane layout** (this is the important one): Home → Layout → make sure
  three things are always visible:
  1. the **Editor** (the code — your "slides"),
  2. the **Command Window** (where output appears),
  3. the **Workspace pane** (the computer's memory, live!).
  Close everything else (Current Folder browser etc.) while presenting — declutter.
- **The Workspace pane is your co-teacher.** From week 2 on, every variable the class
  creates appears there as a row: name and value, updating in real time. Park it where
  the class can always see it — it's the single best "what is the computer thinking?"
  display ever made.
- **Current Folder**: set it to the week's lesson folder before class (double-click the
  folder in MATLAB, or `cd` in the Command Window). Files only run from the current
  folder.
- **Run a whole file**: the Run button, or `F5`.
- **Run one section**: the demo files are divided by `%%` lines into sections — click
  inside a section and press `Ctrl+Enter` to run just that section. This is the main
  move of the whole course.
- **Clean the board**: `clc` clears the Command Window; `clear` empties the Workspace
  ("wipe the memory"). Start each class with both.

Do a dry run on the actual smartboard once before week 1. Projectors cut off edges and
wash out colors in ways your monitor won't show you.

**No MATLAB on a machine?** Everything in this course also runs in free GNU Octave —
same code, same lessons (Octave's window layout differs slightly, but it too has a
command window and a workspace/variables view).

## 2. The rhythm of a lesson

Every lesson's `step1_teacher_lesson_plan.md` has a minute-by-minute plan, but they all follow the same
shape:

| Minutes | Segment | What's happening |
|---------|---------|------------------|
| 0–5 | **Hook** | A question, puzzle, or "watch this" moment. No code knowledge needed. |
| 5–20 | **Demo** (`step3_class_demo.m`) | You walk through the file top-to-bottom, running each `%%` section as you go. Ask the questions written in the comments. |
| 20–30 | **Fill-in-the-blank** (`step4_class_fill_in_the_blank.m`) | The class completes the code out loud; you type their answers and run. |
| 30–38 | **Predict the output** (`step5_class_predict_the_output.m`) | Class votes A/B/C, you run to reveal. Keep score if they love competition. |
| 38–43 | **Handout** | Kids do the paper exercises; you circulate. |
| 43–45 | **Wrap-up** | One-sentence summary + tease next week. |

If you fall behind, cut from the *end* (handout time shrinks first — it can go home).
If you're ahead, open `step7_class_challenge.m`.

## 3. How each file type works in class

Every file in a lesson folder is named by **audience** (`teacher` = for your eyes,
`class` = shown on the smartboard or handed out) and numbered `step1`–`step7` in the
approximate order it's used. The numbers sit after a letter because MATLAB can't run a
script whose filename starts with a digit. Unnumbered `.m` files (the turtle toolbox,
`cheer.m`, the adventure rooms…) are support machines the numbered files call —
MATLAB requires a function's filename to match its name, so they keep their own names
and are never opened in order.

### `step3_class_demo.m` — the code IS the slides

Demo files are written to be **read aloud, top to bottom, on the smartboard**. Comments
(the `%` lines) carry the narration: definitions, questions to ask the class, and
`⭐ ASK THE CLASS` prompts. The `%%` banner lines divide the file into sections — and
MATLAB treats each as a runnable cell: click in it, `Ctrl+Enter`, and only that section
runs. Walk the file one section at a time, predicting before every run.

### `step4_class_fill_in_the_blank.m` — kids write the code, you type it

Blanks appear as `____`. The file's comments say what each blank needs. Workflow:

1. Scroll to the task. Read it aloud.
2. Kids raise hands / call out what goes in the blank.
3. Type their answer **even if it's wrong**, and run it. Wrong answers that crash are
   *gold* — read the error message together and let the class debug it.
4. The completed version lives in `step2_teacher_answer_key.md` if you need it.

> The blanks are written as `____` on purpose: it's a legal MATLAB name, so the file
> stays loadable, but *running* an unfilled blank stops with
> `Unrecognized function or variable '____'` — which is itself a teachable moment
> ("MATLAB doesn't know what `____` is… so let's tell it").

### `step5_class_predict_the_output.m` — the voting game

Each round shows a few lines of code with A/B/C choices in the comments. Run the whole
file (`F5`): it pauses before each reveal and waits for you to press Enter in the
Command Window. So the loop is:

1. Class reads the round's code in the Editor and votes (hands, fingers, or shouting —
   your call).
2. Click in the Command Window, press Enter. The answer prints.
3. Ask *someone who got it right* to explain why.

### `step7_class_challenge.m` — the pressure valve

Runnable stretch content: a harder version of the day's idea, a wow-demo, or a sneak
peek of a future week. Use it when a class is fast, a kid asks "but could it do X?", or
you want a big finish.

### Extra `.m` files in some weeks

MATLAB's rule is *one named function per file, named after itself* — so when the course
reaches functions (week 10), function files appear next to the scripts, and the lesson
leans into it: "each machine lives in its own file." Weeks 11–12 ship a tiny
**turtle toolbox** (`turtle_start.m`, `forward.m`, `right.m`, …) built on `plot` — by
week 11 the class can read every line of it. Weeks 15–16 add the class game's room
functions. Keep the Current Folder set to the week's folder so MATLAB finds them.

### `step6_class_handout.md` / `step6_class_handout.pdf` — the only paper in the room

One page. Print `step6_class_handout.pdf`, one per student (`step6_class_handout.md` is the editable source if
you customize — re-print via any markdown preview). It has:

- The day's vocabulary
- 2–3 paper exercises ("be the computer", spot-the-bug, trace-the-code)
- An **optional brain teaser** to take home — never collected, never graded, but kids
  who bite get a shout-out next week.

### `step2_teacher_answer_key.md` — yours, not theirs

Completed fill-in-the-blank code, predict-the-output answers *with explanations*, and
handout answers.

## 4. Classroom moves that work with this format

- **Errors are applause moments.** The first time something stops with red text,
  celebrate: "EXCELLENT — our first error! Every programmer sees hundreds of these a
  day. Let's read what it says." Kids learn that red text is a clue, not a failure.
- **Type student mistakes.** When a kid gives a wrong answer for a blank, type it and
  run it. Let MATLAB deliver the bad news, then let the *class* fix it. Nobody's wrong —
  everyone's debugging.
- **Predict before every run.** Never run code without first asking "what's going to
  happen?" Even 10 seconds of prediction turns watching into thinking.
- **Narrate the Workspace.** Every time a variable is born or changes, point at its row:
  "watch the box." When a bug hides in a variable's value, the Workspace is where the
  class finds it.
- **The semicolon is the hush key.** A line *without* a semicolon announces its result
  in the Command Window; a line *with* one works silently. Introduced in week 2 — use
  the vocabulary constantly ("should I hush this line?").
- **Use names.** Put students' names in the code constantly — variables, Mad Libs,
  game players. `zoe_score = 10` beats `x = 10` every time.
- **The 30-second rule.** If a kid's question would take you off-plan for more than 30
  seconds, say "amazing question — that's exactly where this is going in week N" and
  park it. The curriculum map in `CURRICULUM.md` tells you where topics land.
- **Repeat the vocabulary.** Each lesson has 3–5 vocabulary words. Say them, point at
  them on the handout, and reuse them in later weeks.

## 5. Pacing and flexibility

- **A missed week is fine.** The concept ladder resumes cleanly: each lesson's README
  starts with a 2-minute "last time" recap you can stretch after a gap.
- **Splitting a lesson is fine.** If a class only gets through the demo, start the next
  class at the fill-in-the-blank file — it re-practices the same concept.
- **The two grades can drift.** 7th and 8th run the same lessons; if one class moves
  faster, the challenge files absorb the difference.
- **Weeks 15–16 are buffers.** The final project can stretch to three weeks or compress
  to one — see week 15's README for how.

## 6. Troubleshooting live

| Symptom | Fix |
|---------|-----|
| `Unrecognized function or variable '____'` | A blank wasn't filled in yet. |
| `Unrecognized function or variable 'x'` (a real name) | The Workspace lost it — was `clear` run? Re-run the section that creates it. |
| Red error text on running a file | Read the line number aloud and hunt together — that's the lesson working as intended. |
| `Error: ... Parse error` before anything runs | The file's grammar broke (usually a missing `end` or quote from live typing). Check the Editor's red underlines in the right margin. |
| Output says `ans = …` unexpectedly | A line is missing its variable name or semicolon — good discussion moment ("`ans` is MATLAB's scratch box"). |
| Nothing prints | The script probably stopped above, or it's waiting at an `input(...)` — click the Command Window and look for the cursor. |
| `input` seems stuck | It's waiting for *you* — click inside the Command Window and type a response. |
| Turtle/plot window is blank or missing | The figure window opened *behind* MATLAB — check the taskbar. `close all` and re-run for a fresh canvas. |
| Command Window is cluttered | `clc` (and narrate it: "wiping the board, not the memory — the Workspace still has our boxes"). |
| A script won't run and MATLAB offers "Change Folder" | Click **Change Folder** — the Current Folder wasn't the lesson folder. |
