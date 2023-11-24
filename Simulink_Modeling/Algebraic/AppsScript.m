%Build the model
new_system('Apps_Model');
open_system('Apps_Model');
%Add blocks and create subsystem
add_block('built-in/Subsystem' , 'Apps_Model/subsystem');
add_block('simulink/Sources/In1', 'Apps_Model/Accelarator_Pedal_Position');
add_block('simulink/Sinks/Out1', 'Apps_Model/Pot_Voltage');
add_block('simulink/Sources/In1', 'Apps_Model/subsystem/Accelarator_Pedal_Position');
add_block('simulink/Sinks/Out1', 'Apps_Model/subsystem/Pot_Voltage');

add_block('simulink/Sources/Constant' , 'Apps_Model/subsystem/Slope');
add_block('simulink/Sources/Constant' , 'Apps_Model/subsystem/Offset');
add_block('simulink/Math Operations/Product' , 'Apps_Model/subsystem/Product');
add_block('simulink/Math Operations/Add' , 'Apps_Model/subsystem/Add');

% Connect the blocks
add_line('Apps_Model', 'Accelarator_Pedal_Position/1', 'subsystem/1');
add_line('Apps_Model', 'subsystem/1', 'Pot_Voltage/1');
add_line('Apps_Model/subsystem', 'Slope/1', 'Product/1');
add_line('Apps_Model/subsystem', 'Accelarator_Pedal_Position/1', 'Product/2');
add_line('Apps_Model/subsystem', 'Product/1', 'Add/1');
add_line('Apps_Model/subsystem', 'Offset/1', 'Add/2');
add_line('Apps_Model/subsystem', 'Add/1', 'Pot_Voltage/1');

% Set Paratmeters
set_param('Apps_Model/subsystem/Slope', 'value', '4');
set_param('Apps_Model/subsystem/Offset', 'value', '0.5');

%Create Mask
set_param('Apps_Model/subsystem','Mask','on');
set_param('Apps_Model/subsystem','MaskDescription','App');
