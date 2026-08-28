function haunted_hallway(has_key)
% THE UPSTAIRS HALLWAY — home of the RANDOM EVENT (weeks 5 + 13)

disp(' ')
disp(repmat('-', 1, 50))
disp('The upstairs hallway stretches longer than the')
disp('building is. Classic haunted-school architecture.')

if randi(4) == 1                           % 1 in 4 → a 25% chance — weeks 5 + 13
    disp(' ')
    disp('A cold light rounds the corner — THE GHOST')
    disp('HALL MONITOR! ''PASS, PLEASE,'' it moans.')
    disp('You do not have a pass. You have never had')
    disp('a pass. It escorts you away...')
    haunted_detention(has_key)
    return                                 % return = leave this function NOW;
end                                        % skip the rest of the room — week 10

disp('...all clear. This time.')
disp(' ')
disp('  A) Duck into the science lab')
disp('  B) Push through the double doors into the gym')

choice = upper(input('Type A or B: ', 's'));
while ~strcmp(choice, 'A') && ~strcmp(choice, 'B')
    choice = upper(input('The hallway hums. A or B: ', 's'));
end

if strcmp(choice, 'A')
    haunted_science_lab(has_key)
else
    haunted_gym(has_key)
end
end
