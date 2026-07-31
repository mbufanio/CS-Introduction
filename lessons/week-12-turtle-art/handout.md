# Week 12 — 🎉 Turtle Art

**Name: ______________________ Date: __________**

> Spirograph recipe: **draw a shape, turn a little, repeat** — it closes perfectly
> when the turns total **360°**. And `colors[i % 6]` makes six colors paint forever.

## Today's words

| Word | What it means |
|------|---------------|
| **`pencolor()` / `bgcolor()`** | the pen's ink / the paper's color |
| **`speed(0)`** | NO speed limit — the turtle teleports |
| **spiral** | `forward(i)` — every side one step longer than the last |
| **spirograph** | a shape rotated again and again until the turns fill 360° |
| **`colors[i % 6]`** | % wraps the count (0 1 2 3 4 5 0 1...) so the list cycles |

## 1 · Match the code to the art 🎨

Write the letter of each snippet next to its picture (each is used once).

```python
A)  for i in range(4):          B)  for i in range(100):
        forward(100)                    forward(i)
        right(90)                       right(90)

C)  for i in range(5):          D)  for i in range(36):
        forward(100)                    (draw a square)
        right(144)                      right(10)
```

- ____ a five-pointed star
- ____ one plain square
- ____ squares spiraling outward, each side longer than the last
- ____ a round flower/mandala made of 36 tilted squares

## 2 · The rotation table 🔄

Repeats to close = **360 ÷ tilt**. Fill in the blanks.

| tilt after each shape | repeats to close |
|-----------------------|------------------|
| 10° | 36 |
| 20° | ______ |
| 30° | ______ |
| 45° | ______ |
| 120° | ______ |

## 3 · Design your own spirograph ✏️ (we run these NEXT WEEK!)

- Shape sides (3–8): ______ · Tilt angle: ______° · Repeats to close: ______
- Colors (pick up to 6): _______________________________________________
- Sketch your prediction:

```
+----------------------------+
|                            |
|                            |
|                            |
+----------------------------+
```

---

## 🧠 Brain teaser (optional — take it home)

Neat spirographs need tilt angles that **divide 360 evenly**. 1, 2, 3, 4, 5, and 6
all work... 7 doesn't! How many divisors of 360 can you find? (There are **24**.)
Bonus pondering: ancient astronomers *chose* 360 for the circle — why was that
such a convenient number to pick?
