# Week 4 — If/Else Decisions

> **Unit 2: Decisions** · inequalities tie-in

## Objectives

By the end of class, students can:

1. Explain that a comparison like `height >= 132` is a **question** whose answer is
   `True` or `False` (a **boolean**)
2. Trace an `if`/`elif`/`else` chain and predict which ONE branch runs
3. Explain that indentation means "this line **belongs to** the if"
4. Tell `==` (asks) apart from `=` (assigns) — and connect `>=` vs `>` to closed vs
   open circles on a number line

## Vocabulary

| Word | Kid-friendly definition |
|------|------------------------|
| **boolean** | a value with only two options: `True` or `False` |
| **comparison** | a question about values: `> < >= <= == !=` — the answer is a boolean |
| **condition** | the question an `if` checks before deciding |
| **`if` / `elif` / `else`** | if this... otherwise if this... otherwise. Exactly ONE branch runs |
| **indent** | the sideways space that means "this line belongs to the if" |

## Math tie-in

**This is the inequalities unit, running on electricity.** `height >= 132` *is* the
inequality h ≥ 132, and running the program *is* testing whether a value satisfies
it — the answer is literally `True` or `False` on screen. The bouncer hook turns
`>=` vs `>` into the closed-vs-open circle from their number-line graphs: is the
boundary number IN or OUT? The elif chain slices the number line into intervals
(the temperature advisor is a number line drawn in code), and the elif-order trap
is a lesson about *overlapping* inequalities — when two are true, order decides.
Boundary testing (131, 132, 133) is exactly how mathematicians check their work.

## Before class

- [ ] Print `handout.md` (one per student), have `answer-key.md` open or printed for you
- [ ] Open this folder in VS Code, zoom fonts (see `TEACHER-GUIDE.md`)
- [ ] Test-run `1-demo.py` once — the Sorting Hat at the end uses `input()`, you type
- [ ] Optional hook prop: a meter stick, or mark 132 cm on the doorframe with tape
- [ ] Shout-outs for anyone who brought back a homemade Mad Libs (RUN THE BEST ONE —
      you promised)

## Lesson plan — 45 minutes

### 0:00–0:02 · Last time

Two minutes: *"What does `input()` do?"* (asks and WAITS) — *"What type does it hand
back?"* (a string, always) — *"How do we get a real number out of it?"* (`int()`).
Run a returned Mad Libs if one came back — promise kept, 90 seconds, eternal glory.
Then: *"So far the program treats everyone the same. Today it starts making
DECISIONS."*

### 0:02–0:07 · Hook: the rollercoaster bouncer

Draw a rollercoaster sign on the board: **"YOU MUST BE AT LEAST 132 CM TO RIDE."**
You're the bouncer (meter stick optional but excellent). Interview the class:

- 140 cm walks up — in or out? *(In. Easy.)*
- 120 cm — out. *(Also easy.)*
- Now the drama: someone is **exactly 132 cm**. Riding or crying? Let them argue.

> *"'At least 132' means 132 is IN — that's `>=`, and on your number-line graphs
> it's a CLOSED circle. If the sign said 'MORE than 132', exactly-132 walks home —
> that's `>`, the open circle. Today we teach the computer to be this bouncer,
> and the computer NEVER gets the boundary wrong."*

### 0:07–0:24 · Demo: `1-demo.py`

Walk the file top-to-bottom, running each section. Beats to hit:

- `print(3 > 2)` prints `True` — comparisons are **questions with boolean answers**
- The first `if`: the bouncer in code — colon, indent, *"the indented line belongs
  to the if"*
- **Boundary drama**: run the bouncer at 140, then at exactly 132 — closed circle!
- `else`: what happens to everyone the if rejects
- The **elif chain**: the temperature advisor slices the whole number line; exactly
  ONE branch ever runs
- `==` asks, `=` assigns — uncomment the broken line, enjoy Python literally
  suggesting `==` in the error message
- **🎉 THE SORTING HAT** — kids shout lucky numbers, you type, the hat assigns
  teams with total confidence. Do at least three students plus yourself.

### 0:24–0:32 · Class writes code: `2-fill-in-the-blank.py`

The class picks boundaries, invents team names, and supplies the comparison
operators (tasks 3 and 5 you type live while they choose the symbol). Run after
every task. Completed code in `answer-key.md`.

### 0:32–0:39 · Voting game: `3-predict-the-output.py`

Class votes A/B/C, you press Enter to reveal. Round 4 is the elif-order trap —
let the argument happen before the reveal, it's the best 60 seconds of the class.
The final round crashes on purpose (simulated) — Python's error message actually
suggests the fix.

### 0:39–0:43 · Handout

Kids trace an elif chain, match `>=`/`>` to closed/open circles, and spot three
classic bugs. Brain teaser: find the gap in a set of sorting-hat rules — a real
QA job on paper.

### 0:43–0:45 · Wrap-up

Say it once, plainly: *"A comparison is a question; the answer is True or False.
`if` runs its indented block only when the answer is True, and exactly one branch
of a chain wins."* Tease week 5: *"Next week the computer gets DICE. It will make
random choices — and we're going to play rock-paper-scissors against it. Best of
five. It has never lost gracefully."*

## If you have extra time

Open `4-challenge.py`: the Grade-O-Matic (score → letter grade, test the boundaries!),
an even/odd detector powered by week 2's `%`, the Guess-My-Rule game (the class probes
a secret rule with numbers — re-run it over and over), and a labeled sneak peek of
week 5's coin flip.

## Common pitfalls

- **`=` vs `==`.** The bug of the decade, every decade. Drill the chant: *"one
  equals PUTS, two equals ASKS."* When it bites, Python's own error message
  suggests `==` — read it aloud and act betrayed that the computer is this helpful.
- **Indentation feels like decoration.** It isn't — it's grammar. Physically lean
  sideways when reading indented lines: "these lines are INSIDE the if."
- **"Why did only one branch run? Both were true!"** That's the round-4 trap:
  a chain checks top-down and the first True wins — the rest never get read.
  Order is part of the program.
- **Boundary off-by-one.** Kids will say "over 13" for `>= 13`. Always test the
  exact boundary number on screen — make "check the boundary" a reflex now, it
  pays off for every math test they ever take.
- **Running long.** The Sorting Hat can absorb any amount of time — cap it at
  three or four students and keep the handout segment as the shock absorber.
