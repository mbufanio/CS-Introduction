function haunted_detention(has_key)
% THE DETENTION ROOM — only reachable via the random ghost event

disp(' ')
disp(repmat('-', 1, 50))
disp('The DETENTION ROOM. The ghost hall monitor')
disp('begins filling out a detention slip... dated 1974.')
disp(' ')
disp('  A) Explain, politely, that you''re trying to leave')
disp('  B) RUN FOR IT')

choice = upper(input('Type A or B: ', 's'));
while ~strcmp(choice, 'A') && ~strcmp(choice, 'B')
    choice = upper(input('The pen scratches. A or B: ', 's'));
end

if strcmp(choice, 'A')
    disp(' ')
    disp('The ghost pauses. Nobody has been polite to it')
    disp('since 1974. Moved, it points a glowing finger')
    disp('toward... the gym.')
    haunted_gym(has_key)
else
    haunted_ending_forever()
end
end
