# Week 1 — Answer Key (teacher only)

## `fill_in_the_blank.m` — completed code

```matlab
% TASK 1 — the command is disp
disp('Good morning! I am your teacher''s computer.')

% TASK 2 — strings always wear quotes
disp('We speak MATLAB now.')

% TASK 3 — any school-appropriate string the class picks, e.g.:
disp('Room 204 is the best class in the school!')

% TASK 4 — joke in the right order: setup, punchline, explanation
disp('Why did the program get thrown out of school?')
disp('Because it had too many bugs!')
disp('...get it? Bugs? That''s what we call code mistakes!')

% TASK 5 — keep the no-quotes version; the quoted one is just a string
disp(100 + 250)          % → 350

% TASK 6 — any sabotage works; typical picks and what MATLAB says:
%   Disp('...')    → Unrecognized function or variable 'Disp'.
%   disp('...     → an "invalid character/string not terminated" parse error
%   disp Hello there   (no parens/quotes) → it may surprisingly print 'Hello'!
%       (MATLAB "command syntax" — just say "MATLAB tried to treat the words
%        as file names" and move on; the clean break is stealing a quote)
disp('You survived week 1. The computer is proud of you. Probably.')
```

*(Note the doubled apostrophes in `teacher''s` and `That''s` — that's how a
single-quoted MATLAB string carries an apostrophe. It will come up the moment the
class picks a message with one.)*

## `predict_the_output.m` — answers

| Round | Answer | Why |
|-------|--------|-----|
| 1 | **A** — `Hello, class!` | `disp` shows what's *inside* the quotes; the quotes themselves are packaging, not content. |
| 2 | **B** — banana, then apple | Top to bottom, always. The computer doesn't alphabetize, tidy, or improve anything. |
| 3 | **B** — `10` | No quotes → it's math → MATLAB calculates. |
| 4 | **A** — `5 + 5` | Quotes → it's a string → MATLAB repeats it without thinking. (C is a trap: strings can *contain* anything, including math symbols.) |
| 5 | **B** — only `I am second!` | The `%` makes line 1 a comment; the computer skips it entirely. |
| Final | **A** — 4 lines, and 14 appears | Line 2 has no quotes (math → `14`); line 4 has quotes (string → `10 + 4`). |

*(A kid may ask about `disp(repmat('=', 1, 40))` at the end of the file — it builds a
bar of forty `=` signs. The "repeater" gets its moment in week 6; for now: "MATLAB can
repeat text. Told you it was cool.")*

## Handout answers

**1 · Be the computer**

```
Welcome!
7
3 + 4
```

(Line 2 is math — no quotes. Line 3 is a string — quotes.)

**2 · Spot the bug**

1. Capital `D` in `Disp` — MATLAB commands are lowercase
2. Missing closing quote after `hello`
3. No quotes around `hello there`

**3 · True or false?**

- Rearranges instructions → **F** (it follows them in order, exactly)
- Same output → **F** (`4` vs `2 + 2`)
- Error = where it got stuck → **T**

**Brain teaser:** no single right answer. Praise: numbered steps, exact lengths and
directions, "move without drawing" steps. Next week, connect it: *"You wrote a program.
Your family member was the computer."*
