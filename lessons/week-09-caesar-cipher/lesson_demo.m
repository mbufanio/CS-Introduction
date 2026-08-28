% ==============================================================================
%
%   WEEK 9  ·  🎉 THE CAESAR CIPHER
%
%   On the board: WKH ILUVW UXOH RI FRGH FOXE
%
%   That message is locked. Today we build the key — out of parts the class
%   already owns: double(), char(), a for-loop, an accumulator... and mod()
%   from week 2, which has been waiting SEVEN WEEKS for this moment.
%
%   TEACHER: run this file section by section (click inside, Ctrl+Enter).
%
% ==============================================================================


%% SECTION 1 · THE 2,000-YEAR-OLD TRICK
% Julius Caesar sent battle orders his enemies couldn't read. His trick:
% slide every letter 3 places down the alphabet.
%
%     A → D      B → E      C → F      ...
%
% The slide amount (3) is called the SHIFT — it's the secret key.
% Only someone who knows the shift can slide the letters back.
%
% ⭐ ASK THE CLASS: with shift 3, what does H become? (K)  And E? (H)
%    So 'HE' encodes to... KH. You are all now Roman spies.
%
% ⭐ NOW THE TRAP — ASK: what does Z become?  Z + 3 = ...?
%    There IS no letter after Z. Collect ideas. Someone will say
%    "start over from A" — hold that thought and run Section 2.

fprintf('A + 3 = %s\n', char(double('A') + 3))
fprintf('B + 3 = %s\n', char(double('B') + 3))
fprintf('H + 3 = %s\n', char(double('H') + 3))

% (That's week 8's move: secret number, plus 3, costume back on.
%  It works great... until Z. Do NOT run Z this way yet — Section 3
%  shows what goes wrong.)


%% SECTION 2 · CLOCK MATH — the class already knows the answer
% ⭐ ASK THE CLASS: it's 10 o'clock. What time is it in 4 hours?
%    (Everyone says 2. Nobody says 14. Why not? The clock WRAPS.)
%
% Week 2's remainder command mod() is a wrapping machine:
% mod(10 + 4, 12) asks "where do we land on a 12-hour wheel?"

fprintf('mod(10 + 4, 12) = %d\n', mod(10 + 4, 12))

% The alphabet is just a bigger clock — 26 hours, labeled A to Z.
% For clock math we measure each letter's DISTANCE from A:
%
%     A=0 steps from A,  B=1,  C=2,  ...  Z=25.
%
% (Careful — that's not a string address! Week 8's addresses count
%  letters 1, 2, 3... This is how far a letter is FROM A, and A is
%  zero steps from itself. A distance, not an address.)
%
% Z sits 25 steps from A. Z + 3 on the 26-hour wheel:

fprintf('mod(25 + 3, 26) = %d\n', mod(25 + 3, 26))

% Distance 2 from A is... C!  So Z + 3 = C:  Z → A → B → C. The wrap is real.
%
% ⭐ ASK THE CLASS: what is mod(25 + 1, 26)?  (0 — Z + 1 lands right on A.)


%% SECTION 3 · THE FORMULA — one letter through the machine
% Three steps turn any letter into its encoded twin:
%
%     step 1:  pos        = double(letter) - double('A')     costume off → 0..25
%     step 2:  newpos     = mod(pos + shift, 26)             slide on the clock
%     step 3:  new_letter = char(newpos + double('A'))       costume back on
%
% Watch the hardest letter in the alphabet survive the trip
% (and watch pos and newpos appear in the Workspace as it does):

letter = 'Z';
shift = 3;

pos = double(letter) - double('A');           % 90 - 65 = 25
fprintf('pos of Z: %d\n', pos)

newpos = mod(pos + shift, 26);                % mod(25 + 3, 26) = 2
fprintf('newpos: %d\n', newpos)

new_letter = char(newpos + double('A'));      % char(2 + 65) = char(67) = C
fprintf('Z + 3 = %s\n', new_letter)

% ⭐ ASK THE CLASS: what if we'd skipped the mod(..., 26)?
%    char(28 + 65) = char(93) — let's see what non-letter lives there:

fprintf('without the clock, Z + 3 would be: %s\n', char(28 + double('A')))   % yikes

% The mod(..., 26) is the difference between a cipher and keyboard soup.


%% SECTION 4 · THE ENCODER — the whole machine, assembled
% Now the formula goes inside week 8's loop-and-accumulator pattern:
%   · upper() first — our cipher speaks ALL CAPS only
%   · spaces don't get shifted — an if lets them pass through untouched
%   · everything else takes the three-step trip
%
% ⚠ SAY IT OUT LOUD: the test  letter == ' '  uses == on purpose. Week 5's
%   rule was "words need strcmp" — but letter and ' ' are each ONE character,
%   one box against one box, and == is safe on single characters.
%
% ⭐ CLASS CHOICE: run it once as-is, then replace the message below with
%    one the class invents (LETTERS AND SPACES ONLY) and run it again.

message = 'MEET AT THE BIG TREE';       % ← swap in the class's message
shift = 3;

message = upper(message);               % ALL CAPS, no exceptions
secret = '';                            % the accumulator — starts empty

for i = 1:length(message)               % walk the message, letter by letter
    letter = message(i);
    if letter == ' '
        secret = [secret, ' '];         % spaces sneak through unshifted
    else
        pos = double(letter) - double('A');
        newpos = mod(pos + shift, 26);
        secret = [secret, char(newpos + double('A'))];
    end
end

disp(['Message: ', message])
disp(['Secret : ', secret])

% ⭐ ASK THE CLASS: why do we keep the spaces? Doesn't that leak clues?
%    (YES — word lengths are a huge hint. Real spies removed them.
%     We keep them because we're learning, not invading Gaul.)


%% SECTION 5 · DECODING — the long way around the clock
% To decode, slide every letter BACK by 3... but backwards risks negative
% numbers (A - 3 = ?!). The clock saves us again:
%
%     going BACK 3 hours  ==  going FORWARD 26 - 3 = 23 hours
%
% Same wheel, long way around. So decoding is just ENCODING with
% shift 26 - 3. We don't need a new machine at all.
%
% ⭐ ASK THE CLASS: on a normal clock, going back 4 hours is the same as
%    going forward how many? (8 — because 4 + 8 = 12. Same idea here.)

coded = secret;                         % the secret we just made
decode_shift = 26 - 3;                  % 23 — the complement of the key

original = '';
for i = 1:length(coded)
    letter = coded(i);
    if letter == ' '
        original = [original, ' '];
    else
        pos = double(letter) - double('A');
        newpos = mod(pos + decode_shift, 26);
        original = [original, char(newpos + double('A'))];
    end
end

disp(['Coded   : ', coded])
disp(['Decoded : ', original])

% Round trip complete. Shift 3 out, shift 23 home, and 3 + 23 = 26 —
% one full lap of the alphabet clock.


%% SECTION 6 · THE FINALE — BRUTE FORCE the board's mystery
% The message on the board was NOT encoded with a shift we know.
% No key? No problem. There are only 25 possible shifts...
% so we try ALL OF THEM. That strategy is called BRUTE FORCE.
%
% A loop inside a loop: the outer loop picks a shift to try,
% the inner loop decodes the whole message with it. Loop-ception.
%
% ⭐ SAY BEFORE RUNNING: "25 wrong answers and 1 right one are about to
%    fill this screen. The computer has NO IDEA which is which — it can't
%    read English. YOU can. Shout when you see it."

mystery = 'WKH ILUVW UXOH RI FRGH FOXE';

disp('BRUTE-FORCING THE MYSTERY... all 25 shifts:')
disp(' ')

for guess_shift = 1:25                  % try shifting back by 1, 2, ... 25
    attempt = '';
    for i = 1:length(mystery)
        letter = mystery(i);
        if letter == ' '
            attempt = [attempt, ' '];
        else
            pos = double(letter) - double('A');
            newpos = mod(pos + 26 - guess_shift, 26);
            attempt = [attempt, char(newpos + double('A'))];
        end
    end
    fprintf('shift %2d:  %s\n', guess_shift, attempt)
end

% ⭐ AFTER THE SHOUT: which shift was it? (3 — Caesar's own favorite.)
%    The computer generated all 25 rows in a blink but couldn't pick one.
%    Twenty-five human brains picked instantly. Teamwork.

disp(' ')
disp('Cracked by: this class. Time needed: one second. Caesar: furious.')
