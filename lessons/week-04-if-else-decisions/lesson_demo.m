% ==============================================================================
%
%   WEEK 4  ·  IF/ELSE — THE PROGRAM LEARNS TO DECIDE
%
%   Until today, our programs treat everyone exactly the same.
%   Today they get a spine: IF this, do that. OTHERWISE, do something else.
%   By the end of class, a program will be sorting this class into teams.
%
%   TEACHER: the Sorting Hat at the end uses input() — kids shout, you type.
%   Section 6 stages this week's live crash — keep its broken lines
%   commented until the big moment.
%
% ==============================================================================


%% SECTION 1 · COMPARISONS ARE QUESTIONS — ANSWERED IN 1s AND 0s
% Put a comparison symbol between two values and MATLAB answers a QUESTION.
% And here's the twist: the answer is never a word. The computer's YES is 1.
% The computer's NO is 0. Every question, answered with a light switch.
%
% ⭐ ASK THE CLASS: before each line runs — yes or no? Thumbs up / down.
%    Then watch the 1s and 0s land.

fprintf('Is 3 bigger than 2?    %d\n', 3 > 2)
fprintf('Is 3 bigger than 300?  %d\n', 3 > 300)
fprintf('Is 10 equal to 10?     %d\n', 10 == 10)     % DOUBLE equals — more soon!
fprintf('Is 7 NOT equal to 8?   %d\n', 7 ~= 8)       % ~= means "not equal"

% Your full toolkit of questions:
%    >   greater than            <   less than
%    >=  greater than OR equal   <=  less than or equal
%    ==  equal                   ~=  not equal
%
% That ~ is a wiggly NOT. Read ~= as "NOT equal".
% In math class you write h ≥ 132 and test values against it.
% MATLAB just spells it >= because keyboards don't have the fancy symbol.


%% SECTION 2 · THE FIRST IF — THE BOUNCER IN CODE
% The rollercoaster sign from the hook: YOU MUST BE AT LEAST 132 CM TO RIDE.
% Here is that bouncer, as a program. Three pieces of grammar:
%
%     if height >= 132       ← the CONDITION — a question
%         disp('...')        ← this line BELONGS TO the if
%     end                    ← end — the decision is over
%
% The lines between if and end only run when the question's answer is 1.
% MATLAB needs to be TOLD where the decision ends — that's the end keyword's
% whole job. Every if gets one.
%
% (About the sideways space: MATLAB doesn't actually care about indentation —
%  it reads if...end, not spaces. HUMANS care. Always indent the inside of a
%  block anyway — future-you, squinting at the smartboard, says thanks.)
%
% ⭐ ASK THE CLASS: Ada is 140 cm. Does the inside line run?

height = 140;

if height >= 132
    disp('Ada, at 140 cm: WELCOME ABOARD. Keep arms inside the ride.')
end

disp('(this line is after the end — it runs no matter what)')


%% SECTION 3 · BOUNDARY DRAMA — exactly 132
% The argument from the hook, settled by a machine.
% Marcus is EXACTLY 132 cm. The sign says "at least 132".
%
% ⭐ ASK THE CLASS: does Marcus ride? Vote! Then look at the operator:
%    >= includes the boundary — the CLOSED circle on your number line.

height = 132;

if height >= 132
    disp('Marcus, at exactly 132 cm: RIDES. >= includes the boundary!')
end

% If the sign wanted "MORE than 132" it would be:   if height > 132
% — the OPEN circle, and exactly-132 walks home crying.
% One character on the screen. Whole different rollercoaster experience.


%% SECTION 4 · ELSE — WHAT HAPPENS TO EVERYONE THE IF REJECTS
% else has no condition of its own. It's the catch-all: "...and if the
% answer was 0, do THIS instead." Exactly one of the two blocks runs —
% and one single end still closes the whole decision.
%
% ⭐ ASK THE CLASS: Priya is 120 cm. Which of the two messages will we see?

height = 120;

if height >= 132
    disp('Priya: WELCOME ABOARD.')
else
    disp('Priya, at 120 cm: enjoy the teacup ride. (It''s a good ride!)')
end


%% SECTION 5 · ELSEIF — SLICING THE WHOLE NUMBER LINE
% if/else gives two zones. elseif ("else if", squished into one word) gives
% as many as you want. The temperature advisor below cuts the number line
% into four intervals:
%
%      ...0°...........15°..........28°...........
%   frozen | jacket     | perfect    | melting
%
% MATLAB checks TOP-DOWN and runs the FIRST condition that answers 1 —
% then skips the whole rest of the chain. Exactly ONE branch ever runs,
% and ONE end closes the entire chain.
%
% ⭐ ASK THE CLASS: it's 20° today. Which line will print? Trace it aloud,
%    top-down: is 20 >= 28? No. Is 20 >= 15? YES — print, and skip the rest.

temperature = 20;

if temperature >= 28
    fprintf('%d degrees: melting. Class outside is cancelled.\n', temperature)
elseif temperature >= 15
    fprintf('%d degrees: perfect. Why are we indoors?\n', temperature)
elseif temperature >= 0
    fprintf('%d degrees: jacket weather.\n', temperature)
else
    fprintf('%d degrees: frozen. School is now a penguin habitat.\n', temperature)
end

% ⭐ ASK THE CLASS: change temperature to -5 and trace it — every condition
%    answers 0... so who catches it? (else — the safety net.)
%    Re-run with a few class-suggested temperatures. Test 28 EXACTLY.


%% SECTION 6 · == ASKS. = ASSIGNS. (the bug of the century)
%     score = 100      ONE equals:  PUT 100 in the box        (an action)
%     score == 100     TWO equals:  IS the box 100?           (a question)
%
% Mixing them up is the most famous bug in programming. Say the chant:
% "one equals PUTS, two equals ASKS."

score = 100;
fprintf('Is score exactly 100?  %d\n', score == 100)
fprintf('Is score exactly 99?   %d\n', score == 99)

% BROKEN LINES — uncomment all three, try to run this section, and read
% the red text TOGETHER. Then put the three percent signs back before
% moving on!
%
% if score = 100
%     disp('this will never print')
% end
%
% MATLAB refuses to even START — the file's grammar is broken — and says:
%
%     Incorrect use of '=' operator. To assign a value to a variable,
%     use '='. To compare values for equality, use '=='.
%
% ⭐ ASK THE CLASS: read that error out loud. The computer literally SUGGESTS
%    the fix. Week 1 promised errors are clues — this one is a whole answer key.


%% SECTION 7 · 🎉 THE SORTING HAT
% A program that JUDGES US. Kids shout their lucky number (1–100), you type
% it, the hat decides their team — with total confidence and zero feelings.
% (Spot the input(): no 's' flag, because a lucky number is a NUMBER.)
%
% The chain below slices 1–100 into four team zones:
%
%    1.....25 | 26.....50 | 51.....75 | 76.....100
%      GOAT   |   ROBOT   | LIBRARIAN |   WAFFLE
%
% ⭐ RITUAL: before pressing Enter each time, the class chants "SORT! THAT!
%    KID!" Run it for at least 3 students and yourself. To re-run instantly:
%    Ctrl+Enter this section again.

disp(' ')
disp('~~~~~  THE SORTING HAT 3000 IS AWAKE  ~~~~~')

lucky = input('Student''s lucky number (1-100): ');

if lucky >= 76
    disp('The hat says: TEAM FLAMING WAFFLE. Wear it proudly.')
elseif lucky >= 51
    disp('The hat says: TEAM NINJA LIBRARIAN. Shhh. But dangerous.')
elseif lucky >= 26
    disp('The hat says: TEAM DISCO ROBOT. Beep boop, but funky.')
else
    disp('The hat says: TEAM SCREAMING GOAT. The loudest team.')
end

disp('The hat''s decision is final. The hat does not do refunds.')

% ⭐ ASK THE CLASS: someone says 51 — which team? Someone says 50? They're
%    ONE apart and land on different teams. Boundaries decide everything.
%    (Where do the class's OWN team names and boundaries go? Next file —
%    they're about to rebuild this hat from scratch.)
