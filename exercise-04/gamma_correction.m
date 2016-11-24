function[Y] = gamma_correction(X, gamma_r, gamma_g, gamma_b, C)
    imgDouble = im2double(X);
    
    R = imgDouble(:, :, 1);
    G = imgDouble(:, :, 2);
    B = imgDouble(:, :, 3);
	
	R = arrayfun(@(x) C*x^gamma_r, R);
	G = arrayfun(@(x) C*x^gamma_g, G);
	B = arrayfun(@(x) C*x^gamma_b, B);
	
	Y(:, :, 1) = R;
	Y(:, :, 2) = G;
	Y(:, :, 3) = B;
	
	Y = im2uint8(Y);
