# Week 7 — Answer Key (teacher only)

## `fill_in_the_blank.m` — completed code

```matlab
% TASK 1 — start at 5; the countdown eats its way to 0
count = 5;
while count > 0
    fprintf('%d ...\n', count)
    count = count - 1;
end
disp('GO!')

% TASK 2 — each sale subtracts 1 (0 = free snacks forever = infinite loop!)
snacks = 3;
while snacks > 0
    fprintf('CLUNK — snack dispensed. Remaining: %d\n', snacks - 1)
    snacks = snacks - 1;
end
disp('SOLD OUT. Machine goes to sleep.')

% TASK 3 — any school-appropriate string WITH QUOTES, e.g.:
password = '';
while strcmp(password, 'open sesame') == 0
    password = input('Enter the password: ', 's');
end
disp('ACCESS GRANTED. Welcome, agent.')

% TASK 4 — doubling: 1, 2, 4, 8, 16, 32, 64 — seven numbers print
number = 1;
while number < 100
    fprintf('%d\n', number)
    number = number * 2;
end
disp('...and the next double would smash through 100. Loop over.')

% TASK 5 — top of range is 10 (both ends included); guess starts at 0,
% which can never be the secret, so the loop is guaranteed to run
secret = randi([1, 10]);
guess = 0;
while guess ~= secret
    guess = input('Guess my number (1-10): ');
    if guess < secret
        disp('Higher!')
    elseif guess > secret
        disp('Lower!')
    end
end
fprintf('Got it! The secret was %d\n', secret)

% TASK 6 — typed live; the class supplies the >
miles = 10;
while miles > 0
    fprintf('Are we there yet? (%d miles left)\n', miles)
    miles = miles - 1;
end
disp('WE''RE THERE. Everyone out.')
```

Wrong answers worth typing anyway: Task 2 `0` → the promised infinite loop —
Ctrl+C ceremony; Task 3 a password **without quotes** (`strcmp(password, banana)`)
→ `Unrecognized function or variable 'banana'.`; Task 4 `1` → number never grows:
infinite loop again (they'll spot it faster the second time); Task 5 blank 2 as `5`
→ the game *usually* works... until the secret is 5 and it ends before it starts.
Subtle bugs beat loud ones for discussion.

## `predict_the_output.m` — answers

| Round | Answer | Why |
|-------|--------|-----|
| 1 | **B** — 3 beeps | count walks 0 → 1 → 2 → 3; at 3 the check `3 < 3` says 0. Three laps. |
| 2 | **B** — just `finished` | The condition is checked BEFORE the first lap. `10 < 5` already fails, so the block runs **zero times**. |
| 3 | **B** — LOOP TWO | Loop one updates x, so x reaches 5 and the loop dies. Loop two never changes y — `y < 5` holds forever. (The reveal only *simulates* it; running it would hang.) |
| 4 | **A** — 3 2 1 liftoff | Prints, then updates: 3, 2, 1. At n = 0 the loop ends and the outside disp fires. No 0 — by the time n is 0, the check stops the loop before another print. |
| 5 | **B** — 2 1 0 | Same three laps, but each lap updates FIRST, then prints. Order inside the block changes what you see, not how long it runs. |
| Final | **A** — 4 lines | Halve then print: 8, 4, 2, 1 — at 1 the condition `1 > 1` fails. Four halvings kill 16; seven kill 100. That's the flip's secret. |

## Handout answers

**1 · Trace the loop**

| lap | what prints | `n` after the update |
|---|---|---|
| 1 | 6 | 4 |
| 2 | 4 | 2 |
| 3 | 2 | 0 |

Last line: **done** (at n = 0 the condition fails, and the disp after the `end`
runs). Without the update line: **infinite loop** — n stays 6, `6 > 0` holds
forever, and the screen fills with 6s until Ctrl+C.

**2 · The halving chain**

100 → 50 → 25 → **12** → **6** → **3** → 1 (halving, rounding down).
Seven numbers in the chain → **7** guesses always win. 2⁷ = **128** > 100. ✔

**3 · Binary search on paper** (secret 11, range 1–16)

| numbers still possible | your guess | friend says |
|---|---|---|
| 1–16 | 8 | higher! |
| 9–16 | 12 | lower! |
| 9–11 | 10 | higher! |
| 11–11 | 11 | correct! 🎉 |

Four guesses — and 2⁴ = 16, exactly the size of the range. Accept a middle of
12 or 13 for row 2 (both are "the middle" of 9–16); the hunt still lands in ≤ 4.

## 🧠 Brain teaser guidance

Doublings: 2¹⁰ = 1024 > 1000 → **10 guesses** for 1–1000.
2²⁰ = 1,048,576 > 1,000,000 → **20 guesses** for 1–1,000,000.
The mind-bender: a thousand times more suspects costs only **10 extra guesses** —
each new guess doubles what you can handle, so the powers of 2 do the heavy
lifting. A kid who says "every doubling of the range costs just one more guess"
has understood logarithms without the word. Shout-out accordingly.
