% ==============================================================================
%
%   WEEK 8  ·  TEXT INSIDE-OUT
%
%   Today we crack a string open and look at the machinery inside.
%   Two big secrets:
%     1. Every letter has a POSITION — and MATLAB numbers them the way
%        humans do: the 1st letter is number 1.
%     2. Every letter IS a number, wearing a costume.
%
%   TEACHER: run this file section by section (click inside a section,
%   Ctrl+Enter) — each section has its own reveal. (clc first.)
%
% ==============================================================================


%% SECTION 1 · EVERY LETTER HAS AN ADDRESS
% A string isn't a blob — it's letters parked along a number line:
%
%        M  A  T  L  A  B
%        1  2  3  4  5  6      ← the ADDRESS of each letter (its INDEX)
%
% MATLAB counts like humans: the 1st letter is number 1. No tricks.
% Parentheses ask for the letter at one address:  word(1)

word = 'MATLAB';

disp(['The whole word: ', word])
fprintf('word(1) is: %s\n', word(1))

% ⭐ ASK THE CLASS: so what is word(2)?
%    (The SECOND letter — the A. Yes, really: in MATLAB the answer to
%     "what is letter number 2?" is... the 2nd letter. As it should be.)

fprintf('word(2) is: %s\n', word(2))

% ⭐ ONE ASIDE, THEN WE MOVE ON: many other languages (Python, Java, C...)
%    start counting at ZERO — their "letter 0" is our letter 1, and their
%    "letter 1" is our letter 2. If you ever meet one of those languages,
%    remember this day.
%
% ⭐ ASK THE CLASS: which address holds the T?  (Count on the board: 3.)

fprintf('word(3) is: %s\n', word(3))


%% SECTION 2 · THE end KEYWORD — THE LAST LETTER, NO COUNTING
% Inside the parentheses, the word  end  means "the LAST address."
% word(end) is the last letter — no matter how long the word is.
% Six letters or six hundred: end always knows.
%
% ⭐ ASK THE CLASS: what will word(end) show? And word(end - 1)?

fprintf('word(end)     is: %s\n', word(end))
fprintf('word(end - 1) is: %s\n', word(end - 1))

% end even does math: end - 1 means "one before the last."


%% SECTION 3 · length() — HOW LONG IS THIS STRING?
% length() counts the characters. Every character: letters, spaces,
% punctuation.
%
% ⭐ ASK THE CLASS: length('MATLAB') is... ?  (6 — easy.)
%    And the LAST letter's address is...? Also 6! Length and last address
%    MATCH — because we started counting at 1. (In zero-counting languages
%    they are forever off by one. Their programmers complain about it a lot.)

fprintf('length(word) is: %d\n', length(word))
fprintf('...and the last address is also: %d\n', length(word))

% So word(length(word)) grabs the last letter too — but word(end) says
% the same thing in less typing. end wins.

% length() counts EVERYTHING between the quotes — spaces included:

disp(length('I LOVE MATH CLASS'))     % ⭐ predict first! (spaces count: 17)


%% SECTION 4 · SLICES — THE COLON CUTS OUT A PIECE
% word(2:4) means: TAKE addresses 2 through 4 — BOTH ends included.
%
%        M [A  T  L] A  B
%        1  2  3  4  5  6
%
% ⭐ ASK THE CLASS: so word(2:4) gives how many letters? Which ones?

fprintf('word(2:4) is: %s\n', word(2:4))
fprintf('word(1:3) is: %s\n', word(1:3))

% Both ends included. Feel familiar?
% ⭐ ASK THE CLASS: what numbers did 2:4 make in our week-6 loops?

for i = 2:4
    fprintf('the colon gave me: %d\n', i)
end

% 2:4 → 2, 3, 4. The colon includes BOTH ends — in loops AND in slices.
% MATLAB is inclusive everywhere. One rule, no exceptions.
% (In math language: the interval [2, 4] — square brackets on both sides.)


%% SECTION 5 · A LOOP CAN WALK THROUGH A STRING
% In week 6, for-loops walked through numbers. Numbers are ADDRESSES now:
% run i from 1 to length(word), and word(i) hands us each letter in turn.
%
% ⭐ ASK THE CLASS: how many laps will this loop run? (One per letter: 6.)

for i = 1:length(word)
    letter = word(i);
    fprintf('%s\n', letter)
end

% There's the word — printed VERTICALLY, one loop lap per letter.
% (Watch the Workspace while it runs: the boxes i and letter update
%  every single lap.)


%% SECTION 6 · THE BIG REVEAL — EVERY LETTER IS SECRETLY A NUMBER
% Deep down, a computer only stores numbers. So every character you have
% EVER typed is stored as a number — the letter is just a costume.
% double() pulls the costume off.
%
% ⭐ ASK THE CLASS: any guess what number hides inside 'A'?
%    (Take a few guesses, then run. Nobody guesses 65.)

fprintf('double(''A'') is: %d\n', double('A'))
fprintf('double(''B'') is: %d\n', double('B'))
fprintf('double(''Z'') is: %d\n', double('Z'))

% It's not just capital letters. EVERYTHING on the keyboard has a number:

fprintf('double(''a'') is: %d\n', double('a'))    % lowercase a... 97?! remember that.
fprintf('double('' '') is: %d\n', double(' '))    % even the SPACE BAR has a number: 32
fprintf('double(''0'') is: %d\n', double('0'))    % the CHARACTER '0' is secretly... 48!?

% ⭐ ASK THE CLASS: A is 65 and a is 97. What's the gap? (97 − 65 = 32.)
%    Hold that thought — it comes back in Section 8.

% char() goes BACKWARDS: number in, character out.

fprintf('char(66) is: %s\n', char(66))
fprintf('char(77) is: %s\n', char(77))

% ⭐ ASK THE CLASS: char(double('A')) — costume off, costume back on —
%    gives...?

fprintf('char(double(''A'')) is: %s\n', char(double('A')))


%% SECTION 7 · THE ALPHABET, BUILT FROM BARE NUMBERS
% If A=65 and Z=90, we can manufacture the ENTIRE alphabet from numbers.
%
% ⭐ ASK THE CLASS: 65:90 — does the 90 get included? (YES. Inclusive
%    everywhere — Section 4's rule, already paying rent.)

for n = 65:90                  % 65, 66, 67, ... 90 — both ends included
    fprintf('%s', char(n))     % no \n — the letters land on ONE line
end
fprintf('\n')                  % one final newline to finish the line

% Four lines. Twenty-six letters. Zero typing of letters.

% Or grow it in a BOX — week 6's accumulator, but growing TEXT this time:
% start empty, glue one letter on every lap.

alphabet = '';                        % start with an EMPTY string
for n = 65:90
    alphabet = [alphabet, char(n)];   % glue on one more letter
end

disp(['Built from numbers: ', alphabet])

% ⭐ Point at the Workspace: the box named alphabet just grew to 26 letters.


%% SECTION 8 · upper() AND lower() — THE VOLUME KNOBS
% Every string has two tricks available: SHOUT and whisper.

quiet = 'please work quietly';
disp(upper(quiet))

loud = 'STOP SHOUTING AT THE SMARTBOARD';
disp(lower(loud))

% ⚠ SNEAKY BUT IMPORTANT: upper() hands back a NEW string — it does NOT
%   change the box. Look:

disp(quiet)     % still lowercase! (Check its row in the Workspace — unchanged.)

% To KEEP the loud version, you must store it back:   quiet = upper(quiet);

% ⭐ ASK THE CLASS: remember the gap? A=65, a=97 — exactly 32 apart.
%    And it's 32 for EVERY letter (b−B, z−Z... always 32):

fprintf('double(''b'') - double(''B'') is: %d\n', double('b') - double('B'))
fprintf('double(''z'') - double(''Z'') is: %d\n', double('z') - double('Z'))

%    So upper() is secretly just... subtracting 32 from every letter's
%    number. It's not magic. It's ARITHMETIC. Everything today is.


%% SECTION 9 · NEXT WEEK — A TWO-SECOND TRAILER
% Watch what happens when you ADD something to a letter's secret number:

fprintf('Take char(double(''A'') + 3) ... and A becomes: %s\n', char(double('A') + 3))

% A slid 3 places down the alphabet. Every letter can slide like that.
% Next week: sliding letters lets us write unbreakable* secret messages,
% exactly like Julius Caesar did 2,000 years ago.
%
%     (*very breakable. But VERY fun.)

disp(' ')
disp('Week 8 complete: the alphabet has been caught undercover.')
