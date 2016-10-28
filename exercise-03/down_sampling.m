function [Y] = down_sampling(X)
    
    [n, m ] = size(X);
    
    k = 1;
    l = 1;
    
    for i = 1:n
       if (i/2 - floor(i/2))~=0 
            for j = 1:m
                if (j/2 - floor(j/2))~=0
                   Y(k, l) = X(i, j);
                   l = l+1;
                end
            end
         k = k+1;
         l = 1;
        end
     end
