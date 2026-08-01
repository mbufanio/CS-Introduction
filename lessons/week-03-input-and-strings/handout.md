# Week 3 — Input & Strings → Mad Libs

**Name: ______________________ Date: __________**

> `input()` asks and **waits**. Whatever comes back is a **string** — even `"12"`.

## Today's words

| Word | What it means |
|------|---------------|
| **`input()`** | asks a question, then waits (forever, if it has to) for an answer |
| **f-string** | a fill-in-the-blank sentence: `f"Hi, {name}!"` — braces get filled from the box |
| **type** | what KIND of thing a value is — text or number |
| **`int()`** | converts a string like `"7"` into the real number 7 |
| **concatenation** | gluing strings with `+`: `"mad" + "libs"` → `"madlibs"` |

## 1 · Be the computer 🤖

The user types **walrus** when asked. Write what each print line shows.
(One line is missing its `f` — careful!)

```python
animal = input("Animal? ")
print(f"A {animal} ate my homework!")
print("A {animal} ate my homework!")
```

> Line 1: ___________________________________
>
> Line 2: ___________________________________

## 2 · Adding or gluing? 🧮

Write what each one makes:

```python
3 + 3            # → ________
"3" + "3"        # → ________
int("4") + 1     # → ________
"ha" + "ha"      # → ________
```

## 3 · Spot the bug 🐞

This program should print `Next year: 13` but it CRASHES on line 2.
Circle the problem, then fix line 2 on the blank:

```python
age = input("Age? ")        # user types: 12
print("Next year:", age + 1)
```

Fixed line 2: `print("Next year:", ______________________ )`

---

## 🧠 Brain teaser (optional — take it home)

**Design your own Mad Libs!** Write a 3–5 sentence story with **at least four
blanks** (noun, verb, adjective, number — your choice). For each blank, write
the exact question the computer should ask, like:

> `food = input("Give me a food: ")`

Then write your story with the box names in {braces}. Bonus points if your
number blank does MATH inside the story, like `{number * 100}`.

Bring it next week — the best one gets typed in and **run on the smartboard**,
starring your words. Fame awaits.
