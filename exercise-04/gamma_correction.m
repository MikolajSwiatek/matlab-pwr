function[Y] = gamma_correction(X, gamma_r, gamma_g, gamma_b, C)
    Y = im2double(X);
    
    Y(:, :, 1) = arrayfun(@(x) C*x^gamma_r, Y(:, :, 1));
    Y(:, :, 2) = arrayfun(@(x) C*x^gamma_g, Y(:, :, 2));
    Y(:, :, 3) = arrayfun(@(x) C*x^gamma_b, Y(:, :, 3));
	
    Y = im2uint8(Y);