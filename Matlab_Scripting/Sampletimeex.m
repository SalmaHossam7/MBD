GainBlock = find_system('Ex3', 'BlockType', 'Gain');
for I = 1 : length(GainBlock)
    set_param(GainBlock{I}, 'SampleTime', '20');
end