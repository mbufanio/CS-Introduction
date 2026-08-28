# Week 2 — Variables & Math

**Name: ______________________ Date: __________**

> A **variable** is a labeled box in the computer's memory. `=` puts a value in the box —
> and the **Workspace pane** shows every box, live.

## Today's words

| Word | What it means |
|------|---------------|
| **variable** | a labeled box that holds one value |
| **Workspace** | the pane showing every box — the computer's memory, live |
| **assignment** | putting a value in a box: `score = 10` |
| **reassignment** | replacing what's in the box (`score = score + 10` — take, add, put back!) |
| **semicolon `;`** | the hush key — the line still works, just silently |
| **`ans`** | MATLAB's scratch box for unnamed answers |
| **operator** | a math symbol: `+  -  *  /  ^` (plus the machines `floor()` and `mod()`) |

## 1 · Be the computer 🤖

Follow the code *exactly* and write what the screen shows. (Careful — some lines
are hushed, and the last one is not!)

```matlab
x = 10;
disp(x)
disp('x')
x = x + 5
```

> Line 1 shows: __________ Line 2 shows: __________ Line 3 shows: __________
>
> Line 4 has no hush key, so MATLAB announces: `x = ______`
>
> After all four lines, the Workspace row for `x` holds: ________

## 2 · PEMDAS drill — evaluate like MATLAB 🧮

```matlab
disp(2 + 3 * 4)      % → ________
disp((2 + 3) * 4)    % → ________
disp(10 - 2 * 3)     % → ________
disp(2 ^ 3)          % → ________
```

## 3 · The pizza machines 🍕

23 slices arrive for 4 kids.

```matlab
disp(floor(23 / 4))   % slices EACH:      ________
disp(mod(23, 4))      % slices LEFT OVER: ________
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
