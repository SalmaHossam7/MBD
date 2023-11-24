%Build the model
new_system('Apps2_Model');
open_system('Apps2_Model');
%Add blocks and create subsystem
add_block('built-in/Subsystem' , 'Apps2_Model/subsystem');
add_block('simulink/Sources/In1', 'Apps2_Model/Accelarator_Pedal_Position');
add_block('simulink/Sinks/Out1', 'Apps2_Model/Pot_Voltage');
add_block('simulink/Sources/In1', 'Apps2_Model/subsystem/Accelarator_Pedal_Position');
add_block('simulink/Sinks/Out1', 'Apps2_Model/subsystem/Pot_Voltage');

add_block('simulink/Sources/Constant' , 'Apps2_Model/subsystem/Slope');
add_block('simulink/Sources/Constant' , 'Apps2_Model/subsystem/Offset');
add_block('simulink/Math Operations/Product' , 'Apps2_Model/subsystem/Product');
add_block('simulink/Math Operations/Add' , 'Apps2_Model/subsystem/Add');

% Connect the blocks
add_line('Apps2_Model', 'Accelarator_Pedal_Position/1', 'subsystem/1');
add_line('Apps2_Model', 'subsystem/1', 'Pot_Voltage/1');
add_line('Apps2_Model/subsystem', 'Slope/1', 'Product/1');
add_line('Apps2_Model/subsystem', 'Accelarator_Pedal_Position/1', 'Product/2');
add_line('Apps2_Model/subsystem', 'Product/1', 'Add/1');
add_line('Apps2_Model/subsystem', 'Offset/1', 'Add/2');
add_line('Apps2_Model/subsystem', 'Add/1', 'Pot_Voltage/1');

% Set Paratmeters
set_param('Apps2_Model/subsystem/Slope', 'value', '-4');
set_param('Apps2_Model/subsystem/Offset', 'value', '4.5');

%Create Mask
set_param('Apps2_Model/subsystem','Mask','on');
set_param('Apps2_Model/subsystem','MaskDescription','Apps');

%Save the system
save_system('Apps2_Model');



