# Week 14 — Answer Key (teacher only)

## `step4_class_fill_in_the_blank.m` — completed code

```matlab
% TASK 1 — the machine is rand: a random 0-to-1 decimal, no inputs needed
drop_x = rand;
drop_y = rand;
fprintf('Raindrop at (%g, %g)\n', drop_x, drop_y)

% TASK 2 — a² + b²: x times x plus y times y
distance_squared = drop_x * drop_x + drop_y * drop_y;
fprintf('distance squared from the corner: %g\n', distance_squared)

% TASK 3 — radius 1, so squared distance at most 1
if distance_squared <= 1
    disp('SPLAT — inside the quarter circle!')
else
    disp('SPLAT — outside, in the corner sliver.')
end

% TASK 4 — count by 1; divide by ALL the drops
inside = 0;
drops = 10000;
for i = 1:drops
    x = rand;
    y = rand;
    if x^2 + y^2 <= 1
        inside = inside + 1;
    end
end

pi_estimate = 4 * inside / drops;
fprintf('%d raindrops say pi is about %g\n', drops, pi_estimate)

% TASK 5 — six faces; subtract the ticket price
ticket_price = 4;
average_payout = (1 + 2 + 3 + 4 + 5 + 6) / 6;
net_per_game = average_payout - ticket_price;
fprintf('Average payout $%.2f, so at $%d a ticket\n', average_payout, ticket_price)
fprintf('the player averages $%.2f per game. Ouch.\n', net_per_game)

% TASK 6 — the fair price is $3.50 (ticket_price = 3.5 → net exactly 0.00).
%          Kids usually guess 3 first (net +0.50) then 4 (net −0.50) — let the
%          runs squeeze them toward 3.5. Great number-line moment.
%          (If you retype ticket_price as 3.5, the $%d in the first fprintf
%           becomes $%g — or just enjoy MATLAB printing it its own way.)

% TASK 7 — any bigger drops value works; 1000000 takes a moment.
%          Typical estimates: 10,000 drops → 3.13–3.15; 1,000,000 → 3.140–3.143.
```

*(A common wrong answer for Task 1 is `randi` — type it! `randi` without inputs is an
error, `randi(10)` gives whole numbers; either way the class sees why raindrops need
`rand`. Running any task before filling its blank stops with
`Unrecognized function or variable '____'.` — that just means you haven't gotten
there yet.)*

## `step5_class_predict_the_output.m` — answers

| Round | Answer | Why |
|-------|--------|-----|
| 1 | **A** — a decimal between 0 and 1 | `rand` never leaves its range: 2.1 is too big, and it *never* lands exactly on 0 or 1 — the documentation says it lives on the open interval (0, 1). Any decimal strictly *between* is fair game. |
| 2 | **A** — `0.5000` | 0.5² + 0.5² = 0.25 + 0.25 = 0.5. B catches kids who add 0.5 + 0.5 without squaring; C catches kids who square but forget to add. Since 0.5 ≤ 1, this point is comfortably *inside* — say so aloud as the bridge to round 3. |
| 3 | **B** — outside | 0.81 + 0.81 = 1.62 > 1. The point is farther than 1 from the corner even though both coordinates are under 1 — the class's gut trap. |
| 4 | **B** — `3.5000` | 21 ÷ 6 = 3.5. (A traps kids who round; C traps kids who forget to divide.) |
| 5 | **A** — `-500` | −0.5 × 1000. Negative times positive stays negative; the leak scales with the games. |
| Final | **B** — about −$500,000 | −$0.50 × 1,000,000. A is the gut trap ("50¢ is nothing"); C is a *memory* trap — −$50,000 was the demo's number, but that was only 100,000 games. Exact totals vary by a few thousand either way — "closest to" is the question. |

*(`disp` shows decimals with about four places — `0.5000`, `3.5000` — that's MATLAB's
"format short" habit, not extra precision. If a kid asks, one sentence and move on.)*

## `step7_class_challenge.m` — expected results

- **Monty Hall:** stay ≈ 33%, switch ≈ 67% (each run wobbles by well under 1%).
  Switch wins exactly when the first pick was wrong — 2 chances in 3.
- **Full-circle π:** ≈ 3.13–3.15 with 200,000 darts. The stretch-and-slide line
  `2 * rand - 1` is worth 20 seconds at the board: 0-to-1, doubled to 0-to-2,
  slid down to −1-to-1.
- **Streak Jackpot:** ≈ 6,250 jackpots in 200,000 tickets (1/32); average payout
  ≈ $3.13, average result ≈ −$1.87. The hand math says −$1.875 exactly.

## Handout answers

**1 · Be the raindrop**

| Drop | x² | y² | x² + y² | Verdict |
|------|------|------|---------|---------|
| A (0.3, 0.4) | 0.09 | 0.16 | 0.25 | **in** |
| B (0.6, 0.8) | 0.36 | 0.64 | **1.00** | **in — exactly ON the arc!** (a 3-4-5 triangle shrunk by 5 — shout this out) |
| C (0.9, 0.9) | 0.81 | 0.81 | 1.62 | **out** |
| D (0.5, 0.5) | 0.25 | 0.25 | 0.50 | **in** |
| E (0.7, 0.8) | 0.49 | 0.64 | 1.13 | **out** |

**2 · Audit the carnival**

Last column: $1/6 ≈ $0.17, $2/6 ≈ $0.33, $3/6 = $0.50, $4/6 ≈ $0.67, $5/6 ≈ $0.83,
$6/6 = $1.00. Expected payout = 21/6 = **$3.50**. Per game at $4: **−$0.50**. After
1,000 games the booth is up about **$500**. (Fractions or rounded decimals both fine —
the sum lands on $3.50 either way.)

**Brain teaser:** no single right answer. Praise: a tempting sign, honest probability
math, and a hidden edge under ~$1 (the sneakiest games leak slowly). Common winner:
"pay $3, flip 2 coins, two heads pays $10" — EV $2.50, feels great, loses 50¢ a ticket.
Simulate the class favorite next week with a 100,000-play loop copied from the demo.
