# Week 5 — Answer Key (teacher only)

## `step4_class_fill_in_the_blank.m` — completed code

```matlab
% TASK 1 — both ends included, so 6 gives rolls of 1–6
roll = randi([1, 6]);
fprintf('The class die says: %d\n', roll)

% TASK 2 — both ends are 3 → only one possible outcome
fprintf('Rigged roll: %d\n', randi([3, 3]))
fprintf('Rigged roll: %d\n', randi([3, 3]))

% TASK 3 — any school-appropriate string WITH QUOTES, e.g.:
m = randi(3);
if m == 1
    mood = 'happy';
elseif m == 2
    mood = 'chaotic';
else
    mood = 'sleepy';
end
disp(['The computer is feeling: ', mood])

% TASK 4 — the rule says 1 means heads
flip = randi([1 2]);
if flip == 1
    disp('HEADS!')
else
    disp('TAILS!')
end

% TASK 5 — the word-matcher is strcmp
fprintf('rock vs rock  -> %d\n', strcmp('rock', 'rock'))
fprintf('rock vs paper -> %d\n', strcmp('rock', 'paper'))

% TASK 6 — typed live; the class dictates the strcmp tie-check
c = randi(3);
if c == 1
    computer_throw = 'rock';
elseif c == 2
    computer_throw = 'paper';
else
    computer_throw = 'scissors';
end
throw = input('Teacher types the class''s throw (rock/paper/scissors): ', 's');
fprintf('Class threw   : %s\n', throw)
fprintf('Computer threw: %s\n', computer_throw)
if strcmp(throw, computer_throw)
    disp('TIE! Great minds... and one of them isn''t even a mind.')
else
    disp('Not a tie — who won? Check the grid on your handout!')
end
```

Common wrong answers worth typing anyway: Task 3 a mood **without quotes**
(`mood = chaotic;`) → `Unrecognized function or variable 'chaotic'.` (MATLAB thinks
it's a variable); Task 4 `heads` → `Unrecognized function or variable 'heads'.` —
the coin lands on a *number*; Task 5 someone will shout `==` — you can't put an
operator in that blank, but demo it on a fresh line: `'rock' == 'paper'` stops with
`Arrays have incompatible sizes for this operation.` That's the word-matcher's whole
sales pitch.

## `step5_class_predict_the_output.m` — answers

| Round | Answer | Why |
|-------|--------|-----|
| 1 | **B** — 6 is possible | `randi([1 6])` includes BOTH ends: 1 and 6 count, 0 and 7 never appear. |
| 2 | **B** — 5, 5, 5 forever | Both ends are 5, so 5 is the *only* possible value. Rigged, but legal. |
| 3 | **B** — yes, it can repeat | Each roll is fresh; the computer has no memory of the last one. (Doubles: 2 of the 4 equally likely pairs — 50%.) |
| 4 | **B** — paper | The roll is given: `r = 2`, and the mapping says 2 means paper. Not C: `disp(throw)` shows the *meaning*, not the number. |
| 5 | **B** — both, JACKPOT rarer | Only 9 and 10 pass `n > 8`: 2 chances out of 10, not 50/50. The number of *outputs* (2) isn't the number of *chances*. |
| Final | **B** — only 'just a horse' | `randi(3)` gives 1, 2, or 3 — never 4. The `if` is checking for a number that cannot exist. Random ≠ anything can happen: only what's in the range can happen. |

## Handout answers

**1 · Prove the game is fair** (from the class's point of view)

| CLASS ↓ · COMPUTER → | rock | paper | scissors |
|---|---|---|---|
| **rock** | T | L | W |
| **paper** | W | T | L |
| **scissors** | L | W | T |

W: **3** L: **3** T: **3** → Fair? **YES** — 9 equally likely outcomes, split 3-3-3;
nobody has an edge.

**2 · Which spinner is fair?**

- Fair spinner: **B** (three numbers, three different meanings, 1/3 each)
- Spinner A: red is **2 out of 3**
- Spinner C: lose is **1 out of 4**

**3 · What's possible?**

Circle **3, 4, 5, 6, 7** — both ends included, nothing outside them.

## 🧠 Brain teaser guidance

Best throw: **paper**, and you can never lose. The computer's rigged mapping gives
rock 2/3 of the time and paper 1/3. With paper: vs rock (2/3) you **win**;
vs paper (1/3) you **tie**; it never throws scissors, so you never lose.
Win chance: **2/3**. Praise any kid who lists all three cases — that's a
sample-space argument, the exact skill from today's grid. (Fun follow-up
question: why is rock the *worst* pick? Ties 2/3, loses 1/3, never wins.)
