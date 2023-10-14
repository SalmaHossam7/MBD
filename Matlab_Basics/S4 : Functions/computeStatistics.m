%Task3: Function with Multiple Outputs
function [Mean, Sdeviation] = computeStatistics(inputVector)
    Mean = mean(inputVector);
    Sdeviation = std(inputVector);
    fprintf('Mean Value is: %f \n', Mean);
    fprintf('STD Value is: %f \n', Sdeviation);

end