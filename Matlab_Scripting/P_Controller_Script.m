% create new library
new_system('P_ControllerLib','Library');
open_system('P_ControllerLib');

%Create subsytem and add blocks
add_block('built-in/Subsystem', 'P_ControllerLib/P_Controller');
add_block('built-in/Gain', 'P_ControllerLib/P_Controller/Kp');
add_block('simulink/Sources/In1', 'P_ControllerLib/P_Controller/ControllerInput');
add_block('simulink/Sinks/Out1', 'P_ControllerLib/P_Controller/ControllerOutput');

%Connect blocks together
add_line('P_ControllerLib/P_Controller', 'ControllerInput/1', 'Kp/1');
add_line('P_ControllerLib/P_Controller', 'Kp/1', 'ControllerOutput/1');

%Add Mask
set_param('P_ControllerLib/P_Controller','Mask','on');
set_param('P_ControllerLib/P_Controller','MaskDescription','Propetional Controller');
set_param('P_ControllerLib/P_Controller','MaskDisplay','disp("P-Controller")');

%Save the Library
save_system('P_ControllerLib');
