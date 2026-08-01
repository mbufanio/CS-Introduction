# Week 5 — Random Numbers → 🎉 Rock-Paper-Scissors

> **Unit 2: Decisions** · Payoff lesson — the class plays against the machine

## Objectives

By the end of class, students can:

1. Explain that `import` **borrows a toolbox** (module) of ready-made tools
2. Predict the *possible* values of `random.randint(a, b)` — including that **both ends count**
3. Read `random.choice([...])` as "pick one item, all equally likely, from a collection in square brackets"
4. Explain why rock-paper-scissors is a **fair game** using the 3×3 grid of outcomes

## Vocabulary

| Word | Kid-friendly definition |
|------|------------------------|
| **`import`** | The line that borrows a toolbox of ready-made tools |
| **module** | A toolbox — today's is called `random` |
| **`random.randint(a, b)`** | A whole number from a to b — **both ends included**, new surprise each time |
| **`random.choice([...])`** | Picks ONE item from a collection in square brackets |
| **equally likely** | Every outcome has the same chance — that's what makes a game **fair** |

## Math tie-in

**Probability and fairness — straight from the 7th/8th grade probability unit.** Each
RPS throw has probability 1/3. The whole game is a 3×3 **sample space**: 3 class
throws × 3 computer throws = 9 equally likely outcomes — 3 wins, 3 losses, 3 ties, so
neither player has an edge. The demo counts this out loud on screen (Section 6) and the
handout has students *prove* it by filling the 9-cell grid. The demo also contrasts a
fair spinner with a rigged one (`["rock", "rock", "paper"]` — rock is 2/3!), which is
exactly the "equally likely vs not" distinction their probability unit lives on.

## Before class

- [ ] Print `handout.md` (one per student), have `answer-key.md` open or printed for you
- [ ] Open this folder in VS Code, zoom fonts for the smartboard (see `TEACHER-GUIDE.md`)
- [ ] Test-run `1-demo.py` once — it needs you to type 5 throws for the match
- [ ] Hook prop: one coin to flip
- [ ] Swap real student names into the line-leader list in `1-demo.py`, Section 4 (optional but glorious)

## Lesson plan — 45 minutes

### 0:00–0:02 · Last time

Quick-fire recap of week 4: *"Programs can make decisions. What word starts a
decision?"* (`if`.) *"What word means 'otherwise'?"* (`else`.) *"What does `==` ask?"*
(Are these equal?) One sentence to launch today: *"Last week the computer made
decisions. Today it makes decisions **nobody can predict** — and then it challenges
you to a duel."*

### 0:02–0:07 · Hook: the failed mind-reader

Announce you have psychic powers. Then fail publicly, three times:

1. Predict a coin flip. Flip the coin. (Wrong ~half the time — and even when right, "lucky guess!")
2. Have a student hide an eraser in one hand. Predict. Fail.
3. Ask everyone to silently pick a "random" number from 1 to 10 and write it on
   their handout margin. Poll hands: *"Who picked 7?"* A forest of hands. (Humans
   famously over-pick 7 — enjoy the gasp.)

Land the point:

> *"I can't do random. Neither can you — humans are TERRIBLE at random. We have
> favorites. We have patterns. Today, watch a machine do it perfectly."*

### 0:07–0:20 · Demo: `1-demo.py` (Sections 1–6)

Walk the file top-to-bottom on the smartboard, running as you go — but **stop at the
end of Section 6**. The match is for later. Beats to hit:

- `import random` — borrowing a toolbox; one line, hundreds of tools
- The electronic die: run the file **twice** — *"first program all semester that
  never runs the same way twice"*
- Both ends count: `randint(1, 6)` can roll 1 AND 6, never 0, never 7; `randint(5, 5)`
  is a rigged die
- `random.choice` picks from a **collection in square brackets** — first gentle look
  at a list; the fair line-leader picker (use real names)
- Fairness: 3 items → 1/3 each; the rigged spinner `["rock", "rock", "paper"]`
- Section 6: build one RPS round in slow motion — computer picks, class throw
  hard-coded, and the `matchup` sentence trick. **Walk the win logic line by line**;
  finish with the 9-outcomes count (3 ties, 3 wins, 3 losses → fair).

### 0:20–0:27 · Class writes code: `2-fill-in-the-blank.py`

Kids call out what goes in each blank; you type and run after every task. Note the
header comment: until Task 1 is filled, the file stops with `ModuleNotFoundError` —
read it aloud, it's today's error making today's point. Task 6 has no blank: the class
dictates the `==` operator and you type the if/else live. Completed code in
`answer-key.md`.

### 0:27–0:33 · Voting game: `3-predict-the-output.py`

New twist this week, and say it out loud: *"the code is random, so nobody can predict
the exact output — not even ME. So today you vote on what's POSSIBLE."* Class votes
A/B/C, press Enter to reveal, winner explains why. The final round has a unicorn trap.

### 0:33–0:40 · 🎉 THE MATCH: `1-demo.py` Section 7

The payoff. Scroll to Section 7 and play class vs computer, best of 5:

- Each round: the class agrees on ONE throw (quick vote or loudest shout — pick your
  chaos level), you type it lowercase at the prompt.
- **Be the sports commentator.** Announce every score line like it's the finals.
  Pause dramatically before the ceremony block.
- Rounds 2–5 are the same block copy-pasted — point at it and groan, on purpose:
  *"feel this pain, remember this pain."* It's the week 6 cliffhanger.

### 0:40–0:44 · Handout

Kids fill the 3×3 grid and *prove* the game they just played was fair, then the
spinner and rigged-die exercises. Circulate. Point out the take-home brain teaser —
optional, never graded, shout-out next week.

### 0:44–0:45 · Wrap-up

Say it once, plainly: *"`import` borrows a toolbox. `randint` and `choice` give every
outcome an equal chance — that's why our game was fair, and the grid proves it."*
Tease week 6: *"We copy-pasted the same code FIVE times today. Next week I'll show you
three lines that could play a thousand rounds — remember the 500 push-ups from
week 1? You're finally learning how."*

## If you have extra time

Open `4-challenge.py`: a Magic 8-Ball you can re-run for every question the class asks,
a coin-streak hunter (clearly-labeled week 7 sneak peek — how many flips to get 3 heads
in a row? way more than kids guess), and rock-paper-scissors-lizard-Spock with the
class as judges.

## Common pitfalls

- **"The computer is cheating!"** after a losing streak. Great — that's a probability
  lesson. Ask: *"how could we CHECK?"* (Count outcomes; the grid says 3-3-3.) Losing
  three fair rounds in a row happens about 1 time in 27.
- **Typos at the match prompt.** The match compares exact lowercase strings — if you
  type `Rock` or `rok`, no winning sentence matches and the computer steals the round.
  Type carefully, lowercase; if it happens anyway, laugh, call it a forfeit, and note
  the computer's crushing literalness.
- **"Make it best of 7!"** The blocks are right there to copy-paste one more time —
  but it's better theater to refuse: *"absolutely not, that's two more copy-pastes.
  Next week we fix this forever."*
- **Kids expect random to alternate** ("it was rock last time, so it won't be rock").
  Round 3 of the voting game hits this head-on: every roll is fresh; the die has no
  memory.
- **Running long.** The match is the heart — if you must, cut the voting game to three
  rounds and keep the match whole.
