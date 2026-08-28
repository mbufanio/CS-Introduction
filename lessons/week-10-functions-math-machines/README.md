# Week 10 — Functions: Math Machines

> **Unit 5: Functions** · The week MATLAB and math class turn out to be the same class

## Objectives

By the end of class, students can:

1. Read `f = @(x) 2*x + 1` as **building a machine** — and spot the machine sitting in the Workspace
2. Explain that *calling* `f(3)` is exactly math's f(3): drop a value in the slot, catch what comes out
3. Read a **function file** (`function out = double_it(x)` … `end`) and explain MATLAB's rule: one named machine per file, named after itself
4. Explain what the **output slot** does — hands the answer back so the program can keep using it — and why a machine with *no* output slot (like `cheer`) errors if you try to catch one
5. Trace a function with two parameters and explain why argument **order** matters
6. Trace a **composed** call like `double_it(double_it(3))` — inside out, just like f(f(3))

## Vocabulary

| Word | Kid-friendly definition |
|------|------------------------|
| **function** | a machine you build once and use forever: input goes in, output comes out |
| **`@` (the machine-builder)** | builds a machine right in the script: `f = @(x) 2*x + 1` — and stores it in a Workspace box! |
| **function file** | a named machine's home: its own `.m` file, named after itself, ending with `end` |
| **parameter** | the machine's input slot — the name inside the parentheses |
| **argument** | the actual value you drop into the slot when you call: the 5 in `double_it(5)` |
| **call** | actually using the machine: `double_it(5)` — the parentheses press the button |
| **output slot** | the `out =` in the function line — filling it hands the answer back, so you can print it, store it, or feed it to another machine |

## Math tie-in

**f(x) is not "like" a MATLAB function — it IS one.** The function machines and
input/output tables students have drilled all year run today, live: `f = @(x) 2*x + 1`
is the board's f(x) = 2x + 1 *in nearly the same handwriting*, `f(3)` is substitution
(same notation, same parentheses, same answer), and a week-6 loop prints the full
input/output table that they fill by hand in the hook. Two parameters turn formulas
into machines — `rectangle_area(width, height)` is A = w × h — and argument order
matching formula order is exactly "which variable is which." The finale is
composition: `double_it(double_it(3))` *is* f(f(3)), evaluated inside-out like nested
parentheses. When function notation shows up formally in algebra, today is the day
this class already gets it.

## Extra `.m` files this week — and the Current Folder rule

This is the week MATLAB's "one named machine per file" rule kicks in, so the lesson
folder contains **six function files** alongside the usual scripts:

| File | Used by | What it is |
|------|---------|------------|
| `double_it.m` | demo, predict game | the calculating machine (× 2) — named `double_it` because MATLAB already owns `double` (week 8!) |
| `rectangle_area.m` | demo, predict game | the two-slot machine, A = w × h |
| `cheer.m` | demo, predict game | the performing machine — **no output slot**; this is the print-vs-return teaching vehicle |
| `f_to_c.m`, `c_to_f.m` | challenge | temperature converters that round-trip |
| `mystery_machine.m` | challenge | guess-my-rule — **do not open it on the smartboard** |

⚠ **The Current Folder must be this week's folder**, or MATLAB can't find any of
these machines and every call errors with `Unrecognized function or variable`.
Set it before class; if MATLAB offers a "Change Folder" button mid-lesson, click it.

## Before class

- [ ] Print `handout.pdf` (one per student), have `answer-key.md` open or printed for you
- [ ] Open MATLAB, **set the Current Folder to this lesson's folder** (see the box above), zoom fonts for the smartboard (see `TEACHER-GUIDE.md`), type `clc`
- [ ] Test-run `lesson_demo.m` once — Section 7 asks you to type five names live
- [ ] Board prep: leave space to draw the function machine (box with a funnel in, chute out) and a small input/output table next to it
- [ ] Have `cheer.m` open in a second Editor tab, ready for the live-edit moment

## Lesson plan — 45 minutes

### 0:00–0:02 · Last time

Two-minute recap of week 9: *"One formula — position plus shift, mod 26 — scrambled
messages, unscrambled them, and brute-forced Caesar's own cipher. But notice: we
retyped that same five-line block THREE times. Encoder, decoder, brute-forcer.
Programmers hate retyping. Today we fix that forever."* Brain-teaser shout-outs:
spies, analysts, and cryptographers take a bow.

### 0:02–0:07 · Hook: the machine becomes real

Draw the classic machine on the board: a box labeled **f(x) = 2x + 1**, funnel in the
top, chute out the side. Feed it 1 → out comes 3. Feed it 2 → 5. Fill a small
input/output table by hand for x = 1, 2, 3 — the class calls out the outputs; they've
done this in math since September. Then the pivot, verbatim if you like: *"You have
been doing functions all year. Today the machine stops being a drawing. Today the
machine becomes REAL — and by the end of class it will run a thousand inputs without
getting bored."*

### 0:07–0:23 · Demo: `lesson_demo.m`

Walk the file section by section (`Ctrl+Enter`). Beats to hit:

- `f = @(x) 2*x + 1` typed **next to the board drawing** — same idea, same
  parentheses. ⭐ Run just that line: nothing prints… but **f appears in the
  Workspace**. We stored a MACHINE in a box. Building isn't running
- `f(3)` → 7 — math's f(3) and MATLAB's f(3) are *the same notation*. Let it sink in
- A week-6 loop generates the board's input/output table instantly (weeks 6 and 10
  shake hands)
- **The file rule**: named machines live in their own files. Open `double_it.m` on
  the board — output slot, name, input slot, `end`. (And the naming story: MATLAB
  already owns `double`, week 8's x-ray, so ours is `double_it`)
- The output slot hands the answer back: store it (watch the Workspace), do more math
  with it, feed it onward. And the hushed call `double_it(50);` — the 100 evaporated;
  delete the semicolon and `ans` catches the orphan (week 2's scratch box returns!)
- Two slots: `rectangle_area(width, height)` — a formula becomes a machine; order
  of arguments = which variable is which
- The class meets `cheer(name)` — **no output slot**, a machine that PERFORMS. Five
  calls, five students. ⭐ Live-edit moment: change the chant *inside* `cheer.m`
  once, re-run, all five update. Laziness is a programmer virtue
- ⭐ **The classic trap, staged live in the Command Window**: `result = cheer('Ada')`
  → red text: `Error using cheer` / `Too many output arguments.` The machine cheers
  but hands nothing back. Contrast `out = double_it(5)` — works, because `double_it`
  declares an output
- Section 7's conveyor belt: a loop calls `cheer` for five volunteers, one typed name
  per lap — machines bolted to loops
- Composition finale: `double_it(double_it(3))` — f(f(3)), inside out

### 0:23–0:31 · Class writes code: `fill_in_the_blank.m`

The class finishes machines, names parameters, invents what a mystery machine does,
and wires a machine into a loop — all `@`-machines, so each one appears in the
Workspace as it's born. One task is a live-typed `@` hunt where wrong answers are
extra valuable — see the file. Completed code is in `answer-key.md`.

### 0:31–0:38 · Voting game: `predict_the_output.m`

Six rounds: a warm-up call, composition, two-parameter order (multiplication forgives,
subtraction does NOT), the sneaky classic — `result = cheer('Ada')`, the error is
*simulated* in the file so the game keeps running — and a function called from inside
a loop. Vote A/B/C, press Enter, winners explain.

### 0:38–0:43 · Handout

Input/output tables for real function-file code, match-the-call-to-its-output, and
write-your-own function file on paper. Brain teaser: composed machines, f(g(2)) vs
g(f(2)) — order matters.

### 0:43–0:45 · Wrap-up

*"`@` builds a machine in a box; a function file gives it a home of its own; calling
runs it; the output slot hands the answer back. Math's f(x) has been MATLAB all
along."* Tease week 11: *"Next week our functions learn to DRAW. There will be a
turtle. I'm not explaining further."*

## If you have extra time

Open `challenge.m`: temperature converters that round-trip through each other
(`c_to_f(f_to_c(212))` → 212 — inverse functions, like last week's encode/decode), a
guess-my-rule mystery machine the class reverse-engineers from its outputs (the rule
hides in `mystery_machine.m` — keep it closed!), and a comment-only teaser for week
11, where the machines start drawing.

## Common pitfalls

- **"Why did nothing happen?" after building a machine.** The #1 confusion. Building
  isn't running — but MATLAB gives you the perfect rebuttal: *point at the Workspace.*
  The machine is right there, in a box, waiting. Only a *call* runs it.
- **Catching from a machine with no output slot.** `result = cheer('Ada')` stops with
  `Error using cheer` / `Too many output arguments.` (Octave words it
  `cheer: function called with too many outputs`.) That error IS the lesson —
  performing machines hand nothing back. Don't rescue the class too fast.
- **Parameter vs argument.** Keep it light: the parameter is the *slot's name*, the
  argument is *what you dropped in*. If kids just say "the input," that's fine this
  week.
- **Argument order with two parameters.** `gap(9, 2)` vs `gap(2, 9)` — multiplication
  hides the bug, subtraction exposes it. Connect to formulas: w and h in A = w × h
  are forgiving; the numerator and denominator in a fraction are not.
- **File name vs machine name.** They must match — that's the whole rule. If someone
  renames the file but not the function line (or vice versa), MATLAB gets grumpy in
  confusing ways; just keep them identical and move on.
- **`Unrecognized function or variable 'double_it'`** mid-lesson means the Current
  Folder wandered off. Click MATLAB's "Change Folder" offer, or `cd` back to this
  week's folder.
