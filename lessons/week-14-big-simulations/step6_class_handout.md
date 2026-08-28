# Week 14 — 🎉 Big Simulations

**Name: ______________________ Date: __________**

> **Monte Carlo method:** answer a hard question with a mountain of random tries.
> Fraction of raindrops inside = fraction of area inside. Rain can measure.

## Today's words

| Word | What it means |
|------|---------------|
| **Monte Carlo method** | answering a hard question with tons of random tries |
| **`rand`** | a random *decimal* between 0 and 1 — any decimal at all |
| **trial** | one single random try (one raindrop, one game) |
| **expected value** | your average result *per game*: each outcome × its probability, added up |

## 1 · Be the raindrop 🌧️

The quarter circle's arc runs from (0, 1) to (1, 0) — every arc point is exactly 1 from
the corner (0, 0). Sketch the arc on the grid, plot the five drops, then **compute**:
inside means **x² + y² ≤ 1**.

```
  y
 1.0 ┌─────────────────────┐
     │                     │
 0.8 │                     │
     │                     │
 0.6 │                     │
     │                     │
 0.4 │                     │
     │                     │
 0.2 │                     │
     │                     │
 0.0 └─────────────────────┘
    0.0  0.2  0.4  0.6  0.8  1.0   x
```

| Drop | x | y | x² | y² | x² + y² | ≤ 1? in or out? |
|------|-----|-----|-----|-----|---------|-----------------|
| A | 0.3 | 0.4 | | | | |
| B | 0.6 | 0.8 | | | | |
| C | 0.9 | 0.9 | | | | |
| D | 0.5 | 0.5 | | | | |
| E | 0.7 | 0.8 | | | | |

## 2 · Audit the carnival 🎪

**Lucky Die:** pay **$4**, roll one die, win $1 per dot. Fill in the table, then the verdict.

| Roll | Payout | Probability | Payout × probability |
|------|--------|-------------|----------------------|
| 1 | $1 | 1/6 | $ |
| 2 | $2 | 1/6 | $ |
| 3 | $3 | 1/6 | $ |
| 4 | $4 | 1/6 | $ |
| 5 | $5 | 1/6 | $ |
| 6 | $6 | 1/6 | $ |

Expected payout (add the last column): **$________**

Per game at $4 a ticket, a player averages: **$________** · After 1,000 games, the
booth is up about: **$________**

---

## 🧠 Brain teaser (optional — take it home)

**Design a sneaky carnival game.** Invent a game (coins, dice, spinners — your call)
that *looks* totally fair but has a **negative expected value** for the player. Write:

1. The rules and the ticket price (make the sign tempting!)
2. The expected-value math that exposes the trick

Bring it next week — **the sneakiest game gets simulated in class**, 100,000 plays,
so the numbers better back you up.
