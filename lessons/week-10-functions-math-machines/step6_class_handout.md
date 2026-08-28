# Week 10 — Functions: Math Machines

**Name: ______________________ Date: __________**

> `@` **builds** a machine · calling **runs** it · the **output slot** hands the answer back. Math's f(3) and MATLAB's f(3) are the same thing.

## Today's words

| Word | What it means |
|------|---------------|
| **function** | a machine: input in the slot, output out the chute |
| **`@`** | builds a machine: `f = @(x) 2*x + 1` (building it doesn't run it!) |
| **function file** | a named machine's own `.m` file, named after itself |
| **parameter** | the input slot's name — the x in `@(x)` or `double_it(x)` |
| **call** | using the machine: `double_it(5)` — parentheses press the button |
| **output slot** | the `out =` in a function line — it hands the answer back |

## 1 · Be the machine 🤖

Fill each table by running the machine in your head.

```matlab
% triple.m                        % machine.m
function out = triple(x)          function out = machine(x)
    out = x * 3;                      out = x * x - 1;
end                               end
```

| in (x) | `triple(x)` | | in (x) | `machine(x)` |
|--------|-------------|---|--------|--------------|
| 1 | | | 2 | |
| 2 | | | 3 | |
| 5 | | | 4 | |
| 10 | | | 10 | |

## 2 · Match the call to its output 🔌

Draw a line from each call to what it prints. One output is left over!

```matlab
% double_it.m                     % gap.m
function out = double_it(x)       function out = gap(a, b)
    out = x * 2;                      out = a - b;
end                               end
```

| Call | | Output |
|---|---|---|
| `disp(double_it(6))` | | `-5` |
| `disp(gap(9, 4))` | | `8` |
| `disp(gap(4, 9))` | | `12` |
| `disp(double_it(double_it(2)))` | | `5` |
| | | `24` |

## 3 · Build a machine on paper 🔧

Write a complete function **file** for a machine named `add_ten` that takes
one number and hands back that number plus 10. (Three lines — don't forget
the output slot on the function line, and the `end`. Bonus point: what must
the file be named?)

<br><br><br>

---

## 🧠 Brain teaser (optional — take it home)

Two machines: &nbsp; `double_it = @(x) x * 2` &nbsp; and &nbsp; `add_three = @(x) x + 3`

Work **inside out**, like nested parentheses:

1. `double_it(add_three(2))` = ______
2. `add_three(double_it(2))` = ______
3. Same machines, same input, both orders — same answer? Circle: **YES / NO**

In math language that's f(g(2)) vs g(f(2)). Bring your answers next week
for a shout-out — and find out what this has to do with putting on socks
and shoes.
