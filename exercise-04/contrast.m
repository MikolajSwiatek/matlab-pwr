function[Y] = contrast(X, a)
    Y = arrayfun(@(x) a*x + (1 - a)/2, X);