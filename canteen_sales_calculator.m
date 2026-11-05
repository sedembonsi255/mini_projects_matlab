matlab
% Define prices for each food combination and egg
bg_price = 2; % Beans & Gari
rp_price = 2; % Ripe Plantain
pr_price = 2; % Plain Rice
egg_price = 1.2; % Egg

% Average number of students for each day
students = [500, 510, 480, 500, 570];

% Combinations used each day
combinations = [
    1, 1, 0; % Monday: BG, RP, PR
    1, 1, 0; % Tuesday: BG, RP, PR
    25, 2, 1.5; % Wednesday: BG, RP, PR
    15, 2, 0; % Thursday: BG, RP, PR
    1, 1, 2; % Friday: BG, RP, PR
];

% Discount rate
discount_rate = 5.5 / 100;

% Initialize total sales
total_sales = 0;

% Calculate sales for each day
for i = 1:5
    daily_sales = students(i) * (bg_price * combinations(i, 1) + ...
                                rp_price * combinations(i, 2) + ...
                                pr_price * combinations(i, 3) + ...
                                egg_price);
    
    % Discount Applied
    discounted_sales = daily_sales * (1 - discount_rate);
    
    % Format to 2 decimal places
    formatted_sales = sprintf('%.2f', discounted_sales);
    
    % Display daily sales
    fprintf("'%s: %s\n', ['Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday']{i}, formatted_sales");
    
    % Accumulate total sales
    total_sales = total_sales + discounted_sales;
end

% Display total sales
formatted_total_sales = sprintf('%.2f', total_sales);
fprintf('Total Sales (GHC): %s\n', formatted_total_sales);
