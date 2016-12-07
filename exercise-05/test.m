numberTest = 10;
mses = zeros(1, numberTest, 'double');
psnrs = zeros(1, numberTest, 'double');
errorValues = zeros(1, numberTest, 'double');

for i = 1:numberTest
    [mse, psnr, errorValue] = testClass(i);
    mses(i) = mse;
    psnrs(i) = psnr;
    errorValues(i) = errorValue;
end

x = (1: 1: numberTest);

figure;
subplot(1, 3, 1);
plot(x, mses, 'LineWidth', 1, 'Color', 'red');
title('MSE');

subplot(1, 3, 2);
plot(x, psnrs, 'LineWidth', 1, 'Color', 'red');
title('PSNR');

subplot(1, 3, 3);
plot(x, errorValues, 'LineWidth', 1, 'Color', 'red');
title('ErrorValue');