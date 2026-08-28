# Week 3 — Input & Text → Mad Libs

**Name: ______________________ Date: __________**

> `input()` asks and **waits**. Numbers come back math-ready.
> Words need the **`'s'`** flag — otherwise MATLAB reads them as **code**.

## Today's words

| Word | What it means |
|------|---------------|
| **`input()`** | asks a question, then waits (forever, if it has to) for an answer |
| **the `'s'` flag** | `input('…', 's')` — expect WORDS, not code |
| **`fprintf`** | the Mad Libs machine — a sentence with slots, filled in order |
| **slot** | `%s` = word slot, `%d` = number slot |
| **`\n`** | "press Enter" at the end of an fprintf sentence |
| **`num2str()`** | turns a number into text so `[ ]` can glue it |

## 1 · Be the computer 🤖

The user types **walrus** when asked. Write what each output line shows.
(Careful — one of these commands has no slots to fill!)

```matlab
animal = input('Animal? ', 's');
fprintf('A %s ate my homework!\n', animal)
disp('A %s ate my homework!')
```

> Line 1: ___________________________________
>
> Line 2: ___________________________________

## 2 · Adding or gluing? 🧮

Write what each line displays:

```matlab
disp(3 + 3)             % → ________
disp(['3', '3'])        % → ________
disp(['ha', 'ha'])      % → ________
disp(['1', '2'])        % → ________  (careful — glue, not math!)
```

## 3 · Spot the bug 🐞

This program should greet Ada — but it CRASHES on line 1 with
`Unrecognized function or variable 'Ada'.`
Circle the problem, then write the fixed line 1 on the blank:

```matlab
name = input('Name? ');        % user types: Ada
fprintf('Hi, %s!\n', name)
```

Fixed line 1: `name = input( ______________________________ )`

---

## 🧠 Brain teaser (optional — take it home)

**Design your own Mad Libs!** Write a 3–5 sentence story with **at least four
blanks** (noun, verb, adjective, number — your choice). For each blank, write
the exact question the computer should ask, like:

> `food = input('Give me a food: ', 's')`

Then write your story as `fprintf` lines — `%s` where a word goes, `%d` where a
number goes, `\n` at the end of each sentence. Bonus points if your number blank
does MATH inside the story, like `fprintf('...%d...', number * 100)` — remember:
the number question is the one WITHOUT the `'s'`.

Bring it next week — the best one gets typed in and **run on the smartboard**,
starring your words. Fame awaits.
