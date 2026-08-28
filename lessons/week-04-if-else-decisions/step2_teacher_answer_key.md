# Week 4 — Answer Key (teacher only)

## `step4_class_fill_in_the_blank.m` — completed code

```matlab
% TASK 1 — any number; prediction is the point
disp(15 > 9)                      % → 1   (then try 3 → 0)

% TASK 2 — any height; run both branches by changing it
height = 145;                     % → WELCOME ABOARD
height = 131;                     % → teacups (tallest teacup rider!)

% TASK 3 — typed live; "at least 13" includes 13, so the answer is >=
age = 13;
if age >= 13
    disp('Leo is IN. The dance floor trembles.')
else
    disp('Leo waits outside. The DJ plays a sad song.')
end
% (with >  Leo is rejected at exactly 13 — riot, then fix)

% TASK 4 — any sensible boundaries, e.g. snow at -10, indoor recess at 0.
% NOTE the chain uses <= , so the COLDER rule must come first:
temperature = -3;
if temperature <= -10
    disp('SNOW DAY! School is cancelled. The computer is also sledding.')
elseif temperature <= 0
    disp('School''s on, but recess is indoors. Bring a deck of cards.')
else
    disp('Normal day. The flag is not even frozen to the pole.')
end
% → with -3: indoor recess. Test EXACTLY -10 and exactly 0 too.

% TASK 5 — typed live; we're ASKING, so two equals:
code = 42;
guess = 17;
if guess == code
    disp('OPEN SESAME.')
else
    disp('WRONG. The locker judges you.')                % → this one (17 ~= 42)
end
% (with =  → MATLAB refuses to run and says: Incorrect use of '=' operator.
%  To assign a value to a variable, use '='. To compare values for equality,
%  use '=='. — MATLAB suggests the fix. Read it aloud!)

% TASK 6 — any lucky number and any two school-appropriate team names:
lucky = 50;
if lucky >= 50
    disp(['The hat says: ', 'Team Velociraptor'])
else
    disp(['The hat says: ', 'Team Suspicious Muffin'])
end
% Exactly 50 → Velociraptor: >= includes the boundary (closed circle!)
% Extra credit: a dictated third team slots in as an elseif ABOVE the else,
% e.g.  elseif lucky >= 25  — one end still closes the whole chain.
```

## `step5_class_predict_the_output.m` — answers

| Round | Answer | Why |
|-------|--------|-----|
| 1 | **A** — `1` | A comparison is a question; MATLAB answers with a logical `1` (yes) or `0` (no) — never with words. |
| 2 | **B** — only `done` | `5 > 100` answers 0, so the block inside the if is skipped. `disp('done')` is after the `end` — it doesn't belong to the if, so it always runs. |
| 3 | **A** — `Teenager!` | `>=` includes the boundary — the closed circle. 13 satisfies `age >= 13`. |
| 4 | **C** — only `You pass!` | The trap. A chain checks top-down and the FIRST 1 wins; `95 >= 50` answers 1, so the `elseif` is never even read. Both conditions being true doesn't matter — order decides. |
| 5 | **B** — `0` | `==` ASKS "is x 10?" — it doesn't change the box. x holds 7, so the answer is 0. |
| Final | **C** — it won't even start | One `=` inside an `if` is assignment grammar in question territory — MATLAB refuses to run the file and literally suggests the fix: `Incorrect use of '=' operator. To assign a value to a variable, use '='. To compare values for equality, use '=='.` *(The reveal on screen is simulated with disp so the game can finish — the error text is the real one.)* |

*(After round 4, ask: "how would we FIX the chain so 95 gets AMAZING?" — check
`>= 90` first. Same lesson as the Grade-O-Matic in the challenge file.)*

## Handout answers

**1 · Be the computer**

```
jacket
```

(Top-down: 12 >= 28? 0. 12 >= 15? 0. 12 >= 0? 1 — print and skip the rest.)

**2 · Closed or open circle?**

131 → **TEACUPS** · 132 → **RIDES** · 133 → **RIDES**

`>= 132` is a **CLOSED** circle. With `> 132`, the rider at exactly 132 would
**go to the teacups** (132 is not *more than* 132 — open circle excludes the boundary).

**3 · Spot the bug**

1. `=` should be `==` — one equals PUTS, two equals ASKS (MATLAB's error
   suggests exactly this)
2. Missing `end` — the decision never closes, and MATLAB complains near the
   bottom of the file
3. `!=` isn't MATLAB — not-equal is spelled `~=` (the wiggly NOT)

## Brain teaser guidance

The hole: **exactly 50**. `50 > 50` answers 0 and `50 < 50` answers 0 — the hat
says *nothing at all* and the student vanishes into the void (no `else`, no
catch-all). Two classic fixes, both full glory:

1. Change one comparison to include the boundary: `if lucky >= 50` (or `<= 50`)
2. Replace the `elseif` with a plain `else` — the safety net catches everything
   the if rejects

Praise anyone who *tested the boundary* to find the hole — that instinct
(check the edges!) is the actual lesson, and it's also how you check your work
on every inequality problem in math class.
