% Prompt user for inputs
f = input('Enter the function f(x, y) as an anonymous function: ');
x0 = input('Enter the initial x-value: ');
y0 = input('Enter the initial y-value: ');
h = input('Enter the step size: ');
xn = input('Enter the final x-value: ');

% Calculate the number of steps
n = round((xn - x0) / h);

% Initialize arrays to store x and y values
x = zeros(1, n+1);
y = zeros(1, n+1);
x(1) = x0;
y(1) = y0;

% Modified Euler's method loop
for i = 1:n
    % Predictor step
    y_predict = y(i) + h * f(x(i), y(i));
    % Corrector step
    y(i+1) = y(i) + (h/2) * (f(x(i), y(i)) + f(x(i) + h, y_predict));
    % Update x
    x(i+1) = x(i) + h;
end

% Display results
disp(table(x', y', 'VariableNames', {'x', 'y'}));

% Plot the solution
plot(x, y, '-o', 'LineWidth', 1.5);
xlabel('x');
ylabel('y');
title('Solution of ODE using Modified Euler Method');
grid on;
