% simple pendulum project

% system parameters
l = 1 ;
g = 9.81;
theta0 = 45;
% interfacing with simulink
model = ("simplePendulum.slx");
ValueOfLength = 1:1:5;
for i = 1 : numel(ValueOfLength) % number of elements in ValueOfLength
    l = ValueOfLength(i);
    res = sim(model); % storing the simulation in variable
    % Ploting angular displacement over time
    figure(1);
    plot(res.logsout.get("Theta").Values);
    hold on
    xlabel('Time(Seconds)');
    ylabel('Theta');
    title("Angular Displacement over Time");
    legendLabels1{i} = "L = " + num2str(l);
    legend(legendLabels1);
    % Ploting angular velocity over time
    figure(2);
    plot(res.logsout.get("ThetaDot").Values);
    hold on
    xlabel('Time(Seconds)');
    ylabel('Theta Dot');
    title("Angular Velocity over Time");
    legendLabels2{i} = "L = " + num2str(l);
    legend(legendLabels2);
    disp("Simulation at Length = " + num2str(l) + " is completed");
end
