# Week 3 — Answer Key (teacher only)

## `fill_in_the_blank.m` — completed code

```matlab
% TASK 1 — the asking command is input (the 's' is there because a place is words)
place = input('Where is our field trip going? ', 's');

% TASK 2 — typed live: any legal label the class picks (one word, no quotes), e.g.:
animals = input('Give me a PLURAL ANIMAL: ', 's');

% TASK 3 — any prompt the class composes — it must wear quotes:
adjective = input('Give me an ADJECTIVE, the weirder the better: ', 's');

% TASK 4 — keep the twin WITHOUT the 's' (we need a real number for math):
kids = input('How many kids fit on one bus? ');

% TASK 5 — the two story slots take any box; the natural pick is the
% animal box in both (running gags are comedy law):
disp(' ')
disp('========  THE FIELD TRIP OF DOOM  ========')
fprintf('Our class took a field trip to %s.\n', place)
fprintf('The brochure promised it would be %s.\n', adjective)
fprintf('The brochure did not mention the %s.\n', animals)
fprintf('There were %d kids on our bus — but with 2 buses,\n', kids)
fprintf('that''s %d kids for the %s to chase.\n', kids * 2, animals)
disp('Nobody has returned the permission slips since.')
disp('==========================================')

% TASK 6 — anything the class dictates, e.g.:
fprintf('The %s now run the gift shop at %s.\n', animals, place)
```

Common wrong answers worth typing anyway:

- Task 1: `disp(...)` instead of `input(...)` — MATLAB stops with
  `Error using disp` / `Too many output arguments.` — disp can *show* a question
  but it can't wait for an answer or hand one back. Great chase: what do we need
  that disp doesn't do?
- Task 3: a prompt without quotes → `Unrecognized function or variable '...'` —
  strings wear quotes, week 1 forever.
- Task 4: keeping the `'s'` twin → the story runs but the math line prints
  nonsense numbers — MATLAB did arithmetic on the *character codes* of the text
  (`'3'` is secretly 51!). Let the class spot the impossible bus count. That
  secret is week 8's whole lesson, leaked early.
- Task 6: forgetting the `\n` → the next printed line glues onto the story's
  last sentence. Planned. Enjoy it.

## `predict_the_output.m` — answers

| Round | Answer | Why |
|-------|--------|-----|
| 1 | **A** — `Hello, Marcus!` | `input(…,'s')` drops the word `Marcus` into the box; fprintf swaps the `%s` slot for the box's value. |
| 2 | **A** — `13` | No `'s'`, but the answer `12` is a number — perfectly good code. It lands as a real number and `age + 1` is real math. |
| 3 | **B** — `onetwo`, one line | fprintf only starts a new line where a `\n` says so. The first fprintf never pressed Enter, so the second glues right on. |
| 4 | **A** — `2 plus 3 makes 5` | Slots fill in order: 2, then 3, then the *evaluated* expression `2 + 3`. A slot can hold math — MATLAB crunches it mid-sentence. |
| 5 | **A** — `77` then `14` | `['7', '7']` GLUES text → the text `77`. `7 + 7` ADDS numbers → `14`. Same symbols, different worlds — the quotes decide which one you're in. |
| Final | **C** — red text | No `'s'`, and `cat` isn't a number — MATLAB reads it as CODE and hunts for a box named cat: `Unrecognized function or variable 'cat'.` *(The reveal is simulated with a printed error so the game can finish — live, MATLAB shows the error and then asks the question AGAIN.)* |

## Handout answers

**1 · Be the computer**

```
A walrus ate my homework!
A %s ate my homework!
```

(Line 2 uses `disp`, which has no slots — the `%s` is just characters to it.
Only `fprintf` fills slots.)

**2 · Adding or gluing?**

```
6        (numbers add)
33       (text glues — that's the TEXT 33, not the number)
haha     (text glues — MATLAB's first laugh)
12       (looks like a number, but it's glued text: '1' next to '2')
```

**3 · Spot the bug**

The bug: no `'s'` flag, so MATLAB read `Ada` as code and hunted for a box named
Ada. Fixed line 1:

```matlab
name = input('Name? ', 's');
```

(Anyone who also explains *why* line 1 worked fine in Round 2 of the voting game —
numbers are legal code — gets bonus glory.)

## Brain teaser guidance

No single right answer. Praise: prompts that wear quotes, `'s'` flags on every
word question, a number question *without* the `'s'`, a box reused in two slots
(running gag!), `\n` at the end of each sentence, and any math inside a `%d` slot
like `number * 100`. Common gaps to gently fix when you type theirs in: a missing
`'s'` (it will crash exactly like Ada — let it, then fix it), a missing `\n`
(smooshed lines), slots and boxes listed in different orders, and apostrophes in
the story (double them: `'that''s'`). **Keep the promise**: type the best one into
MATLAB next week and run it with the author supplying the inputs. That 90 seconds
buys you weeks of homework enthusiasm.
