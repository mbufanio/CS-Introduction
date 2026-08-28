# Week 9 — Answer Key (teacher only)

*(For reference: the board's mystery `WKH ILUVW UXOH RI FRGH FOXE` is
**THE FIRST RULE OF CODE CLUB**, shift 3.)*

## `fill_in_the_blank.m` — completed code

```matlab
% TASK 1 — a normal clock face has 12 hours
fprintf('10 o''clock + 4 hours = %d o''clock\n', mod(10 + 4, 12))    % → 2

% TASK 2 — distances are measured from the alphabet's start: 'A'
fprintf('Position of D: %d\n', double('D') - double('A'))            % → 3

% TASK 3 — live-typed; the class supplies the command: mod
%   fprintf('28 on the alphabet clock is: %d\n', mod(28, 26))        % → 2
%   (floor(28 / 26) → 1 is the number of full laps — fun, but wrong question)

% TASK 4 — clock size 26; 'A' turns a clock spot back into a capital
letter = 'Y';
shift = 3;
pos = double(letter) - double('A');
newpos = mod(pos + shift, 26);
new_letter = char(newpos + double('A'));
fprintf('%s encodes to %s\n', letter, new_letter)      % → Y encodes to B

% TASK 5 — spaces (' ') sneak through; newpos gets the costume
message = 'CODE CLUB AT NOON';
shift = 5;
message = upper(message);
secret = '';
for i = 1:length(message)
    letter = message(i);
    if letter == ' '
        secret = [secret, letter];
    else
        pos = double(letter) - double('A');
        newpos = mod(pos + shift, 26);
        secret = [secret, char(newpos + double('A'))];
    end
end
disp(['Secret: ', secret])                   % → Secret: HTIJ HQZG FY STTS

% TASK 6 — the complement of 5 on a 26-clock: 26 - 5 = 21
decode_shift = 21;
original = '';
for i = 1:length(secret)
    letter = secret(i);
    if letter == ' '
        original = [original, ' '];
    else
        pos = double(letter) - double('A');
        newpos = mod(pos + decode_shift, 26);
        original = [original, char(newpos + double('A'))];
    end
end
disp(['Decoded: ', original])                % → Decoded: CODE CLUB AT NOON
```

*(A task run with a blank still unfilled stops with
`Unrecognized function or variable '____'.` — not there yet, keep going.)*

## `predict_the_output.m` — answers

| Round | Answer | Why |
|-------|--------|-----|
| 1 | **B** — `2` | 25 + 3 = 28; 28 wraps on the 26-clock to 2 (one lap of 26, remainder 2). |
| 2 | **A** — `1` then `0` | 27 is one past a full lap → 1. 26 is *exactly* a full lap → 0. Landing exactly on 26 means landing on A's spot. |
| 3 | **B** — `1` | 66 − 65. Subtracting `double('A')` turns secret numbers into clock spots — B is 1 step from A. C is the trap for kids who forget the subtraction happens *between* two doubles. |
| 4 | **A** — `A` | Z is at 25; 25 + 1 = 26; `mod(26, 26)` = 0 → spot 0 → A. Option C (`[`) is what you'd get *without* the `mod(…, 26)`: `char(91)`. Worth saying out loud. |
| 5 | **A** — `B` | The sneaky one: Y(24) + 3 = 27 → `mod(27, 26)` = 1 → B. Kids who slide on a ruler instead of a clock reach for `\` (`char(92)`, option B's bait). Y → Z → A → B. |
| Final | **A** — `B C` | The `if` lets the space through untouched (`letter == ' '` — legal, both sides are single characters); A→B and B→C shift normally. Option B (`BC`) catches anyone who thinks the space gets shifted or dropped. |

## Handout answers

**1 · Encode by hand (shift 3)**

`M → P   A → D   T → W   H → K` — MATH becomes **PDWK**

**2 · Decode by hand (shift 3 back)**

`G → D   R → O   J → G` — the message is a **DOG**

**3 · Clock math**

- `mod(10 + 4, 12)` = **2**
- `mod(25 + 3, 26)` = **2** → letter **C**
- `mod(23 + 5, 26)` = **2** (X + 5 also lands on C!)
- `mod(26, 26)` = **0**
- decode shift for 8 = **18**

## Brain teaser

**DTZ HWFHPJI YMJ HTIJ** with shift 5 decodes to **YOU CRACKED THE CODE**
(D−5=Y, T−5=O, Z−5=U — the Z→U slide needs no wrap, but D→Y wraps backwards
past A: D(3) − 5 = −2 → 24 = Y. If a kid got stuck exactly there, that's the
negative-number trap from class — going back 5 is going forward 21).

Shout-out tiers: solved with the hint = spy. Solved by brute force = analyst.
Solved via the YMJ→THE word-shape trick = cryptographer. Anyone who noticed
that trick reinvented *frequency analysis*, the method that actually killed
the Caesar cipher — tell them so.
