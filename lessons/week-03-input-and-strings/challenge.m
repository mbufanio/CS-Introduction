% ==============================================================================
%
%   WEEK 3 · CHALLENGE  —  for fast classes, curious kids, or a big finish
%
%   Three showpieces built from today's tools: input(), the 's' flag, and
%   the fprintf Mad Libs machine. Run the whole file (F5), or one section
%   at a time (Ctrl+Enter). All of these ask questions — kids shout, you type.
%
% ==============================================================================


%% CHALLENGE 1 · MEGA MAD LIBS — the story does MATH
% The upgrade: a number input gets CRUNCHED inside the story. A %d slot can
% hold a whole expression — MATLAB evaluates it mid-sentence.
%
% ⭐ ASK THE CLASS before the reveal: if donuts is 3, what number will
%    donuts * 365 become?
% ⭐ And spot the collectors: which ones wear the 's', and why doesn't the
%    donut question? (Real number in, real math out — no converter needed.)

hero = input('Name someone in this room: ', 's');
food = input('Give me a food (plural): ', 's');
donuts = input('How many donuts could you eat in ONE day? ');

disp(' ')
disp('========  BREAKING NEWS  ========')
fprintf('Local legend %s claims to eat %d donuts a day.\n', hero, donuts)
fprintf('That''s %d donuts a week... %d donuts a year!\n', donuts * 7, donuts * 365)
fprintf('Doctors recommend replacing at least %d of those with %s.\n', donuts * 364, food)
fprintf('%s could not be reached for comment. (Mouth full.)\n', hero)
disp('=================================')
disp(' ')


%% CHALLENGE 2 · BRAINBOT 9000 — a 'smart' chatbot that is 100% dumb
% This bot will feel eerily intelligent. It is not. It stores their words in
% boxes and mirrors them back through fprintf slots — that's the entire trick.
%
% ⭐ AFTER RUNNING: ask the class — did it understand ANYTHING? How does it
%    seem so smart? (It's a mirror. Fast-but-dumb, wearing a smart costume.)

disp('BRAINBOT 9000 ONLINE. I know all. Ask me anything.')
disp(' ')

feeling = input('BRAINBOT asks: how are you feeling today, human? ', 's');
fprintf('BRAINBOT: Ah yes... %s. I predicted you would say %s.\n', feeling, feeling)

worry = input('BRAINBOT asks: what is your biggest worry this week? ', 's');
fprintf('BRAINBOT: Interesting. When humans say ''%s'', they usually mean it.\n', worry)
fprintf('BRAINBOT: My advice: do not think about %s during math tests.\n', worry)

dream_job = input('BRAINBOT asks: what job do you want someday? ', 's');
fprintf('BRAINBOT: %s?! I have run the numbers. A %s human\n', dream_job, feeling)
fprintf('BRAINBOT: who overcomes %s would make an EXCELLENT %s.\n', worry, dream_job)
disp('BRAINBOT: My wisdom is complete. That will be $500.')
disp(' ')


%% CHALLENGE 3 · SNEAK PEEK OF WEEK 5 — the computer gets dice 🎲
% Everything so far is predictable: same inputs, same story, every time.
% In two weeks the computer learns to SURPRISE US. Don't explain this —
% run it two or three times and let them notice the answers CHANGE.

victim = input('One more name, for the Compliment Cannon: ', 's');

fprintf('COMPLIMENT CANNON: %s''s lucky number today is %d.\n', victim, randi(100))
fprintf('COMPLIMENT CANNON: on a scale of 1 to 10, %s is a %d.\n', victim, 7 + randi(3))
disp(' ')
disp('Run it again — the cannon never fires the same way twice.')
disp('How? Week 5. Bring dice-rolling energy.')
