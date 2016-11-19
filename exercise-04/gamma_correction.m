function[Y] = gamma_correction(X, gamma_r, gamma_g, gamma_b)
    imgDouble = im2double(X);
    R = imgDouble(:, :, 1);
    G = imgDouble(:, :, 2);
    B = imgDouble(:, :, 3);
    
    