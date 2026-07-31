# Week 15 — Answer Key (teacher only)

## `2-fill-in-the-blank.py` — a complete sample filling

There is **no "right answer"** for the class game — the right answer is whatever the
design sheets say. This sample story ("Marooned on Station Aurora") shows the target
shape, and doubles as your emergency backup: if a room's sheet is missing or stalls,
pour the matching room below into the skeleton and keep moving.

```python
def ending_good():
    print()
    print("*" * 50)
    print("The escape pod streaks toward Earth as the")
    print("station's coffee machine waves goodbye.")
    print("             >>> YOU WIN! <<<")
    print("*" * 50)


def ending_bad():
    print()
    print("*" * 50)
    print("The station's gravity flips OFF, then ON,")
    print("directly above the pudding storage. You are")
    print("rescued three days later, dessert-flavored.")
    print("             >>> GAME OVER <<<")
    print("*" * 50)


def room_1():
    print()
    print("-" * 50)
    print("Alarms blare through Station AURORA: 'ALL CREW")
    print("EVACUATED. EXCEPT YOU. OOPS.' The corridor splits.")
    print()
    print("A) Follow the smell of tomatoes to the greenhouse")
    print("B) Follow the ominous clanking to the engine bay")

    choice = input("Type A or B: ").upper()
    while choice != "A" and choice != "B":
        choice = input("That's not one of the choices. A or B: ").upper()

    if choice == "A":
        room_2()
    else:
        room_3()


def room_2():
    print()
    print("-" * 50)
    print("The zero-gravity greenhouse is a blizzard of")
    print("floating lettuce. Two hatches hide in the leaves.")
    print()
    print("A) Swim through the salad to the hatch marked PODS")
    print("B) Take the hatch leaking suspicious steam")

    choice = input("Type A or B: ").upper()
    while choice != "A" and choice != "B":
        choice = input("That's not one of the choices. A or B: ").upper()

    if choice == "A":
        room_4()
    else:
        room_3()


def room_3():
    print()
    print("-" * 50)
    print("The engine bay thrums. A ladder climbs toward the")
    print("control room. A giant friendly green button glows.")
    print()
    print("A) Climb the ladder to the control room")
    print("B) Press the giant friendly green button")

    choice = input("Type A or B: ").upper()
    while choice != "A" and choice != "B":
        choice = input("That's not one of the choices. A or B: ").upper()

    if choice == "A":
        room_5()
    else:
        ending_bad()


def room_4():
    print()
    print("-" * 50)
    print("One escape pod left, seats slightly chewed by the")
    print("crew's escaped hamster. The panel wants a decision.")
    print()
    print("A) Trust the AUTOPILOT and buckle up")
    print("B) Climb to the control room for the manual launch code")

    choice = input("Type A or B: ").upper()
    while choice != "A" and choice != "B":
        choice = input("That's not one of the choices. A or B: ").upper()

    if choice == "A":
        ending_good()
    else:
        room_5()


def room_5():
    print()
    print("-" * 50)
    print("The control room's main screen blinks two options:")
    print("LAUNCH POD... and DEFROST CAFETERIA.")
    print()
    print("A) Send LAUNCH POD and sprint for the pod")
    print("B) Curiosity wins: DEFROST CAFETERIA")

    choice = input("Type A or B: ").upper()
    while choice != "A" and choice != "B":
        choice = input("That's not one of the choices. A or B: ").upper()

    if choice == "A":
        ending_good()
    else:
        ending_bad()


print("*" * 50)
print("        MAROONED ON STATION AURORA")
print("*" * 50)

playing = "Y"
while playing == "Y":
    room_1()
    print()
    playing = input("Play again? (Y/N): ").upper()

print()
print("Designed by this class. See you next week for the grand opening.")
```

**Map check for the sample** (do this same check on the class's design): every room is
reachable from Room 1, every arrow lands on a real room or ending, both endings are
reachable — and there are exactly **9 distinct paths** from start to an ending. Counting
them with the class is the math tie-in on legs.

## `3-predict-the-output.py` — answers

| Round | Answer | Why |
|-------|--------|-----|
| 1 | **A** — `100` then `100` | Week 1: `"100"` is a string and `50 + 50` is math, but both *display* as 100. The quotes are packaging, not content. |
| 2 | **B** — `2` | Week 2: 17 = 3 × 5 remainder **2**; `%` hands back the remainder. (C is the trap — 3 is what `//` would say.) |
| 3 | **B** — `6` | Week 6: `range(4)` gives 0, 1, 2, 3 — it stops *before* 4. The accumulator collects 0+1+2+3 = 6. (A is the "range includes 4" trap.) |
| 4 | **B** — `25` | Week 10: inside-out — `boost(5)` returns 15, then `boost(15)` returns 25. Functions can eat their own output. |
| 5 | **B** — `40` | Week 5: `randint(1, 6)` gives a whole number 1–6, so times 10 the only possibilities are 10, 20, 30, 40, 50, 60. 35 isn't a multiple of 10; 65 is out of range. |
| Final | **A** — `GGAAMM` | `range(3)` → i = 0, 1, 2 → letters G, A, M — each doubled by `* 2` and glued on: "GG" + "AA" + "MM". (B doubles the wrong thing; C ignores the indexing.) |

## Design sheets — judging guidance

No answer key exists for imagination, and don't grade it. What to *check* (the
engineering, not the art):

- **Every choice leads somewhere real.** Both "leads to" fields name a room on the map
  or an ending. An arrow to nowhere is the one fixable "wrong answer."
- **Endings exist.** At least one win and one lose among the class's sheets — if all
  five groups wrote glory, gleefully assign someone the lose ending ("every game needs
  a pudding flood").
- **Two sentences of scene.** One is thin, five won't fit on a smartboard. Trim live
  while typing, with the authors' consent — that's called editing, and real studios
  do it too.
- **The three storyteller rules held.** School-appropriate, funny beats gory, dead
  ends have a reason.
- **Names on the sheet.** They go in next week's credits — that's the paycheck.
