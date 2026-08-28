# Week 2 — Variables & Math

> **Unit 1: Variables & Math** · algebra tie-in

## Objectives

By the end of class, students can:

1. Explain that a **variable** is a labeled box in the computer's memory — and point to it as a row in the **Workspace pane**
2. Predict what code with variables displays — including the sneaky `disp(x)` vs `disp('x')` — and whether a line announces itself (no semicolon) or runs silently (the **hush key**)
3. Explain reassignment: `score = score + 10` is an **instruction**, not an equation
4. Evaluate expressions the way MATLAB does — with PEMDAS — and use `^`, `floor()`, and `mod()`

## Vocabulary

| Word | Kid-friendly definition |
|------|------------------------|
| **variable** | a labeled box in the computer's memory that holds one value |
| **Workspace** | the pane that shows every box, live — the computer's memory made visible |
| **assignment** | putting a value into a box: `score = 10` means "store 10 in the box named score" |
| **reassignment** | replacing what's in the box with something new |
| **semicolon `;`** | the hush key — the line still works, it just doesn't announce itself |
| **`ans`** | MATLAB's scratch box — where answers go when you don't name a box |
| **expression** | a math phrase the computer can work out, like `3 * x + 2` |
| **operator** | a math symbol: `+  -  *  /  ^` (and the machines `floor()` and `mod()`) |

## Math tie-in

**This lesson IS algebra class.** Evaluating `3x + 2` when `x = 7` by substitution is
*exactly* what MATLAB does when it runs `disp(3 * x + 2)` — the demo puts that on
screen in those words. MATLAB obeys PEMDAS to the letter (`2 + 3 * 4` is a live vote).
The day's big idea: in math, `=` **states a fact** ("these are equal"); in MATLAB,
`=` **performs an action** ("put this in that box") — which is why `score = score + 10`
is an impossible equation but a perfectly good instruction. `floor()` and `mod()` are the
division-with-remainder they've done since 3rd grade, finally with names. And when
`2^100` comes out as `1.2677e+30`, that's **scientific notation** — the 8th-grade math
topic, appearing in the wild because the number got too big to print any other way.

## Before class

- [ ] Print `step6_class_handout.pdf` (one per student), have `step2_teacher_answer_key.md` open or printed for you
- [ ] Open MATLAB, set the Current Folder to this lesson's folder, zoom fonts for the
      smartboard (see `TEACHER-GUIDE.md`), type `clc` and `clear`
- [ ] **Make the Workspace pane big and visible** — it co-stars in every beat today
- [ ] Test-run `step3_class_demo.m` once — practice `Ctrl+Enter` to run one `%%` section at a time
- [ ] Write the hook's monster expression somewhere you can reveal it fast
  (board flap, sticky note): `437 * 852 + 90210 - 12345`
- [ ] Shout-outs ready for anyone who brought back week 1's brain teaser

## Lesson plan — 45 minutes

### 0:00–0:02 · Last time

Two minutes, no slides: *"What's a program?"* (a list of exact instructions) —
*"What do quotes make?"* (a string) — *"What's red text?"* (a clue, not a failure).
Shout-outs for brain-teaser returners. Then: *"Last week the computer talked.
This week it gets a memory — and I'm going to show you the actual memory, live,
on this screen."*

### 0:02–0:07 · Hook: the mental-math race

Reveal the monster expression: `437 * 852 + 90210 - 12345`. Announce a race — the
whole class (paper allowed!) versus the computer. Count down, let them scribble for
30–45 seconds, then run the first section of `step3_class_demo.m`: the computer answers
instantly. Land the point:

> *"The computer did that in under a millisecond — and it would do a MILLION of them
> before you finished writing the 4. It's not smarter than you. It's faster. Today we
> learn to feed it problems."*

### 0:07–0:22 · Demo: `step3_class_demo.m`

Walk the file top-to-bottom on the smartboard, running each `%%` section
(`Ctrl+Enter`) as you reach it. The comments carry the narration and the
⭐ ASK THE CLASS prompts. Beats to hit:

- The race rematch (section 1) — instant answers
- **Variables & the Workspace**: `score = 10` echoes in the Command Window AND a row
  appears in the Workspace pane. Freeze and point: *"that pane is the computer's
  actual memory — watch it all semester."* Every new variable: *"another box."*
- `disp(score)` vs `disp('score')` — box contents vs the word itself
- **The hush key**: `secret = 777;` prints nothing — but the Workspace proves the
  box exists. Semicolon hushes the announcement, not the work.
- **`ans`**: a bare `2 + 2` lands in the scratch box — *"MATLAB always writes the
  answer SOMEWHERE."* Watch `ans` get recycled by the next bare calculation.
- Substitution: `x = 7` then `3 * x + 2` — *"you did this exact problem in algebra"*
- **Reassignment**: `score = score + 10` — pause here, milk the "impossible equation"
  moment, then reveal it's an instruction: *take what's in the box, add 10, put it
  back* — while the Workspace row updates before their eyes
- **PEMDAS**: MATLAB respects order of operations exactly like they must
- `^` powers: `2^10` and `2^20` come out exact — then `2^100` flips into
  **scientific notation** (`1.2677e+30` — they already speak this language!), and
  `2^1100` falls off the edge of the number line: `Inf`
- `floor()` and `mod()`: the pizza problem — 17 slices, 5 kids
- Plant the seed: *"`mod` looks useless. In week 9 it unlocks secret codes."*
- **`clear` vs `clc`**: `clc` wipes the board (memory survives); `clear` is total
  amnesia — count down from three and watch the whole Workspace vanish

### 0:22–0:31 · Class writes code: `step4_class_fill_in_the_blank.m`

Kids call out what goes in each blank; you type and run after every task
(`Ctrl+Enter` runs just that task's section). Type wrong answers too and let the class
debug. Task 3 has no blank — the class dictates the "silent box" line and proves it
worked by pointing at the Workspace. In the pizza task the class assigns `floor` and
`mod` to the right jobs. Completed code is in `step2_teacher_answer_key.md`.

### 0:31–0:38 · Voting game: `step5_class_predict_the_output.m`

Run the file (F5); it pauses before each reveal. Class votes A/B/C, you click the
Command Window and press Enter, someone who got it right explains why. Round 2, the
hush-key round, and the final round are traps — sell the drama.

### 0:38–0:43 · Handout

Hand out the printed handout. Kids work solo or in pairs on the trace, the PEMDAS
drill, and the pizza problem while you circulate. Point out the take-home brain teaser
(the two-box swap — a real interview question, tell them that, they love it).

### 0:43–0:45 · Wrap-up

Say it once, plainly: *"A variable is a labeled box. `=` puts something in the box —
you can watch it happen in the Workspace. The semicolon hushes a line, but the box
still gets filled. The computer does math with PEMDAS, exactly like you — just
faster."* Tease week 3: *"Next week the computer stops doing all the talking — it's
going to ask YOU questions. And we're going to make it tell a story about this class."*

## If you have extra time

Open `step7_class_challenge.m`: a your-age-in-seconds calculator to personalize with real ages,
the penny-doubling wow (1¢ doubled daily passes a million dollars by day 28 — `2^27`
cents — and hits five million by day 30), and the **Inf hunt**: the class corners the
edge of MATLAB's number line by calling out powers of 2 until they trap it between
`2^1023` (a real number, about 9 × 10³⁰⁷) and `2^1024` (`Inf`).

## Common pitfalls

- **"`score = score + 10` is impossible!"** Correct — *in math*. Don't rush this;
  the difference between `=` as fact and `=` as action is the whole lesson. Say
  "take, add, put back" while pointing at the line, right side first — and let the
  Workspace row's change be the proof.
- **`disp(x)` vs `disp('x')`.** Kids will mix these up for weeks. The rule that
  sticks: *quotes mean "say it", no quotes mean "look it up".*
- **The echo's spacing.** When a line has no semicolon, MATLAB's announcement spreads
  over a few lines (`score =` … `20`). That's normal — the value is what matters.
- **Scientific notation panic.** `2^100` showing `1.2677e+30` is not an error — it's
  the number wearing its 8th-grade math outfit. Lean in; don't let anyone call it
  "broken."
- **Decimals wear extra zeros.** `10 / 4` shows `2.5000` — that's just 2.5; MATLAB's
  short format pads to four decimal places. Whole answers show clean (`10 / 5` → `2`).
- **`clear` at the wrong moment.** If the Workspace empties mid-demo (stray `clear`),
  don't panic — re-run the section that created the boxes. It's a live rehearsal of
  the lesson itself.
- **Kids naming boxes cursed things.** Channel it — silly variable names like
  `screaming_goat = 17` are legal and memorable. You're the filter.
- **Running long.** The handout segment is the shock absorber — it can shrink to 2
  minutes and go home with them.
