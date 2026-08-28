% ==============================================================================
%
%   WEEK 10 · CHALLENGE  —  for fast classes, curious kids, or a big finish
%
%   Machines-with-a-twist. Run the whole file (F5), or one section at a
%   time (Ctrl+Enter).
%   ⚠ Current Folder must be this week's folder — these challenges call
%     the machine files f_to_c.m, c_to_f.m and mystery_machine.m.
%   ⚠ Challenge 2 has a spoiler rule: do NOT open mystery_machine.m on
%     the smartboard. The secret stays in the file.
%
% ==============================================================================


%% CHALLENGE 1 · THE ROUND-TRIP MACHINES — temperature converters
% Two real formulas from science class, machined — each in its own file:
%
%     f_to_c.m:   c = (f - 32) * 5 / 9        (F → C)
%     c_to_f.m:   f = c * 9 / 5 + 32          (C → F)
%
% ⭐ ASK THE CLASS: water boils at 212°F. What should f_to_c(212) print?

fprintf('212F in Celsius: %g\n', f_to_c(212))
fprintf('100C in Fahrenheit: %g\n', c_to_f(100))
fprintf('Body temp 98.6F: %g\n', f_to_c(98.6))

% Now the beautiful part — feed one machine INTO the other.
% ⭐ ASK: c_to_f(f_to_c(212)) ... converts to Celsius, then straight back.
%    What comes out? (212 — the machines UNDO each other. Math calls
%    these inverse functions. Last week's encode/decode were inverses too!)

fprintf('round trip: %g\n', c_to_f(f_to_c(212)))
disp(' ')


%% CHALLENGE 2 · GUESS MY RULE — reverse-engineer the mystery machine
% ⭐ TEACHER: the machine's secret rule hides in mystery_machine.m —
%    and this time you don't even have to stand in front of the board:
%    the file stays CLOSED, so the class sees only the machine's name.
%    Run the section; the class sees the input/output table and must
%    deduce the rule. Math class plays guess-my-rule with tables all the
%    time — now the table fights back.

disp('THE MYSTERY MACHINE — inputs and outputs:')
for n = 1:6
    fprintf('   in: %d   out: %d\n', n, mystery_machine(n))
end

% ⭐ Collect guesses. Test them: "if your rule is right, what's in: 10?"
%    Then run this line to settle it:

fprintf('   in: 10   out: %d\n', mystery_machine(10))

% (The rule — and who gets the vocabulary high-five — is written inside
%  mystery_machine.m. Read it AFTER the class cracks it.)
disp(' ')


%% CHALLENGE 3 · NEXT WEEK — machines that DRAW (comment-only teaser)
% No code to run here — just a promise:
%
%   Next week our functions start DRAWING. Yes, really. A figure window
%   opens, and machines with names like forward(50) and right(90) walk
%   a pen around the screen. A square becomes: a loop pressing two
%   machine buttons, four times.
%
%   And here's the best part — peek at the week-11 folder's toolbox:
%   forward.m, right.m, turtle_start.m... every drawing machine is just
%   a function FILE, exactly like the ones this class built today.
%   You already know how to read every line.
%
% ⭐ SAY: "This week you built machines that calculate and machines that
%    perform. Next week: machines that draw. Bring your protractor
%    instincts."

disp('Week 10 complete: this class now builds its own commands.')
