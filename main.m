I = imread('Lena_1.tif'); % Przeczytanie obrazu wej?ciowego
% i zapisnie go w tablicy I
J = histeq(I); % Obliczenie obrazu wyj?ciowego J
% z wykorzystaniem algorytmu wyrównania
% histogramu
subplot(2,2,1); % Górny lewy rysunek
imshow(I); % Wy?wietlenie obrazu wej?ciowego
subplot(2,2,2); % Górny prawy rysunek
imhist(I); % Wy?wietlenie histogramu obrazu wej?ciowego
subplot(2,2,3); % Dolny lewy rysunek
imshow(J); % Wy?wietlenie obrazu wyj?ciowego
subplot(2,2,4); % Dolny prawy rysunek
imhist(J); % Wy?wietlenie histogramu obrazu wej?ciowego
imwrite(J, 'Wynik.jpg') % Zapisnie obrazu wyj?ciowego do pliku
% w postaci skompresowanej