% ==============================================================================
%
%   WEEK 1 · PREDICT THE OUTPUT  —  the voting game
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
%     disp('Hello, class!')
%
%   What appears in the Command Window?
%     A)  Hello, class!
%     B)  disp('Hello, class!')
%     C)  Nothing — it's an error
%
input('ROUND 1 — read the code above, vote A/B/C... then press Enter to reveal: ', 's');
disp('Hello, class!')
disp(' ')


%% ══ ROUND 2 · order matters ══════════════════════════════════════════════════
%
%     disp('banana')
%     disp('apple')
%
%   What appears?
%     A)  apple  then  banana   (alphabetical order — computers are tidy!)
%     B)  banana  then  apple   (top to bottom, always)
%     C)  Both on one line
%
input('ROUND 2 — vote A/B/C... then press Enter to reveal: ', 's');
disp('banana')
disp('apple')
disp(' ')


%% ══ ROUND 3 · math or string? ════════════════════════════════════════════════
%
%     disp(5 + 5)
%
%   What appears?
%     A)  5 + 5
%     B)  10
%     C)  55
%
input('ROUND 3 — vote A/B/C... then press Enter to reveal: ', 's');
disp(5 + 5)
disp(' ')


%% ══ ROUND 4 · the sneaky twin ════════════════════════════════════════════════
%
%     disp('5 + 5')
%
%   Same as round 3... but LOOK CLOSELY. What appears?
%     A)  5 + 5
%     B)  10
%     C)  Error — you can't put math in quotes
%
input('ROUND 4 — vote A/B/C... then press Enter to reveal: ', 's');
disp('5 + 5')
disp(' ')


%% ══ ROUND 5 · comments ═══════════════════════════════════════════════════════
%
%     % disp('I am first!')
%     disp('I am second!')
%
%   What appears?
%     A)  I am first!  then  I am second!
%     B)  Only:  I am second!
%     C)  Error — the first line is broken
%
input('ROUND 5 — vote A/B/C... then press Enter to reveal: ', 's');
% disp('I am first!')
disp('I am second!')
disp(' ')


%% ══ FINAL ROUND · for all the glory ══════════════════════════════════════════
%
%     disp('The answer is')
%     disp(10 + 4)
%     disp('...not')
%     disp('10 + 4')
%
%   How many LINES appear, and does '14' show up in any of them?
%     A)  4 lines, and yes — 14 appears
%     B)  4 lines, and no — it shows '10 + 4' every time
%     C)  2 lines only
%
input('FINAL ROUND — vote A/B/C... then press Enter to reveal: ', 's');
disp('The answer is')
disp(10 + 4)
disp('...not')
disp('10 + 4')
disp(' ')

disp(repmat('=', 1, 40))
disp('Game over! Count up your points, class.')
disp(repmat('=', 1, 40))
