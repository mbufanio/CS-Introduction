# Week 15 — Answer Key (teacher only)

## The class game skeleton — a complete sample filling

There is **no "right answer"** for the class game — the right answer is whatever the
design sheets say. This sample story ("Marooned on Station Aurora") shows the target
shape, and doubles as your emergency backup: if a room's sheet is missing or stalls,
pour the matching room below into its file and keep moving.

The story lives across the skeleton's files exactly as the class's will: the script
holds the title and loop; each room file gets its blanks filled and its if/else
branches wired. (Note the doubled apostrophes — `station''s` — that's how a
single-quoted MATLAB string carries an apostrophe.)

**`step4_class_fill_in_the_blank.m`** (only the title blank changes):

```matlab
disp(repmat('*', 1, 50))
disp('        MAROONED ON STATION AURORA')
disp(repmat('*', 1, 50))

playing = 'Y';
while strcmp(playing, 'Y')
    room_1()
    disp(' ')
    playing = upper(input('Play again? (Y/N): ', 's'));
end

disp(' ')
disp('Designed by this class. See you next week for the grand opening.')
```

**`room_1.m`**:

```matlab
function room_1()
disp(' ')
disp(repmat('-', 1, 50))
disp('Alarms blare through Station AURORA: ''ALL CREW')
disp('EVACUATED. EXCEPT YOU. OOPS.'' The corridor splits.')
disp(' ')
disp('A) Follow the smell of tomatoes to the greenhouse')
disp('B) Follow the ominous clanking to the engine bay')

choice = upper(input('Type A or B: ', 's'));
while ~strcmp(choice, 'A') && ~strcmp(choice, 'B')
    choice = upper(input('That''s not one of the choices. A or B: ', 's'));
end

if strcmp(choice, 'A')
    room_2()
else
    room_3()
end
end
```

**`room_2.m`**:

```matlab
function room_2()
disp(' ')
disp(repmat('-', 1, 50))
disp('The zero-gravity greenhouse is a blizzard of')
disp('floating lettuce. Two hatches hide in the leaves.')
disp(' ')
disp('A) Swim through the salad to the hatch marked PODS')
disp('B) Take the hatch leaking suspicious steam')

choice = upper(input('Type A or B: ', 's'));
while ~strcmp(choice, 'A') && ~strcmp(choice, 'B')
    choice = upper(input('That''s not one of the choices. A or B: ', 's'));
end

if strcmp(choice, 'A')
    room_4()
else
    room_3()
end
end
```

**`room_3.m`**:

```matlab
function room_3()
disp(' ')
disp(repmat('-', 1, 50))
disp('The engine bay thrums. A ladder climbs toward the')
disp('control room. A giant friendly green button glows.')
disp(' ')
disp('A) Climb the ladder to the control room')
disp('B) Press the giant friendly green button')

choice = upper(input('Type A or B: ', 's'));
while ~strcmp(choice, 'A') && ~strcmp(choice, 'B')
    choice = upper(input('That''s not one of the choices. A or B: ', 's'));
end

if strcmp(choice, 'A')
    room_5()
else
    ending_bad()
end
end
```

**`room_4.m`**:

```matlab
function room_4()
disp(' ')
disp(repmat('-', 1, 50))
disp('One escape pod left, seats slightly chewed by the')
disp('crew''s escaped hamster. The panel wants a decision.')
disp(' ')
disp('A) Trust the AUTOPILOT and buckle up')
disp('B) Climb to the control room for the manual launch code')

choice = upper(input('Type A or B: ', 's'));
while ~strcmp(choice, 'A') && ~strcmp(choice, 'B')
    choice = upper(input('That''s not one of the choices. A or B: ', 's'));
end

if strcmp(choice, 'A')
    ending_good()
else
    room_5()
end
end
```

**`room_5.m`**:

```matlab
function room_5()
disp(' ')
disp(repmat('-', 1, 50))
disp('The control room''s main screen blinks two options:')
disp('LAUNCH POD... and DEFROST CAFETERIA.')
disp(' ')
disp('A) Send LAUNCH POD and sprint for the pod')
disp('B) Curiosity wins: DEFROST CAFETERIA')

choice = upper(input('Type A or B: ', 's'));
while ~strcmp(choice, 'A') && ~strcmp(choice, 'B')
    choice = upper(input('That''s not one of the choices. A or B: ', 's'));
end

if strcmp(choice, 'A')
    ending_good()
else
    ending_bad()
end
end
```

**`ending_good.m`**:

```matlab
function ending_good()
disp(' ')
disp(repmat('*', 1, 50))
disp('The escape pod streaks toward Earth as the')
disp('station''s coffee machine waves goodbye.')
disp('             >>> YOU WIN! <<<')
disp(repmat('*', 1, 50))
end
```

**`ending_bad.m`**:

```matlab
function ending_bad()
disp(' ')
disp(repmat('*', 1, 50))
disp('The station''s gravity flips OFF, then ON,')
disp('directly above the pudding storage. You are')
disp('rescued three days later, dessert-flavored.')
disp('             >>> GAME OVER <<<')
disp(repmat('*', 1, 50))
end
```

**Map check for the sample** (do this same check on the class's design): every room is
reachable from Room 1, every arrow lands on a real room or ending, both endings are
reachable — and there are exactly **9 distinct paths** from start to an ending. Counting
them with the class is the math tie-in on legs.

*(Before it's filled, running the skeleton stops at the title blank with
`Unrecognized function or variable '____'.` — and a filled room whose if/else branch
is still an empty comment simply does nothing for that choice and drops back to the
play-again prompt. Both are the skeleton saying "not written yet," not real bugs.)*

## `step5_class_predict_the_output.m` — answers

| Round | Answer | Why |
|-------|--------|-----|
| 1 | **A** — `100` then `100` | Week 1: `'100'` is a string and `50 + 50` is math, but both *display* as 100. The quotes are packaging, not content. |
| 2 | **B** — `2` | Week 2: 17 = 3 × 5 remainder **2**; `mod` hands back the remainder. (C is the trap — 3 is what `floor(17/5)` would say.) |
| 3 | **A** — `10` | Week 6: `1:4` means 1, 2, 3, 4 — the colon is *inclusive* on both ends. The accumulator collects 1+2+3+4 = 10. (B is the "stops before the last number" trap: 1+2+3 = 6.) |
| 4 | **A** — `OOM` | Week 8: MATLAB counts from **1**, and `2:4` includes both ends — positions 2, 3, 4 of `ROOMS` are O, O, M. (B stops early; C is for counting from 0.) |
| 5 | **B** — `25` | Week 10: inside-out — `boost(5)` hands back 15, then `boost(15)` hands back 25. Functions can eat their own output. |
| Final | **A** — `GGAAMM` | `1:3` → i = 1, 2, 3 → letters G, A, M — each glued on twice by `[result, word(i), word(i)]`: GG + AA + MM. (B doubles the wrong thing; C ignores the indexing.) |

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
