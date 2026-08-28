% ==============================================================================
%
%   WEEK 3 · FILL IN THE BLANK  —  the class BUILDS Mad Libs 2.0
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
%     · This file has input() — when the Command Window blinks, kids shout
%       answers and YOU type them. Tasks 2 and 6 have no blank: the class
%       dictates, you type it live.
%
%   Today's build: "THE FIELD TRIP OF DOOM" — a Mad Libs the class designs.
%   Completed version: step2_teacher_answer_key.md
%
% ==============================================================================


%% TASK 1 · THE FIRST COLLECTOR
% We need a command that ASKS a question, WAITS, and hands us the answer.
% What command goes in the blank?
% ⭐ And spot the 's' already waiting at the end of the line — ask the class:
%    why does this collector need it? (A place is WORDS, not code!)

place = ____('Where is our field trip going? ', 's');


%% TASK 2 · LABEL THE BOX (no blank — the class dictates, you type)
% This collector asks for a plural animal — but the box has no label yet!
% The class names the box, and you type their label at the FRONT of a new
% line right below this comment, finishing it like:
%
%      their_label = input('Give me a PLURAL ANIMAL: ', 's');
%
% (Rules from week 2: one word, no spaces, no quotes. Pick a label that says
%  what's inside... or don't, and enjoy the confusion when we write the story.)
% ⭐ Whatever they pick, the story in Task 5 will need it. Remember the label!


%% TASK 3 · THE CLASS WRITES THE QUESTION
% Now flip it: the box is labeled, but the QUESTION is missing.
% The class composes the prompt — the exact words the computer will ask.
% ⭐ Ask first: what must the prompt be wearing? (Quotes! It's a string.)

adjective = input(____, 's');


%% TASK 4 · THE NUMBER (careful...)
% The story needs to know how many kids fit on the bus — and later we'll do
% MATH with it. Remember today's disaster — and remember what the 's' flag
% means. ONE of these two lines is right. Delete (or comment out) the wrong
% one, and be ready to say WHY.
% ⭐ Ask: which line hands us a real number we can double? What does the
%    other one hand us? (Text wearing a number costume!)

kids = input('How many kids fit on one bus? ', 's');
kids = input('How many kids fit on one bus? ');


%% TASK 5 · STORY TIME — FILL THE STORY'S SLOTS
% The story below has two unfilled ____ slots. The class decides which
% boxes go in them. (Any box we made today is legal — chaos is a feature.
% The natural pick is the animal box from Task 2, twice — running gags are
% comedy law.)
% ⭐ Before running: which line uses the NUMBER box to do math? What will
%    it print if kids is 30?

disp(' ')
disp('========  THE FIELD TRIP OF DOOM  ========')
fprintf('Our class took a field trip to %s.\n', place)
fprintf('The brochure promised it would be %s.\n', adjective)
fprintf('The brochure did not mention the %s.\n', ____)
fprintf('There were %d kids on our bus — but with 2 buses,\n', kids)
fprintf('that''s %d kids for the %s to chase.\n', kids * 2, ____)
disp('Nobody has returned the permission slips since.')
disp('==========================================')


%% TASK 6 · THE CLASS'S BONUS LINE (no blank — they dictate, you type)
% The story needs one more line, written 100% by the class. They dictate a
% sentence using AT LEAST ONE box from today; you type it LIVE as a new
% fprintf line right here below. Say the rules out loud:
%     · start with   fprintf('
%     · word slots are %s, number slots are %d
%     · end with   \n', box1, box2)   — list the boxes in slot order!
% Forgetting the \n is traditional. Run it, watch the next thing printed
% glue itself onto the story's last line, let the class yell "THE \n!",
% fix it, run again. Standing ovation.
