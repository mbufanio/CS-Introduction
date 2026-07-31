# Week 2 — Variables & Math

**Name: ______________________ Date: __________**

> A **variable** is a labeled box in the computer's memory. `=` puts a value in the box.

## Today's words

| Word | What it means |
|------|---------------|
| **variable** | a labeled box that holds one value |
| **assignment** | putting a value in a box: `score = 10` |
| **reassignment** | replacing what's in the box (`score = score + 10` — take, add, put back!) |
| **expression** | a math phrase Python can work out, like `3 * x + 2` |
| **operator** | a math symbol: `+  -  *  /  **  //  %` |

## 1 · Be the computer 🤖

Follow the code *exactly* and write what the screen shows. (Careful on line 3!)

```python
x = 10
print(x)
print("x")
x = x + 5
print(x)
```

> Line 1: ________ Line 2: ________ Line 3: ________

## 2 · PEMDAS drill — evaluate like Python 🧮

```python
print(2 + 3 * 4)      # → ________
print((2 + 3) * 4)    # → ________
print(10 - 2 * 3)     # → ________
print(2 ** 3)         # → ________
```

## 3 · The pizza operators 🍕

23 slices arrive for 4 kids.

```python
print(23 // 4)   # slices EACH:      ________
print(23 % 4)    # slices LEFT OVER: ________
```

Check yourself: (each × 4) + left over should equal ________.

---

## 🧠 Brain teaser (optional — take it home)

**The two-box swap.** Real programmers get asked this in job interviews!

Box `a` holds **3**. Box `b` holds **7**. Make them trade values — `a` ends
with 7 and `b` ends with 3. Rules:

- Every step must be an assignment (something like `box = box`).
- A box holds only ONE value — putting something in destroys what was there.
- You can't "remember" a number in your head. Boxes only!

Hint: `a = b` first destroys the 3 forever… so maybe you need a third box?
Write your steps like code. Bring it next week for a shout-out.
