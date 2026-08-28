% ==============================================================================
%
%   WEEK 8 · FILL IN THE BLANK  —  the class writes the code, you type it
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
%   Completed version: step2_teacher_answer_key.md
%
% ==============================================================================


%% TASK 1 · WORD OF THE DAY
% The class picks ONE word for today's experiments. Rules: ALL CAPS, at
% least 5 letters, school-appropriate (you're the filter). Don't forget
% what strings always wear... quotes!

word = ____;
disp(['Today''s word is: ', word])


%% TASK 2 · GRAB THE FIRST LETTER
% Fill in the ADDRESS of the first letter.
% ⭐ Ask first: "the FIRST letter lives at address...?" (MATLAB counts
%    like humans — no tricks. But make them say it out loud.)

disp(['First letter: ', word(____)])


%% TASK 3 · GRAB THE LAST LETTER — WITHOUT COUNTING
% There's a WORD that means "last address" no matter how long the word is.
% ⭐ If someone counts forward instead (e.g. 6 for a 6-letter word), type
%    THAT too — it works! Then ask: "would that still work if we made the
%    word longer?" That's why the magic word wins.

disp(['Last letter: ', word(____)])


%% TASK 4 · MEASURE IT
% Which command counts the characters in a string? Fill in the command name.
% ⭐ Follow-up after it runs: "so what's the address of the last letter?"
%    (The SAME number! Length and last address match in MATLAB. Always.)

fprintf('Length: %d\n', ____(word))


%% TASK 5 · SLICE THE FIRST THREE LETTERS
% We want EXACTLY the first three letters. Start is filled in — the class
% supplies the stop number.
% ⭐ Ask before running: "1:3 — which addresses is that?" (1, 2, AND 3 —
%    the colon includes both ends, same as week 6's loops.) Then the fun
%    fact: in a zero-counting language this exact job is written 0:3 and
%    the 3 gets left out. Be glad you're here.

disp(['First three letters: ', word(1:____)])


%% TASK 6 · WALK THE WORD
% A for-loop can visit every address, in order. The loop should run from 1
% to the LAST address — fill in the command that measures the word.
% ⭐ Ask before running: "how many lines will this print?"

for i = 1:____(word)
    fprintf('--> %s\n', word(i))
end


%% TASK 7 · X-RAY A LETTER
% The class picks ONE character — any letter, or even a space — and we
% x-ray it to see its secret number. Quotes required!
% ⭐ Ask for a guess at the number BEFORE running. Then, if there's a
%    minute left, the reverse trick — you type this line live and the class
%    supplies a number between 65 and 90:   disp(char(  their number  ))
%    Instant letter. Two volunteers, two numbers, two letters.

fprintf('Secret number: %d\n', double(____))
