% FEB16CLASS  Compute currents in a resistor network using
% Kirchoff's laws.

% set 5 resistor values
R = [100 100 100 100 100];
%R = [100 10 10 10 100];  % alternate settings (i3 negative)

% the resistor network gives a 6 x 6 matrix
% first 3 eqns are from current splitting (Kirchoff's 1st law)
% next 3 eqns from balance of voltage drops (Kirchoff's 2nd law)
A = [    1    -1    -1     0     0     0;
         0     1     0    -1    -1     0;
         0     0     1     1     0    -1;
         0   R(1)    0     0   R(4)    0;
         0   R(1) -R(2)  R(3)    0     0;
         0     0     0  -R(3)  R(4) -R(5)]
det(A)  % determinant must be nonzero for solvability

% set voltage drops
V0 = 12;   % voltage of battery
b = [0 0 0 V0 0 0]';

% solve linear system  A x = b  for the currents
% x = [i0 i1 i2 i3 i4 i5]'
x = A \ b

% effective resistance of whole network
R0 = V0 / x(1)
