# Week 4 — If/Else Decisions

**Name: ______________________ Date: __________**

> A comparison is a **question**. The answer is `True` or `False`. `if` runs its
> indented block only when the answer is True.

## Today's words

| Word | What it means |
|------|---------------|
| **boolean** | a value with only two options: `True` or `False` |
| **comparison** | a question about values: `> < >= <= == !=` |
| **condition** | the question an `if` checks before deciding |
| **`if` / `elif` / `else`** | if this... otherwise if this... otherwise. ONE branch runs |
| **indent** | the sideways space meaning "this line belongs to the if" |

## 1 · Be the computer 🤖

Trace top-down and write the ONE line that prints:

```python
temperature = 12
if temperature >= 28:
    print("melting")
elif temperature >= 15:
    print("perfect")
elif temperature >= 0:
    print("jacket")
else:
    print("frozen")
```

The screen shows: ______________________

## 2 · Closed or open circle? ⚪⚫

The ride rule is `height >= 132`. Circle the bouncer's answer for each rider:

| Rider's height | Rides? |
|----------|--------------|
| 131 | RIDES / TEACUPS |
| 132 | RIDES / TEACUPS |
| 133 | RIDES / TEACUPS |

On a number line, `>= 132` is a **CLOSED / OPEN** (circle one) circle at 132.
If the rule were `> 132`, the rider at exactly 132 would: __________________

## 3 · Spot the bug 🐞

Each snippet has **one** mistake. Circle it.

```python
1.  if age = 13:
        print("teen")

2.  if age >= 13
        print("teen")

3.  if age >= 13:
    print("teen")        ← this line is supposed to belong to the if
```

---

## 🧠 Brain teaser (optional — take it home)

**The hat with a hole in it.** A student wrote this Sorting Hat, but ONE
lucky number makes it misbehave. Which number, and what happens to it?

```python
if lucky > 50:
    print("Team Waffle")
elif lucky < 50:
    print("Team Goat")
```

Then fix it: rewrite the rules (you're allowed to change `>` and `<` to
anything from today) so that EVERY number from 1 to 100 lands on exactly one
team. Bring your fix next week for a shout-out — bonus glory if you find
*two* different ways to plug the hole.
