%create new model
new_system('P_ControlerModel');
open_system('P_ControlerModel');

% Add blocks
add_block('simulink/Sources/Step', 'P_ControlerModel/InputSignal');
add_block('simulink/Sinks/Scope', 'P_ControlerModel/scope');
add_block('P_ControllerLib/P_Controller', 'P_ControlerModel/P_Controller');

%Add line
add_line('P_ControlerModel', 'InputSignal/1','P_Controller/1');
add_line('P_ControlerModel','P_Controller/1','scope/1');

%Save and run the Model
save_system('P_ControlerModel');
sim('P_ControlerModel','StopTime','20');

