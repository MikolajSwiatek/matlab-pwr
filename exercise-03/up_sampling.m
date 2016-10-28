function [Y] = up_sampling(X)
    
    [n, m ] = size(X);
    
   
   for i = 1:n
     W(2*i-1,:) = X(i,:);
     W(2*i,:) = X(i,:);
   end
   for j = 1:m
     Y(:,2*j-1) = W(:,j);
     Y(:,2*j) = W(:,j);
   end
   
