% ==============================================================================
%
%   WEEK 1  ·  WHAT IS A PROGRAM?
%
%   A PROGRAM is a list of instructions that a computer follows,
%   in order, EXACTLY as written.
%
%   This file is a program. Everything you're reading right now is inside it.
%   The lines that start with a '%' (like this one) are called COMMENTS —
%   they are notes for HUMANS. The computer skips them completely.
%
%   TEACHER: the '%%' lines below split this file into sections. Click inside
%   a section and press Ctrl+Enter to run just that section. Walk the file
%   top to bottom, one section at a time. (Type clc first to clean the board.)
%
% ==============================================================================


%% SECTION 1 · YOUR FIRST COMMAND
% The command below is the most famous line of code in the world.
% Since the 1970s, the first program every programmer writes says hello.
% Today, this class joins a 50-year tradition.
%
%   disp(...)  means:  "computer, DISPLAY this on the screen"
%
% ⭐ ASK THE CLASS: before we run it — what do you think will appear
%    in the Command Window?

disp('Hello, world!')


%% SECTION 2 · INSTRUCTIONS RUN IN ORDER, TOP TO BOTTOM
% A program is not one instruction — it is a LIST of them.
% The computer does line 1, then line 2, then line 3. It never skips,
% never rearranges, never gets creative.
%
% ⭐ ASK THE CLASS: what order will these three lines appear in?
%    Could the computer decide to print the greeting first because it is
%    nicer?  (No. It CANNOT decide anything. That is the whole point.)

disp('First, the computer does this line.')
disp('Then this one.')
disp('It never skips. It never guesses. It just follows the list.')


%% SECTION 3 · STRINGS — TEXT IN QUOTES
% The text inside the quotes is called a STRING.
% A string is just characters — letters, spaces, punctuation — and the
% computer repeats it WITHOUT thinking about what it means.
%
% Which leads to a very sneaky question...
%
% ⭐ ASK THE CLASS: these two lines look almost identical.
%    Will they display the same thing? Vote before running!

disp('2 + 2')
disp(2 + 2)

% What happened:
%   '2 + 2'  has quotes → it is a STRING → the computer just repeats the text
%    2 + 2   has NO quotes → it is MATH → the computer calculates it
%
% This is the difference between WRITING a math expression and SOLVING it.
% (Next week we turn the computer into a full super-calculator — and you
%  will meet the Workspace, the window into its memory.)


%% SECTION 4 · COMPUTERS ARE LITERAL (the sandwich rule)
% Remember the sandwich robot? The computer does what you SAY,
% not what you MEAN. If you say it even slightly wrong, it will not guess —
% it will stop and show an ERROR MESSAGE in red.
%
% An error message is NOT the computer being mean.
% It is the computer saying: "I got stuck HERE, and HERE IS why."
% Programmers see hundreds of these a day. Reading them is a superpower.
%
% ⭐ LIVE ACTIVITY: uncomment the broken lines below ONE AT A TIME
%    (remove the '%' at the start), run this section, and read the red
%    text out loud together. Then put the '%' back and try the next one.
%
% BROKEN LINE 1 — Capital D. MATLAB's commands are lowercase. To MATLAB,
%                 'Disp' and 'disp' are as different as 'cat' and 'dog'.
% Disp('Why does this not work?')
%
% BROKEN LINE 2 — The closing quote is missing. MATLAB reads to the end of
%                 the line still waiting for it, then gives up.
% disp('Where does this string end?)
%
% BROKEN LINE 3 — No quotes at all. MATLAB thinks these words are commands
%                 it should know... and it does not know them.
% disp(Hello there)
%
% ⭐ ASK THE CLASS after each one: what is the error message trying to
%    tell us? Which line does it point at?

disp('Errors are clues, not failures.')


%% SECTION 5 · COMMENTS — NOTES FOR HUMANS
% You have been reading comments this whole time. One more thing about them:
% programmers use comments to explain code to OTHER PEOPLE (and to
% themselves, next week, after they have forgotten everything).

% The computer ignores this line completely.
disp('...but it runs this one, because there is no percent sign in front.')  % (a comment can share a line with code, too)


%% SECTION 6 · GRAND FINALE
% Everything below is just disp() — the ONE command you learned today.
% That is all it takes to make the computer put on a show.

disp(' ')
disp('*************************************')
disp('*                                   *')
disp('*   THIS CLASS NOW SPEAKS MATLAB    *')
disp('*                                   *')
disp('*************************************')
disp(' ')
disp('Instructions followed: all of them.')
disp('Questions asked by the computer: zero.')
disp('See you next week.')
