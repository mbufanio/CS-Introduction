# Curriculum Map — 16 Weeks

One 45-minute class per week. Concepts build week over week ("the concept ladder"), and
every unit ends with a payoff lesson 🎉 where the new concept powers a game, cipher, or
artwork. Math tie-ins target the 7th/8th grade curriculum.

**Legend:** each week lists → *Concepts* · *Math tie-in* · *The moment kids remember*

---

## Unit 0 — Computers & Programs (Week 1)

**Week 1 — What is a program?** (`week-01-what-is-a-program`)
- Concepts: what a program is, `print()`, strings, computers are literal, errors are clues, comments
- Math tie-in: precise language — like showing your work, order matters
- The moment: the class gives "exact instructions" out loud and watches the computer obey — and crash — on command

## Unit 1 — Variables & Math (Weeks 2–3) · *algebra*

**Week 2 — Variables & math operators** (`week-02-variables-and-math`)
- Concepts: variables, assignment, `+ - * /`, `**`, `//`, `%`, order of operations, reassignment
- Math tie-in: algebraic expressions, evaluating with substitution, PEMDAS
- The moment: Python evaluates a monster expression instantly — and respects PEMDAS just like they must

**Week 3 — Input & strings → 🎉 Mad Libs** (`week-03-input-and-strings`)
- Concepts: `input()`, string variables, f-strings/concatenation, `int()` conversion
- Math tie-in: variables as unknowns that get values later; string `+` vs number `+`
- The moment: the class's ridiculous Mad Libs story, starring their words, read from the smartboard

## Unit 2 — Decisions (Weeks 4–5) · *inequalities & probability*

**Week 4 — If/else decisions** (`week-04-if-else-decisions`)
- Concepts: `if`/`elif`/`else`, comparisons (`> < >= <= == !=`), booleans, indented blocks
- Math tie-in: inequalities and the number line; testing whether a value satisfies one
- The moment: a "sorting hat" program makes decisions about class-suggested numbers

**Week 5 — Random numbers → 🎉 Rock-paper-scissors** (`week-05-random-rock-paper-scissors`)
- Concepts: `import random`, `randint`, `choice`, combining random + if/else
- Math tie-in: probability of outcomes, equally likely events, fairness
- The moment: the class plays rock-paper-scissors *against the program* — best of 5, keep score

## Unit 3 — Loops (Weeks 6–7) · *patterns & sequences*

**Week 6 — For loops** (`week-06-for-loops-patterns`)
- Concepts: `for` + `range()`, loop variables, accumulators, building patterns
- Math tie-in: arithmetic sequences, Gauss's 1+2+…+100 trick — then the loop version
- The moment: 3 lines of code print 1,000 things before anyone finishes blinking

**Week 7 — While loops → 🎉 Number guessing game** (`week-07-while-loops-guessing-game`)
- Concepts: `while`, loop conditions, infinite loops (and escaping them), game loops
- Math tie-in: narrowing an interval with each guess; halving — why 1–100 needs only 7 guesses
- The moment: the class beats the computer's secret number, then flips it — the computer guesses *their* number in 7 tries

## Unit 4 — Strings & Secrets (Weeks 8–9) · *modular arithmetic*

**Week 8 — Strings inside-out** (`week-08-strings-inside-out`)
- Concepts: indexing, `len()`, slicing, looping over strings, `ord()`/`chr()`
- Math tie-in: positions on a number line (starting at 0!), letters as numbers
- The moment: kids discover every letter is secretly a number — and spell words in code

**Week 9 — 🎉 Caesar cipher** (`week-09-caesar-cipher`)
- Concepts: building the cipher from week 8's pieces; encoding and decoding; brute force
- Math tie-in: modular (clock) arithmetic — why Z + 1 wraps to A
- The moment: kids write secret messages on paper, the program decodes them live — then brute-forces a mystery message

## Unit 5 — Functions (Week 10) · *f(x)*

**Week 10 — Functions: math machines** (`week-10-functions-math-machines`)
- Concepts: `def`, parameters, `return`, calling functions, reuse
- Math tie-in: f(x) notation, input→output machines and tables — Python `f(3)` *is* math f(3)
- The moment: the class invents their own command, then uses it 10 times in a row

## Unit 6 — Turtle Graphics (Weeks 11–12) · *geometry*

**Week 11 — Turtle geometry** (`week-11-turtle-geometry`)
- Concepts: the `turtle` module, `forward`/`right`, drawing polygons with loops
- Math tie-in: exterior angles, why every polygon's turns total 360°, interior-angle check
- The moment: the class "programs" the teacher-robot to walk a square first — then the turtle does it on screen

**Week 12 — 🎉 Turtle art** (`week-12-turtle-art`)
- Concepts: nesting loops, color, spirals, star polygons, spirographs
- Math tie-in: rotation, symmetry, what angle choices do to a figure
- The moment: a 10-line spirograph fills the smartboard in color; the class picks the parameters

## Unit 7 — Randomness & Simulation (Weeks 13–14) · *probability & statistics*

**Week 13 — Dice & probability** (`week-13-dice-and-probability`)
- Concepts: simulation loops, counting outcomes, comparing runs of different sizes
- Math tie-in: experimental vs theoretical probability, law of large numbers, two-dice sums (why 7 wins)
- The moment: 10 hand-rolls vs 10,000 simulated rolls — watching the experimental results crawl toward the theory

**Week 14 — 🎉 Big simulations** (`week-14-big-simulations`)
- Concepts: Monte Carlo methods, running experiments you couldn't do by hand
- Math tie-in: estimating π from areas, expected value — "should you play this game?"
- The moment: random raindrops estimate π on the smartboard; the class discovers the casino always wins

## Unit 8 — Final Project (Weeks 15–16)

**Week 15 — Text adventure: design & build** (`week-15-final-project-build`)
- Concepts: putting it all together — input, if/else, while, functions
- The class designs the game on paper: map, rooms, choices, endings. You code it live from their design.

**Week 16 — 🎉 Text adventure: finish & play** (`week-16-final-project-finish`)
- Finish the build, then *play the class's game* on the smartboard.
- Wrap-up: what they learned, and where to go next (resources for kids who want to keep coding).

---

## Concept dependency ladder

Each week leans on the ones before it:

```
W1 print → W2 variables → W3 input/strings ┐
                                           ├→ W4 if/else → W5 random+if
W6 for loops → W7 while loops ─────────────┘
W8 string indexing → W9 cipher (uses loops + strings + %)
W10 functions (uses everything)
W11–12 turtle (uses loops + functions)
W13–14 simulation (uses loops + random + accumulators)
W15–16 final project (uses everything)
```

If you need to trim the course to fewer weeks, the safest cuts are: drop week 14 (keep
13), drop week 12 (keep 11), and compress weeks 15–16 into one build-and-play session.
If you get extra weeks, the natural stretch points are an extra turtle-art week, an
extra final-project week, or a "class choice" week re-running the favorite payoff.
