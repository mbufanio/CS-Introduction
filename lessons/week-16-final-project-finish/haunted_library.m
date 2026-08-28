function haunted_library(has_key)
% THE LIBRARY — home of the ciphered clue (weeks 8 + 9, in-game!)

disp(' ')
disp(repmat('-', 1, 50))
disp('The library. Every book is open to page 13.')
disp('On the chalkboard, in dust, someone has written:')
disp(' ')
disp('       WKH ERLOHU URRP ZDOO LV IDNH')
disp(' ')
disp('Caesar cipher! You sound it out, shift 3...')
fprintf('       %s\n', haunted_decode('WKH ERLOHU URRP ZDOO LV IDNH', 3))
disp(' ')
disp('  A) Head for the science lab')
disp('  B) Find the basement stairs to the boiler room')

choice = upper(input('Type A or B: ', 's'));
while ~strcmp(choice, 'A') && ~strcmp(choice, 'B')
    choice = upper(input('The books are watching. A or B: ', 's'));
end

if strcmp(choice, 'A')
    haunted_science_lab(has_key)
else
    haunted_boiler_room(has_key)
end
end
