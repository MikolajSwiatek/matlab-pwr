fileName = 'Cells.tif';
level = 0.5;

imageCell = imread(fileName);
I = im2double(imageCell);

figure('Name', 'Binary Images');
subplot(1,2,1); 
imshow(I);

[n, m] = size(I);
K = logical(zeros(n, m));

for i = 1:n
    for j = 1:m
        point = I(i, j);
        if point > level
            K(i, j) = 1;
        end
    end
end

subplot(1,2,2); 
imshow(K);

binFileName = 'Cells_bin.tif';
imwrite(K, binFileName, 'tif')
