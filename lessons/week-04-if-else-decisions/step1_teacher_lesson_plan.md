# Week 4 — If/Else Decisions

> **Unit 2: Decisions** · inequalities tie-in

## Objectives

By the end of class, students can:

1. Explain that a comparison like `height >= 132` is a **question** whose answer is
   `1` (yes) or `0` (no) — a **logical** value
2. Trace an `if`/`elseif`/`else` chain and predict which ONE branch runs
3. Explain that `end` closes every decision — MATLAB has to be told where it ends
4. Tell `==` (asks) apart from `=` (assigns) — and connect `>=` vs `>` to closed vs
   open circles on a number line

## Vocabulary

| Word | Kid-friendly definition |
|------|------------------------|
| **logical** | the computer's answer to a question: `1` means yes, `0` means no |
| **comparison** | a question about values: `> < >= <= == ~=` — the answer is a logical 1/0 |
| **condition** | the question an `if` checks before deciding |
| **`if` / `elseif` / `else`** | if this... otherwise if this... otherwise. Exactly ONE branch runs |
| **`end`** | the word that closes the decision — every `if` gets one |
| **`~=`** | not equal — the `~` is a wiggly NOT |

## Math tie-in

**This is the inequalities unit, running on electricity.** `height >= 132` *is* the
inequality h ≥ 132, and running the program *is* testing whether a value satisfies
it — the answer lands on screen as `1` or `0`. The bouncer hook turns `>=` vs `>`
into the closed-vs-open circle from their number-line graphs: is the boundary number
IN or OUT? The elseif chain slices the number line into intervals (the temperature
advisor is a number line drawn in code), and the elseif-order trap is a lesson about
*overlapping* inequalities — when two are true, order decides. Boundary testing
(131, 132, 133) is exactly how mathematicians check their work.

## Before class

- [ ] Print `step6_class_handout.pdf` (one per student), have `step2_teacher_answer_key.md` open or printed for you
- [ ] Open MATLAB, set the Current Folder to this lesson's folder, zoom fonts
      (see `TEACHER-GUIDE.md`), type `clc` and `clear`
- [ ] Test-run `step3_class_demo.m` once — the Sorting Hat at the end uses `input()`, you
      type; rehearse section 6's staged crash (uncomment, run, read, re-comment)
- [ ] Optional hook prop: a meter stick, or mark 132 cm on the doorframe with tape
- [ ] Shout-outs for anyone who brought back a homemade Mad Libs (RUN THE BEST ONE —
      you promised)

## Lesson plan — 45 minutes

### 0:00–0:02 · Last time

Two minutes: *"What does `input()` do?"* (asks and WAITS) — *"Numbers come back
ready for...?"* (math) — *"And words need...?"* (the `'s'` flag — otherwise MATLAB
hunts for a box named Ada). *"What's `fprintf`?"* (the Mad Libs machine — `%s` for
words, `%d` for numbers). Run a returned Mad Libs if one came back — promise kept,
90 seconds, eternal glory. Then: *"So far the program treats everyone the same.
Today it starts making DECISIONS."*

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

### 0:07–0:24 · Demo: `step3_class_demo.m`

Walk the file top-to-bottom, running each `%%` section. Beats to hit:

- `disp(3 > 2)` shows `1` — comparisons are **questions**, and the computer answers
  every one with `1` (yes) or `0` (no). Make this its own beat: no words, just a
  light switch. `~=` is "not equal" — *the `~` is a wiggly NOT*.
- The first `if`: the bouncer in code — condition on top, the lines inside, and
  **`end`** closing the decision: *"MATLAB needs to be told where the decision
  ends."* Say the indentation line ONCE, here: *"MATLAB doesn't care about the
  indent — humans do. We always indent anyway."*
- **Boundary drama**: run the bouncer at 140, then at exactly 132 — closed circle!
- `else`: what happens to everyone the if rejects — one `end` still closes it all
- The **`elseif` chain** (one word!): the temperature advisor slices the whole
  number line; exactly ONE branch ever runs
- `==` asks, `=` assigns — uncomment the broken lines, enjoy MATLAB literally
  suggesting the fix in the error message (then re-comment them!)
- **🎉 THE SORTING HAT** — kids shout lucky numbers, you type, the hat assigns
  teams with total confidence. Do at least three students plus yourself.

### 0:24–0:32 · Class writes code: `step4_class_fill_in_the_blank.m`

The class picks boundaries, invents team names, and supplies the comparison
operators (tasks 3 and 5 you type live while they choose the symbol). Run after
every task. Completed code in `step2_teacher_answer_key.md`.

### 0:32–0:39 · Voting game: `step5_class_predict_the_output.m`

Run the file (F5); class votes A/B/C, you press Enter to reveal. Round 4 is the
elseif-order trap — let the argument happen before the reveal, it's the best 60
seconds of the class. The final round crashes on purpose (simulated) — MATLAB's
error message actually suggests the fix.

### 0:39–0:43 · Handout

Kids trace an elseif chain, match `>=`/`>` to closed/open circles, and spot three
classic bugs. Brain teaser: find the gap in a set of sorting-hat rules — a real
QA job on paper.

### 0:43–0:45 · Wrap-up

Say it once, plainly: *"A comparison is a question; the answer is 1 or 0. `if` runs
its block only when the answer is 1, exactly one branch of a chain wins, and `end`
closes the decision."* Tease week 5: *"Next week the computer gets DICE. It will
make random choices — and we're going to play rock-paper-scissors against it. Best
of five. It has never lost gracefully."*

## If you have extra time

Open `step7_class_challenge.m`: the Grade-O-Matic (score → letter grade, test the boundaries!),
an even/odd detector powered by week 2's `mod()`, the Guess-My-Rule game (the class
probes a secret rule with numbers — re-run it over and over), and a labeled sneak
peek of week 5's coin flip with `randi`.

## Common pitfalls

- **`=` vs `==`.** The bug of the decade, every decade. Drill the chant: *"one
  equals PUTS, two equals ASKS."* When it bites, MATLAB's own error message says
  *"To compare values for equality, use '=='"* — read it aloud and act betrayed
  that the computer is this helpful.
- **A forgotten `end`.** The other classic. The file won't run and the error points
  near the bottom — count your `if`s and your `end`s. (The Editor's red margin
  marks usually spot it first.)
- **Kids expect the word "True".** MATLAB answers `1` and `0`, never words. Keep
  saying "the computer's yes is 1, its no is 0" — it pays off in week 5 when
  conditions get combined.
- **Indentation feels like law.** It isn't — MATLAB only cares about `if`...`end`.
  But say it once and then always indent anyway; unindented blocks on a smartboard
  are unreadable.
- **"Why did only one branch run? Both were true!"** That's the round-4 trap:
  a chain checks top-down and the first 1 wins — the rest never get read.
  Order is part of the program.
- **Boundary off-by-one.** Kids will say "over 13" for `>= 13`. Always test the
  exact boundary number on screen — make "check the boundary" a reflex now, it
  pays off for every math test they ever take.
- **Running long.** The Sorting Hat can absorb any amount of time — cap it at
  three or four students and keep the handout segment as the shock absorber.
