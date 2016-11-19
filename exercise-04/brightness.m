function[Y] = brightness(X, b)
    Y = arrayfun(@(x) x + b, X);