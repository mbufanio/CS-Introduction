# Week 16 — Answer Key (teacher only)

## `step4_class_fill_in_the_blank.m` — completed polish tasks

```matlab
% TASK 1 — THE TITLE SCREEN (both blanks are strings; class supplies the words)
disp(repmat('*', 1, 50))
disp('        ESCAPE FROM ROOM 204')           % ← the class game's real title
disp('           the director''s cut')         % ← any subtitle with swagger
disp(repmat('*', 1, 50))

% TASK 2 — THE PLAY-AGAIN LOOP: the input is upper()-ed, so the loop
% keeps going only while the answer matches uppercase 'Y'
again = 'Y';
while strcmp(again, 'Y')
    disp('(pretend one entire playthrough happens here)')
    again = upper(input('Play again? (Y/N): ', 's'));
end
disp('Thanks for playing!')

% TASK 3 — THE GAMES-PLAYED COUNTER: counters start at 0, one play adds 1
games_played = 0;
again = 'Y';
while strcmp(again, 'Y')
    disp('(one playthrough!)')
    games_played = games_played + 1;
    again = upper(input('Play again? (Y/N): ', 's'));
end
fprintf('Games played today: %d\n', games_played)

% TASK 4 — THE SUSPENSE PAUSE: any number of seconds works; 1 is drama
disp('You reach for the doorknob...')
pause(1)
disp('...it is ALREADY TURNING.')

% TASK 5 — THE CREDITS ROLL: each blank is a string with real names from
% the design sheets, e.g.:
disp('Room 1 designed by: Ada & Marcus')
disp('Room 2 designed by: Priya & Zoe')
disp('Room 3 designed by: Leo & Sam')
disp('Room 4 designed by: Maya & Jordan')
disp('Room 5 designed by: Elena & Chris')
disp('Endings & secret room by: the back row, surprisingly')
```

Watch-outs worth typing wrong on purpose: a lowercase `'y'` in task 2 (the loop
ends instantly — *why?* `upper()` already converted the answer, so only `'Y'`
matches — and `strcmp` is merciless about case) and starting the counter at `1` in
task 3 (the report over-counts by one — off-by-one errors are a programmer rite of
passage). And if anyone suggests comparing with `==` in task 2: type it! It works
until someone answers `NO`, then crashes — words use `strcmp`, week 5's oldest rule.

## `step5_class_predict_the_output.m` — answers

| Round | Answer | Why |
|-------|--------|-----|
| 1 (wk 1) | **B** — `9 + 10`, then `19` | Quotes = string, repeated as-is. No quotes = math, evaluated. The very first trap of the course, one last time. (And no, 21 was never an option.) |
| 2 (wk 2) | **C** — `6` | `mod` gives the *remainder* of 2026 ÷ 10. Dividing by 10 always leaves the last digit — a nice party trick. |
| 3 (wk 6) | **B** — `2 3 4 5 6` | The colon is *inclusive on both ends*: `2:6` is five numbers, 6 included. (A is the trap for anyone who thinks it stops early — MATLAB's colon goes all the way to the stop value.) |
| 4 (wk 8) | **B** — `AM` | MATLAB counts from **1**, like humans: `word(1)` is `M`, `word(2)` is `A`, and `[ ]` glues them in the order written — `A` then `M`. |
| 5 (wk 10) | **B** — `GRADUATION!!!` then red text | `cheer` *displays* but its function line has no output variable, so there's nothing for `result` to catch. MATLAB stops with `Error using cheer` / `Too many output arguments.` — the reveal prints a simulated copy of that red text so the file itself doesn't crash. Displaying is not handing back. |
| Final boss | **A** — `CDR` | `i` runs 1–5; the odd values 1, 3, 5 pass the `mod(i, 2) == 1` test, picking `secret(1)`, `secret(3)`, `secret(5)` → `C`, `D`, `R`. Three weeks of the course in five lines. |

Before class: put the current year into the trophy banner's `____` (it's inside a
string — safe to edit). The `____` is four characters and the year is four digits,
so the swap keeps the border aligned at exactly 50 characters.

## `step7_class_challenge.m` — expected results

- **Chatbot:** every one-word topic gets an answer; unknown words land on
  "Tell me more." — which is, historically, most of what ELIZA did in 1966.
- **Password checker:** score 0–3. A good pretend example: `Gh0stPass99` → 3/3.
  Remind the class *why* it's pretend passwords only.
- **Fireworks:** six random-colored bursts in the figure window, then
  "THE END - CLASS DISMISSED." If the window hides behind MATLAB, it's in the
  taskbar — same as turtle weeks.

## Handout answers

The certificate requires no key — the only correct answer is their name, and
they've earned every checkbox on the page (the hint says so).

**Final brain teaser:** no key, only guidance. If families report back, ask
students what "bug" happened at home and what "fix" they taught. The full-circle
payoff to name out loud: in week 1 *they* were the confused robot's programmer —
now they're the one explaining precision, order, and debugging to someone else.
That's the course, complete.
