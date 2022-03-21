% MAR21  Construct, plot, and solve 4 curve-fitting problems.

% problem 1: quadratic through three points gives 3x3 matrix
x = [0.0, 1.0, 3.0];
y = [1.0, -1.0, 2.0];
A = [ones(3,1) x' x'.^2];  b = y';
format rat
v = A \ b
figure(1)
xx = -0.5:.01:3.3;
plot(x,y,'k.','markersize',24)
hold on,  plot([xx(1),xx(end)],[0.0,0.0],'k--')
plot([0.0,0.0],[-1.5,3.5],'k--')
plot(xx, v(1) + v(2) * xx + v(3) * xx.^2, 'k')
hold off,  axis off
print -dpdf mar21fig1.pdf

% problem 2: line through four points gives 4x2 matrix
x = [0.0, 1.0, 1.5, 3.0];
y = [1.0, -1.0, 0.5, 2.0];
A = [ones(4,1) x'];  b = y';
v = (A' * A) \ (A' * b)
figure(2)
plot(x,y,'k.','markersize',24)
hold on,  plot([xx(1),xx(end)],[0.0,0.0],'k--')
plot([0.0,0.0],[-1.5,3.5],'k--')
plot(xx, v(1) + v(2) * xx, 'k')
hold off,  axis off
print -dpdf mar21fig2.pdf

% problem 3: quadratic through six points gives 6x3 matrix
x = [0.0, 0.5, 1.0, 1.5, 2.5, 3.0];
y = [-1.0, 0.0, 2.0, 2.5, 3.0, 1.0];
A = [ones(6,1) x' x'.^2];  b = y';
format
v = (A' * A) \ (A' * b)
figure(3)
plot(x,y,'k.','markersize',24)
hold on,  plot([xx(1),xx(end)],[0.0,0.0],'k--')
plot([0.0,0.0],[-1.5,3.5],'k--')
plot(xx, v(1) + v(2) * xx + v(3) * xx.^2, 'k')
hold off,  axis off
print -dpdf mar21fig3.pdf

% problem 4: trigonometric through six points gives 6x3 matrix
% same data
A = [ones(6,1) sin(x') cos(x')];  b = y';
v = (A' * A) \ (A' * b)
figure(4)
plot(x,y,'k.','markersize',24)
hold on,  plot([xx(1),xx(end)],[0.0,0.0],'k--')
plot([0.0,0.0],[-1.5,3.5],'k--')
plot(xx, v(1) + v(2) * sin(xx) + v(3) * cos(xx), 'k')
hold off,  axis off
print -dpdf mar21fig4.pdf
