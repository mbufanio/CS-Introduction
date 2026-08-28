# Week 15 — Final Project: Design & Build the Class Text Adventure

> **Unit 8: Final Project** · design workshop + build start

This week bends the usual format: it's a **design session**, not a concept lesson.
No new commands — the class already knows every technique the project needs. Today
they become game designers on paper, and you become their programmer.

## Objectives

By the end of class, students can:

1. Explain that a text adventure is a **map of rooms** connected by **choices** —
   an if/else made physical
2. Design a room on paper with a description, two choices, and where each leads
3. Recognize the parts of the game engine as old friends: `input(...,'s')` (week 3),
   `if/else` (week 4), `while` (week 7), functions in their own files (week 10)
4. Vote, argue, and compromise their way to ONE class story (the secret objective)

## Design words

| Word | Kid-friendly definition |
|------|------------------------|
| **room** | one scene of the game — a description plus a choice (one function file each) |
| **choice** | the A-or-B question at the end of a room — a live if/else |
| **map** | the diagram of rooms and arrows showing where every choice leads |
| **ending** | a room where the game stops — win, lose, or something weirder |
| **dead end** | a choice that leads nowhere — the bug we hunt on paper *before* coding |
| **path** | one complete trip from the first room to an ending |

## Math tie-in

**The game map IS a flowchart — a directed graph.** Boxes (rooms), arrows (choices),
and every arrow is a branch: if/else drawn instead of typed. When the map is on the
board, ask the combinatorics question: *"How many different paths lead from the first
room to an ending?"* Trace them with a finger and count — two choices per room can
multiply fast (that's why 5 rooms is plenty). Then the professional version of the
question: *"Have we walked every path? Does every choice lead SOMEWHERE?"* — that's
**test coverage**, and checking it on paper is real software engineering with a marker.
Bonus MATLAB flavor: the map is also visible as a *list of files* — one room per `.m`
file in the Current Folder pane. The folder IS the map.

## Before class

- [ ] Print `handout.md` — the **design sheet** — one per pair/group, plus spares
- [ ] Open MATLAB, set the Current Folder to this lesson's folder (**important today**:
      the rooms are separate function files, and MATLAB only finds them from the
      current folder), zoom fonts for the smartboard (see `TEACHER-GUIDE.md`)
- [ ] Test-run `lesson_demo.m` once so you can play it smoothly (any path — it's short)
- [ ] Board markers ready: you'll draw the map live
- [ ] Read `answer-key.md`'s sample story so you know what a finished skeleton looks like
- [ ] Shout-outs ready for week 14's sneaky-carnival-game designers — if one stands
      out, simulate it for 2 bonus minutes (copy the demo loop from week 14)

## Lesson plan — 45 minutes

### 0:00–0:02 · Last time

Two minutes: *"What's the Monte Carlo method?"* (answer hard questions with a mountain
of random tries) — *"Why does the casino always win?"* (expected value — a small edge,
repeated forever). Then the pivot: *"Fourteen weeks of parts: printing, variables,
input, ifs, loops, functions. Today we stop collecting parts. We're building the
machine — and it's a GAME, and YOU are designing it."*

### 0:02–0:07 · Hook: play `lesson_demo.m` live

No explanation first — just run it (F5). It's "Escape the Teachers' Lounge," a 3-room
adventure. The class shouts the choices (majority rules), you type A or B. Reach an
ending — win or lose, either is funny — then say:

> *"Every line of that game is something you already know. Look —"* (scroll the file
> slowly; the comments name the week each technique came from) *"— input, week 3.
> If/else, week 4. Functions, week 10. This is a greatest-hits album. And next week,
> we play YOURS."*

Then the MATLAB flourish: point at the Current Folder pane — `demo_room_lounge.m`,
`demo_room_hallway.m`, `demo_room_closet.m`, two endings. *"One room per file. The
folder is the map of the game."*

### 0:07–0:12 · Theme vote

Four starters on the board — **haunted school · space station · mystery island ·
time-travel mall** — write-ins welcome (you're the school-appropriateness filter).
Thirty seconds of campaigning per theme by whoever proposed it, then vote. Majority
wins, no revotes; channel the losing factions: *"every great game needs designers —
your weird ideas are about to matter."*

### 0:12–0:22 · Map on the board

Draw 5–6 empty boxes with room for arrows. Box 1 is the start. The class invents,
you draw and label:

- *"Where does the game begin?"* — name the first room
- *"What are its two choices? Where does each arrow go?"* — draw arrows as they decide
- Keep asking *"and where does THAT lead?"* until 5–6 rooms exist and at least two
  boxes are endings (one win, one lose, minimum)
- Finish with the coverage check: trace every path with a finger. **Any arrow pointing
  at nothing = a dead end = a bug.** Fix it on the board, celebrate finding it early

Leave the map up — the design sheets copy from it.

### 0:22–0:34 · Paper design (the design sheets)

Pairs or small groups; each group **owns one room** from the board map (assign them —
fastest is numbering off). Using `handout.md` they write: the room's name, what the
player sees (2 sentences), choice A and B text, and where each leads (*must* be a real
room or ending from the map). Groups with endings write the endings box. You circulate
and enforce only three rules (they're on the sheet): school-appropriate, funny beats
gory, dead ends need a reason.

### 0:34–0:42 · Assembly begins

Open `fill_in_the_blank.m` — the class game skeleton. The engine is fully wired the
MATLAB way: this script holds the title and play-again loop, and the five rooms and
two endings live in `room_1.m` … `room_5.m`, `ending_good.m`, `ending_bad.m`, with
blanks where the *story* goes. Collect a finished sheet or two and fill Room 1 live:
open `room_1.m`, read the group's description aloud, type it into the blanks, wire
the choices by typing the calls the sheet names (`room_2()`, `ending_bad()`, …) into
the marked if/else branches, and **run the script**. The authors of Room 1 get to
hear their words come out of the computer today. Fill as many rooms as time allows —
unfinished is fine (see below).

### 0:42–0:45 · Wrap-up

Collect **every** design sheet (see the note below — you need them). Then the tease:

> *"Next week we finish the build, and then this class sits back and PLAYS its own
> game on this screen. Bring popcorn energy. And if you design a secret bonus room at
> home this week — best one gets built in."*

## Between classes — teacher's note (important)

**Collect the design sheets and keep them** — they are the source code for week 16's
build session. Before next class, read through them and pencil in fixes for anything
unbuildable (a choice leading to a room nobody designed, two groups claiming the same
room). It's completely fine — and honestly more fun — to leave most rooms unbuilt for
next week: finishing the game live IS week 16's first act. If class designs stall or
sheets go missing, `answer-key.md` contains a complete sample story you can pour into
any unfilled room without breaking stride.

**Flexibility:** this project compresses or stretches. One week only? Play the demo,
vote a theme, and fill the skeleton live from board-map ideas, skipping paper design.
Three weeks? Spend a full session on design (bigger map, more endings), one on the
build, one on playing + the week 16 graduation material. The skeleton doesn't care —
it's story-agnostic.

## If you have extra time

Open `challenge.m`: four upgrade modules ready to bolt onto the class game — a
health counter, a random janitor encounter, a secret key flag, and a Caesar-ciphered
clue (week 9 rides again). Each is a self-contained mini-demo with graft instructions.
Demo one and let the class vote on which upgrade their game gets next week.

## Common pitfalls

- **The theme vote turns into a filibuster.** Timebox it hard: 5 minutes, majority
  rules, no revotes. The magic isn't the theme — it's ownership of the rooms.
- **A dark-story arms race.** Kids escalate ("and then everyone DIES"). The sheet's
  storyteller rules are your shield: school-appropriate, funny beats gory. Redirect
  gore into comedy — "the ghost gives you detention... FOREVER" lands better anyway.
- **Groups design rooms that connect to nothing.** That's not a failure — that's the
  math tie-in live. Put the map back up, ask "which box does this arrow point at?",
  and let the class patch the graph.
- **Two groups want the same room.** Numbering off during assignment prevents it;
  if it happens anyway, one group's version becomes the take-home secret room.
- **`Unrecognized function or variable 'room_2'` when a choice runs.** Either the
  Current Folder isn't this lesson's folder (click **Change Folder** when MATLAB
  offers), or you typed a room name that doesn't match its file. The file's name IS
  the function's name — MATLAB's one strict rule.
- **You try to finish the whole build today.** Don't. One room, typed live, running
  on screen, written by kids — that's the win condition for today. The rest is
  week 16's fuel.
- **A group finishes early.** Point them at the endings box, the secret-room brain
  teaser, or ask them to path-check the board map like professionals.
