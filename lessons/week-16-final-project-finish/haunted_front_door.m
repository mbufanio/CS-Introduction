function haunted_front_door(has_key)
% THE FRONT DOOR — where the secret item flag gets checked

disp(' ')
disp(repmat('-', 1, 50))
disp('The front door. Massive. Locked. Smug about it.')

if has_key                                 % the flag gates the door — week 4
    haunted_ending_escape()
    return                                 % escaped! skip the rest — week 10
end

disp('You rattle the handle. Nothing. Somewhere in the')
disp('science lab, you''d swear a skeleton is giggling.')
disp(' ')
disp('  A) Go search the library')
disp('  B) Try the upstairs hallway')

choice = upper(input('Type A or B: ', 's'));
while ~strcmp(choice, 'A') && ~strcmp(choice, 'B')
    choice = upper(input('The door is still smug. A or B: ', 's'));
end

if strcmp(choice, 'A')
    haunted_library(has_key)
else
    haunted_hallway(has_key)
end
end
