test_data = load("test_data2.txt")

x = test_data(:, 1)
x = [ones(length(x), 1) x]
y = test_data(:, 2)

figure
plot(x(:, 2), y, 'bo')
title('test data2')

params = [0; 0] % our intital guess
learning_rate = .1 % how fast the model will predict
iters = 300 % how many iterations we will run

[params, cost_history] = gradient_func(x, y, params, learning_rate, iters)

figure
plot(min(x(:,2)):max(x(:,2)), params(1) + params(2) * (min(x(:,2)):max(x(:,2))))
% hold on
plot(cost_history, 1:iters)

output = params(1) + params(2) * 120;

%disp(output);
