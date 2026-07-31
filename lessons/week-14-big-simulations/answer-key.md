# Week 14 — Answer Key (teacher only)

## `2-fill-in-the-blank.py` — completed code

```python
import random

# TASK 1 — uniform's lowest and highest allowed values
drop_x = random.uniform(0, 1)
drop_y = random.uniform(0, 1)
print(f"Raindrop at ({drop_x}, {drop_y})")

# TASK 2 — a² + b²: x times x plus y times y
distance_squared = drop_x * drop_x + drop_y * drop_y
print(f"distance squared from the corner: {distance_squared}")

# TASK 3 — radius 1, so squared distance at most 1
if distance_squared <= 1:
    print("SPLAT — inside the quarter circle!")
else:
    print("SPLAT — outside, in the corner sliver.")

# TASK 4 — count by 1; divide by ALL the drops
inside = 0
drops = 10000
for drop in range(drops):
    x = random.uniform(0, 1)
    y = random.uniform(0, 1)
    if x * x + y * y <= 1:
        inside = inside + 1

pi_estimate = 4 * inside / drops
print(f"{drops} raindrops say pi is about {pi_estimate}")

# TASK 5 — six faces; subtract the ticket price
ticket_price = 4
average_payout = (1 + 2 + 3 + 4 + 5 + 6) / 6
net_per_game = average_payout - ticket_price
print(f"Average payout ${average_payout}, so at ${ticket_price} a ticket")
print(f"the player averages ${net_per_game} per game. Ouch.")

# TASK 6 — the fair price is $3.50 (ticket_price = 3.5 → net exactly 0.0).
#          Kids usually guess 3 first (net +0.5) then 4 (net −0.5) — let the
#          runs squeeze them toward 3.5. Great number-line moment.

# TASK 7 — any bigger drops value works; 1000000 takes a second or two.
#          Typical estimates: 10,000 drops → 3.13–3.15; 1,000,000 → 3.140–3.143.
```

## `3-predict-the-output.py` — answers

| Round | Answer | Why |
|-------|--------|-----|
| 1 | **A** — a decimal between 0 and 1 | `uniform(0, 1)` never leaves its range: 2.1 is too big, −0.5 too small. Any decimal *between* is fair game. |
| 2 | **A** — `0.5` | 0.5² + 0.5² = 0.25 + 0.25 = 0.5. B catches kids who add 0.5 + 0.5 without squaring; C catches kids who square but forget to add. Since 0.5 ≤ 1, this point is comfortably *inside* — say so aloud as the bridge to round 3. |
| 3 | **B** — outside | 0.81 + 0.81 = 1.62 > 1. The point is farther than 1 from the corner even though both coordinates are under 1 — the class's gut trap. |
| 4 | **B** — `3.5` | 21 ÷ 6 = 3.5. (A trap for kids who round; C for kids who forget to divide.) |
| 5 | **A** — `-500.0` | −0.5 × 1000. Negative times positive stays negative; the leak scales with the games. |
| Final | **B** — about −$500,000 | −$0.50 × 1,000,000. A is the gut trap ("50¢ is nothing"); C is a *memory* trap — −$50,000 was the demo's number, but that was only 100,000 games. Exact totals vary by a few thousand either way — "closest to" is the question. |

*(If asked in round 3 what `x * x + y * y` actually equals: it prints `1.62` clean here,
but some decimal sums show "rounding dust" like `1.1300000000000001` — computers store
decimals in binary. One sentence, move on.)*

## `4-challenge.py` — expected results

- **Monty Hall:** stay ≈ 33%, switch ≈ 67% (each run wobbles by well under 1%).
  Switch wins exactly when the first pick was wrong — 2 chances in 3.
- **Full-circle π:** ≈ 3.13–3.15 with 200,000 darts.
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
