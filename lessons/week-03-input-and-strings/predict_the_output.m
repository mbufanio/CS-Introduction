% ==============================================================================
%
%   WEEK 3 · PREDICT THE OUTPUT  —  the voting game
%
%   HOW THIS WORKS (teacher):
%     · Run this whole file (F5 or the Run button).
%     · Before each reveal, the Command Window waits for you.
%     · The class reads the round's code HERE in the Editor, votes A/B/C
%       (hands up, fingers, or shouting — your call), THEN you click the
%       Command Window and press Enter to reveal the answer.
%     · NEW THIS WEEK: rounds 1, 2, and the final round contain input() —
%       after the reveal Enter, the program will ask a question. Type
%       EXACTLY the answer written in the round's comment, so the whole
%       class predicted the same thing.
%     · Ask someone who got it right to explain WHY.
%
%   Answers with explanations: answer-key.md
%
% ==============================================================================


%% ══ ROUND 1 · warm-up ════════════════════════════════════════════════════════
%
%     name = input('Name? ', 's');        ← the teacher will type:  Marcus
%     fprintf('Hello, %s!\n', name)
%
%   What appears after Marcus is typed?
%     A)  Hello, Marcus!
%     B)  Hello, name!
%     C)  Hello, %s!
%
input('ROUND 1 — vote A/B/C... press Enter, then type Marcus when asked: ', 's');
name = input('Name? ', 's');
fprintf('Hello, %s!\n', name)
disp(' ')


%% ══ ROUND 2 · the math that just works ═══════════════════════════════════════
%
%     age = input('Age? ');               ← the teacher will type:  12
%     disp(age + 1)
%
%   No 's' flag this time — and that's on purpose. What appears?
%     A)  13
%     B)  121
%     C)  Crash — you can't do math on an answer
%
input('ROUND 2 — vote A/B/C... press Enter, then type 12 when asked: ', 's');
age = input('Age? ');
disp(age + 1)
disp(' ')


%% ══ ROUND 3 · the missing \n ═════════════════════════════════════════════════
%
%     fprintf('one')
%     fprintf('two\n')
%
%   The first fprintf forgot its \n. What appears?
%     A)  one  then  two  (two lines — fprintf always starts fresh)
%     B)  onetwo  (ONE line — no Enter was pressed between them)
%     C)  one\ntwo
%
input('ROUND 3 — vote A/B/C... then press Enter to reveal: ', 's');
fprintf('one')
fprintf('two\n')
disp(' ')


%% ══ ROUND 4 · math inside the slot ═══════════════════════════════════════════
%
%     fprintf('%d plus %d makes %d\n', 2, 3, 2 + 3)
%
%   What appears?
%     A)  2 plus 3 makes 5
%     B)  %d plus %d makes %d
%     C)  2 plus 3 makes 23
%
input('ROUND 4 — vote A/B/C... then press Enter to reveal: ', 's');
fprintf('%d plus %d makes %d\n', 2, 3, 2 + 3)
disp(' ')


%% ══ ROUND 5 · gluing or adding? ══════════════════════════════════════════════
%
%     disp(['7', '7'])
%     disp(7 + 7)
%
%   What appears (two lines)?
%     A)  77  then  14
%     B)  14  then  14
%     C)  77  then  77
%
input('ROUND 5 — vote A/B/C... then press Enter to reveal: ', 's');
disp(['7', '7'])
disp(7 + 7)
disp(' ')


%% ══ FINAL ROUND · today's disaster, one more time ════════════════════════════
%
%     pet = input('Favorite animal? ');    ← the teacher will type:  cat
%     disp(pet)
%
%   LOOK CLOSELY: no 's' flag this time either... but now the answer is a WORD.
%   What appears after cat is typed?
%     A)  cat
%     B)  Nothing — the computer waits forever
%     C)  Red text — MATLAB goes hunting for a box named cat
%
input('FINAL ROUND — vote A/B/C... press Enter, then type cat when asked: ', 's');
% The no-'s' line would REALLY crash on 'cat' (and then ask again, forever),
% so the reveal below is a SIMULATION: it reads your 'cat' safely with an 's',
% then prints the genuine error text so the game can go on:
input('Favorite animal? ', 's');
disp('Unrecognized function or variable ''cat''.')
disp(' ')

disp(repmat('=', 1, 40))
disp('Game over! Count up your points, class.')
disp('Numbers are code. Words need the ''s''.')
disp(repmat('=', 1, 40))
