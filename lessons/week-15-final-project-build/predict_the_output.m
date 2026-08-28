% ==============================================================================
%
%   WEEK 15 · PREDICT THE OUTPUT  —  COURSE REVIEW EDITION
%
%   Six rounds sweeping weeks 1 through 14 — the final exam, the fun way.
%   (Nobody tell them it's an exam.)
%
%   HOW THIS WORKS (teacher):
%     · Run this whole file (F5 or the Run button).
%     · Before each reveal, the Command Window waits for you.
%     · The class reads the round's code HERE in the Editor, votes A/B/C
%       (hands up, fingers, or shouting — your call), THEN you click the
%       Command Window and press Enter to reveal the answer.
%     · Ask someone who got it right to explain WHY.
%
%   Answers with explanations: answer-key.md
%
% ==============================================================================


%% ══ ROUND 1 · the week-1 classic ═════════════════════════════════════════════
%
%     disp('100')
%     disp(50 + 50)
%
%   What appears?
%     A)  100  then  100
%     B)  100  then  50 + 50
%     C)  50 + 50  then  100
%
input('ROUND 1 — read the code above, vote A/B/C... then press Enter to reveal: ', 's');
disp('100')
disp(50 + 50)
disp(' ')


%% ══ ROUND 2 · the remainder returns ══════════════════════════════════════════
%
%     disp(mod(17, 5))
%
%   What appears?
%     A)  3.4
%     B)  2
%     C)  3
%
input('ROUND 2 — vote A/B/C... then press Enter to reveal: ', 's');
disp(mod(17, 5))
disp(' ')


%% ══ ROUND 3 · trace the loop ═════════════════════════════════════════════════
%
%     total = 0;
%     for i = 1:4
%         total = total + i;
%     end
%     disp(total)
%
%   What appears?
%     A)  10
%     B)  6
%     C)  4
%
input('ROUND 3 — vote A/B/C... then press Enter to reveal: ', 's');
total = 0;
for i = 1:4
    total = total + i;
end
disp(total)
disp(' ')


%% ══ ROUND 4 · the inclusive slice ════════════════════════════════════════════
%
%     word = 'ROOMS';
%     disp(word(2:4))
%
%   What appears?
%     A)  OOM
%     B)  OO
%     C)  OMS
%
input('ROUND 4 — vote A/B/C... then press Enter to reveal: ', 's');
word = 'ROOMS';
disp(word(2:4))
disp(' ')


%% ══ ROUND 5 · the double machine ═════════════════════════════════════════════
%
%     boost = @(n) n + 10;
%     disp(boost(boost(5)))
%
%   A function fed into ITSELF. What appears?
%     A)  15
%     B)  25
%     C)  20
%
input('ROUND 5 — vote A/B/C... then press Enter to reveal: ', 's');
boost = @(n) n + 10;
disp(boost(boost(5)))
disp(' ')


%% ══ FINAL ROUND · three weeks in a trench coat ═══════════════════════════════
%
%     word = 'GAMES';
%     result = '';
%     for i = 1:3
%         result = [result, word(i), word(i)];
%     end
%     disp(result)
%
%   Loops (week 6) + indexing (week 8) + text glue (week 3). What appears?
%     A)  GGAAMM
%     B)  GAMGAM
%     C)  GAMESGAMES
%
input('FINAL ROUND — vote A/B/C... then press Enter to reveal: ', 's');
word = 'GAMES';
result = '';
for i = 1:3
    result = [result, word(i), word(i)];
end
disp(result)
disp(' ')

disp(repmat('=', 1, 44))
disp('That was weeks 1, 2, 3, 6, 8, and 10 — and you')
disp('just passed. The only exam this course has.')
disp(repmat('=', 1, 44))
