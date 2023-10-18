clear;
clc;
%% Numeric Types

intVar = 75; % Define and initialize intVar with an integer value
doubleVar = 3.14; % Define and initialize doubleVar with a double-precision floating-point value
% Display the data type of intVar and doubleVar
disp(class(intVar));
disp(class(doubleVar));

%% Creating Numeric Arrays

evenNumbers = 2:2:10  % Create a row vector containing the first 5 even numbers
primeNumbers = [2; 3; 5; 7; 11] % Create a column vector containing the first 5 prime numbers

%% Specialized Matrix Functions

identityMatrix = eye(3) % Create a 3x3 identity matrix
magicSquare = magic(2) % Create a 2x2 magic square

%% Matrix Concatenation
combinedVector = horzcat(evenNumbers, primeNumbers')
combinedMatrix = vertcat(identityMatrix, magicSquare)



