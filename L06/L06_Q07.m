% Mary Robinson
% L06_Q07

function[]=L06_Q07()

% This questions is about controlling a robot with 5 iterations. We will
% have a robot who is moving, given a starter vector, and will be updating
% his position as he moves, and printing it. We also will be tracking the
% signal of the robot, and the best signal is the greatest signal. When a
% greater signal is found, it will update that too.

% call all functions
[s,P] = get_input();
[x,v,Px,xb,Pb] = initialize_robot(s,P);

% create a counter
Iter = 0;
fprintf(['Iter %d: Curr vel ( %0.2f, %0.2f ), Curr pos ( %0.2f, %0.2f ), ' ...
    'Best pos ( %0.2f, %0.2f ), Curr signal %0.2f, Best signal %0.2f' ...
    , Iter, v(1,1), v(2,1), x(1,1), x(2,1), xb(1,1), xb(2,1), Px, Pb]);

[x,v,Px,xb,Pb] = initialize_robot(s,P);
v = update_velocity(v,xb,x);
x = update_position(x,v);
[xb,Pb] = update_best(Pb,Px,xb,x);

Iter = Iter+1;
fprintf(['Iter %d: Curr vel ( %0.2f, %0.2f ), Curr pos ( %0.2f, %0.2f ), ' ...
    'Best pos ( %0.2f, %0.2f ), Curr signal %0.2f, Best signal %0.2f' ...
    , Iter, v(1,1), v(2,1), x(1,1), x(2,1), xb(1,1), xb(2,1), Px, Pb]);

[x,v,Px,xb,Pb] = initialize_robot(s,P);
v = update_velocity(v,xb,x);
x = update_position(x,v);
[xb,Pb] = update_best(Pb,Px,xb,x);

Iter = Iter+1;
fprintf(['Iter %d: Curr vel ( %0.2f, %0.2f ), Curr pos ( %0.2f, %0.2f ), ' ...
    'Best pos ( %0.2f, %0.2f ), Curr signal %0.2f, Best signal %0.2f' ...
    , Iter, v(1,1), v(2,1), x(1,1), x(2,1), xb(1,1), xb(2,1), Px, Pb]);

[x,v,Px,xb,Pb] = initialize_robot(s,P);
v = update_velocity(v,xb,x);
x = update_position(x,v);
[xb,Pb] = update_best(Pb,Px,xb,x);

Iter = Iter+1;
fprintf(['Iter %d: Curr vel ( %0.2f, %0.2f ), Curr pos ( %0.2f, %0.2f ), ' ...
    'Best pos ( %0.2f, %0.2f ), Curr signal %0.2f, Best signal %0.2f' ...
    , Iter, v(1,1), v(2,1), x(1,1), x(2,1), xb(1,1), xb(2,1), Px, Pb]);

[x,v,Px,xb,Pb] = initialize_robot(s,P);
v = update_velocity(v,xb,x);
x = update_position(x,v);
[xb,Pb] = update_best(Pb,Px,xb,x);

Iter = Iter+1;
fprintf(['Iter %d: Curr vel ( %0.2f, %0.2f ), Curr pos ( %0.2f, %0.2f ), ' ...
    'Best pos ( %0.2f, %0.2f ), Curr signal %0.2f, Best signal %0.2f' ...
    , Iter, v(1,1), v(2,1), x(1,1), x(2,1), xb(1,1), xb(2,1), Px, Pb]);

[x,v,Px,xb,Pb] = initialize_robot(s,P);
v = update_velocity(v,xb,x);
x = update_position(x,v);
[xb,Pb] = update_best(Pb,Px,xb,x);

Iter = Iter+1;
fprintf(['Iter %d: Curr vel ( %0.2f, %0.2f ), Curr pos ( %0.2f, %0.2f ), ' ...
    'Best pos ( %0.2f, %0.2f ), Curr signal %0.2f, Best signal %0.2f' ...
    , Iter, v(1,1), v(2,1), x(1,1), x(2,1), xb(1,1), xb(2,1), Px, Pb]);

end

function[s,P] = get_input()
% The function get_input will gather the s and P for our robot
%   Inputs: 
%       
%   Outputs:
%       s,P       part of our strength signal function
%   Local Variables:
%       none
%   Begin script:

s = input('Enter s:');
P = input('Enter P:');

end

function[x,v,Px,xb,Pb] = initialize_robot(s,P)
% The function initialize_robot is gonna do a lot. It will take in s,P,
% create a random x and v, call another function to receive the signal,
% then initialize the best signals and return x,v,Px,xb,Pb
%   Inputs: 
%       s,P     part of the strength signal function
%   Outputs:
%       x       initial position in the form of a column vector
%       v       initial velocity in the form of a column vector
%       Px      strength of the signal equation
%       xb      best position
%       Pb      best signal
%   Local Variables:
%       x1,x2   initial position
%       v1,v2   initial velocity
%   Begin script:

x = rand( 2, 1 ) * ( -5 - 5 ) + -5 * ones( 2, 1 );

v = rand( 2, 1 ) * ( -0.05 - 0.05 ) + 0.05 * ones( 2, 1 );

Px = receive_signal(x,s,P);

% use logical operators to compare the signal and position
Pb = Px;
xb = x;


end

function[Px] = receive_signal(x,s,P)
% The function get_input will gather the s and P for our robot
%   Inputs: 
%       
%   Outputs:
%       s,P       part of our strength signal function
%   Local Variables:
%       n       random noise 
%       q       0.05*P
%       d       distance formula
%   Begin script:

%q = 0.05*P;
n = P*rand()*(0.05 - (-0.05)) + -0.05;
d = sqrt((x(1,1)-s(1,1))^2 + (x(2,1)-s(2,1))^2);

% note for later, i might need to dot the parenthases
Px = (P/(1 + (d)^2)) + n;

end

function[v] = update_velocity(v,xb,x)

r = rand( 2, 1 ) * ( 2 - 0 ) + 0 * ones( 2, 1 );
v = v + r.* (xb - x);

end

function[x] = update_position(x,v)
% The function get_input will gather the s and P for our robot
%   Inputs: 
%       
%   Outputs:
%       s,P       part of our strength signal function
%   Local Variables:
%       n       random noise 
%       q       0.05*P
%   Begin script:

x = x + v;

end

function[xb,Pb] = update_best(Pb,Px,xb,x)
% For update_best, we want to base the logic off 
% of the Pb value logic, not the x value. Aka, when we find a better Pb, 
% we also update our position too
% 
%   Inputs: 
%       
%   Outputs:
%       s,P       part of our strength signal function
%   Local Variables:
%       n       random noise 
%       q       0.05*P
%   Begin script:

Pb = Pb*(Px<= Pb)+ Px*(Px>Pb);
xb = xb*(Px<= Pb)+ x*(P>Pb);

end
