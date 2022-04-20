function plot2d(H)
% PLOT2D  Plot things like the "house" matrix on page 405.
% Example:
%   >> H = [-6 -6 -7 0 7 6 6 -3 -3 0 0 -6; -7 2 1 8 1 2 -7 -7 -2 -2 -7 -7]
%   >> plot2d(H)
%   >> A = [0 1; 1 0];   % -90 degree rotation
%   >> plot2d(A*H)
%   >> A = [cos(pi/5) -sin(pi/5); sin(pi/5) cos(pi/5)];   % +36 degree rotation
%   >> plot2d(A*H)

x = H(1,:)';  % first row of H, as column
y = H(2,:)';  % 2nd row
plot(x,y,'o',x,y,'-')
axis([-10 10 -10 10])
axis('equal'), axis off