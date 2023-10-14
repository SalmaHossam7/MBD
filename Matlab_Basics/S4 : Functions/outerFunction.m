%Nested Functions
% Main function called Outer Function
function [Summation] = outerFunction (num1, num2)
    Summation = innerFunction (num1, num2);
    disp(Summation)
end
% Sub Function
function Sum = innerFunction (num1, num2)
    Sum = num1 + num2;
end