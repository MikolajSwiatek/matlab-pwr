function [Y] = down_sampling2(X, num)
    
    [n, m] = size(X);
    k = 1;
    l = 1;
    
    for i = 1:num:n
        for j = 1:num:m
            Y(k, l) = X(i, j);
            l = l +1;
        end
        k = k + 1;
        l = 1;
     end
