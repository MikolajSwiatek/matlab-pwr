function [Y] = up_sampling2(X, num)
    [n, m] = size(X);
    n = n * num;
    m = m * num;
    
    Y = zeros(n, m);
    
    %{
    for i = 1:num:n
        for j = 1:num:m
            for iS = 0:num-1
                for jS = 0:num-1
                    Y(i+iS, j+jS) = X(ceil(i/num), ceil(j/num));
                end
            end
        end
    end
    %}
    
    for i = 1:n
        for j = 1:m
            Y(i, j) = X(max(1, floor(i/num)), max(1, floor(j/num)));
        end
    end