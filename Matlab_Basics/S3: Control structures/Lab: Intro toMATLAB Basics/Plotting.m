%Task6: Ploting Sine wave

x = 0:0.02:2*pi; %values from 0 to 360 with a step size of 0.02
y = sin(x); %Calc coresponding y values using sin function
hold on
grid on
plot(x, y, 'c-');
title('Sine Wave Plot'); % set title
legend('sin wave'); 
xlabel('x');
ylabel('y');
