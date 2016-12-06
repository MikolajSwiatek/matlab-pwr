numberTest = 10;
result = zeros(numberTest, 3);

for i = 1:numberTest
    [mse, psnr, errorValue] = testClass(i);
    result(i, 1) = mse;
    result(i, 2) = psnr;
    result(i, 3) = errorValue;
end

x = (1: 1: numberTest);

figure;
subplot(1, 3, 1);
plot(x, result(:, 1), 'LineWidth', 1, 'Color', 'red');
title('MSE');

subplot(1, 3, 2);
plot(x, result(:, 2), 'LineWidth', 1, 'Color', 'red');
title('PSNR');

subplot(1, 3, 3);
plot(x, result(:, 3), 'LineWidth', 1, 'Color', 'red');
title('ErrorValue');