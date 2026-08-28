# Week 14 — 🎉 Big Simulations

> **Unit 7: Randomness & Simulation** · 🎉 payoff lesson · area, Pythagoras, expected value

## Objectives

By the end of class, students can:

1. Explain the **Monte Carlo idea**: answer a hard question by throwing huge piles of
   random numbers at it and counting what happens
2. Use `rand` to get random *decimals* between 0 and 1 (vs `randi`'s whole numbers)
3. Test whether a point (x, y) is inside a circle using `x^2 + y^2 <= 1` — and say
   the magic words: *that's Pythagoras*
4. Compute the **expected value** of a simple game by hand — and explain why the
   casino always wins

## Vocabulary

| Word | Kid-friendly definition |
|------|------------------------|
| **Monte Carlo method** | answering a hard question with a mountain of random tries — named after a casino town |
| **`rand`** | picks a random *decimal* between 0 and 1 — any decimal at all, no inputs needed |
| **trial** | one single random try (one raindrop, one dice game) |
| **estimate** | an answer that gets *closer to the truth* the more trials you run |
| **expected value** | what you win (or lose) *per game, on average* — each outcome × its probability, added up |

## Math tie-in

**This is the lesson where three math units shake hands.** *Area:* a quarter circle of
radius 1 has area π/4, and it sits inside a 1×1 square of area 1 — so the *fraction* of
random raindrops landing inside the arc ≈ π/4, and fraction × 4 ≈ π. *Pythagoras:* "is
this drop inside?" means "is it less than 1 from the corner?" — a right triangle with
legs x and y, so the test is a² + b² ≤ c² with c = 1, written `x^2 + y^2 <= 1`. No
square root needed (if the distance is ≤ 1, so is its square). *Expected value:* sum of
(outcome × probability) — for one die, (1+2+3+4+5+6)/6 = **$3.50**, which is the entire
business model of every casino on Earth: charge more than $3.50, wait. This extends week
13's law of large numbers: expected value is the number the averages were crawling toward.

**And this week MATLAB shows off:** the raindrops get *plotted live* on the smartboard —
blue inside the arc, red outside — and a quarter circle materializes out of pure
randomness. This is why the course runs in MATLAB.

## Before class

- [ ] Print `handout.pdf` (one per student), have `answer-key.md` open or printed for you
- [ ] Open MATLAB, set the Current Folder to this lesson's folder (`estimate_pi.m`
      lives here and the demo needs it), zoom fonts for the smartboard (see
      `TEACHER-GUIDE.md`), type `clc`
- [ ] Test-run `lesson_demo.m` once — Section 4 opens a figure window (if it hides
      behind MATLAB, check the taskbar); the 1,000,000-drop run takes a moment, and
      that pause is *drama*, narrate it ("one million raindrops... falling... now")
- [ ] Know π to a few digits (3.14159) so you can judge the estimates out loud
- [ ] Shout-outs ready for anyone who brought back week 13's brain teaser

## Lesson plan — 45 minutes

### 0:00–0:02 · Last time

Two minutes, no slides: *"What did 10,000 dice rolls teach us that 10 couldn't?"* (the
experimental results crawl toward the theory — the law of large numbers) — *"Which
two-dice sum wins, and why?"* (7 — it has the most ways to happen). Shout-outs for
brain-teaser returners. Then: *"Last week randomness confirmed answers we already knew.
Today it computes answers we DON'T know."*

### 0:02–0:07 · Hook: could rain measure a circle?

Draw it on the board: a square, with a quarter circle arcing inside it. Then ask the
weird question:

> *"If a MILLION raindrops fall on this square — totally at random — what fraction land
> inside the circle part?"*

Let them argue. Someone will say "depends how big the circle is" — that kid gets a
high-five, because that's the whole trick: **the fraction of drops = the fraction of
area.** Land the hook:

> *"Which means falling rain can MEASURE area. Today, randomness computes π — and you
> will literally watch it happen. Then it computes whether you should ever walk into
> a casino."*

### 0:07–0:24 · Demo: `lesson_demo.m` (two acts)

Walk the file top-to-bottom on the smartboard, running each `%%` section
(`Ctrl+Enter`) as you reach it. The comments carry the narration and the
⭐ ASK THE CLASS prompts. Beats to hit:

- **`rand`** — `randi`'s decimal cousin. Six outcomes vs infinitely many
- A raindrop is just two random decimals: `(x, y)` in a 1×1 square — watch `drop_x`
  and `drop_y` appear in the Workspace and change with every re-run
- **⭐ PYTHAGORAS CAMEO**: "inside the quarter circle" = "closer than 1 to the corner"
  = `x^2 + y^2 <= 1`. Milk this — a² + b² ≤ c² just walked into computer class
- The gut-check points: is (0.5, 0.5) inside? Is (0.9, 0.9)? (Gut says yes; Pythagoras
  says 1.62 — *outside.* Guts are bad at math.)
- **THE LIVE PLOT (Section 4 — the showpiece):** ask *"what shape will the blue drops
  make?"*, then run it and let 2,000 raindrops answer on the smartboard. Blue rain
  inside the arc, red in the corner sliver — **a quarter circle emerges from pure
  randomness.** Nobody drew it. Give it its moment of awe before moving on
- **The big storms**: `estimate_pi(100)` → `10000` → `1000000`, watching 3.1...
  sharpen (the storm lives in `estimate_pi.m` — week 10's rule, one machine per
  file; no plotting on the big runs — *"plotting a million dots would melt the
  projector — for the big run we just count"*). Say it with ceremony: *"We just
  measured a circle USING NO CIRCLES. Only rain."*
- **Act two — the casino**: the Lucky Die game ($2 ticket, win $1 × the roll).
  ⭐ CLASS VOTES: fair or scam? Do the hand math: average payout $3.50 — wait, that's
  a *winning* game! Then the casino "fixes" the price to $4 and the trap closes
- Simulate 100,000 plays: average payout ≈ $3.50, net ≈ −$0.50 per game. **The hand
  math and the machine agree** — that's the moment; point at both numbers
- The closing line, delivered slowly: *"A casino is a building built on a half-dollar,
  repeated a billion times."*

### 0:24–0:31 · Class writes code: `fill_in_the_blank.m`

Kids call out what goes in each blank; you type and run after every task
(`Ctrl+Enter` runs just that task's section). The class rebuilds the raindrop machine
from parts, then prices a carnival ticket so the game is exactly fair. Tasks 6–7 are
live-typing rounds — the class picks the numbers, you type. Completed code is in
`answer-key.md`.

### 0:31–0:38 · Voting game: `predict_the_output.m`

Run the file (F5); it pauses before each reveal. Class votes A/B/C, you click the
Command Window and press Enter, someone who got it right explains why. Round 3 is the
gut-trap (0.9, 0.9), and the final round — a million casino games, live — is the whole
lesson in one number. Sell it.

### 0:38–0:43 · Handout

Hand out the printed handout. Kids plot five raindrops on the quarter-circle grid
(paper Pythagoras!) and fill in the expected-value table while you circulate. Point
out the brain teaser: design a carnival game that *looks* fair but secretly isn't —
the sneakiest one gets simulated in class next week.

### 0:43–0:45 · Wrap-up

Say it once, plainly: *"Enough random tries can measure anything — that's Monte Carlo.
And expected value tells you the average BEFORE you play — that's why the house always
wins."* Tease week 15: *"Next week: zero new commands. Instead, you become game
designers. We're building a text adventure — YOUR story, and this class writes it."*

## If you have extra time

Open `challenge.m`: the **Monty Hall problem** — tell the game-show story from the
comments, make the class vote stay-or-switch *before* the run, then simulate 100,000
games with nothing but `randi` and `if`, and watch "switch" win ~66%. ("Your gut said
50/50. The simulation doesn't care about your gut.") Also inside: π measured again
with a *full* circle and dartboard (`2 * rand - 1` — negative raindrops!), and the
"Streak Jackpot" coin game — a bet that looks generous and loses $1.88 a ticket.

## Common pitfalls

- **"Can `rand` give exactly 0 or exactly 1?"** No — `rand` lives *strictly between*
  0 and 1 (the docs call it the open interval). But keep the focus simple: the useful
  contrast is six outcomes (`randi`) vs infinitely many (`rand`).
- **The (0.9, 0.9) trap catches you too.** 0.9 < 1, so it *feels* inside. It isn't —
  the corner-to-point distance is what matters, and 0.81 + 0.81 = 1.62 > 1. Draw it on
  the board grid if faces look doubtful.
- **The figure window hides.** The live plot opens *behind* MATLAB on some setups —
  check the taskbar, or `close all` and re-run for a fresh canvas (same fix as turtle
  weeks 11–12).
- **Decimal formatting questions.** `disp` shows about four decimals; `fprintf` shows
  exactly what you ask for (`%.2f` for money, `%.5f` for π). If a long decimal tail
  ever surprises the class: computers store decimals in binary, tiny dust appears —
  one sentence, move on.
- **"The estimate isn't EXACTLY π!"** Correct — it's an *estimate*, and it improves
  with more drops (usually!). 100 drops can be way off; that's week 13's lesson visible
  in one screen. Never promise each run beats the last.
- **"But someone WON in the simulation, so gambling is fine."** Expected value is
  about averages, not one lucky player. The casino doesn't need *you* to lose — it
  needs *everyone on average* to lose 50¢. It can wait.
- **The million-loop pause.** The big runs take a moment of silence. Announced
  as drama it's thrilling; unannounced it looks like a crash. Announce it.
- **Running long.** Act two (the casino) can compress: skip the simulation code walk
  and just run it — the two matching numbers carry the whole point. The live plot,
  though, is untouchable — it's the reason today exists.
