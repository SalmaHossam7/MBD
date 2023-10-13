% 1 - Cell array
cellArray = {'Salma',23,@(x)x^3};
name = cellArray{1}
res = cellArray{3}(4)