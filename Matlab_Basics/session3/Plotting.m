% Ploting Sine wave
x = 0:0.01:2*pi;
y = sin(x);
hold on
grid on
plot(x, y, 'g-');
title('Sine Wave Plot');
legend('sin wave');
xlabel('x');
ylabel('y');
