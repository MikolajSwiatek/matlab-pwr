function [mse, psnr, errorValue] = testClass(alpha)
fileName = 'Lena_gray_8.tif';
img = imread(fileName);
set_alpha(alpha);

imgDouble = double(img);
imgDouble = arrayfun(@(x) x - 128, imgDouble);

B = blkproc(imgDouble, [8, 8], 'dct2');
Q = blkproc(B, [8, 8], 'quantization(B)');
D = blkproc(Q, [8, 8], 'dequantization(B)');
E = blkproc(D, [8, 8], 'idct2');

E = arrayfun(@(x) (x + 128)/255, E);
final = im2uint8(E);

errorValue = nnz(D)/(256*256);
[mse, psnr] = mse_error(img, final);