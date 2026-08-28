% ==============================================================================
%
%   WEEK 7 · PREDICT THE OUTPUT  —  the voting game
%
%   HOW THIS WORKS (teacher):
%     · Run this whole file (F5 or the Run button).
%     · Before each reveal, the Command Window waits for you.
%     · The class reads the round's code HERE in the Editor, votes A/B/C
%       (hands up, fingers, or shouting — your call), THEN you click the
%       Command Window and press Enter to reveal the answer.
%     · Ask someone who got it right to explain WHY.
%
%   SAFETY NOTE: this file NEVER runs a real infinite loop. Round 3's
%   runaway loop is only SIMULATED with plain prints — the file always
%   finishes on its own.
%
%   Answers with explanations: step2_teacher_answer_key.md
%
% ==============================================================================


%% ══ ROUND 1 · count the beeps ════════════════════════════════════════════════
%
%     count = 0;
%     while count < 3
%         disp('beep')
%         count = count + 1;
%     end
%
%   How many beeps?
%     A)  2
%     B)  3
%     C)  4
%
input('ROUND 1 — read the code above, vote A/B/C... then press Enter to reveal: ', 's');
count = 0;
while count < 3
    disp('beep')
    count = count + 1;
end
disp(' ')


%% ══ ROUND 2 · the loop that never starts ═════════════════════════════════════
%
%     n = 10;
%     while n < 5
%         disp('running!')
%     end
%     disp('finished')
%
%   What appears?
%     A)  running! forever — it's an infinite loop
%     B)  just:  finished     (the loop runs ZERO times)
%     C)  running! once, then finished
%
input('ROUND 2 — vote A/B/C... then press Enter to reveal: ', 's');
n = 10;
while n < 5
    disp('running!')
end
disp('finished')
disp(' ')
% (The condition is checked BEFORE the first lap. 10 < 5 fails on
%  arrival, so the block is skipped entirely. A while loop can run 0 laps.)


%% ══ ROUND 3 · spot the infinite loop ═════════════════════════════════════════
%
%     LOOP ONE:                     LOOP TWO:
%       x = 1;                        y = 1;
%       while x < 5                   while y < 5
%           x = x + 1;                    fprintf('y is %d\n', y)
%       end                           end
%       disp('done')
%
%   Which loop NEVER ends?
%     A)  LOOP ONE
%     B)  LOOP TWO
%     C)  Both run forever
%
input('ROUND 3 — vote A/B/C... then press Enter to reveal: ', 's');
% LOOP ONE, run for real — it ends, because x gets updated:
x = 1;
while x < 5
    x = x + 1;
end
disp('done')
% LOOP TWO is only SIMULATED below (running it would hang forever —
% y never changes, so 'y < 5' holds until the end of time):
disp('y is 1')
disp('y is 1')
disp('y is 1')
disp('...(simulated!) LOOP TWO prints this until the sun burns out —')
disp('   no update line, no escape. Ctrl+C is the only way out.')
disp(' ')


%% ══ ROUND 4 · countdown trace ════════════════════════════════════════════════
%
%     n = 3;
%     while n > 0
%         fprintf('%d\n', n)
%         n = n - 1;
%     end
%     disp('liftoff')
%
%   What appears?
%     A)  3  2  1  liftoff
%     B)  3  2  1  0  liftoff
%     C)  3  2  1   (no liftoff — the loop never ends)
%
input('ROUND 4 — vote A/B/C... then press Enter to reveal: ', 's');
n = 3;
while n > 0
    fprintf('%d\n', n)
    n = n - 1;
end
disp('liftoff')
disp(' ')


%% ══ ROUND 5 · the update-order trap ══════════════════════════════════════════
%
%     n = 3;
%     while n > 0
%         n = n - 1;
%         fprintf('%d\n', n)
%     end
%
%   Round 4's loop... but the update moved ABOVE the print. What appears?
%     A)  3  2  1
%     B)  2  1  0
%     C)  3  2  1  0
%
input('ROUND 5 — vote A/B/C... then press Enter to reveal: ', 's');
n = 3;
while n > 0
    n = n - 1;
    fprintf('%d\n', n)
end
disp(' ')
% (Each lap shrinks n FIRST, then prints. Same three laps, different view.
%  Order inside the block matters as much as the block itself.)


%% ══ FINAL ROUND · the halving loop ═══════════════════════════════════════════
%
%     n = 16;
%     while n > 1
%         n = n / 2;
%         fprintf('%d\n', n)
%     end
%
%   How many lines print?
%     A)  4       (8, 4, 2, 1)
%     B)  5       (16, 8, 4, 2, 1)
%     C)  It never ends
%
input('FINAL ROUND — vote A/B/C... then press Enter to reveal: ', 's');
n = 16;
while n > 1
    n = n / 2;
    fprintf('%d\n', n)
end
disp(' ')
% (Halve first, then print: 8, 4, 2, 1 — and at 1 the condition dies.
%  16 is a power of 2, so the halves stay whole. Halving crushes 16 in
%  four steps. Sound familiar? It found your number today in seven.)

disp(repmat('=', 1, 40))
disp('Game over! Count up your points, class.')
disp(repmat('=', 1, 40))
