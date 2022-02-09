% FEB9CLASS  Shows in-class Matlab demo on 9 February.
% Cut-and-paste commands, or run this as an m-file.

%%%% demonstration of LU factorization to solve linear systems %%%%

A = [3 1 0; -2 -2 1; 1 1 4]
b = [1 2 3]'

% basic way to solve linear system  A x = b
format rat
x = A \ b

% find L and U factors of A; this is elimination internally
[L,U] = lu(A)

% check det(A) against product of diagonal entries of U
det(A)

% redo linear system solve, this time as three step process
% step 1:  A = LU is already done
% step 2:  solve Lc=b by forward substitution
c = L \ b % this *is* forward substitution internally

% step 3:  solve Ux=c by back substitution
x = U \ c % this *is* back substitution internally

% again, on one line; this shows how "A \ b" is
% built from simpler procedures
[L,U] = lu(A); x = U \ (L \ b)


%%%% demonstration of O(n^3) work needed to solve linear systems %%%%

% create a linear system  A x = b  with 1000 equations and 1000 unknowns
n = 1000; A = randn(n,n); b = randn(n,1);

size(A)

format
A(1:5,1:5)


tic, x = A \ b; toc
Elapsed time is 0.016305 seconds.
tic, x = A \ b; toc
Elapsed time is 0.014559 seconds.
tic, x = A \ b; toc
Elapsed time is 0.012362 seconds.
n = 2000; A = randn(n,n); b = randn(n,1);
tic, x = A \ b; toc
Elapsed time is 0.067127 seconds.
n = 8000; A = randn(n,n); b = randn(n,1);
tic, x = A \ b; toc
Elapsed time is 2.324008 seconds.
tic, x = A \ b; toc
Elapsed time is 2.163769 seconds.
tic, x = A \ b; toc
Elapsed time is 1.944335 seconds.
tic, x = A \ b; toc
Elapsed time is 1.680970 seconds.
tic, x = A \ b; toc
Elapsed time is 1.896305 seconds.
tic, x = A \ b; toc
Elapsed time is 1.690509 seconds.
tic, x = A \ b; toc
Elapsed time is 1.675983 seconds.
n = 2000; A = randn(n,n); b = randn(n,1);
tic, x = A \ b; toc
Elapsed time is 0.061097 seconds.
n = 4000; A = randn(n,n); b = randn(n,1);
tic, x = A \ b; toc
Elapsed time is 0.348708 seconds.
n = 8000; A = randn(n,n); b = randn(n,1);
tic, x = A \ b; toc
Elapsed time is 1.827572 seconds.
1.82/0.35

ans =

5.2000

n = 16000; A = randn(n,n); b = randn(n,1);
tic, x = A \ b; toc
Elapsed time is 10.040930 seconds.
10/1.8

ans =

5.5556

n = 32000; A = randn(n,n); b = randn(n,1);
Error using randn
Requested 32000x32000 (7.6GB) array exceeds maximum array size preference (5.0GB). This might cause MATLAB to
become unresponsive.

Related documentation
n = 8000; A = randn(n,n); b = randn(n,1);
[L,U] =lu(A);
L(1:5,1:5)

ans =

-0.4810 -0.0986 -0.2580 -0.0010 0.3958
-0.2390 -0.0174 0.3546 0.1268 0.1464
-0.0008 0.1732 -0.0745 -0.0516 0.2264
0.2515 0.2923 -0.3920 -0.3786 0.0547
0.0012 0.0036 -0.0427 -0.1534 0.0378

[L,U,P] = lu(A);
L(1:5,1:5)

ans =

1.0000 0 0 0 0
0.2741 1.0000 0 0 0
-0.3056 0.0751 1.0000 0 0
0.5481 0.1323 0.2923 1.0000 0
-0.4097 -0.0316 -0.1105 0.1635 1.0000
