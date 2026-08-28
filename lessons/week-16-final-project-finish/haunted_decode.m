function message = haunted_decode(secret, shift)
% THE CIPHER MACHINE (week 9's greatest hit, back for the finale)
% Feed it a Caesar-scrambled message and the shift; it hands back English.

message = '';
for i = 1:length(secret)                       % loop over the letters — week 8
    letter = secret(i);
    if letter == ' '                           % == is fine on ONE character
        message = [message, ' '];              % spaces pass through untouched
    else
        spot = double(letter) - double('A');   % letter → number — week 8
        new_spot = mod(spot - shift, 26);      % shift back, wrap with mod — week 9
        message = [message, char(new_spot + double('A'))];
    end
end
end                                            % hand the answer back — week 10
