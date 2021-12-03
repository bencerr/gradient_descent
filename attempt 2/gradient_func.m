function [params, cost_history] = gradient_func(x, y, params, learning_rate, iters)
    y_length = length(y)
    cost_history = zeros(iters, 1)

    for iter = 1:iters
        h = (x * params - y)'

        params(1) = params(1) - learning_rate * (1/y_length) * h * x(:,1)

        params(2) = params(2) - learning_rate * (1/y_length) * h * x(:, 2)

        cost_history(iter) = cost_func(x, y, params)
    end
end     