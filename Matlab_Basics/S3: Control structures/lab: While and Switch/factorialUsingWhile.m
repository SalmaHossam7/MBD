% Allow the user to enter the input number 
number = input('Enter a number: '); 
% Factorial of -ve number is not defined
if number < 0
    disp('Factorial cannot be calculated for negative numbers.')
else
    factorial = 1;
    while number > 0
        factorial = factorial * number;
        number = number - 1;
    end
    %fprintf('The factorial of this number is : %d\n',factorial)
    disp(['The factorial of this number is : ' num2str(factorial)]); %use num2str function to disply the factorial
end