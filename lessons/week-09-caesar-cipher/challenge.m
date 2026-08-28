% ==============================================================================
%
%   WEEK 9 · CHALLENGE  —  for fast classes, curious kids, or a big finish
%
%   Three upgrades to today's cipher. Run the whole file (F5), or one
%   section at a time (Ctrl+Enter).
%   Note: Challenge 3 asks YOU to type in the Command Window — it's a booth
%   that encrypts one student's name per lap and asks who's next.
%
% ==============================================================================


%% CHALLENGE 1 · ROT13 — the cipher that undoes itself
% ⭐ ASK THE CLASS FIRST: every shift needs a different decode shift...
%    5 decodes with 21, 3 decodes with 23. Is there a shift that decodes
%    with ITSELF — where the scrambler and unscrambler are the SAME machine?
%
%    Hunt for it: the pair must add up to 26... and be EQUAL...
%    so shift + shift = 26... shift = 13!
%
% Watch: encode with 13, then push the RESULT through the SAME machine.

word = 'HELLO';
shift = 13;                             % the magic self-undoing shift

scrambled = '';
for i = 1:length(word)
    pos = double(word(i)) - double('A');
    scrambled = [scrambled, char(mod(pos + shift, 26) + double('A'))];
end

disp(['HELLO   --ROT13-->  ', scrambled])

back_again = '';
for i = 1:length(scrambled)
    pos = double(scrambled(i)) - double('A');
    back_again = [back_again, char(mod(pos + shift, 26) + double('A'))];
end

disp([scrambled, '   --ROT13-->  ', back_again])

% Same code. Both directions. 13 + 13 = 26 = one full lap of the clock —
% so doing it twice walks every letter all the way home.
% (Real thing: internet forums used ROT13 for decades to hide spoilers.)
disp(' ')


%% CHALLENGE 2 · THE POLITE ENCODER — punctuation sails through
% Today's encoder only knew about spaces. This one checks whether each
% character is actually a capital letter. Math class writes the test
%   A ≤ letter ≤ Z
% MATLAB writes it as TWO comparisons glued with && ("AND — both must
% be true"):
%
%     letter >= 'A' && letter <= 'Z'      "is letter between A and Z?"
%
% (Comparing single characters with >= and <= is fine — one box against
%  one box, just like == on a space.) Letters get shifted; EVERYTHING
% else (spaces, ! ? . , digits) passes through untouched.

message = 'WE COME IN PEACE... MOSTLY!';
shift = 7;

message = upper(message);
secret = '';
for i = 1:length(message)
    letter = message(i);
    if letter >= 'A' && letter <= 'Z'
        pos = double(letter) - double('A');
        secret = [secret, char(mod(pos + shift, 26) + double('A'))];
    else
        secret = [secret, letter];      % not a letter? sail on through
    end
end

disp(['Message: ', message])
disp(['Secret : ', secret])

% ⭐ ASK THE CLASS: the ... and the ! survived. Helpful or a security leak?
%    (Leak! Punctuation reveals sentence shapes. Spies strip everything.)
disp(' ')


%% CHALLENGE 3 · THE ENCRYPTION BOOTH — one spy name per customer
% A while loop (week 7!) keeps the booth open until you type STOP.
% Each lap: type a student's name and a shift they pick (1-25), and out
% comes their encrypted spy name. Line forms to the left.
%
% The booth's condition uses week 5's strcmp — the customer's name is a
% whole WORD, so == is off-limits. strcmp answers 1 (same) or 0 (different),
% and the booth stays open while the answer to "did they type STOP?" is 0.

disp('THE ENCRYPTION BOOTH IS OPEN')

customer = input('Name to encrypt (or STOP to close the booth): ', 's');

while strcmp(upper(customer), 'STOP') == 0
    shift = input('Pick a shift, 1 to 25: ');

    spy_name = '';
    customer = upper(customer);
    for i = 1:length(customer)
        letter = customer(i);
        if letter >= 'A' && letter <= 'Z'
            pos = double(letter) - double('A');
            spy_name = [spy_name, char(mod(pos + shift, 26) + double('A'))];
        else
            spy_name = [spy_name, letter];
        end
    end

    fprintf('    %s is now Agent %s\n', customer, spy_name)
    disp(' ')
    customer = input('Next customer (or STOP to close the booth): ', 's');
end

disp('BOOTH CLOSED. All spy names are final. No refunds.')
