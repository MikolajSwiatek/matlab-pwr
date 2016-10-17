X = imread('Lena_2.tif');
subplot(2,2,1); 
imshow(X);
J = histeq(I);
subplot(2,2,2); 
imhist(N);
[n, m] = size(X);
B = zeros(n, m, 'uint8');
for i = 1:n
    for j = 1:m
        B(i,j) = 255 - X(i,j);
    end
end
N = histeq(B);
subplot(2,2,3);
imshow(B); 
subplot(2,2,4);
imhist(N);