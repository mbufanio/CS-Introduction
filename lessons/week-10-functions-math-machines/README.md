# Week 10 — Functions: Math Machines

> **Unit 5: Functions** · The week Python and math class turn out to be the same class

## Objectives

By the end of class, students can:

1. Read a `def` and explain it as **building a machine**: name, input slot(s), and what comes out
2. Explain that *calling* `double(5)` is exactly math's f(5): drop a value in the slot, catch what comes out
3. Explain what **`return`** does — hands the answer back so the program can keep using it
4. Trace a function with two parameters and explain why argument **order** matters
5. Trace a **composed** call like `double(double(3))` — inside out, just like f(f(3))

## Vocabulary

| Word | Kid-friendly definition |
|------|------------------------|
| **function** | a machine you build once and use forever: input goes in, output comes out |
| **`def`** | the keyword that builds (defines) a new machine — building it doesn't run it! |
| **parameter** | the machine's input slot — the name inside the parentheses in the `def` |
| **argument** | the actual value you drop into the slot when you call: the 5 in `double(5)` |
| **call** | actually using the machine: `double(5)` — the parentheses press the button |
| **`return`** | hands the machine's answer back, so you can print it, store it, or feed it to another machine |

## Math tie-in

**f(x) is not "like" a Python function — it IS one.** The function machines and
input/output tables students have drilled all year run today, live: `def f(x): return
2 * x + 1` is the board's f(x) = 2x + 1, `f(3)` is substitution (same notation, same
parentheses, same answer), and a week-6 loop prints the full input/output table that
they fill by hand in the hook. Two parameters turn formulas into machines —
`rectangle_area(width, height)` is A = w × h — and argument order matching formula
order is exactly "which variable is which." The finale is composition: `double(double(3))`
*is* f(f(3)), evaluated inside-out like nested parentheses. When function notation
shows up formally in algebra, today is the day this class already gets it.

## Before class

- [ ] Print `handout.md` (one per student), have `answer-key.md` open or printed for you
- [ ] Open this folder in VS Code, zoom fonts for the smartboard (see `TEACHER-GUIDE.md`)
- [ ] Test-run `1-demo.py` once
- [ ] Board prep: leave space to draw the function machine (box with a funnel in, chute out) and a small input/output table next to it
- [ ] If you plan to run the challenge's turtle sneak peek: it opens a graphics window — dry-run it once so you know where the window appears on the smartboard

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

### 0:07–0:23 · Demo: `1-demo.py`

Walk the file section by section (`Shift+Enter`). Beats to hit:

- `def double(x):` builds the machine — ⭐ and running *just the def* prints nothing!
  The machine exists; nobody has pressed the button
- `double(5)`, `double(100)` — calls. Then **the punchline**: `def f(x): return
  2 * x + 1` and `f(3)` on screen, next to the board drawing. Math's f(3) and
  Python's f(3) are *the same notation* — let that sink in
- A week-6 loop generates the board's input/output table instantly (weeks 6 and 10
  shake hands)
- `return` hands the answer back: store it, do more math with it, feed it onward
- Two slots: `rectangle_area(width, height)` — a formula becomes a machine; order
  of arguments = which variable is which
- The class invents `cheer(name)` — then five calls, five students, one line each.
  ⭐ Live-edit moment: change the chant *inside* the machine once, re-run, all five
  update. Laziness is a programmer virtue
- `triple_cheer` calls `cheer` three times — machines built out of machines
- Composition finale: `double(double(3))` — f(f(3)), inside out

### 0:23–0:31 · Class writes code: `2-fill-in-the-blank.py`

The class finishes machines, names parameters, invents what a mystery machine does,
and wires a machine into a loop. One task is a live-typed `return` hunt where wrong
answers are extra valuable — see the file. Completed code is in `answer-key.md`.

### 0:31–0:38 · Voting game: `3-predict-the-output.py`

Six rounds: a warm-up call, composition, two-parameter order (multiplication forgives,
subtraction does NOT), the sneaky classic — a returned answer nobody prints — and a
function called from inside a loop. Vote A/B/C, press Enter, winners explain.

### 0:38–0:43 · Handout

Input/output tables for real `def`s, match-the-call-to-its-output, and
write-your-own-def on paper. Brain teaser: composed machines, f(g(2)) vs g(f(2)) —
order matters.

### 0:43–0:45 · Wrap-up

*"`def` builds the machine, calling runs it, `return` hands the answer back. Math's
f(x) has been Python all along."* Tease week 11: *"Next week our functions learn to
DRAW. There will be a turtle. I'm not explaining further."*

## If you have extra time

Open `4-challenge.py`: temperature converters that round-trip through each other
(`c_to_f(f_to_c(212))` → 212.0), a guess-my-rule mystery machine the class
reverse-engineers from its outputs, and a clearly-labeled week-11 sneak peek where
`square(size)` actually draws on screen (it opens a graphics window and asks first).

## Common pitfalls

- **"Why did nothing happen?" after a def.** The #1 confusion. A `def` builds the
  machine; only a *call* runs it. Return to the board: drawing the box didn't compute
  anything either. The demo stages this on purpose — don't skip the pause.
- **Calling without printing.** `double(4)` alone computes 8 and drops it on the
  floor. Predict-round 5 is built to trigger exactly this argument — let it happen,
  then anchor: *return hands it back; someone still has to catch it.*
- **Parameter vs argument.** Keep it light: the parameter is the *slot's name*, the
  argument is *what you dropped in*. If kids just say "the input," that's fine this
  week.
- **Argument order with two parameters.** `gap(9, 2)` vs `gap(2, 9)` — multiplication
  hides the bug, subtraction exposes it. Connect to formulas: w and h in A = w × h
  are forgiving; the numerator and denominator in a fraction are not.
- **Indentation of the body.** The machine's insides are indented under the `def`,
  exactly like `if` and `for` bodies. Same rule since week 4 — say so, it's calming.
