% ==============================================================================
%
%   WEEK 6 · CHALLENGE  —  for fast classes, curious kids, or a big finish
%
%   Four loop spectaculars.
%   Run the whole file (F5), or one section at a time (Ctrl+Enter).
%
% ==============================================================================


%% CHALLENGE 1 · 99 BOTTLES OF POP ON THE WALL 🍾
% The song that ruins every bus trip: all 99 verses, faster than one kid
% can sing the first line.
% ⭐ Ask first: how long would this take to WRITE by hand? To SING?
%    (About 45 minutes to sing. The loop: a blink.)

for bottles = 99:-1:1
    if bottles == 1
        fprintf('1 bottle of pop on the wall, 1 bottle of pop!\n')
        fprintf('Take it down, pass it around... 0 bottles of pop on the wall.\n')
    elseif bottles == 2
        fprintf('2 bottles of pop on the wall, 2 bottles of pop!\n')
        fprintf('Take one down, pass it around... 1 bottle of pop on the wall.\n')
    else
        fprintf('%d bottles of pop on the wall, %d bottles of pop!\n', bottles, bottles)
        fprintf('Take one down, pass it around... %d bottles of pop on the wall.\n', bottles - 1)
    end
end
disp(' ')
disp('The bus driver thanks you for your efficiency.')
disp(' ')

% (Spot the if/elseif/else doing grammar duty near the end — week 4 skills
%  keeping '1 bottles' from embarrassing us. Loops + decisions, teamed up.)


%% CHALLENGE 2 · MOUNTAIN RANGE — giant star art ⛰️
% Two repeaters at once:  repmat(' ', 1, spaces)  slides each row over,
%                         repmat('*', 1, stars)   builds the peak.
% Glue them with [ ] and you get a centered mountain!

for row = 1:20
    disp([repmat(' ', 1, 20 - row), repmat('*', 1, 2 * row - 1)])
end
disp(' ')

% ⭐ Ask: row 5 has how many stars? (2×5−1 = 9 — odd numbers make it
%    symmetrical.) Change both 20s to 30 and re-run for a bigger mountain.


%% CHALLENGE 3 · THE ODD SECRET — a genuine math discovery 🤯
% Add up odd numbers one at a time and watch the running totals CLOSELY.
% ⭐ Run it, then ask: "raise your hand when you recognize the totals."
%    1, 4, 9, 16, 25... the SQUARES. Sum of the first n odd numbers = n².
%    This blows mathematicians' minds too — it's a real theorem.

total = 0;
count = 0;
for odd = 1:2:19
    total = total + odd;
    count = count + 1;
    fprintf('first %d odd numbers -> %d   (and %d squared is %d)\n', count, total, count, count * count)
end
disp(' ')

% Why? Picture a square of dots. To grow a 3×3 into a 4×4, you wrap one
% new row + one new column around the corner — an L-shape of 7 dots.
% Every L-shape is the next odd number. Draw it on the board!


%% CHALLENGE 4 · LIVE ROCKET LAUNCH 🚀 — countdown in real time
% pause(1) makes the computer WAIT one real second.
% Suddenly the countdown isn't instant — it's THEATER.
% ⭐ Get the class counting along out loud. You have ten seconds to
%    build maximum drama.

disp('LAUNCH SEQUENCE INITIATED...')
for t = 10:-1:1
    fprintf('%d ...\n', t)
    pause(1)
end
disp('BLASTOFF!')
disp(repmat('*', 1, 40))
