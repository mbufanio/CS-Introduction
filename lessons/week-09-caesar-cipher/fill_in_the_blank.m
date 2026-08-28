% ==============================================================================
%
%   WEEK 9 · FILL IN THE BLANK  —  the class writes the code, you type it
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
%
%   Completed version: answer-key.md
%
% ==============================================================================


%% TASK 1 · CLOCK WARM-UP
% It's 10 o'clock; 4 hours pass. mod() needs the size of the CLOCK to wrap
% on. Fill in the number of hours on a normal clock face.

fprintf('10 o''clock + 4 hours = %d o''clock\n', mod(10 + 4, ____))


%% TASK 2 · A LETTER'S DISTANCE FROM A
% To get D's spot on the alphabet clock (0-25), we subtract the secret
% number of the alphabet's STARTING letter. Which letter? (Quotes on!)
% ⭐ Ask before running: what number should this print? (D is... 3 steps
%    from A.)

fprintf('Position of D: %d\n', double('D') - double(____))


%% TASK 3 · YOU TYPE, THEY SUPPLY THE COMMAND
% No blank here — do this one live in the Command Window:
%   1. Say: "Z is at 25. Shift 3. 25 + 3 = 28... but the clock only goes
%      to 25. Which command from week 2 wraps 28 back onto the clock?"
%   2. Type this line with the command the class calls out, then run:
%
%          fprintf('28 on the alphabet clock is: %d\n', mod(28, 26))
%
%   (They're hunting for mod. If someone offers floor — type it!
%    floor(28 / 26) gives 1, the number of FULL LAPS around the clock.
%    Interesting... but not where we LANDED. mod gives the remainder: 2.
%    Landed on C.)


%% TASK 4 · ONE LETTER THROUGH THE MACHINE
% The full three-step formula, with two holes in it. The class fills:
%   · the size of the alphabet clock
%   · the letter whose secret number turns a clock spot back into a CAPITAL
% ⭐ Y is at 24, shift is 3 ... ask for the final letter BEFORE the run.
%    (24 + 3 = 27, wraps to 1... B!)

letter = 'Y';
shift = 3;

pos = double(letter) - double('A');
newpos = mod(pos + shift, ____);
new_letter = char(newpos + double(____));

fprintf('%s encodes to %s\n', letter, new_letter)


%% TASK 5 · THE FULL ENCODER
% The whole machine — with two parts missing.
%   Blank 1: which character gets to sneak through UNSHIFTED?
%            (One character vs one character, so == is allowed here —
%             whole words would need week 5's strcmp.)
%   Blank 2: which variable holds the freshly-shifted clock spot, ready
%            for its costume? (Look two lines up...)
% ⭐ After it runs, change shift to a number the class picks (1-25) and
%    run again. Same machine, new secret.

message = 'CODE CLUB AT NOON';
shift = 5;

message = upper(message);
secret = '';
for i = 1:length(message)
    letter = message(i);
    if letter == ____
        secret = [secret, letter];
    else
        pos = double(letter) - double('A');
        newpos = mod(pos + shift, 26);
        secret = [secret, char(____ + double('A'))];
    end
end

disp(['Secret: ', secret])


%% TASK 6 · DECODE IT — WITHOUT GOING BACKWARDS
% Task 5 encoded with shift 5. To decode, we shift FORWARD the rest of the
% way around the 26-letter clock. The class computes the decode shift.
% ⭐ Ask: "5 forward plus HOW MANY more forward makes one full lap of 26?"

decode_shift = ____;

original = '';
for i = 1:length(secret)
    letter = secret(i);
    if letter == ' '
        original = [original, ' '];
    else
        pos = double(letter) - double('A');
        newpos = mod(pos + decode_shift, 26);
        original = [original, char(newpos + double('A'))];
    end
end

disp(['Decoded: ', original])
disp('(If that''s not English, the decode shift isn''t the complement of 5...)')
