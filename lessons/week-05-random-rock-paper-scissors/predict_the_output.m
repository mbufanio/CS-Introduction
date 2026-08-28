% ==============================================================================
%
%   WEEK 5 · PREDICT THE OUTPUT  —  the voting game
%
%   HOW THIS WORKS (teacher):
%     · Run this whole file (F5 or the Run button).
%     · Before each reveal, the Command Window waits for you.
%     · The class reads the round's code HERE in the Editor, votes A/B/C
%       (hands up, fingers, or shouting — your call), THEN you click the
%       Command Window and press Enter to reveal the answer.
%     · Ask someone who got it right to explain WHY.
%
%   NEW THIS WEEK: the code is RANDOM, so nobody can predict the exact
%   output — not even you. Instead, every round asks what output is
%   POSSIBLE. That question always has one right answer.
%
%   Answers with explanations: answer-key.md
%
% ==============================================================================


%% ══ ROUND 1 · warm-up ════════════════════════════════════════════════════════
%
%     fprintf('%d\n', randi([1 6]))
%
%   Which of these COULD appear on the screen?
%     A)  0
%     B)  6
%     C)  7
%
input('ROUND 1 — read the code above, vote A/B/C... then press Enter to reveal: ', 's');
fprintf('%d\n', randi([1 6]))
disp(' ')


%% ══ ROUND 2 · the rigged die ═════════════════════════════════════════════════
%
%     fprintf('%d\n', randi([5 5]))
%     fprintf('%d\n', randi([5 5]))
%     fprintf('%d\n', randi([5 5]))
%
%   What appears?
%     A)  Three random numbers from 1 to 5
%     B)  5, then 5, then 5 — every single time you run it
%     C)  Error — the two ends of randi can't be the same
%
input('ROUND 2 — vote A/B/C... then press Enter to reveal: ', 's');
fprintf('%d\n', randi([5 5]))
fprintf('%d\n', randi([5 5]))
fprintf('%d\n', randi([5 5]))
disp(' ')


%% ══ ROUND 3 · does random mean different? ════════════════════════════════════
%
%     fprintf('%d\n', randi([1 2]))
%     fprintf('%d\n', randi([1 2]))
%
%   Could BOTH lines show the SAME number?
%     A)  No — random means the second one must be different
%     B)  Yes — each roll is fresh; the computer has no memory of the last one
%     C)  No — the second line is an error (you can't roll twice)
%
input('ROUND 3 — vote A/B/C... then press Enter to reveal: ', 's');
fprintf('%d\n', randi([1 2]))
fprintf('%d\n', randi([1 2]))
disp(' ')
% (If they came out different this run, run the file again later —
%  doubles happen half the time!)


%% ══ ROUND 4 · the mapping trace ══════════════════════════════════════════════
%
%     r = 2;                     % ← no randi — the roll is GIVEN: it's a 2
%     if r == 1
%         throw = 'rock';
%     elseif r == 2
%         throw = 'paper';
%     else
%         throw = 'scissors';
%     end
%     disp(throw)
%
%   What appears?
%     A)  rock
%     B)  paper
%     C)  2
%
input('ROUND 4 — vote A/B/C... then press Enter to reveal: ', 's');
r = 2;
if r == 1
    throw = 'rock';
elseif r == 2
    throw = 'paper';
else
    throw = 'scissors';
end
disp(throw)
disp(' ')


%% ══ ROUND 5 · random meets if ════════════════════════════════════════════════
%
%     n = randi([1 10]);
%     if n > 8
%         disp('JACKPOT')
%     else
%         disp('try again')
%     end
%
%   Which outputs are POSSIBLE?
%     A)  Only 'try again'
%     B)  Both — but 'JACKPOT' needs a 9 or a 10, so it's rarer
%     C)  Both — it's 50/50
%
input('ROUND 5 — vote A/B/C... then press Enter to reveal: ', 's');
n = randi([1 10]);
if n > 8
    disp('JACKPOT')
else
    disp('try again')
end
disp(' ')
% (Only 9 and 10 pass the check: 2 chances out of 10. Not 50/50!)


%% ══ FINAL ROUND · the unicorn trap ═══════════════════════════════════════════
%
%     number = randi(3);
%     if number == 4
%         disp('UNICORN!')
%     else
%         disp('just a horse')
%     end
%
%   Which outputs are POSSIBLE?
%     A)  Both — it's random, anything can happen
%     B)  Only 'just a horse'
%     C)  Only 'UNICORN!'
%
input('FINAL ROUND — vote A/B/C... then press Enter to reveal: ', 's');
number = randi(3);
if number == 4
    disp('UNICORN!')
else
    disp('just a horse')
end
disp(' ')

disp(repmat('=', 1, 40))
disp('Game over! Count up your points, class.')
disp('No unicorns were generated today. Or ever.')
disp(repmat('=', 1, 40))
