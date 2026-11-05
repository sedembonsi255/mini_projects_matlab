disc_val = 5.5/100;
egg_price = 1.2;
%combinations
%BG_Beans_And_Gari = [2 3 2.5 1.5 2];
%RP_Ripe_Plantain = [1 2 2 2 2];
%PR_Plain_Rice = [2 2 1.5 1.5 2];
%E_Egg = [1.2]
%Discount Percentange = 5.5%
%AVS_Average_number_of_students= [500; 510; 480; 500; 570]


calculateFoodPrice([2 3 2.5 1.5 2],[1 2 2 2 2],[2 2 1.5 1.5 2], 1.2, 94.5/100, [500; 510; 480; 500; 570]);
function a = calculateFoodPrice(BG,RP,PR,E,AV,AVS)
 a =  (((BG + RP + PR + E)*AV).* AVS);
fprintf('Monday: %.2f\n',a(1,1))
fprintf('Tuesday: %.2f\n',a(2,2))
fprintf('Wednesday: %.2f\n',a(3,3))
fprintf('Thursday: %.2f\n',a(4,4))
fprintf('Friday: %.2f\n',a(5,5))

fprintf('Total Sales(GHC): %.2f',a(1,1)+ a(2,2)+ a(3,3)+ a(4,4)+ a(5,5))

%plots points on graph
xvalues = ["Monday","Tuesday","Wednesday","Thursday","Friday"];
yvalues = [a(1,1), a(2,2), a(3,3), a(4,4), a(5,5)];
bar(yvalues);
%specify the x axis ticks and posititions.
xticks(1:length(xvalues));
xticklabels(xvalues);
end













 

