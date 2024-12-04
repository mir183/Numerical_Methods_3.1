A = input('Enter the coefficient matrix A: ');
b = input('Enter the constant vector b: ');
[m, n] = size(A);

x = zeros(m, 1);
for i = 1:m
    T = A;
    T(:, i) = b;
    x(i) = det(T) / det(A);
end

disp('Solution using Cramer''s Rule:');
disp(x);
