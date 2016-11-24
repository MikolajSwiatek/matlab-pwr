function [mse, psnr] = mse_error(A, B)

[n, m ] = size(A)

A1 = double(A);
B1 = double(B);

mse = sum(sum((A1 - B1).*(A1 - B1)))/(n*n)

psnr = 20*log10(255/sqrt(mse))

