first_score = str2double(input("Enter what you got for Algebra:", "s"));
second_score = str2double(input("Enter what you got for Applied Electricity:", "s"));
third_score = str2double(input("Enter what you got for Environmental Studies:", "s"));
fourth_score = str2double(input("Enter what you got for Basic Mechanics:", 's'));
fifth_score = str2double(input("Enter what you got for Engineering Technology:", "s"));
sixth_score = str2double(input("Enter what you got for Technical Drawing:", 's'));
seventh_score = str2double(input("Enter what you got for Communication Skills (I):" , "s"));
c_w_a = (first_score*4 + second_score*3 + third_score*2 + fourth_score*3 + fifth_score*2 + sixth_score*2 + seventh_score*2) /18;
if any(isnan([first_score, second_score, third_score, fourth_score, fifth_score, sixth_score, seventh_score]))
    disp("input unacceptable, Please enter a numeral.")
else
    disp(["Your Cumulative Weighted Average is:" num2str(c_w_a)])
end
