function elimmovie
% ELIMMOVIE  Show elimination steps, and elimination matrices,
% on a 4x4 matrix.

A = [ -2  -1  -1  -2;
      -6   0   0  -8;
       4   5   3   0;
       0   3   7   4];

% notes on generating A:  I built simple L and U matrices
% with random small-integer entries as follows:
%   >> L = tril(ceil(6*rand(4,4) - 3),-1) + eye(4)
%   >> U = triu(ceil(6*rand(4,4) - 3))
% and then I multiplied
%   >> A = L*U

dispmat('A',A)

I = eye(4,4);
E21 = I;  E21(2,1) = - A(2,1) / A(1,1);
dispmat('E21',E21);
A = E21 * A;
dispmat('E21 A',A);

E31 = I;  E31(3,1) = - A(3,1) / A(1,1);
dispmat('E31',E31);
A = E31 * A;
dispmat('E31 E21 A',A);

FIXME
E41 = I;  E31(4,1) = - A(4,1) / A(1,1);
E32 = I;  E31(3,2) = - A(3,2) / A(1,1);


    function dispmat(name,B)
        fprintf('%s =\n',name)
        format rat
        disp(B)
        format
    endfunction
endfunction
