test_data = load("test_data.txt")
    
x = test_data(:, 1)
x = [ones(length(x), 1) x]
y = test_data(:, 2)

figure
hold on
plot(x(:, 2), y, 'bo')
title('test data')

%goal find a line of best fit for data set
%so we need a (1) slope and (2) y-int

params = [0; 0] % our intital guess
learning_rate = .01 % how fast the model will predict
iters = 500 % how many iterations we will run

[params, cost_history] = gradient_func(x, y, params, learning_rate, iters)

plot(min(x(:,2)):max(x(:,2)), params(1) + params(2) * (min(x(:,2)):max(x(:,2))))
%plot(cost_history, 1:iters)

output = params(1) + params(2) * 120;
disp(output);
