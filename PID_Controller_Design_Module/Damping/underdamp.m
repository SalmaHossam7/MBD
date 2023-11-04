% Underdamped Example
Zeta = 0.3;
wn = 2;

num = [0 0 wn^2];
den = [1 2*Zeta*wn wn^2];

G = tf(num,den); 

step(G);
ylim([0 2]);
xlim([0 10]);