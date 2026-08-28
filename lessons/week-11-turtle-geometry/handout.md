# Week 11 — Turtle Geometry

**Name: ______________________ Date: __________**

> The turtle turns the **outside** of every corner — and one full lap around any
> polygon is always **360°** of turning. Turn at each corner = **360 / n**.

## Today's words

| Word | What it means |
|------|---------------|
| **turtle** | our drawing robot — it draws everywhere it walks |
| **toolbox** | nine little function files that ARE the turtle — you can read them! |
| **`forward(n)` / `right(d)`** | walk n steps / spin d degrees (turning never draws) |
| **`penup` / `pendown`** | lift the pen to move invisibly / put it back down |
| **exterior angle** | the turn at a corner — the outside; what the turtle turns |
| **interior angle** | the angle inside the corner — always 180 − the turn |

## 1 · Be the turtle 🐢

Your pencil is the pen. Start at **S**, facing **→**. One grid square = 20 steps.
Draw the turtle's path.

```matlab
forward(60)
right(90)
forward(40)
right(90)
forward(60)
```

```
S .  .  .  .  .

.  .  .  .  .  .

.  .  .  .  .  .

.  .  .  .  .  .
```

What familiar shape is it — and which side is missing? ______________________

## 2 · The polygon table 📐

Fill in the missing values. (Turn = 360 / n. Interior = 180 − turn.)

| sides n | turtle's turn (exterior) | interior angle |
|---------|--------------------------|----------------|
| 3 | ______ | 60° |
| 4 | 90° | 90° |
| 5 | 72° | ______ |
| 6 | ______ | ______ |
| 8 | ______ | ______ |

## 3 · Spot the bug 🐞

This was supposed to draw a square. Circle the bug, then answer below.

```matlab
turtle_start
for side = 1:4
    forward(100)
end
right(90)
```

What does it draw instead? ______________________

---

## 🧠 Brain teaser (optional — take it home)

Write the turtle commands to draw a **rectangle 200 steps wide and 100 steps
tall** — *or* the **first letter of your first name**. Rules: only
`forward( )`, `backward( )`, `right( )`, `left( )`, `penup`, and `pendown`,
one command per line. Trace it with your finger to test — you are the turtle.
Bring it next week for a shout-out (we may run it on the smartboard!).
