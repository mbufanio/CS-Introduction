# Week 12 — 🎉 Turtle Art

**Name: ______________________ Date: __________**

> Spirograph recipe: **draw a shape, turn a little, repeat** — it closes perfectly
> when the turns total **360°**. And `colors(mod(i, 6) + 1)` makes six pens paint
> forever.

## Today's words

| Word | What it means |
|------|---------------|
| **`pencolor()`** | the pen's ink: `'r' 'g' 'b' 'c' 'm' 'y' 'k'` — or mix `[1 0.5 0]` |
| **`turtle_speed(0)`** | zero pause per step — the turtle teleports |
| **spiral** | `forward(i)` — every side one step longer than the last |
| **spirograph** | a shape rotated again and again until the turns fill 360° |
| **`colors(mod(i, 6) + 1)`** | mod wraps the count so the six-pen string cycles forever |

## 1 · Match the code to the art 🎨

Write the letter of each snippet next to its picture (each is used once).

```matlab
A)  for i = 1:4              B)  for i = 1:100
        forward(100)                 forward(i)
        right(90)                    right(90)
    end                          end

C)  for i = 1:5              D)  for i = 1:36
        forward(100)                 (draw a square)
        right(144)                   right(10)
    end                          end
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
- Colors, in order (pick up to 6 letters from `r g b c m y k`): ______________
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
