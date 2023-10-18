% https://www.mathworks.com/help/matlab/creating_plots/specify-plot-colors.html
% Task2-2: Color code
colorCode = input('Enter a color Code: ','s');

switch colorCode
    case 'm'
        colorName = 'Magenta';
    case 'r'
        colorName = 'Red';
    case 'y'
        colorName = 'Yellow';
    case 'k'
        colorName = 'Black';
    case 'c'
        colorName = 'Cyan';
    otherwise 
        disp('Unknown color Code');
        return;
end
disp (['The color name is : ', colorName]);