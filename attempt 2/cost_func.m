%our error function that we want to optimize, calcs how far off are
%predictions are

function cost = cost_func(x, y, params)
    y_length = length(y)
    cost = (x * params - y)' * (x * params - y) ...
    / (2 * y_length)
end