# Week 13 — Answer Key (teacher only)

*Random results change every run — the counts below are typical ranges, not exact
targets. Narrate your live numbers against these ranges.*

## `step4_class_fill_in_the_blank.m` — completed code

```matlab
% TASK 1 — randi: a whole number from 1 to 6, both ends included
roll = randi([1 6]);
fprintf('the computer rolled: %d\n', roll)

% TASK 2 — ten rolls
for i = 1:10
    roll = randi([1 6]);
    fprintf('roll %2d  →  %d\n', i, roll)
end

% TASK 3 — type-it-live: the class supplies ==  (if someone offers a
% single =, type it: MATLAB stops with "Incorrect use of '=' operator.
% To assign a value to a variable, use '='. To compare values for
% equality, use '=='." — the error message literally teaches the fix.
% Octave is gentler: it only warns "suggest parenthesis around assignment
% used as truth value" and keeps going — read the warning aloud, fix it.)
count = 0;
trials = 100;
for i = 1:trials
    roll = randi([1 6]);
    if roll == 6
        count = count + 1;
    end
end

fprintf('sixes counted: %d out of %d rolls\n', count, trials)

% TASK 4 — count holds the sixes
percent = count / trials * 100;
fprintf('that is %.2f%% — theory says about 16.67%%\n', percent)

% TASK 5 — any big number; e.g. 1000000 (a couple of seconds — narrate!)
big_trials = 1000000;
count = 0;
for i = 1:big_trials
    roll = randi([1 6]);
    if roll == 6
        count = count + 1;
    end
end

fprintf('out of %d rolls: %.2f%% sixes\n', big_trials, count / big_trials * 100)

% TASK 6 — the total needs the second roll
total = roll_a + roll_b;

% TASK 7 — the king of sums is 7 (six ways out of 36)
if total == 7
```

Typical results: Task 3 counts ~12–22 sixes; Task 5 lands within ~0.1 of 16.67
with a million trials; Task 7 lands near 167 kings (16–17%). And remember the
doubled `%%` in the fprintf lines: `%` starts a comment in MATLAB, so a printed
percent sign has to be typed twice — two on the way in, one on the way out.

## `step5_class_predict_the_output.m` — answers

| Round | Answer | Why |
|-------|--------|-----|
| 1 | **B** — 7 | Two dice sum to 2 through 12. A (1) is below the minimum 1+1; C (13) is above the maximum 6+6. "Could happen" has a definite answer even when the roll doesn't. |
| 2 | **A** — 4 | n visits 1 through 8 (the colon includes both ends); `mod(n, 2) == 0` catches the evens 2, 4, 6, 8. Four hits. This is the exact counting pattern from the demo, rigged so it's traceable. |
| 3 | **A** — 25 | 25/100×100 = 25, and `disp` shows whole numbers plainly — no trailing zeros. C is the trap: `.00` only appears when fprintf is *told* to print decimals with `%.2f`. B forgot the × 100. |
| 4 | **B** — 7 | The grid gives 7 six ways; 2 and 12 get one way each. Expect counts near 280 / 1670 / 280 — the simulation votes with the grid. |
| 5 | **A** — closest to 16.7 | Law of large numbers. B is the deep trap: a million trials get *close*, but the result still wobbles run to run — theory is a target, not a guarantee. C confuses "random" with "anything goes." |
| Final | **C** — 16.7% is impossible | With 10 rolls, the count is a whole number 0–10, so the percent is always a multiple of 10. Small experiments can't even *land* on the theory — which is exactly why the hook tally looked "broken." |

## Handout answers

**1 · The 36-outcome grid** — missing cells, top row to bottom:
row 1: **6** · row 2: **6** · row 3: **6** · row 4: **6** ·
row 5: **6**, **11** · row 6: **11**

(Sneaky on purpose: most blanks sit on the six-diagonal.)

- Ways to make **7**: **6** of 36 (the full anti-diagonal)
- Ways to make **2**: **1** of 36 (only 1+1)
- Ways to make **10**: **3** of 36 (4+6, 5+5, 6+4)

**2 · Be the computer** — the loop visits **n = 2, 3, 4, 5, 6, 7, 8**
(MATLAB's colon includes both ends: `2:8` really means 2 through 8). The `if`
catches 6, 7, 8 → it prints **3**.

**3 · Experimental or theoretical?** — **E**, **T**, **E**. (The 10,000-coin flip
is still *experimental* — a computer running trials is an experiment, just a fast
one. Great discussion point if kids mark it T because "the computer is math.")

**Brain teaser guidance:** collect the tallies next week — this is real data for
the week 14 warm-up. Add up the class's rolls (30 × number of students is a
respectable experiment!) and compare the combined tally to both the 36-grid theory
and a fresh million-roll simulation. Expect individual tallies to be lumpy and the
combined tally to look noticeably more 7-peaked: the law of large numbers, starring
the class itself. Shout-outs for anyone whose tally crowned a weird winner — ask
the class *why* that can happen in just 30 rolls.
