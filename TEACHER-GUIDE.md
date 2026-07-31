# Teacher Guide

How to use this repo to teach a 45-minute, smartboard-driven CS class where **you** have
the computer and the **students** have their brains, their voices, and a handout.

---

## 1. One-time VS Code setup for the smartboard

Kids in the back row need to read the code. Before your first class:

- **Editor font**: `Ctrl` `+` (or `Cmd` `+`) until the code is readable from the back of
  the room. Zoom affects the terminal too. Aim for roughly 20+ point.
- **Terminal font**: if the terminal is still small, Settings → search
  "terminal font size" → bump it up.
- **Theme**: a high-contrast theme (e.g. *Dark+* or *Light+*) projects better than
  low-contrast ones.
- **Hide clutter**: `Ctrl+B` toggles the file sidebar — hide it while presenting, show it
  when switching files.
- **Run a file**: click the ▶ Run button (top right), or open a terminal
  (`` Ctrl+` ``) and type `python <filename>`.
- **Run only a few lines** (used in some lessons): highlight the lines, press
  `Shift+Enter`, and they run in the Python terminal.

Do a dry run on the actual smartboard once before week 1. Projectors cut off edges and
wash out colors in ways your monitor won't show you.

## 2. The rhythm of a lesson

Every lesson's `README.md` has a minute-by-minute plan, but they all follow the same
shape:

| Minutes | Segment | What's happening |
|---------|---------|------------------|
| 0–5 | **Hook** | A question, puzzle, or "watch this" moment. No code knowledge needed. |
| 5–20 | **Demo** (`1-demo.py`) | You walk through the file top-to-bottom, running as you go. Ask the questions written in the comments. |
| 20–30 | **Fill-in-the-blank** (`2-fill-in-the-blank.py`) | The class completes the code out loud; you type their answers and run. |
| 30–38 | **Predict the output** (`3-predict-the-output.py`) | Class votes A/B/C, you run to reveal. Keep score if they love competition. |
| 38–43 | **Handout** | Kids do the paper exercises; you circulate. |
| 43–45 | **Wrap-up** | One-sentence summary + tease next week. |

If you fall behind, cut from the *end* (handout time shrinks first — it can go home).
If you're ahead, open `4-challenge.py`.

## 3. How each file type works in class

### `1-demo.py` — the code IS the slides

Demo files are written to be **read aloud, top to bottom, on the smartboard**. Comments
carry the narration: definitions, questions to ask the class, and `⭐ ASK THE CLASS`
prompts. Big banner comments divide the file into sections.

Run the whole file once early so kids see the payoff, or run it section by section with
`Shift+Enter` — each lesson plan says which works better.

### `2-fill-in-the-blank.py` — kids write the code, you type it

Blanks appear as `____`. The file's comments say what each blank needs. Workflow:

1. Scroll to the task. Read it aloud.
2. Kids raise hands / call out what goes in the blank.
3. Type their answer **even if it's wrong**, and run it. Wrong answers that crash are
   *gold* — read the error message together and let the class debug it.
4. The completed version lives in `answer-key.md` if you need it.

> The blanks are written as `____` on purpose: Python treats it as a name, so the file
> stays syntactically valid, but running an unfilled blank raises a `NameError` — which
> is itself a teachable moment ("Python doesn't know what `____` is… so let's tell it").

### `3-predict-the-output.py` — the voting game

Each round shows a few lines of code with A/B/C choices in the comments. Run the file
once from the top: it pauses before each reveal and waits for you to press Enter in the
terminal. So the loop is:

1. Class reads the round's code on screen and votes (hands, fingers, or shouting — your
   call).
2. Press Enter. The answer prints.
3. Ask *someone who got it right* to explain why.

### `4-challenge.py` — the pressure valve

Runnable stretch content: a harder version of the day's idea, a wow-demo, or a sneak
peek of a future week. Use it when a class is fast, a kid asks "but could it do X?", or
you want a big finish.

### `handout.md` — the only paper in the room

One page. Print one per student (VS Code: open the file → `Ctrl+Shift+V` for preview →
print from the preview, or paste into a doc and print). It has:

- The day's vocabulary
- 2–3 paper exercises ("be the computer", spot-the-bug, trace-the-code)
- An **optional brain teaser** to take home — never collected, never graded, but kids
  who bite get a shout-out next week.

### `answer-key.md` — yours, not theirs

Completed fill-in-the-blank code, predict-the-output answers *with explanations*, and
handout answers.

## 4. Classroom moves that work with this format

- **Errors are applause moments.** The first time something crashes, celebrate:
  "EXCELLENT — our first error! Every programmer sees hundreds of these a day. Let's
  read what it says." Kids learn that red text is a clue, not a failure.
- **Type student mistakes.** When a kid gives a wrong answer for a blank, type it and
  run it. Let Python deliver the bad news, then let the *class* fix it. Nobody's wrong —
  everyone's debugging.
- **Predict before every run.** Never run code without first asking "what's going to
  happen?" Even 10 seconds of prediction turns watching into thinking.
- **Use names.** Put students' names in the code constantly — variables, Mad Libs,
  game players. `zoe_score = 10` beats `x = 10` every time.
- **The 30-second rule.** If a kid's question would take you off-plan for more than 30
  seconds, say "amazing question — that's exactly where this is going in week N" and
  park it. The curriculum map in `CURRICULUM.md` tells you where topics land.
- **Repeat the vocabulary.** Each lesson has 3–5 vocabulary words. Say them, point at
  them on the handout, and reuse them in later weeks. ("Who remembers what we call the
  words in quotes? … A *string*.")

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
| `SyntaxError` when you run | You (or a student's answer) broke the grammar — read the error's line number aloud and hunt together. |
| `NameError: name '____' is not defined` | A blank wasn't filled in yet. |
| Nothing prints | The file probably crashed above, or the code is below an unreached `input()`. Scroll the terminal up. |
| Turtle window is blank / frozen | It may have opened *behind* VS Code — check the taskbar. |
| Turtle window closed instantly | The script ended. The lesson files end with `turtle.done()` to prevent this — check it wasn't deleted. |
| Kids can't read the terminal | Zoom terminal font (see setup) and clear old output: type `clear` (Mac/Linux) / `cls` (Windows), or click the trash icon and reopen. |
| `input()` seems stuck | It's waiting for *you* — click inside the terminal and type a response. |
