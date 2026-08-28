# Week 5 — Random Numbers → 🎉 Rock-Paper-Scissors

> **Unit 2: Decisions** · Payoff lesson — the class plays against the machine

## Objectives

By the end of class, students can:

1. Predict the *possible* values of `randi([a b])` — including that **both ends count**
2. Explain the **mapping** trick: the computer only knows numbers — *we* give the
   numbers meaning with an if/elseif chain
3. Compare words with `strcmp(a, b)` — the word-matcher (`==` is for numbers)
4. Explain why rock-paper-scissors is a **fair game** using the 3×3 grid of outcomes

## Vocabulary

| Word | Kid-friendly definition |
|------|------------------------|
| **`randi([a b])`** | A whole number from a to b — **both ends included**, new surprise each time |
| **`randi(n)`** | Shortcut for `randi([1 n])` — a number from 1 up to n |
| **mapping** | The if/elseif chain that gives each number a meaning (1 means rock…) |
| **`strcmp(a, b)`** | The word-matcher: asks "same word?" — answers 1 (yes) or 0 (no) |
| **equally likely** | Every outcome has the same chance — that's what makes a game **fair** |

## Math tie-in

**Probability and fairness — straight from the 7th/8th grade probability unit.** Each
RPS throw has probability 1/3. The whole game is a 3×3 **sample space**: 3 class
throws × 3 computer throws = 9 equally likely outcomes — 3 wins, 3 losses, 3 ties, so
neither player has an edge. The demo counts this out loud on screen (Section 7) and the
handout has students *prove* it by filling the 9-cell grid. The demo also contrasts a
fair mapping with a rigged one (two of the three numbers mean rock — rock is 2/3!),
which is exactly the "equally likely vs not" distinction their probability unit lives on.

## Before class

- [ ] Print `handout.pdf` (one per student), have `answer-key.md` open or printed for you
- [ ] Open MATLAB, set the Current Folder to this lesson's folder, zoom fonts for the
      smartboard (see `TEACHER-GUIDE.md`), type `clc`
- [ ] Test-run `lesson_demo.m` once — Section 8's match needs you to type 5 throws
- [ ] Hook prop: one coin to flip
- [ ] Swap real student names into the line-leader mapping in `lesson_demo.m`,
      Section 4 (optional but glorious)

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

### 0:07–0:20 · Demo: `lesson_demo.m` (Sections 1–7)

Walk the file top-to-bottom on the smartboard, running each `%%` section
(`Ctrl+Enter`) as you go — but **stop at the end of Section 7**. The match is for
later. Beats to hit:

- The electronic die: `randi([1 6])` — run the section **twice** — *"first program
  all semester that never runs the same way twice"*
- Both ends count: `randi([1 6])` can roll 1 AND 6, never 0, never 7; `randi([5 5])`
  is a rigged die; `randi(6)` is the shortcut for "1 up to 6"
- **The mapping trick** — say it like a law: *"the computer only knows numbers.
  WE give the numbers meaning."* Watch `r` and `computer_throw` change together in
  the Workspace; then the fair line-leader picker (use real names)
- Fairness: 3 numbers → 1/3 each; the rigged spinner where two numbers both mean
  rock (the die is fair — the *mapping* cheats)
- `strcmp` the word-matcher: `==` panics on words of different lengths — uncomment
  the broken line, read *"Arrays have incompatible sizes for this operation."*
  together, and let `strcmp` save the day
- Section 7: build one RPS round in slow motion — computer picks via the mapping,
  class throw hard-coded, and the `matchup` sentence trick (`'rock beats scissors'`).
  **Walk the win logic line by line**; finish with the 9-outcomes count
  (3 ties, 3 wins, 3 losses → fair).

### 0:20–0:27 · Class writes code: `fill_in_the_blank.m`

Kids call out what goes in each blank; you type and run after every task
(`Ctrl+Enter` runs just that task's section). An unfilled blank stops with
`Unrecognized function or variable '____'` — that's the cue you haven't gotten there
yet. Task 6 has no blank: the class dictates the whole `strcmp` tie-check and you
type the if/else live. Completed code in `answer-key.md`.

### 0:27–0:33 · Voting game: `predict_the_output.m`

New twist this week, and say it out loud: *"the code is random, so nobody can predict
the exact output — not even ME. So today you vote on what's POSSIBLE."* Class votes
A/B/C, press Enter to reveal, winner explains why. Round 4 is a mapping trace with the
roll given; the final round has a unicorn trap.

### 0:33–0:40 · 🎉 THE MATCH: `lesson_demo.m` Section 8

The payoff. Scroll to Section 8 and play class vs computer, best of 5:

- Each round: the class agrees on ONE throw (quick vote or loudest shout — pick your
  chaos level), you type it lowercase at the prompt.
- **Be the sports commentator.** Announce every score line like it's the finals.
  ⭐ Point at the Workspace between rounds — `class_score` and `computer_score` are
  slugging it out in real time. Pause dramatically before the ceremony block.
- Rounds 2–5 are the same block copy-pasted — point at it and groan, on purpose:
  *"feel this pain, remember this pain."* It's the week 6 cliffhanger.

### 0:40–0:44 · Handout

Kids fill the 3×3 grid and *prove* the game they just played was fair, then the
spinner and rigged-die exercises. Circulate. Point out the take-home brain teaser —
optional, never graded, shout-out next week.

### 0:44–0:45 · Wrap-up

Say it once, plainly: *"`randi` gives every number an equal chance. The mapping gives
the numbers meaning. `strcmp` asks 'same word?' That's why our game was fair — and the
grid proves it."* Tease week 6: *"We copy-pasted the same code FIVE times today. Next
week I'll show you three lines that could play a thousand rounds — remember the 500
push-ups from week 1? You're finally learning how."*

## If you have extra time

Open `challenge.m`: a Magic 8-Ball (an 8-way mapping you can re-run for every question
the class asks), a coin-streak hunter (clearly-labeled week 7 sneak peek — how many
flips to get 3 heads in a row? way more than kids guess), and
rock-paper-scissors-lizard-Spock with the class as judges.

## Common pitfalls

- **"The computer is cheating!"** after a losing streak. Great — that's a probability
  lesson. Ask: *"how could we CHECK?"* (Count outcomes; the grid says 3-3-3.) Losing
  three fair rounds in a row happens about 1 time in 27.
- **Typos at the match prompt.** `strcmp` matches exact lowercase strings — if you
  type `Rock` or `rok`, no winning sentence matches and the computer steals the round.
  Type carefully, lowercase; if it happens anyway, laugh, call it a forfeit, and note
  the computer's crushing literalness.
- **Someone insists on `==` for words.** Type it! `'rock' == 'paper'` stops with
  `Arrays have incompatible sizes for this operation.` — the exact panic the demo
  predicted. Then `strcmp` to the rescue. (Sneaky footnote for you only: `==` on two
  *same-length* words compares letter-by-letter and returns a row of 1s and 0s —
  confusing, not useful here. `strcmp` asks the real question.)
- **"Make it best of 7!"** The blocks are right there to copy-paste one more time —
  but it's better theater to refuse: *"absolutely not, that's two more copy-pastes.
  Next week we fix this forever."*
- **Kids expect random to alternate** ("it was rock last time, so it won't be rock").
  Round 3 of the voting game hits this head-on: every roll is fresh; the die has no
  memory.
- **Running long.** The match is the heart — if you must, cut the voting game to three
  rounds and keep the match whole.
