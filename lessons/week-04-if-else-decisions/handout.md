# Week 4 — If/Else Decisions

**Name: ______________________ Date: __________**

> A comparison is a **question**. The computer answers `1` (yes) or `0` (no).
> `if` runs its block only when the answer is 1 — and `end` closes the decision.

## Today's words

| Word | What it means |
|------|---------------|
| **logical** | the computer's answer to a question: `1` = yes, `0` = no |
| **comparison** | a question about values: `> < >= <= == ~=` |
| **condition** | the question an `if` checks before deciding |
| **`if` / `elseif` / `else`** | if this... otherwise if this... otherwise. ONE branch runs |
| **`end`** | closes the decision — every `if` gets one |
| **`~=`** | not equal (the `~` is a wiggly NOT) |

## 1 · Be the computer 🤖

Trace top-down and write the ONE line that prints:

```matlab
temperature = 12;
if temperature >= 28
    disp('melting')
elseif temperature >= 15
    disp('perfect')
elseif temperature >= 0
    disp('jacket')
else
    disp('frozen')
end
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

```matlab
1.  if age = 13
        disp('teen')
    end

2.  if age >= 13
        disp('teen')

3.  if age != 13
        disp('not thirteen')
    end
```

---

## 🧠 Brain teaser (optional — take it home)

**The hat with a hole in it.** A student wrote this Sorting Hat, but ONE
lucky number makes it misbehave. Which number, and what happens to it?

```matlab
if lucky > 50
    disp('Team Waffle')
elseif lucky < 50
    disp('Team Goat')
end
```

Then fix it: rewrite the rules (you're allowed to change `>` and `<` to
anything from today) so that EVERY number from 1 to 100 lands on exactly one
team. Bring your fix next week for a shout-out — bonus glory if you find
*two* different ways to plug the hole.
