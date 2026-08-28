% ==============================================================================
%
%   WEEK 10  ·  FUNCTIONS: MATH MACHINES
%
%   On the board: a box labeled f(x) = 2x + 1, with a funnel and a chute.
%   The class has fed that machine by hand all year in math.
%
%   Today the machine becomes REAL. We will build machines, name them,
%   press their buttons, and bolt them together.
%
%   TEACHER: run this file section by section (click inside, Ctrl+Enter).
%   ⚠ The Current Folder MUST be this week's folder — the named machines
%     (double_it.m, rectangle_area.m, cheer.m) live here as their own
%     files, and MATLAB only finds them from the current folder.
%
% ==============================================================================


%% SECTION 1 · THE MACHINE BECOMES REAL — @ builds it, the Workspace holds it
% This one line is the board's machine, typed into MATLAB:
%
%     board:    f(x) = 2x + 1
%     MATLAB:   f = @(x) 2*x + 1
%
% The @ is the MACHINE-BUILDER arrow: "@(x)" means "a machine with one
% input slot named x", and what follows is what comes out of the chute.
%
% ⭐ ASK THE CLASS: I'm about to run JUST this line. What will print?
%    (Take votes. Then run. NOTHING prints... but LOOK AT THE WORKSPACE:
%     a new row appeared. f. We stored a MACHINE in a box. Building a
%     machine doesn't run it — same as drawing the box on the board
%     computed nothing. The machine just... exists now. Waiting.)

f = @(x) 2*x + 1;

% Now let's actually PRESS THE BUTTON.
% ⭐ ASK THE CLASS: in MATH class, what is f(3)?  (2·3 + 1 = 7.)
%    Now watch the computer answer the same question, in the SAME notation:

fprintf('f(3) = %d\n', f(3))

% Same letter. Same parentheses. Same answer.
% Math's f(x) is not LIKE a MATLAB function. It IS one.
% You have been programming in math class all year. Surprise.

fprintf('f(10) = %d\n', f(10))
fprintf('f(1000000) = %d\n', f(1000000))

% Built once. Used three times. It will never wear out.


%% SECTION 2 · THE INPUT/OUTPUT TABLE — weeks 6 and 10 shake hands
% The hook's table took the class a minute to fill by hand for x = 1, 2, 3.
% A week-6 loop feeds the machine every input and prints the whole table:
%
% ⭐ ASK THE CLASS: before running — what will the x = 10 row say? (21)

disp('  x | f(x)')
disp('----|-----')
for x = 1:10
    fprintf(' %2d | %3d\n', x, f(x))
end

% One machine + one loop = any table, any size, zero boredom.
% ⭐ Change 1:10 to 1:100 and re-run if the class dares you.


%% SECTION 3 · NAMED MACHINES LIVE IN THEIR OWN FILES — double_it
% The @ way stores a machine in a Workspace box. MATLAB's OTHER way gives
% a machine a permanent home: ITS OWN FILE, named after itself.
% In this folder sits a file called double_it.m. Open it on the board —
% here's what's inside:
%
%     function out = double_it(x)
%         out = x * 2;
%     end
%
% The function line, decoded:  out is the OUTPUT SLOT, double_it is the
% NAME, x is the INPUT SLOT. The machine's whole job: fill the out box.
% end closes the machine, like it closes an if or a for.
%
% (⭐ ASK: why didn't we just call it double? Because MATLAB already OWNS
%  a machine named double — week 8's letter x-ray! Names must be unique.)
%
% Calling it works exactly like f — MATLAB finds the file by name:

fprintf('double_it(5) = %d\n', double_it(5))
fprintf('double_it(100) = %d\n', double_it(100))
fprintf('double_it(1000000) = %d\n', double_it(1000000))

% One machine per file, named after itself — that's THE rule in MATLAB.
% Big programs are folders full of little machine files. You'll see.


%% SECTION 4 · WHAT THE OUTPUT SLOT REALLY DOES — it hands the answer BACK
% Filling out doesn't print anything. It hands the answer back to WHOEVER
% CALLED, so the program can keep using it: store it, do more math, feed
% it onward.

answer = double_it(10);             % the returned 20 lands in a variable
fprintf('stored in a variable: %d\n', answer)      % ⭐ ...and in the Workspace!
fprintf('and we can keep going: %d\n', answer + 1)
fprintf('or feed it to f: %d\n', f(double_it(10)))    % 20 goes straight into f → 41

% ⭐ ASK THE CLASS: what happens if we call double_it(50) and DON'T print
%    or store it — and hush the line with a semicolon? Watch closely...

double_it(50);

%    ...nothing appeared! The machine computed 100, held it out on the
%    chute, and nobody caught it. The 100 evaporated.
%    (⭐ Now delete the semicolon and re-run the line: MATLAB catches the
%     orphan itself —  ans = 100.  ans is MATLAB's scratch box, week 2!
%     The output slot HANDS BACK; someone still has to CATCH.)


%% SECTION 5 · TWO SLOTS — a formula becomes a machine
% Machines can have more than one input slot. In this folder:
% rectangle_area.m — a math formula the class knows cold, A = w × h:
%
%     function a = rectangle_area(width, height)
%         a = width * height;
%     end
%
% ⭐ ASK THE CLASS: rectangle_area(7, 3) = ?  (21. It's just the formula.)

fprintf('7 x 3 rectangle: %d\n', rectangle_area(7, 3))
fprintf('smartboard-ish?  %d\n', rectangle_area(160, 90))

% The arguments fill the slots IN ORDER: first value → width,
% second value → height. For multiplication the order doesn't change the
% answer... ⭐ ASK: can anyone think of a formula where order WOULD matter?
% (Subtraction! Division! Save this thought for the voting game.)


%% SECTION 6 · INVENT A COMMAND — cheer()
% MATLAB has no cheer() command. It does now — cheer.m lives in this
% folder. Look at its function line:
%
%     function cheer(name)
%         disp(['Gimme a ', upper(name), '!'])
%         disp(['    ', name, ' is unstoppable! WOOO!'])
%     end
%
% NO output slot before the name! This machine PERFORMS instead of handing
% back a number — its insides are disp lines.
% (double_it CALCULATES and hands back; cheer PERFORMS. Machines can do
%  either. Keep that difference warm — it bites in a minute.)
%
% One machine, five students, five calls, one line each:
% ⭐ Swap in real names — volunteers only — and re-run.

cheer('Ada')
cheer('Marcus')
cheer('Priya')
cheer('Zoe')
cheer('Leo')

% ⭐ LIVE-EDIT MOMENT: open cheer.m, change its SECOND disp line — the
%    class writes the new chant (keep it kind) — save, and re-run this
%    section. ALL FIVE cheers update instantly.
%    Fix the machine once, every call improves. Laziness is a programmer
%    virtue — we retyped the cipher three times last week. NEVER AGAIN.

% ⭐ THE CLASSIC TRAP — do this LIVE in the Command Window. Type:
%
%        result = cheer('Ada')
%
%    Prediction vote first! Then run it. MATLAB stops with red text:
%
%        Error using cheer
%        Too many output arguments.
%
%    Translation: cheer has NO output slot — the machine cheers, but it
%    hands NOTHING back, so there is nothing to put in result. Contrast:
%    out = double_it(5) works fine, because double_it DECLARES an output.
%    Calculating machines hand back; performing machines don't.


%% SECTION 7 · MACHINES ON A CONVEYOR BELT — cheer, looped
% A loop can press a machine's button again and again. Five volunteers,
% one loop — each lap asks you to type the next name:
%
% ⭐ ASK THE CLASS: cheer prints 2 lines and the loop runs 5 laps...
%    how many lines total? (10.)

for i = 1:5
    fan = input('Next volunteer''s name: ', 's');
    cheer(fan)
end

% This is how big programs work: small machines, bolted together —
% loops pressing buttons, machines calling machines.
% Nobody writes 10,000 lines. They write 100 machines of 10 lines.


%% SECTION 8 · GRAND FINALE — COMPOSITION, f(f(3)) for real
% Math class nests machines: f(g(x)), machine feeding machine.
% MATLAB: identical. Work INSIDE OUT, like nested parentheses:
%
% ⭐ ASK THE CLASS: double_it(double_it(3)) — inner machine first!
%    double_it(3) → 6 ... then double_it(6) → ?

fprintf('double_it(double_it(3)) = %d\n', double_it(double_it(3)))

% ⭐ Harder — for all the glory: f(double_it(f(1))) ?
%    inside out: f(1) → 3 ... double_it(3) → 6 ... f(6) → 13.

fprintf('f(double_it(f(1))) = %d\n', f(double_it(f(1))))

disp(' ')
disp('Machines built today: f (in a Workspace box) — plus double_it,')
disp('rectangle_area and cheer, each living in its own file in this folder.')
disp('Next week the machines learn to DRAW. Bring your protractor instincts.')
