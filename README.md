# CS-Introduction

**A 16-week introduction to computer science for 7th and 8th graders, taught in MATLAB.**

This course is designed to be taught *live* during a 45-minute math class period: the
teacher runs MATLAB on their own machine, projected to a smartboard, while students
participate by predicting, voting, calling out answers, and designing on paper.
Students do **not** need computers.

The MATLAB desktop is part of the pedagogy: the **Command Window** shows every result,
and the **Workspace pane** shows the computer's memory as a live table of variables —
the class literally watches values appear and change as code runs.

Every lesson ties into 7th/8th grade math — algebra, inequalities, geometry, probability —
so class time does double duty.

> 🐍 Looking for the Python edition of this course? It's preserved on the
> [`python-version`](../../tree/python-version) branch.

## Quick start

1. Open MATLAB and set the Current Folder to this repo.
2. Read [`TEACHER-GUIDE.md`](TEACHER-GUIDE.md) once — it explains how each file type is
   used in class and how to set up the MATLAB desktop for a smartboard.
3. Skim [`CURRICULUM.md`](CURRICULUM.md) for the full 16-week map.
4. Before each class, open that week's folder under `lessons/` and read
   `step1_teacher_lesson_plan.md`. Print `step6_class_handout.pdf` for the class.
   That's it.

To run any demo in class: open the file in the MATLAB Editor, then run it section by
section (`Ctrl+Enter`) or all at once (`F5`). Everything also runs in free
[GNU Octave](https://octave.org) if you ever need a no-license machine.

## The 16 weeks at a glance

| Week | Lesson | Payoff | Math tie-in |
|------|--------|--------|-------------|
| 1 | [What is a program?](lessons/week-01-what-is-a-program/) | The computer speaks! | Precise language, following rules exactly |
| 2 | [Variables & math](lessons/week-02-variables-and-math/) | The Workspace: memory made visible | Algebraic expressions, order of operations |
| 3 | [Input & text](lessons/week-03-input-and-strings/) | 🎉 **Mad Libs game** | Variables as unknowns |
| 4 | [If/else decisions](lessons/week-04-if-else-decisions/) | The computer makes choices | Inequalities, the number line |
| 5 | [Random numbers](lessons/week-05-random-rock-paper-scissors/) | 🎉 **Rock-paper-scissors** | Probability of outcomes, fairness |
| 6 | [For loops](lessons/week-06-for-loops-patterns/) | 1000 things in 1 second | Arithmetic sequences (`start:step:stop`!) |
| 7 | [While loops](lessons/week-07-while-loops-guessing-game/) | 🎉 **Number guessing game** | Narrowing intervals, halving |
| 8 | [Text inside-out](lessons/week-08-strings-inside-out/) | Letters are numbers?! | Number lines, position/index |
| 9 | [Caesar cipher](lessons/week-09-caesar-cipher/) | 🎉 **Class secret messages** | Modular (clock) arithmetic |
| 10 | [Functions](lessons/week-10-functions-math-machines/) | Build your own commands | f(x) notation — `f = @(x) 2*x + 1` |
| 11 | [Turtle geometry](lessons/week-11-turtle-geometry/) | A robot that draws | Angles, polygons, the 360° rule |
| 12 | [Turtle art](lessons/week-12-turtle-art/) | 🎉 **Spirals & spirographs** | Rotation, symmetry |
| 13 | [Dice & probability](lessons/week-13-dice-and-probability/) | 10,000 dice rolls in a blink | Experimental vs theoretical probability |
| 14 | [Big simulations](lessons/week-14-big-simulations/) | 🎉 **Estimating π, casino math** | Area, percentages, expected value |
| 15 | [Final project: build](lessons/week-15-final-project-build/) | The class designs a game | Logic, flowcharts |
| 16 | [Final project: play!](lessons/week-16-final-project-finish/) | 🎉 **Play the class's game** | Celebration + where to go next |

## What's in each lesson folder

Files are named by audience (**teacher** vs **class**) and numbered in the
approximate order they're used during a class:

| File | Audience | What it is | How it's used |
|------|----------|-----------|---------------|
| `step1_teacher_lesson_plan.md` | teacher | Lesson plan | Read before class — objectives, vocabulary, math tie-in, minute-by-minute timing |
| `step2_teacher_answer_key.md` | teacher | Answer key | Keep open during class — filled-in blanks, predict answers with explanations, handout key |
| `step3_class_demo.m` | class | "Code as slides" | Read top-to-bottom on the smartboard, running section by section (`Ctrl+Enter`) |
| `step4_class_fill_in_the_blank.m` | class | Participation file | Blanks shown as `____` — kids call out answers, you type and run |
| `step5_class_predict_the_output.m` | class | Voting game | Class votes A/B/C on what the code prints, then you run it to reveal |
| `step6_class_handout.pdf` | class | Printable 1-pager | Print one per student (`step6_class_handout.md` is the editable source) |
| `step7_class_challenge.m` | class | Stretch material | For fast classes, curious kids, or weeks with extra time |

Unnumbered `.m` files in a folder are support machines the numbered files call —
MATLAB requires a function's filename to match its name, so they keep their own
names and aren't opened directly in class.

Some weeks add extra `.m` files: function files for week 10+ ("each machine lives in
its own file"), the mini **turtle toolbox** in weeks 11–12, and the room functions of
the class text adventure in weeks 15–16.

## Requirements

- MATLAB — any reasonably recent release (R2016b or newer is plenty). No toolboxes
  needed; the course uses only core MATLAB.
- Or **GNU Octave** (free, octave.org) — every file in this course runs in both.
