clc;

data = xlsread('taxdata.xlsx');

min_tax = min(data(:,2));
avg_tax = mean(data(:,2));
max_tax = max(data(:,2));

% Plot the bar graph
figure;
bar([min_tax, avg_tax, max_tax]);
title('Labor Tax Amounts');
ylabel('Tax Amount');
xticklabels({'Minimum', 'Average', 'Maximum'});
grid on;


x = data(:,1); % Number of tax payments
y = data(:,2); % Labor tax amounts


orders = 1:5; % Polynomial orders
rmse = zeros(size(orders));

figure;
for i = 1:length(orders)
    subplot(2,3,i);
    p = polyfit(x, y, orders(i));
    y_fit = polyval(p, x);
    plot(x, y, 'o', x, y_fit, '-');
    title(['Order ', num2str(orders(i)), ' Fit']);
    xlabel('Number of Tax Payments');
    ylabel('Labor Tax Amount');
    grid on;
    rmse(i) = sqrt(mean((y - y_fit).^2));
end

% Plot RMSE vs. Polynomial Order
subplot(2,3,6);
plot(orders, rmse, '*-');
title('RMSE vs. Polynomial Order');
xlabel('Polynomial Order');
ylabel('RMSE');
grid on;