% ==============================================================================
%
%   WEEK 4 · FILL IN THE BLANK  —  the class writes the code, you type it
%
%   HOW THIS WORKS (teacher):
%     · Every blank looks like this:  ____
%     · Read the task aloud. Kids call out what goes in the blank.
%     · Type their answer — even wrong ones! — and run it (Ctrl+Enter runs
%       just the current section). Wrong answers stop with red text, the
%       class reads the error, everyone debugs. Perfect.
%     · Run after EACH task so the class sees their code work immediately.
%       (Running a task with an unfilled blank stops with
%        "Unrecognized function or variable '____'" — that just means
%        you have not gotten there yet.)
%     · Tasks 3 and 5 have NO blank — comparison symbols can't live in a
%       blank, so you type those lines LIVE while the class supplies the
%       operator.
%
%   Today's build: the class rebuilds the SORTING HAT with its own rules.
%   Completed version: step2_teacher_answer_key.md
%
% ==============================================================================


%% TASK 1 · THE 1-OR-0 MACHINE
% Warm-up: the class picks any number for the blank. BEFORE you run, the
% whole room predicts the answer: thumbs up = 1, thumbs down = 0.
% Then try a second number that flips the answer.

disp(____ > 9)


%% TASK 2 · THE BOUNCER RETURNS
% The rollercoaster rule: at least 132 cm. The class invents a rider and
% picks their height for the blank. Run it — then pick a NEW height that
% makes the OTHER branch print. (Can they find the tallest height that
% still gets teacups? That's the boundary's next-door neighbor: 131.)

height = ____;

if height >= 132
    disp('WELCOME ABOARD. Scream responsibly.')
else
    disp('Teacup ride for you. (Respect the teacups.)')
end


%% TASK 3 · CHOOSE THE OPERATOR (no blank — you type, they choose)
% The school dance rule: "you must be AT LEAST 13 years old."  Leo is
% exactly 13. TYPE these lines LIVE below this comment and make the class
% supply the ?? operator — does "at least" include 13, or not? Closed or
% open circle?
%
%     age = 13;
%     if age ?? 13
%         disp('Leo is IN. The dance floor trembles.')
%     else
%         disp('Leo waits outside. The DJ plays a sad song.')
%     end
%
% If they pick > , run it anyway — Leo gets rejected on his own birthday
% rule, the class riots, and then they fix it with >= . Chef's kiss.


%% TASK 4 · THE CLASS SETS THE BOUNDARIES
% Snow-day calculator! The class picks the two temperature boundaries
% (colder than the first blank = SNOW DAY; colder than the second = indoor
% recess). Fill both blanks with their numbers, then test values ON each
% boundary, not just between them.
% ⭐ Ask before running: with these boundaries, which line prints for -3?

temperature = -3;

if temperature <= ____
    disp('SNOW DAY! School is cancelled. The computer is also sledding.')
elseif temperature <= ____
    disp('School''s on, but recess is indoors. Bring a deck of cards.')
else
    disp('Normal day. The flag is not even frozen to the pole.')
end


%% TASK 5 · ONE ASKS, ONE PUTS (no blank — you type, they choose)
% The secret locker code is 42. Someone guesses 17. We want the program to
% CHECK the guess — not replace the code! TYPE this LIVE and make the class
% supply the ?? symbol (one equals or two?):
%
%     code = 42;
%     guess = 17;
%     if guess ?? code
%         disp('OPEN SESAME.')
%     else
%         disp('WRONG. The locker judges you.')
%     end
%
% If they pick = , MATLAB's red text literally suggests the fix ("To compare
% values for equality, use '=='"). Read it aloud, act amazed, chant it:
% one equals PUTS, two equals ASKS.


%% TASK 6 · THE CLASS'S OWN SORTING HAT
% The grand finale: the hat's rules are gone and the CLASS writes them.
%   · First blank: a lucky number to sort (pick a volunteer's).
%   · Blanks 2 and 3: the class invents TEAM NAMES (strings — quotes!).
%   · The boundary is 50 — but ask: which team does EXACTLY 50 land on?
% Then re-run for more volunteers by changing the first blank.
% Extra credit: a kid dictates a whole new elseif branch for a third team,
% and you type it live ABOVE the else. Boundaries must not overlap — make
% them argue it out. (One end still closes the whole chain.)

lucky = ____;

if lucky >= 50
    disp(['The hat says: ', ____])
else
    disp(['The hat says: ', ____])
end

disp('The hat has spoken. The hat is never wrong. (The hat is 4 weeks old.)')
