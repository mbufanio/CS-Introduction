% ==============================================================================
%
%   WEEK 3  ·  INPUT & TEXT  →  🎉 MAD LIBS
%
%   So far, we write the whole show before the curtain opens.
%   Today the program TALKS BACK: it asks questions, waits for answers,
%   and uses them. By the end of class it will write a story about us.
%
%   TEACHER: this file uses input() — when the Command Window stops and
%   blinks, it's waiting for YOU to type. Kids shout the answers; you're
%   the hands. Section 3 stages this week's beautiful disaster — read its
%   comments before class so the crash lands on cue.
%
% ==============================================================================


%% SECTION 1 · THE COMPUTER ASKS A QUESTION (the hook)
% input() does three things, in order:
%   1. prints the question
%   2. STOPS and waits — forever, if it has to. It has nothing else going on.
%   3. hands over the answer, which we catch in a box
%
% ⭐ RUN THIS AND SAY NOTHING. Let the cursor blink. Let it get awkward.
%    Then ask the class for a number, type it, and press Enter.

lucky = input('Pick a number, any number: ');

disp('Your number, doubled, before you could blink:')
disp(lucky * 2)
disp('It waited. It would have waited until June.')


%% SECTION 2 · THE ECHO BOT — input lands in a box, math-ready
% The answer isn't lost — input() drops it straight into a variable.
% Same labeled boxes as last week; the only new part is WHERE the value
% comes from: not from our code, but from whoever is at the keyboard.
%
% ⭐ ASK THE CLASS: pick a volunteer. I'll type their age when it asks.
%    What will the last line display?

age = input('How old is our volunteer? ');

disp('Next birthday, our volunteer turns:')
disp(age + 1)

% ⭐ Point at the Workspace: the age box holds a real NUMBER. input() handed
% us math fuel, ready to burn — no conversion, no ceremony. age + 1 just works.
%
% ⭐ ASK THE CLASS: so input() is easy, right? Numbers work perfectly.
%    What could POSSIBLY go wrong if we ask for a NAME instead...


%% SECTION 3 · THE GOTCHA — ASKING FOR A WORD (this week's beautiful disaster)
% ⭐ LIVE CRASH: uncomment the line below (remove the '%'), run this section,
%    and ask the class to name our volunteer. Type their answer — say it's
%    Ada — and press Enter. Enjoy the fireworks:
%
% name = input('What is your name? ')
%
%    Unrecognized function or variable 'Ada'.
%
%    ...and then MATLAB asks the question AGAIN. It is not giving up — it
%    will crash-and-re-ask all day until it gets something it can understand.
%    (Type a number to escape, or press Ctrl+C. Then put the '%' back.)
%
% ⭐ READ THE RED TEXT TOGETHER. Why did the computer go hunting for Ada?
%
% Remember week 1's rule: NO QUOTES MEANS LOOK IT UP. Plain input() reads
% your answer as CODE. The class typed Ada with no quotes — so MATLAB tried
% to LOOK UP a box named Ada. There is no box named Ada. Red text.
% (When we typed 12, that worked — because 12 is perfectly good code.)
%
% THE FIX — the 's' flag. Adding  , 's'  tells input:
% "expect a STRING — take whatever gets typed as WORDS, not code."

name = input('What is your name? ', 's');

disp(name)
disp('No crash. The ''s'' means: words, not code.')


%% SECTION 4 · GLUING WITH [ ] — and num2str, the number translator
% Square brackets GLUE pieces of text into one string:

disp(['Everyone say hi to ', name, '!'])

% But numbers can't be glued raw — they're a different KIND of thing.
% A number has to put on its text costume first, and num2str() is the
% costume department:

disp(['Our volunteer is ', num2str(age), ' years old.'])

% ⭐ LIVE EXPERIMENT (type it in the Command Window):
%       disp(['I am ', 12])
%    A strange symbol appears! MATLAB glued CHARACTER number 12 — not the
%    digits 1 and 2. Now try 65 instead of 12... you get the letter A.
%    Every letter is secretly a number. (That secret cracks wide open in
%    week 8. For now: numbers going into glue need num2str.)


%% SECTION 5 · fprintf — THE MAD LIBS MACHINE
% Gluing works, but here's the deluxe version. fprintf prints a sentence
% with BLANKS in it, then fills the blanks from a list:
%
%     %s   is a WORD slot   (s for string)
%     %d   is a NUMBER slot (d for digits)
%     \n   means "press Enter" — every sentence ends with one
%
% The slots get filled IN ORDER from the values after the sentence:

fprintf('%s is %d years old.\n', name, age)

% ⭐ ASK THE CLASS: a sentence with blanks that get filled in with words
%    you collected... what game is that? (MAD LIBS. Today ends with Mad Libs.)

fprintf('%s ate %d donuts at %s!\n', name, 99, 'the cafeteria')

% fprintf IS a Mad Libs machine. Which is convenient, because...


%% SECTION 6 · 🎉 THE MAIN EVENT — MAD LIBS
% Everything today was training for this. Collect the ingredients from the
% class ONE AT A TIME — take several shouted options, pick the best
% (you are the filter). DO NOT read ahead to the story. The surprise is the fun.
%
% ⭐ ASK THE CLASS: five of these collectors wear the 's' flag. One does NOT.
%    Find it. Why is it different? (It's a NUMBER — we'll do math with it,
%    and its slot in the story is %d.)

noun = input('Give me a PLURAL NOUN (the sillier the better): ', 's');
verb = input('Give me a VERB: ', 's');
adjective = input('Give me an ADJECTIVE: ', 's');
teacher = input('Name a teacher in this school: ', 's');
number = input('Give me a NUMBER between 2 and 99: ');
place = input('Name a PLACE: ', 's');

% Drumroll... every slot below gets filled from the boxes.
% Read it aloud with FULL dramatic commitment.

disp(' ')
disp('==============================================')
disp('        A TRUE STORY ABOUT OUR SCHOOL')
disp('==============================================')
fprintf('Yesterday, %s was walking to %s\n', teacher, place)
fprintf('when %d %s %s fell out of the sky.\n', number, adjective, noun)
fprintf('''This is fine,'' said %s, and started to %s.\n', teacher, verb)
fprintf('The %s were impressed. The school newspaper called it\n', noun)
fprintf('''the most %s thing to ever happen near %s.''\n', adjective, place)
disp('The end. Based on a true story. (It is not.)')
disp('==============================================')

% ⭐ ASK THE CLASS: which boxes got used twice? (teacher, noun, adjective,
%    place — one box, as many slots as you want. That's the power move.)
%
% Next week: the program stops being a storyteller and becomes a JUDGE —
% it's going to start making decisions about us.
