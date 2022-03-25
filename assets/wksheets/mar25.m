% MAR25  Demo of forming the normal equations in order to fit
%        a quadratic to the 6 points.

% the data
x = [0 0.5 1 1.5 2.5 3]';
y = [-1 0 2 2.5 3 1]';

% plot the data
plot(x,y,'o')
axis([-1 4 -2 4])

% form the overdetermined system: we want to solve  A v = b
A = [ones(6,1) x x.^2]         % 6 x 3 matrix
b = y                          % 6 x 1 column vector

% solve the normal equations:  (A' * A) v = A' * b
v = (A' * A) \ (A' * b)

% plot the resulting quadratic polynomial  p(x) = v1 + v2 x + v3 x^2
hold on
xx = -1:0.01:4;                             % fine grid for plotting
plot(xx,v(1) + v(2)*xx + v(3)*xx.^2,'k')

% alternative way to find v is to know that Matlab's
% backslash command *defaults* to solving the least-squares
% (normal equations) problem:
v = A \ b