% ==============================================================================
%
%   WEEK 14 · PREDICT THE OUTPUT  —  the voting game
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


%% ══ ROUND 1 · warm-up — which COULD it print? ════════════════════════════════
%
%     disp(rand)
%
%   It's random, so: which of these COULD appear on screen?
%     A)  0.5347   (some decimal strictly between 0 and 1)
%     B)  2.1000
%     C)  0        (exactly zero)
%
input('ROUND 1 — read the code above, vote A/B/C... then press Enter to reveal: ', 's');
disp(rand)
disp(' ')


%% ══ ROUND 2 · corner distance, part one ══════════════════════════════════════
%
%     x = 0.5;
%     y = 0.5;
%     disp(x * x + y * y)
%
%   What appears?
%     A)  0.5000
%     B)  1
%     C)  0.2500
%
input('ROUND 2 — vote A/B/C... then press Enter to reveal: ', 's');
x = 0.5;
y = 0.5;
disp(x * x + y * y)
disp(' ')


%% ══ ROUND 3 · the gut-check ══════════════════════════════════════════════════
%
%     x = 0.9;
%     y = 0.9;
%     if x^2 + y^2 <= 1
%         disp('inside the quarter circle')
%     else
%         disp('outside the quarter circle')
%     end
%
%   0.9 is less than 1... so what appears?
%     A)  inside the quarter circle
%     B)  outside the quarter circle
%     C)  Error — you can't compare decimals
%
input('ROUND 3 — vote A/B/C... then press Enter to reveal: ', 's');
x = 0.9;
y = 0.9;
if x^2 + y^2 <= 1
    disp('inside the quarter circle')
else
    disp('outside the quarter circle')
end
disp(' ')


%% ══ ROUND 4 · expected value, by hand ════════════════════════════════════════
%
%     disp((1 + 2 + 3 + 4 + 5 + 6) / 6)
%
%   One die, $1 per dot — the average payout. What appears?
%     A)  3
%     B)  3.5000
%     C)  21
%
input('ROUND 4 — vote A/B/C... then press Enter to reveal: ', 's');
disp((1 + 2 + 3 + 4 + 5 + 6) / 6)
disp(' ')


%% ══ ROUND 5 · the slow leak ══════════════════════════════════════════════════
%
%     net_per_game = 3.5 - 4;
%     games = 1000;
%     disp(net_per_game * games)
%
%   A thousand games of Lucky Die at $4 a ticket. What appears?
%     A)  -500
%     B)  -50
%     C)  500
%
input('ROUND 5 — vote A/B/C... then press Enter to reveal: ', 's');
net_per_game = 3.5 - 4;
games = 1000;
disp(net_per_game * games)
disp(' ')


%% ══ FINAL ROUND · one MILLION games, live ════════════════════════════════════
%
%     bank = 0;
%     for play = 1:1000000
%         roll = randi([1 6]);
%         bank = bank + roll - 4;
%     end
%     fprintf('$%d\n', bank)
%
%   The whole class plays Lucky Die a million times ($4 a ticket, $1 per
%   dot). It's random — but after a MILLION games, the bank is CLOSEST to:
%     A)  $0            (fifty cents is basically nothing, right?)
%     B)  -$500,000
%     C)  -$50,000
%
input('FINAL ROUND — vote A/B/C... then press Enter (the run takes a moment): ', 's');
bank = 0;
for play = 1:1000000
    roll = randi([1 6]);
    bank = bank + roll - 4;
end
fprintf('$%d\n', bank)
disp(' ')

disp(repmat('=', 1, 40))
disp('Game over! Count up your points, class.')
disp('The house, as always, counted faster.')
disp(repmat('=', 1, 40))
