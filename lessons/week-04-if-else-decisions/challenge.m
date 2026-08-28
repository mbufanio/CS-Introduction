% ==============================================================================
%
%   WEEK 4 · CHALLENGE  —  for fast classes, curious kids, or a big finish
%
%   Four showpieces built from today's tools: comparisons, if/elseif/else/end.
%   Run the whole file (F5), or one section at a time (Ctrl+Enter).
%   Sections 1–3 use input() — kids shout, you type. Re-run them freely.
%
% ==============================================================================


%% CHALLENGE 1 · THE GRADE-O-MATIC
% A full elseif chain slicing 0–100 into letter grades. The class shouts test
% scores, you type, the machine judges without mercy.
% (No converter needed on the input — a score is a NUMBER, week 3's rule.)
%
% ⭐ BOUNDARY HUNT: after a couple of normal scores, test 90 EXACTLY, then 89.
%    One point apart, different letters. This is why we always check the edges.

score = input('GRADE-O-MATIC — enter a test score (0-100): ');

if score >= 90
    disp('Grade: A. Frame it. Show your grandparents.')
elseif score >= 80
    disp('Grade: B. Solidly excellent. High five.')
elseif score >= 70
    disp('Grade: C. Passing. The machine nods politely.')
elseif score >= 60
    disp('Grade: D. The machine is concerned but supportive.')
else
    disp('Grade: F. The machine suggests... studying? Just a thought.')
end

disp(' ')

% ⭐ ASK THE CLASS: why must the chain check 90 FIRST? What breaks if the
%    'score >= 60' line moved to the top? (Round 4 of the voting game —
%    every score above 60 would stop there. Order IS the program.)


%% CHALLENGE 2 · EVEN OR ODD? — the mod() callback
% Week 2's pizza machine returns! A number is EVEN when dividing by 2
% leaves NO remainder — in MATLAB: mod(number, 2) == 0.
% That line is a comparison, so it answers 1 or 0... which makes it
% a perfect if condition. Three weeks of tools, snapping together.

number = input('EVEN-OR-ODD MACHINE — give me any whole number: ');

if mod(number, 2) == 0
    fprintf('%d is EVEN. Splits into pairs perfectly. Very tidy.\n', number)
else
    fprintf('%d is ODD. There''s always one left over. Chaos.\n', number)
end

disp(' ')

% ⭐ TRY: a huge number like 999999999997. Kids know instantly by the last
%    digit — and so does the computer, a few million times faster.


%% CHALLENGE 3 · GUESS MY RULE — the class vs. the secret
% HOW TO PLAY (teacher):
%   · The program knows a SECRET RULE. Do NOT scroll to it! It's hidden
%     below in the code — keep the class's eyes on the Command Window.
%   · Kids shout numbers to probe it. Type each one, read the YES or NO.
%   · Re-run this section as many times as you want (Ctrl+Enter is fast).
%   · When someone thinks they know the rule, they must PREDICT the next
%     three answers correctly to claim victory.
% This is real mathematician work: gather data → conjecture → test.

probe = input('GUESS MY RULE — offer me a number: ');

% ~~~~~~~~~~ THE SECRET RULE LIVES BELOW. EYES ON THE COMMAND WINDOW. ~~~~~~~~~~
if mod(probe, 10) == 7
    disp('YES. That number pleases the rule.')
else
    disp('NO. The rule is unimpressed.')
end
disp(' ')
% ~~~~~~~~~~ (the secret: numbers ENDING in 7 — that's mod(probe, 10) == 7,
%             the remainder when dividing by ten IS the last digit.
%             When the class cracks it, reveal this code and take a bow.
%             Next round: change the rule and play again — try
%             mod(probe, 5) == 0, or probe >= 50, or probe == 42 if you're
%             feeling cruel.) ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


%% CHALLENGE 4 · SNEAK PEEK OF WEEK 5 — the computer flips a coin 🎲
% Today's ifs always decide the SAME way for the same number. Next week the
% computer gets randomness — and if/else is how it will act on it.
% Don't explain — run this a few times and let them see it change its mind.

coin = randi(2);

if coin == 1
    disp('The computer flips a coin... HEADS.')
else
    disp('The computer flips a coin... TAILS.')
end

disp(' ')
disp('Next week: rock-paper-scissors against the machine. Best of five.')
disp('Train hard. It won''t.')
