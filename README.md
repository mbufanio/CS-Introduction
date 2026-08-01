# CS-Introduction

**A 16-week introduction to computer science for 7th and 8th graders, taught in Python.**

This course is designed to be taught *live* during a 45-minute math class period: the
teacher runs Python in VS Code on their own machine, projected to a smartboard, while
students participate by predicting, voting, calling out answers, and designing on paper.
Students do **not** need computers.

Every lesson ties into 7th/8th grade math — algebra, inequalities, geometry, probability —
so class time does double duty.

## Quick start

1. Open this folder in VS Code.
2. Read [`TEACHER-GUIDE.md`](TEACHER-GUIDE.md) once — it explains how each file type is
   used in class and how to set up VS Code for a smartboard.
3. Skim [`CURRICULUM.md`](CURRICULUM.md) for the full 16-week map.
4. Before each class, open that week's folder under `lessons/` and read its `README.md`
   (the lesson plan). Print `handout.md` for the class. That's it.

To run any demo in class:

```
python lessons/week-01-what-is-a-program/1-demo.py
```

(or press the Run button in VS Code with the file open).

## The 16 weeks at a glance

| Week | Lesson | Payoff | Math tie-in |
|------|--------|--------|-------------|
| 1 | [What is a program?](lessons/week-01-what-is-a-program/) | The computer speaks! | Precise language, following rules exactly |
| 2 | [Variables & math](lessons/week-02-variables-and-math/) | Python as a super-calculator | Algebraic expressions, order of operations |
| 3 | [Input & strings](lessons/week-03-input-and-strings/) | 🎉 **Mad Libs game** | Variables as unknowns |
| 4 | [If/else decisions](lessons/week-04-if-else-decisions/) | The computer makes choices | Inequalities, the number line |
| 5 | [Random numbers](lessons/week-05-random-rock-paper-scissors/) | 🎉 **Rock-paper-scissors** | Probability of outcomes, fairness |
| 6 | [For loops](lessons/week-06-for-loops-patterns/) | 1000 things in 1 second | Arithmetic sequences, patterns |
| 7 | [While loops](lessons/week-07-while-loops-guessing-game/) | 🎉 **Number guessing game** | Narrowing intervals, halving |
| 8 | [Strings inside-out](lessons/week-08-strings-inside-out/) | Letters are numbers?! | Number lines, position/index |
| 9 | [Caesar cipher](lessons/week-09-caesar-cipher/) | 🎉 **Class secret messages** | Modular (clock) arithmetic |
| 10 | [Functions](lessons/week-10-functions-math-machines/) | Build your own commands | f(x) notation, input→output machines |
| 11 | [Turtle geometry](lessons/week-11-turtle-geometry/) | A robot that draws | Angles, polygons, the 360° rule |
| 12 | [Turtle art](lessons/week-12-turtle-art/) | 🎉 **Spirals & spirographs** | Rotation, symmetry |
| 13 | [Dice & probability](lessons/week-13-dice-and-probability/) | 10,000 dice rolls in a blink | Experimental vs theoretical probability |
| 14 | [Big simulations](lessons/week-14-big-simulations/) | 🎉 **Estimating π, casino math** | Area, percentages, expected value |
| 15 | [Final project: build](lessons/week-15-final-project-build/) | The class designs a game | Logic, flowcharts |
| 16 | [Final project: play!](lessons/week-16-final-project-finish/) | 🎉 **Play the class's game** | Celebration + where to go next |

## What's in each lesson folder

| File | What it is | How it's used |
|------|-----------|---------------|
| `README.md` | Teacher lesson plan | Read before class — objectives, vocabulary, math tie-in, minute-by-minute timing |
| `1-demo.py` | "Code as slides" | Read top-to-bottom on the smartboard, running as you go |
| `2-fill-in-the-blank.py` | Participation file | Blanks shown as `____` — kids call out answers, you type and run |
| `3-predict-the-output.py` | Voting game | Class votes A/B/C on what the code prints, then you run it to reveal |
| `4-challenge.py` | Stretch material | For fast classes, curious kids, or weeks with extra time |
| `handout.md` | Printable 1-pager (source) | Vocabulary, paper exercises, optional take-home brain teaser |
| `handout.pdf` | Print-ready version | The same handout typeset as a one-page PDF — just print it |
| `answer-key.md` | Teacher answers | Filled-in blanks, predict-the-output answers with explanations, handout key |

## Requirements

- Python 3.8+ (any recent Python 3)
- VS Code with the Python extension (recommended) — or any editor plus a terminal
- No third-party packages: the course uses only `random`, `time`, and `turtle` from the
  standard library
