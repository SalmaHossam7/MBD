% Task2-1: calculate the cost of a trip based on the mode of transportation
mode = input('Enter the mode of transportation (car, train, bus, or airplane): ', 's'); %specify the input format: string
distance = input('Enter the distance in miles: ');

% cost per mile for each mode
carCost = 0.5;
trainCost = 0.3;
busCost = 0.2;
airplaneCost = 0.9;

% Switch statement to calculate the cost
switch mode
    case 'car'
        cost = carCost * distance ;
    case 'train'
        cost = trainCost * distance ;
    case 'bus'
        cost = busCost * distance ;
    case 'airplane' 
        cost = airplaneCost * distance ;
    otherwise
        disp('Enter a valid mode');
        return;
end

fprintf('The total cost of the trip is: %.2f\n', cost);

