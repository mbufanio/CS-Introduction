# Week 10 — Answer Key (teacher only)

*(Reminder: this week's folder also holds the machine files `double_it.m`,
`rectangle_area.m`, `cheer.m`, `f_to_c.m`, `c_to_f.m` and `mystery_machine.m`.
Keep the Current Folder set here, or every call to them errors with
`Unrecognized function or variable 'double_it'.` — and keep
`mystery_machine.m` OFF the smartboard until Challenge 2 is cracked.)*

## `step4_class_fill_in_the_blank.m` — completed code

```matlab
% TASK 1 — doubling means times 2
double_me = @(x) x * 2;

% TASK 2 — call the machine by name; second line is a stealth composition
disp(double_me(4))              % → 8
disp(double_me(double_me(4)))   % → 16 (inner 8, then doubled again)

% TASK 3 — live-typed; the class supplies the symbol: @
%   half = @(x) x / 2;
%   disp(half(10))               % → 5
% If someone says "just write half = x / 2" — type it! MATLAB stops with
%   Unrecognized function or variable 'x'.
% because without @(x) there's no input slot — just a math line trying to
% run RIGHT NOW with no x in the Workspace. The @ turns "do it now" into
% "build a machine that can do it later." Then type the @ version; it flies.

% TASK 4 — any name works if BOTH blanks match; e.g.:
greet = @(name) disp(['GO ', name, ' GO! You are a CODE MACHINE!']);
greet('Ada')
greet('Leo')

% TASK 5 — the second slot: height, in both places
area_of = @(width, height) width * height;
fprintf('6 x 7 room: %d\n', area_of(6, 7))     % → 42

% TASK 6 — any expression using x; e.g.:
class_machine = @(x) x * 10 + 1;
fprintf('class_machine(5) = %g\n', class_machine(5))       % → 51
fprintf('class_machine(10) = %g\n', class_machine(10))     % → 101

% TASK 7 — any one-slot machine from today, e.g.:
for n = 1:5
    fprintf('%d --> %g\n', n, double_me(n))    % → 2, 4, 6, 8, 10
end
```

*(Quirk worth knowing: running Task 1 with the blank still unfilled does
NOT stop — MATLAB happily builds a machine with a broken inside, and the
`'____' undefined` error only fires when the machine is first CALLED in
Task 2. If that happens, enjoy it: "the machine was built with a mystery
part — it only exploded when we pressed the button." Then fill Task 1 and
re-run both.)*

## `step5_class_predict_the_output.m` — answers

| Round | Answer | Why |
|-------|--------|-----|
| 1 | **A** — `8` | `double_it(4)` drops 4 in the slot; `out = 4 * 2` fills the output slot with 8; `disp` catches it. C is the trap for kids who think the *code* comes out of the chute instead of the *answer*. |
| 2 | **B** — `12` | Inside out: `double_it(3)` → 6, then `double_it(6)` → 12. Exactly f(f(3)) from math. |
| 3 | **A** — `12` then `12` | Arguments fill slots in order, but multiplication doesn't care: 3×4 = 4×3. A false sense of security, on purpose... |
| 4 | **B** — `7` then `-7` | ...because subtraction DOES care. `gap(2, 9)` puts 2 in `a`, 9 in `b`: 2 − 9 = −7. Order of arguments = which variable is which. |
| 5 | **B** — an error | The sneaky classic, MATLAB edition. `cheer` has no output slot, so there is nothing to hand to `result` — MATLAB refuses: `Error using cheer` / `Too many output arguments.` The file *simulates* the red text so the game keeps running; dare the class to type the real thing afterwards. (In Octave the wording is `cheer: function called with too many outputs`.) |
| Final | **A** — `3 6 9` | The loop calls the machine three times with i = 1, 2, 3. B catches kids who think a machine gives the same output every time regardless of input. |

## Handout answers

**1 · Be the machine**

| x | `triple(x)` | | x | `machine(x)` |
|---|---|---|---|---|
| 1 | 3 | | 2 | 3 |
| 2 | 6 | | 3 | 8 |
| 5 | 15 | | 4 | 15 |
| 10 | 30 | | 10 | 99 |

(`machine` is x² − 1. A kid who notices `triple(5)` = `machine(4)` = 15 gets a high-five.)

**2 · Match the call to its output**

- `disp(double_it(6))` → `12`
- `disp(gap(9, 4))` → `5`
- `disp(gap(4, 9))` → `-5`
- `disp(double_it(double_it(2)))` → `8`
- Left over: `24` (bait for anyone who read `double_it(double_it(2))` as 2 × 2 ×... × something)

**3 · Build a machine on paper**

```matlab
function out = add_ten(x)
    out = x + 10;
end
```

Accept any parameter and output-slot names as long as they're used
consistently. The four things to check: the `function` line with an output
slot, the body actually *filling* that slot, the closing `end`, and the
bonus point — the file must be named **`add_ten.m`**, after the machine.

## Brain teaser

1. `double_it(add_three(2))` = **10** (inside out: 2 + 3 = 5, then 5 × 2)
2. `add_three(double_it(2))` = **7** (2 × 2 = 4, then 4 + 3)
3. **NO** — composition order matters. f(g(x)) ≠ g(f(x)) in general.

The socks-and-shoes connection: socks-then-shoes and shoes-then-socks both
"compose" the same two operations, with very different results. Same idea,
fewer tears. If a kid asks whether the order EVER doesn't matter — great
question: try `double_it` with a `triple` machine (×2 then ×3 vs ×3 then ×2
— both 6x). Multiplication machines commute; mixed add/multiply machines
don't.
