% ==============================================================================
%
%   WEEK 6 · PREDICT THE OUTPUT  —  the voting game
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


%% ══ ROUND 1 · does the last number count? ════════════════════════════════════
%
%     for i = 1:5
%         fprintf('%d\n', i)
%     end
%
%   What appears?
%     A)  1  2  3  4        (the 5 is a wall — it doesn't print)
%     B)  1  2  3  4  5     (the last number is included)
%     C)  0  1  2  3  4     (computers start at zero)
%
input('ROUND 1 — read the code above, vote A/B/C... then press Enter to reveal: ', 's');
for i = 1:5
    fprintf('%d\n', i)
end
disp(' ')


%% ══ ROUND 2 · counting laps ══════════════════════════════════════════════════
%
%     for n = 2:2:10
%         disp('beep')
%     end
%
%   How many beeps?
%     A)  5
%     B)  4
%     C)  10
%
input('ROUND 2 — vote A/B/C... then press Enter to reveal: ', 's');
for n = 2:2:10
    disp('beep')
end
disp(' ')
% (The values are 2, 4, 6, 8, 10 — the 10 lands exactly on a jump,
%  so it's included. Five laps.)


%% ══ ROUND 3 · walking downhill ═══════════════════════════════════════════════
%
%     for t = 10:-1:1
%         fprintf('%d\n', t)
%     end
%
%   What does 10:-1:1 do?
%     A)  Counts 10 down to 1
%     B)  Counts 10 down to 0
%     C)  Nothing — you can't count backward
%
input('ROUND 3 — vote A/B/C... then press Enter to reveal: ', 's');
for t = 10:-1:1
    fprintf('%d\n', t)
end
disp(' ')


%% ══ ROUND 4 · the impossible climb ═══════════════════════════════════════════
%
%     for n = 5:1:1
%         disp('anybody home?')
%     end
%     disp('loop finished')
%
%   What appears?
%     A)  anybody home?  five times, then  loop finished
%     B)  anybody home?  once, then  loop finished
%     C)  Only:  loop finished
%
input('ROUND 4 — vote A/B/C... then press Enter to reveal: ', 's');
for n = 5:1:1
    disp('anybody home?')
end
disp('loop finished')
disp(' ')
% (5:1:1 tries to climb UP from 5 to 1 — impossible, so the sequence is
%  EMPTY and the loop runs ZERO times. No error. Just silence.)


%% ══ ROUND 5 · the snowball ═══════════════════════════════════════════════════
%
%     total = 0;
%     for n = 1:3
%         total = total + n;
%     end
%     fprintf('%d\n', total)
%
%   Careful: the fprintf is AFTER the end — outside the loop.
%   What appears?
%     A)  6
%     B)  1  then  3  then  6
%     C)  123
%
input('ROUND 5 — vote A/B/C... then press Enter to reveal: ', 's');
total = 0;
for n = 1:3
    total = total + n;
end
fprintf('%d\n', total)
disp(' ')
% (Outside the loop = the finale only. Move the fprintf ABOVE the end and
%  you'd get a progress report every lap: 1, 3, 6. The end decides WHEN.)


%% ══ FINAL ROUND · the repeater ═══════════════════════════════════════════════
%
%     disp(repmat('*', 1, 3))
%
%   What appears?
%     A)  ***
%     B)  * * *
%     C)  *3
%
input('FINAL ROUND — vote A/B/C... then press Enter to reveal: ', 's');
disp(repmat('*', 1, 3))
disp(' ')

disp(repmat('=', 1, 40))
disp('Game over! Count up your points, class.')
disp(repmat('=', 1, 40))
