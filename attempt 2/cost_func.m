function cost = cost_func(x, y, params)
    y_length = length(y)
    cost = (x * params - y)' * (x * params - y) / (2 * y_length)
end