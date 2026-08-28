# Week 8 — Answer Key (teacher only)

## `fill_in_the_blank.m` — completed code

*(Examples below use the word "ROCKET" — your class's word will differ; the
answers that matter are the indexes and command names.)*

```matlab
% TASK 1 — any ALL-CAPS word, 5+ letters, in quotes
word = 'ROCKET';
disp(['Today''s word is: ', word])

% TASK 2 — the first letter lives at address 1 (MATLAB counts like humans)
disp(['First letter: ', word(1)])

% TASK 3 — end means "last address", any word length
disp(['Last letter: ', word(end)])

% TASK 4 — length counts the characters
fprintf('Length: %d\n', length(word))     % → 6 ... and the last address is 6 too

% TASK 5 — 1:3 is addresses 1, 2 AND 3 = three letters
disp(['First three letters: ', word(1:3)])     % → ROC

% TASK 6 — run i from 1 to length(word); word(i) hands over each letter
for i = 1:length(word)
    fprintf('--> %s\n', word(i))
end

% TASK 7 — any quoted character, e.g.:
fprintf('Secret number: %d\n', double('R'))    % → 82   (a space gives 32!)
```

*(If a task runs with a blank still unfilled, MATLAB stops with
`Unrecognized function or variable '____'.` — that's the signal you haven't
gotten there yet, not a bug. And if a kid answers Task 2 with 0, type it!
MATLAB refuses with an index error — indexes must be positive integers,
because position 0 doesn't exist here. Teachable moment, zero cost.)*

## `predict_the_output.m` — answers

| Round | Answer | Why |
|-------|--------|-----|
| 1 | **B** — `A` | Position 2 holds the *second* letter. MATLAB counts like humans — the trap is only for kids who've heard other languages count from 0. |
| 2 | **B** — `5` | `length` counts characters: h-e-l-l-o. Bonus beat: the last letter `o` sits at address **5** — length and last address MATCH in MATLAB. |
| 3 | **B** — `COMP` | The slice includes *both* ends — addresses 1, 2, 3 AND 4. Same colon rule as the week-6 loop `1:4`. |
| 4 | **A** — `hahaha` | `repmat('ha', 1, 3)` lays down three copies of the whole two-letter string. (Week 1's `repmat('=', 1, 40)` scoreboard line, finally explained!) |
| 5 | **B** — `B` | Inside out: `double('A')` → 65, plus 1 → 66, `char(66)` → B. C is the trap for kids who stop before the `char`. |
| Final | **B** — `WHISPER` then `whisper` | `upper()` hands back a NEW string — it does not change the stored variable. `word` is still lowercase (the Workspace row proves it). To keep the change: `word = upper(word)`. |

## Handout answers

**1 · Address every letter**

```
M=1  A=2  T=3  L=4  A=5  B=6
```

- `word(3)` = `T` · `word(end)` = `B` · `length(word)` = `6` · `word(2:4)` = `ATL`
  (addresses 2, 3 and 4 — both ends included)

**2 · X-ray the alphabet**

- `double('C')` = 67 · `char(72)` = `H` · `char(double('M') + 1)` = `N` (77 + 1 = 78)
- `double('c')` = 99 (67 + 32)

**3 · Crack the number message**

`72 73 32 90 79 69` → **HI ZOE** (72=H, 73=I, 32=space, 90=Z, 79=O, 69=E)

## Brain teaser

The take-home message decodes to **YOU FOUND THE SECRET**
(89=Y 79=O 85=U · 70=F 79=O 85=U 78=N 68=D · 84=T 72=H 69=E ·
83=S 69=E 67=C 82=R 69=E 84=T).

For the write-your-own-name part there's no single answer — check a couple of
letters against the table. Praise anyone who used 32 for a space in a full name,
and anyone who noticed lowercase letters need the +32 numbers. Next week,
connect it: *"You hand-encoded a message. Caesar's cipher just adds one more
step — sliding each number before putting the costume back on."*
