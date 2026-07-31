# Week 13 — Dice & Probability

> **Unit 7: Randomness & Simulation** · First lesson of the unit

## Objectives

By the end of class, students can:

1. Read and explain the **simulation pattern**: loop many trials → check each with
   `if` → count the hits → `percentage = count / trials * 100`
2. Tell **experimental** probability (what happened) from **theoretical**
   probability (what math predicts)
3. Explain the **law of large numbers**: more trials → the experiment crawls toward
   the theory
4. Use the **36-outcome grid** to explain why 7 is the king of two-dice sums
   (6/36) and 2 is the rarest (1/36)

## Vocabulary

| Word | Kid-friendly definition |
|------|------------------------|
| **simulation** | using the computer to run an experiment thousands of times |
| **trial** | one run of the experiment — one roll, one flip |
| **experimental probability** | what actually happened: hits ÷ trials |
| **theoretical probability** | what math predicts: wanted outcomes ÷ possible outcomes |
| **law of large numbers** | more trials → experimental results crawl toward the theory |

## Math tie-in

**Experimental vs theoretical probability — THE core probability standard — with the
sample size question settled by brute force.** Ten real rolls give a lumpy, "wrong"
tally; the class must decide: broken die, or too few rolls? The simulation answers by
*doing the experiment bigger*: 100 → 10,000 → 1,000,000 rolls, watching the percent of
sixes crawl toward the theoretical 16.67% (the law of large numbers, live on screen).
Then two dice: the class sees the full 36-outcome sample space printed as a grid,
counts six ways to make 7 versus one way to make 2, and watches the simulation agree
with the grid — experiment and theory shaking hands at 16.7% and 2.8%. Percent
computation (`count / trials * 100`) runs through everything.

## Before class

- [ ] Print `handout.md` (one per student), have `answer-key.md` open or printed
- [ ] **Bring a real die** — a big foam one is ideal. Board space for a tally chart
- [ ] Dry-run `1-demo.py` — the million-roll section takes a couple of seconds;
      practice narrating the pause ("it is rolling a MILLION dice right now")
- [ ] If you collected week 12 spirograph designs: pick 1–2 to run as the warm-up
- [ ] Your numbers WILL differ from the answer key's — that's the topic. Enjoy it.

## Lesson plan — 45 minutes

### 0:00–0:02 · Last time

If you have student spirograph designs from week 12: run one or two right now in
`week-12-turtle-art/1-demo.py` Section 7 (set the dials to the student's design —
instant celebrity, 90 seconds max). Then the bridge: *"Turtle week is over, but two
old friends stay with us today: the for loop, and week 5's `random`."*

### 0:02–0:09 · Hook: is my die broken?

Roll the real die 10 times; a student tallies on the board. Theory whispers: each
face should come up about 1.67 times... the tally will be lumpy — maybe zero fours,
maybe four sixes. Play it up:

> ⭐ *"Theory says all faces are equally likely. Look at this tally. Is my die
> BROKEN? ...Or is 10 rolls just not enough to tell? How many rolls would we need
> to KNOW — a hundred? A thousand? ...What if I told you we could roll a die a
> MILLION times before the bell rings?"*

### 0:09–0:24 · Demo: `1-demo.py`

Run the file once; it pauses in the terminal between sections. Beats to hit:

- One simulated roll — `randint(1, 6)`, week 5's old friend
- Ten rolls in a loop — lumpy, *just like the real die*. Same problem, same cause
- **The simulation pattern** (count sixes in 100 rolls) — name its four steps out
  loud: loop, roll, `if` counts the hits, percent line at the end
- ⭐ **THE ZOOM-OUT**: same experiment at 100 → 10,000 → 1,000,000 trials. Predict
  before each: closer to 16.67 or farther? Name the **law of large numbers** — it
  sounds cool and it *is* cool
- **Two dice**: 7 crushes 2 in the simulation... then the 36-cell grid prints and
  explains why: six ways to make 7, one way to make 2. The simulation and the grid
  AGREE — experiment meets theory
- Wrap line: *"casinos know this math"* — next week's cliffhanger

### 0:24–0:32 · Class writes code: `2-fill-in-the-blank.py`

Kids call out what goes in each blank; you type and run after every task. Task 3 has
no blank — you type the counting `if` live while the class supplies the `==`
(watch someone offer a single `=`; type it, enjoy the error, debug as a class).
Completed code is in `answer-key.md`.

### 0:32–0:38 · Voting game: `3-predict-the-output.py`

Six rounds, all runnable — two of them run real simulations as the reveal. Round 3
is a decimal-point trap, and the final round is genuinely sneaky (which percentage
is *impossible* in 10 rolls?). Vote, reveal, have a winner explain.

### 0:38–0:43 · Handout

The 36-cell grid is the heart of it: kids fill the missing cells and count the ways
to make each sum. Tonight's brain teaser is **real homework you actually want
back**: 30 real two-dice rolls, tallied. *Collect the tallies next week and compare
the class's combined data to the computer's million rolls — it's the perfect week 14
warm-up.*

### 0:43–0:45 · Wrap-up

*"Ten rolls lie to you. A million rolls can't. The more trials, the closer the
experiment hugs the theory — that's the law of large numbers."* Tease week 14:
*"Next week we build experiments you could never do by hand — and we find out,
mathematically, why the casino always wins."*

## If you have extra time

Open `4-challenge.py`: roll-until-doubles (how many tries? re-run three times!), the
longest heads-streak in 10,000 coin flips (longer than anyone believes), the
100-roll horse race between the six faces (class picks their horses first!), and a
mystery die that the class must test for fairness using today's exact tools —
spoiler-guarded rigging inside.

## Common pitfalls

- **"The die is hot / six is due."** The gambler's fallacy will appear. Push back:
  the die has no memory — every roll is a fresh 1-in-6. The law of large numbers is
  about *many future rolls*, not about the next one owing anyone a six.
- **Your numbers won't match the answer key.** Correct! Randomness is the topic.
  The key gives ranges ("about 16–17%") — narrate results that way.
- **Kids read 16.67% as a guarantee** ("so 6 out of 36 rolls WILL be sixes").
  Re-anchor: theory predicts the *long run*, not any particular batch.
- **The million-roll pause.** Two-ish silent seconds can feel like a crash. Narrate
  it: *"right now it's on roll four hundred thousand..."*
- **`=` vs `==` in the counting `if`.** A classic returns. Let the error do the
  teaching — week 4 veterans in the room will pounce on it.
