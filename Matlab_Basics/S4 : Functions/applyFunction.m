%Task5: Function Handles
function result = applyFunction(funcHandle, vector)
    result = arrayfun(funcHandle, vector);
end
