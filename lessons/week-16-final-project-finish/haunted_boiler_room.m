function haunted_boiler_room(has_key)
% THE BOILER ROOM — where the chalkboard's clue pays off

disp(' ')
disp(repmat('-', 1, 50))
disp('The boiler room: pipes, hissing, one bare bulb.')
disp('One wall looks... wrong. Newer. Hollow-sounding.')
disp('(The chalkboard TOLD you about this wall.)')
disp('A coal chute ladder climbs back to the front hall.')
disp(' ')
disp('  A) Push the suspicious wall')
disp('  B) Climb the ladder and try the front door')

choice = upper(input('Type A or B: ', 's'));
while ~strcmp(choice, 'A') && ~strcmp(choice, 'B')
    choice = upper(input('The pipes hiss louder. A or B: ', 's'));
end

if strcmp(choice, 'A')
    haunted_ending_secret()
else
    haunted_front_door(has_key)
end
end
