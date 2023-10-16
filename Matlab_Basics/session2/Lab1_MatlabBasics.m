clear;
clc;
%% part 1
matrixA = [1 2 3; 4 5 6;7 8 9];
matrixB = [10 11 12; 13 14 15; 16 17 18];
matrixSum = matrixA + matrixB

%% part 2
rowVector = 1:5;
columnVector = (6:10)';
horizontalConcat = horzcat(rowVector, columnVector')

%% part3
originalMatrix = [1 3; 5 7];
repeatedMatrix = repmat(originalMatrix, 2)

%% part 4
identityMatrix = eye(3);
matrixProduct = identityMatrix * matrixA

