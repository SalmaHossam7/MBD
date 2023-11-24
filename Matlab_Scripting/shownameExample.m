% Find system function
UnitDelayBlock = find_system('Exercise2Matlab', 'BlockType', 'UnitDelay');
for I = 1 : length(UnitDelayBlock)
    set_param