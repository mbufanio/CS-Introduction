% ==============================================================================
%
%   WEEK 16 · CHALLENGE — 'WHAT''S NEXT: THE SHOWCASE'
%
%   Three short demos of where this road goes — a chatbot, a real security
%   tool, and a fireworks finale. Each ends with a note on what teaches
%   more of it.
%
%   TEACHER: run this file top to bottom in class. Demos 1 and 2 run in the
%   Command Window (you type the class's answers). Demo 3 OPENS A FIGURE
%   WINDOW — it's last on purpose, so the fireworks are the final image of
%   the course. Leave it glowing on the smartboard as they pack up.
%
% ==============================================================================


%% DEMO 1 · THE CHATBOT — 'wait, is this how Siri works?' (basically. 1966 edition.)
% In 1966, a program called ELIZA pretended to be a therapist using almost
% exactly this trick: catch a keyword, reply with a canned line, and when
% in doubt say 'tell me more.' People poured their hearts out to it. It was
% an if/elseif chain. You could have written it in week 4. This is
% basically 1966's first chatbot — sitting in a middle-school folder.
%
% Ours listens for ONE WORD at a time and matches it with strcmp (week 5's
% rule, one last time: words can't use == — words use strcmp).
%
% ⭐ RUN IT LIVE: the class shouts one-word topics, you type them.
%    Type BYE to end.

disp(repmat('=', 1, 50))
disp('DOC v1.0 — the school counselor-bot. Type BYE to leave.')
disp(repmat('=', 1, 50))

talking = true;                                % a flag variable — week 4
while talking                                  % while + flag — week 7
    word = upper(input('You (one word): ', 's'));   % upper so 'bye' works too
    if strcmp(word, 'BYE')
        disp('DOC: Farewell. My office hours are eternal.')
        talking = false;                       % the flag ends the loop — no tricks
    elseif strcmp(word, 'HOMEWORK')
        disp('DOC: Homework, you say. And how does that make you FEEL?')
    elseif strcmp(word, 'GAME') || strcmp(word, 'GAMES')
        disp('DOC: Games are important research. Tell me your findings.')
    elseif strcmp(word, 'TIRED') || strcmp(word, 'SLEEP')
        disp('DOC: Have you tried turning yourself off and on again?')
    elseif strcmp(word, 'MATLAB')
        disp('DOC: I hear that course changed lives. Sixteen of the weeks, anyway.')
    elseif strcmp(word, 'GHOST')
        disp('DOC: The gym ghost is a valued colleague. Next topic.')
    else
        disp('DOC: Interesting. Tell me more.')
    end
end
disp(' ')

% WANT MORE OF THIS? The field is called natural language processing.
% Step one is just... more elseifs. Step two fills university departments.


%% DEMO 2 · THE PASSWORD-STRENGTH CHECKER — a program you'll actually use
% Three tests, one score, a verdict. Every real 'password strength' meter
% you've ever seen is a fancier version of this exact loop.
%
% The digit test is week 8's big secret working overtime: every character
% IS a number (double() tells you which), and the digits 0-9 sit side by
% side on that number line — so 'is this a digit?' is just a range check.
%
% ⭐ RUN IT LIVE: the class invents a PRETEND password (never a real one —
%    say why: never type real passwords where others can see!).

password = input('Invent a PRETEND password to test: ', 's');

score = 0;
if length(password) >= 8                       % length — week 8
    score = score + 1;
    disp('  long enough (8+) ............ +1')
else
    disp('  too short — length is the #1 defense')
end

has_digit = false;                             % flags again — week 4
has_capital = false;
for i = 1:length(password)                     % loop over the text — week 8
    c = password(i);
    if double(c) >= double('0') && double(c) <= double('9')
        has_digit = true;                      % found a digit somewhere
    end
    if double(c) >= double('A') && double(c) <= double('Z')
        has_capital = true;                    % found a CAPITAL somewhere
    end
end

if has_digit
    score = score + 1;
    disp('  contains a digit ............ +1')
end
if has_capital
    score = score + 1;
    disp('  contains a CAPITAL .......... +1')
end

if score == 3                                  % if/elseif ladder — week 4
    fprintf('Score %d/3 — vault-grade. Museums wish they had this.\n', score)
elseif score == 2
    fprintf('Score %d/3 — solid. A determined ghost gives up.\n', score)
elseif score == 1
    fprintf('Score %d/3 — meh. A bored ghost gets in.\n', score)
else
    fprintf('Score %d/3 — a golden retriever could guess this.\n', score)
end
disp(' ')

% WANT MORE OF THIS? The field is called cybersecurity, and it hires
% people who think exactly like week 9's code-breakers.


%% DEMO 3 · FIREWORKS — the figure window's final bow
% Six sparkle-bursts at random spots in random colors — week 14's rand
% painting the sky, weeks 11-12's canvas saying goodbye. Every explosion
% in every video game is a loop like this one, wearing a fancier costume.
%
% The new one-liner: [rand, rand, rand] is a COLOR — how much red, green,
% and blue, each 0 to 1. Random color, every burst.

figure(1); clf; hold on
axis([0 10 0 10]); axis off

for burst = 1:6
    center_x = 1 + 8 * rand;                   % where this firework pops
    center_y = 3 + 6 * rand;
    burst_color = [rand, rand, rand];          % a random red-green-blue mix
    for spark = 1:60
        x = center_x + 2 * rand - 1;           % week 14's stretch-and-slide:
        y = center_y + 2 * rand - 1;           % a spark within 1 of the center
        plot(x, y, '*', 'Color', burst_color)
    end
    drawnow                                    % show this burst NOW
    pause(0.5)                                 % ...and let it hang in the air
end

text(5, 1, 'THE END  -  CLASS DISMISSED', 'HorizontalAlignment', 'center')
disp('(The sky is on the figure window. Leave it up.)')

% WANT MORE OF THIS? Computer graphics and game engines. MATLAB Onramp
% (on the graduation handout) goes deeper into plotting; from there,
% every game studio is just loops, ifs, and very fancy plot commands.
