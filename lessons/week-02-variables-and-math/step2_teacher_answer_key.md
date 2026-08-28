# Week 2 — Answer Key (teacher only)

## `step4_class_fill_in_the_blank.m` — completed code

```matlab
% TASK 1 — whatever the headcount is (no quotes, no semicolon — let it announce)
students = 27

% TASK 2 — no quotes: look up the box, don't say the word
disp(students)

% TASK 3 — typed live by dictation; the semicolon is the whole answer
secret = 777;
% (Nothing prints — but the Workspace shows the secret box. Proof!)

% TASK 4 — class picks x; second blank is x so MATLAB substitutes
x = 7;
disp(3 * x + 2)          % → 23 (with x = 7)

% TASK 5 — the blank is score: take what's in the box, add 10, put it back
score = 50;
score = score + 10;
disp(score)              % → 60

% TASK 6 — floor answers "each"; mod answers "left over"
slices = 23;
kids = 4;
each = floor(slices / kids)        % announces: each = 5
leftover = mod(slices, kids)       % announces: leftover = 3

% TASK 7 — any power the class picks, e.g.:
disp(2 ^ 16)             % → 65536 (every digit exact)
% Keep escalating: past 7–9 digits the display flips to SCIENTIFIC NOTATION
% (2^100 → 1.2677e+30), and from 2^1024 on it's Inf — the edge of the
% number line. Both landmarks are wins, not errors.

% TASK 8 — any never-created label, e.g.:
%   disp(homework)  →  Unrecognized function or variable 'homework'.
% Fix: create the box first, then disp works:
victory = 100;
disp(victory)            % → 100
```

*(Tasks 1 and 6 deliberately have no semicolon so MATLAB announces the new value —
the echo spreads the name and value over a couple of lines; the value is what
matters. Point at the matching Workspace row each time.)*

## `step5_class_predict_the_output.m` — answers

| Round | Answer | Why |
|-------|--------|-----|
| 1 | **A** — `5` | No quotes → look up the box named `x` → it holds 5. |
| 2 | **B** — `x` | Quotes → it's a string → the computer says the word without looking anything up. *Quotes mean "say it"; no quotes mean "look it up."* |
| 3 | **B** — `14` | PEMDAS: multiply first (3 × 4 = 12), then add 2. MATLAB never goes left-to-right when order of operations says otherwise. |
| 4 | **C** — `20` | Start 10, add 5 (→15), add 5 again (→20). Each line replaces the box's value. |
| 5 | **A** — `3` then `2` | `floor(17/5)` keeps the whole part of 17 ÷ 5; `mod(17,5)` keeps only the remainder. Pizza: 3 each, 2 left over. |
| 6 | **B** — MATLAB announces `total = 42` | The semicolon hushed line 1, but the box was still filled. Typing a bare box name asks MATLAB to announce it — name and value (spread over a couple of lines; the value shown is 42). Not C: the box exists! |
| Final | **A** — `8` | `b = a ^ 3` runs when `a` is 2, so 8 goes in box `b`. Changing `a` afterward does NOT reach back into `b` — **a box stores a value, not a formula.** |

*(The final round is the day's deepest idea — if the class is split, draw two boxes on
the whiteboard and act out all four lines with sticky notes. Round 6 is the hush-key
check: if kids voted A, re-run the demo's `secret = 777;` moment and point at the
Workspace.)*

## Handout answers

**1 · Be the computer**

```
10
x
```

- Line 1 (`x = 10;`) shows **nothing** — the semicolon is the hush key.
- Line 2 shows `10` (look up the box), line 3 shows `x` (say the word).
- Line 4 announces `x = 15` (no semicolon: 10 + 5, announced).
- Workspace row after all four lines: `x` holds **15**.

**2 · PEMDAS drill**

```
14      (multiply first)
20      (parentheses overrule)
4       (10 - 6)
8       (2 x 2 x 2)
```

**3 · The pizza machines**

`floor(23 / 4)` → **5** each · `mod(23, 4)` → **3** left over · check: 5 × 4 + 3 = **23** ✓

## Brain teaser guidance

The classic solution uses a third box:

```matlab
temp = a;     % temp: 3   (copy a somewhere safe)
a = b;        % a: 7
b = temp;     % b: 3
```

Any working order with a spare box earns full glory. The most common miss is
`a = b` then `b = a` — both boxes end up holding 7, because the 3 was destroyed
in step 1. If someone brings that in, trace it with two drawn boxes and let *them*
spot the moment the 3 vanishes — then hand them the third-box hint. (A kid who
invents a different correct sequence, e.g. swapping via `b`, is also right.)
