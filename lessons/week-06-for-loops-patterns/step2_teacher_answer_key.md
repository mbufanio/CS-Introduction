# Week 6 — Answer Key (teacher only)

## `step4_class_fill_in_the_blank.m` — completed code

```matlab
% TASK 1 — 1:12 is twelve laps: 1 through 12, last one included
for i = 1:12
    disp('CLAP!')
end

% TASK 2 — start at 1, END at 10 — the end is included, no wall to dodge
for number = 1:10
    fprintf('%d\n', number)
end

% TASK 3 — odd to odd is a difference of 2, and it goes in the MIDDLE
for n = 1:2:19
    fprintf('%d\n', n)
end

% TASK 4 — backward needs a negative step
for t = 10:-1:1
    fprintf('%d ...\n', t)
end
disp('LUNCH TIME!')

% TASK 5 — snowball starts empty (0); each lap rolls in n
total = 0;
for n = 1:20
    total = total + n;
end
fprintf('1 + 2 + ... + 20 = %d\n', total)          % → 210 (Gauss: 20 × 21 ÷ 2)

% TASK 6 — row already counts 1, 2, 3, ... — hand it to the repeater
for row = 1:7
    disp(repmat('*', 1, row))
end

% TASK 7 — typed live; the class supplies the * operator
table = 7;                    % or whatever the class picked
for i = 1:10
    fprintf('%d x %d = %d\n', table, i, table * i)
end
```

Wrong answers worth typing anyway: Task 1 `13` → count the claps together, there
are 13 — then fix (no sneaky off-by-one here: `1:12` is 12); Task 4 `1` or `2` →
the loop prints *nothing* (the sequence can't climb from 10 up to 1, so it's
empty), and zero output is itself a clue; Task 5 first blank `1` → total comes
out 211, off by exactly one — debugging gold.

## `step5_class_predict_the_output.m` — answers

| Round | Answer | Why |
|-------|--------|-----|
| 1 | **B** — 1 2 3 4 5 | The colon includes its last number. `1:5` is five numbers, and 5 is one of them. MATLAB counts like humans. |
| 2 | **A** — 5 beeps | Values 2, 4, 6, 8, 10 — the 10 lands exactly on a jump, so it's included. Five laps. |
| 3 | **A** — 10 down to 1 | A negative step walks downhill, and the last term (1) is still included. Never 0 — that's not in the sequence. |
| 4 | **C** — only `loop finished` | `5:1:1` tries to climb UP from 5 to 1 — impossible, so the sequence is EMPTY and the loop runs ZERO times. No error, just silence. |
| 5 | **A** — just `6` | The `fprintf` is *after* the `end` — outside the loop — so only the finished snowball shows: 1+2+3 = 6. |
| Final | **A** — `***` | The repeater makes copies, glued: three stars, no spaces, no `*3`. |

*(After round 5's reveal, ask: what if the `fprintf` moved above the `end`? A
progress report every lap: 1, 3, 6. The `end` decides WHEN, not just what.)*

## Handout answers

**1 · Match the sequence**

- 1, 2, 3, 4, 5 → `1:5`
- 2, 4, 6, 8, 10 → `2:2:10`
- 5, 10, 15, 20 → `5:5:20`
- 10, 9, 8, … 1 → `10:-1:1`
- The fake: **`5:1:1`** — it tries to climb up from 5 to 1, so it's an *empty*
  sequence: a loop over it runs zero times.

**2 · Trace the snowball**

| lap | `n` | `total` after the lap |
|---|---|---|
| 1 | 1 | 1 |
| 2 | 2 | 3 |
| 3 | 3 | 6 |
| 4 | 4 | 10 |

The screen shows: **10** (one line only — the `disp` is after the `end`).

**3 · What prints?**

```
*
**
***
```

(Three rows — `1:3` deals 1, 2, 3, and each row gets that many stars.)

## 🧠 Brain teaser guidance

1 + 2 + … + 1000: pair 1+1000, 2+999, … → **500 pairs of 1001 = 500500**.
The checking loop needs `1:1000` — `0:999` also deals exactly 1000 numbers, but
it *skips 1000 and sneaks in a useless 0*, landing on 499500 (off by exactly
1000 — ask them why by exactly that much, it's a lovely follow-up). Shout-out
anyone who wrote both the pair count *and* the sneaky-zero reasoning.
