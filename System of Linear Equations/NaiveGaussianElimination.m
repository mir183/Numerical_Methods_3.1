A = input('Enter the coefficient matrix A: ');
b = input('Enter the constant vector b: ');

[m, n] = size(A);

augMat = [A, b];

% Forward Elimination
for k = 1:n-1
    for i = k+1:n
        if augMat(k, k) == 0
            error('Zero pivot encountered. Naive Gaussian Elimination cannot proceed.');
        end
        factor = augMat(i, k) / augMat(k, k);
        augMat(i, k:n+1) = augMat(i, k:n+1) - factor * augMat(k, k:n+1);
    end
end

% Back Substitution
x = zeros(n, 1);
x(n) = augMat(n, end) / augMat(n, n);
for i = n-1:-1:1
    x(i) = (augMat(i, end) - augMat(i, i+1:n) * x(i+1:n)) / augMat(i, i);
end

disp('Solution vector x:');
disp(x);
