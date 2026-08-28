# Week 16 — 🎉 Finish, Play, Graduate

> **Unit 8: Final Project** · the finale — finish the build, play the class's game, graduate

Today has three jobs: finish the class game, **play it loudly**, and send sixteen
weeks home in their pockets. There is no new material. There is, however, a trophy.

## Objectives

By the end of class, students can:

1. Watch code THEY designed run on the smartboard — and own it ("we built that")
2. Debug a real bug live if one appears (and it might — see Common pitfalls: that's
   a feature)
3. Answer throwback questions from every unit of the course (the finale trivia)
4. Name at least one way to keep programming after this class ends (the handout's
   where-to-go-next box)

## The whole course in one table (review — reuse these words all class)

| Weeks | What they can do now |
|-------|----------------------|
| 1 | `disp()`, strings, "computers are literal", errors are clues |
| 2–3 | variables and the Workspace, `+ - * / ^`, `mod`, `input()`, `fprintf` |
| 4–5 | `if/elseif/else`, comparisons, logical 1/0, `randi`, `strcmp` |
| 6–7 | `for` and the colon `1:n`, accumulators, `repmat`, `while`, game loops |
| 8–9 | indexing from 1, `length`, `word(end)`, `double`/`char`, the Caesar cipher |
| 10 | functions — their own commands, one per file, inputs and outputs |
| 11–12 | turtle geometry, loops that draw, spirals in a figure window |
| 13–14 | simulations, `rand`, Monte Carlo, expected value |
| 15–16 | **all of it at once: the class game** |

## Math tie-in

**Reflection — the course was secretly math class.** Inventory it out loud during the
closing speech (the beats below walk through it): order of operations (week 2),
inequalities on the number line (week 4), probability and fairness (weeks 5, 13),
arithmetic sequences — the colon IS one (week 6), halving an interval — why 100 needs
only 7 guesses (week 7), positions on a number line and letters as numbers (week 8),
modular clock arithmetic (week 9), f(x) machines (week 10), exterior angles totaling
360° (weeks 11–12), experimental vs theoretical probability (week 13), area ratios,
Pythagoras, and expected value (week 14). Land it plainly: *"You did ALL of this in
math class without noticing. Programming didn't need new math — it needed the math
you already had, moving."*

## Before class

- [ ] Print `step6_class_handout.md` (one per student) — it's a **certificate**; nicer paper if
      the copier offers it
- [ ] Bring the week 15 **design sheets** — they're the build plan for the first segment
- [ ] Open MATLAB with **week 15's folder as the Current Folder** (the class game —
      its script and room files — lives there; you'll switch the Current Folder to
      *this* folder for the trivia and polish segments)
- [ ] Have week 15's `step2_teacher_answer_key.md` sample story open — it's the emergency backup
- [ ] Test-run this folder's `step3_class_demo.m` once (the Haunted School — today's
      backup game and going-away gift; its rooms are the `haunted_*.m` files)
- [ ] Type the current year into `step5_class_predict_the_output.m`'s trophy banner (the `____`
      near the bottom — it's inside quotes, safe to edit)
- [ ] Decide how you'll send the game home (print it, post it, email the folder —
      free GNU Octave runs this exact code on any family computer; it's on the
      handout's resource list)

## Lesson plan — 45 minutes

### 0:00–0:03 · Last time + secret-room check

*"What did we build last week?"* (the map, the rooms, the design sheets — the game's
source code, on paper). **Collect any take-home secret-room designs** with ceremony —
read the best one's title aloud and announce it's getting built today if time allows.
Then: *"Today we finish it. Then we PLAY it. Then you graduate."*

### 0:03–0:18 · Finish the build

Week 15's skeleton on the smartboard (`step4_class_fill_in_the_blank.m` plus `room_1.m` …
`room_5.m`, `ending_good.m`, `ending_bad.m` — Current Folder set to week 15's
folder), design sheets in hand. Fill the remaining blanks live: read each group's
words aloud as you type them (author credit by name), wire each choice by typing the
call its sheet names — `room_3()`, `ending_bad()` — into the marked if/else branches,
and **run after every room** so the game grows in public. Work in map order; if a
sheet is missing or unbuildable, pour in the matching room from week 15's answer-key
sample story without breaking stride — you can swap the class's words in later. The
winning secret room gets grafted last if the clock allows (a third choice in
whichever room its designer picked).

### 0:18–0:30 · PLAY THE GAME

The payoff of sixteen weeks. Run the class's game full-screen. **You type; the class
votes every choice** — majority rules, shouted or hands, playoffs-level energy.
Reach an ending. Cheer like it's a buzzer-beater — no, really: the room should be
LOUD. Then play again down a *different* path (the play-again loop earns its keep).
Two paths minimum; three if the votes are fast. If the class hits an ending nobody
designed or a door to nowhere — jackpot, see Common pitfalls: debug it live.

### If the build finishes early · Polish round (`step4_class_fill_in_the_blank.m`)

Five upgrade tasks in **this folder's** fill-in file: a title banner (`repmat`
marquee), a play-again loop, a games-played counter (watch its box climb in the
Workspace), a `pause(1)` suspense beat, and a **credits roll with the designers'
real names**. The credits roll is the one to reach for — do it during the second
playthrough's wrap if you can. Completed versions in `step2_teacher_answer_key.md`.

### 0:30–0:38 · The finale trivia (`step5_class_predict_the_output.m`)

Six throwback rounds, each labeled with the week it came from — weeks 1, 2, 6, 8, 10,
and a final boss combining three at once. Same voting rules as always. When the
trophy prints at the end, read the banner aloud and make them repeat it:
*"YOU SPEAK MATLAB."*

### 0:38–0:45 · Graduation

Hand out `step6_class_handout.md` — walk it: the certificate header (they fill in their own name;
you can sign them if you want a stampede), the **I can...** checklist (have them
actually check the boxes — watching a kid check "invent my own commands" is the whole
job), and the **where-to-go-next box** — point at two or three entries and say
they're free and they work at home. Then the closing speech. Beats to hit, in your
words:

- *"Sixteen weeks ago this computer did what ANYONE told it. Today it runs a world
  that didn't exist until this class invented it. It does what YOU design."*
- The math inventory (see Math tie-in) — *"you did all of this in math class
  without noticing."*
- *"Errors were never failures. They were clues. That stays true everywhere,
  not just in MATLAB."*
- *"The computer was never smart. It's fast. YOU were the smart part all along."*
- Last line, slowly: *"Class dismissed. Programmers — see you out there."*

## If you have extra time

Open `step7_class_challenge.m` — the showcase: a 1966-style chatbot the class can talk to
(you type their one-word topics; `strcmp` runs the whole brain), a password-strength
checker they'll use forever, and a fireworks finale painted with `rand` in a figure
window — run it last and let it be the closing image of the course.

## Common pitfalls

- **The game has a dead-end bug.** A choice's if/else branch is still an empty
  comment (the choice silently does nothing), or a typed call names a room nobody
  wrote — `Unrecognized function or variable 'room_6'`. This is the best thing that
  can happen today — say so: *"a REAL bug, in software WE wrote — this is the most
  authentic programming moment of the course."* Read the error aloud, find the line
  together, fix it, re-run, and let the room cheer the fix harder than the endings.
- **The rooms "can't be found."** `Unrecognized function or variable 'room_1'` right
  at the start means the Current Folder isn't week 15's folder — click **Change
  Folder** when MATLAB offers, and narrate why (the rooms are files; MATLAB looks in
  the current folder).
- **The build eats the class.** Playing beats polishing — cut remaining rooms to the
  sample story's versions at 0:18 sharp. An imperfect game the class PLAYS beats a
  perfect game the bell interrupts.
- **One kid's room didn't make it in.** Name-check every sheet during the build even
  if its room got the backup text, and put every name in the credits roll. Nobody
  designed nothing.
- **The trivia gets competitive.** Let it — it's the last one. Keep score, crown a
  champion, make the champion explain one answer (the crown has duties).
- **Kids are sad it's over.** Aim the feeling at the handout: circle the two
  resources you'd recommend first for *this* class. The certificate is the period;
  the where-to-next box is the comma.
- **"Can we keep the game?"** Yes — that's the plan. This folder's `step3_class_demo.m`
  (the Haunted School, with all its `haunted_*.m` room files) is the going-away gift
  too: its header is written directly to any student reading it at home, with a map
  of which week taught which line — and free GNU Octave runs it on any computer.
