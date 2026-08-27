% ==============================================================================
%
%   WEEK 1 · CHALLENGE  —  for fast classes, curious kids, or a big finish
%
%   Three mini-shows, all built from the ONE command learned today.
%   Run the whole file (F5), or one section at a time (Ctrl+Enter).
%
% ==============================================================================


%% CHALLENGE 1 · ASCII ART — drawing with disp()
% Every line is just a string. Stack enough of them and you get a picture.
% ⭐ CLASS DESIGN MOMENT: after running it, let the class redesign the face —
%    change the eyes, the mouth, the ears — you type, they art-direct.

disp('      _______      ')
disp('     /       \     ')
disp('    |  o   o  |    ')
disp('    |    ^    |    ')
disp('    |  \___/  |    ')
disp('     \_______/     ')
disp('   I AM A PROGRAM  ')
disp(' ')


%% CHALLENGE 2 · THE CLASS ROSTER SHOW
% Replace these names with real students (volunteers only!) and re-run.
% Instant celebrity. Add as many lines as you have time for.

disp('*** NOW ENTERING THE PROGRAMMING HALL OF FAME ***')
disp('Ada  ...  future game developer')
disp('Marcus  ...  future robot engineer')
disp('Priya  ...  future app millionaire')
disp(' ')


%% CHALLENGE 3 · THE CLIFFHANGER — a sneak peek of week 6
% Ask the class: "How many disp lines would I need to display something
% 500 times?"  (They'll say 500. Reasonable!)
%
% Then show them this. THREE lines. Don't explain how it works —
% just say: "In five weeks, you'll write this yourselves."

disp('Here is the computer doing 500 push-ups:')
for i = 1:500
    disp(['push-up number ', num2str(i)])
end

disp(' ')
disp('...it is not even tired. See you next week.')
