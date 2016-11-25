function[Y] = prepare_filter(X)
    sumValues = sum(X(:));
    
	if sumValues == 0
		Y = X;
	else
		Y = X/sumValues;
	end
