file = 'Lena_gray_index.tif';
alfa = 0.65;

[I, map] = imread(file);
[m,n] = size(map);
map_1 = map;

for i = 1:n
    for j = 1:m
        point = I(i, j);
        map_1(point, 3) = map(point, 3) * alfa;
    end
end

figure('Name','Before');
subplot(1,1,1);
imshow(I, map);

figure('Name','After');
subplot(1,1,1);
imshow(I, map_1);