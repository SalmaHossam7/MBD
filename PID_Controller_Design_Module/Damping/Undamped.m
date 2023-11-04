% Undamped Example
Zeta = 0;
wn = 2;

% Transfer Function
num = [0 0 wn^2];
den = [1 2*Zeta*wn wn^2];
G = tf(num,den); 

step(G);
ylim([0 4]);
xlim([0 20]);