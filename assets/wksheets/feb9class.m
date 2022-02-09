% FEB9CLASS  Shows in-class Matlab demo on 9 February.
% Cut-and-paste commands, or run this as an m-file.

%%%% demonstration of LU factorization to solve linear systems %%%%

% an example, for which Matlab's built-in LU decomposition does
% not do row swaps in fact
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
n = 1000
A = randn(n,n); b = randn(n,1);

% show number of rows and columns in A
size(A)

% show upper-left 5x5 block of A
format
A(1:5,1:5)

% timing for solving linear system of this size
% (three times to suggest imperfect repeatability)
tic, x = A \ b; toc
tic, x = A \ b; toc
tic, x = A \ b; toc

% timing for system with n -->  2n
n = 2000
A = randn(n,n); b = randn(n,1);
tic, x = A \ b; toc

% timing for system with n -->  2n
n = 4000
A = randn(n,n); b = randn(n,1);
tic, x = A \ b; toc

% timing for system with n -->  2n
n = 8000
A = randn(n,n); b = randn(n,1);
tic, x = A \ b; toc

% conclusion: timing is clearly worse than O(n^2),
%             though not clear it is O(n^3)

% since built-in LU factorization uses row swaps,
% get L, U factorization this way
[L,U,P] = lu(A);
L(1:5,1:5)         % upper-left block of L
