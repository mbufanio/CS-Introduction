function haunted_gym(has_key)
% THE GYM — a crossroads room (both choices loop deeper into the map)

disp(' ')
disp(repmat('-', 1, 50))
disp('The gym. The scoreboard glows: HOME 13,')
disp('GHOSTS 13, TIME REMAINING: FOREVER.')
disp('A rope ladder behind the bleachers drops toward')
disp('a door marked BOILER ROOM.')
disp(' ')
disp('  A) Climb down to the boiler room')
disp('  B) Go back through the upstairs hallway')

choice = upper(input('Type A or B: ', 's'));
while ~strcmp(choice, 'A') && ~strcmp(choice, 'B')
    choice = upper(input('The scoreboard ticks. A or B: ', 's'));
end

if strcmp(choice, 'A')
    haunted_boiler_room(has_key)
else
    haunted_hallway(has_key)               % rooms can lead BACK — that's a cycle
end                                        % in the map (and the ghost gets a
end                                        % second chance at you...)
