% ==============================================================================
%
%   WEEK 2 · PREDICT THE OUTPUT  —  the voting game
%
%   HOW THIS WORKS (teacher):
%     · Run this whole file (F5 or the Run button).
%     · Before each reveal, the Command Window waits for you.
%     · The class reads the round's code HERE in the Editor, votes A/B/C
%       (hands up, fingers, or shouting — your call), THEN you click the
%       Command Window and press Enter to reveal the answer.
%     · Ask someone who got it right to explain WHY.
%
%   Answers with explanations: step2_teacher_answer_key.md
%
% ==============================================================================


%% ══ ROUND 1 · warm-up ════════════════════════════════════════════════════════
%
%     x = 5;
%     disp(x)
%
%   What appears in the Command Window?
%     A)  5
%     B)  x
%     C)  x = 5
%
input('ROUND 1 — read the code above, vote A/B/C... then press Enter to reveal: ', 's');
x = 5;
disp(x)
disp(' ')


%% ══ ROUND 2 · the sneaky twin ════════════════════════════════════════════════
%
%     x = 5;
%     disp('x')
%
%   Almost the same... but LOOK CLOSELY. What appears?
%     A)  5
%     B)  x
%     C)  'x'
%
input('ROUND 2 — vote A/B/C... then press Enter to reveal: ', 's');
x = 5;
disp('x')
disp(' ')


%% ══ ROUND 3 · PEMDAS showdown ════════════════════════════════════════════════
%
%     disp(2 + 3 * 4)
%
%   What appears?
%     A)  20   (left to right: 2+3 is 5, times 4)
%     B)  14   (multiply first, like math class)
%     C)  2 + 3 * 4
%
input('ROUND 3 — vote A/B/C... then press Enter to reveal: ', 's');
disp(2 + 3 * 4)
disp(' ')


%% ══ ROUND 4 · the box gets updated ═══════════════════════════════════════════
%
%     score = 10;
%     score = score + 5;
%     score = score + 5;
%     disp(score)
%
%   What appears?
%     A)  10
%     B)  15
%     C)  20
%
input('ROUND 4 — vote A/B/C... then press Enter to reveal: ', 's');
score = 10;
score = score + 5;
score = score + 5;
disp(score)
disp(' ')


%% ══ ROUND 5 · pizza flashback ════════════════════════════════════════════════
%
%     disp(floor(17 / 5))
%     disp(mod(17, 5))
%
%   What appears (two lines)?
%     A)  3  then  2
%     B)  2  then  3
%     C)  3.4000  then  0
%
input('ROUND 5 — vote A/B/C... then press Enter to reveal: ', 's');
disp(floor(17 / 5))
disp(mod(17, 5))
disp(' ')


%% ══ ROUND 6 · the hush key ═══════════════════════════════════════════════════
%
%     total = 40 + 2;
%     total
%
%   Line 1 ends with the hush key. Line 2 is just... the box's name. What
%   appears in the Command Window?
%     A)  Nothing — the semicolon hushed everything
%     B)  MATLAB announces:  total = 42
%     C)  Unrecognized function or variable 'total'.
%
input('ROUND 6 — vote A/B/C... then press Enter to reveal: ', 's');
total = 40 + 2;
total
disp(' ')


%% ══ FINAL ROUND · for all the glory ══════════════════════════════════════════
%
%     a = 2;
%     b = a ^ 3;
%     a = 10;
%     disp(b)
%
%   The trap of traps. What appears?
%     A)  8     (b was filled when a was 2 — and a box remembers VALUES)
%     B)  1000  (b updates itself when a changes)
%     C)  Error — you can't change a after using it
%
input('FINAL ROUND — vote A/B/C... then press Enter to reveal: ', 's');
a = 2;
b = a ^ 3;
a = 10;
disp(b)
disp(' ')

disp(repmat('=', 1, 40))
disp('Game over! Count up your points, class.')
disp('A box stores a VALUE, not a formula.')
disp(repmat('=', 1, 40))
