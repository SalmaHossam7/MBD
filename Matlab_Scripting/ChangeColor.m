% GainBlock = find_system('Ex3', 'BlockType', 'Gain');
% UnitDelayBlock = find_system('Ex3', 'BlockType', 'UnitDelay');
% StepBlock = find_system('Ex3', 'BlockType', 'Step');
% AddBlock = find_system('Ex3', 'BlockType', 'Add');
% ScopeBlock = find_system('Ex3', 'BlockType', 'Scope');

BlockswitchBlockType = find_system('Ex3', 'regexp', 'on','BlockType', '.*');
BlockTypeCellArray = get_param(BlockswitchBlockType,'BlockType');
for Index = 1 : length(BlockswitchBlockType)
    switch BlockTypeCellArray {Index}
        case 'Step'
            set_param(BlockswitchBlockType{Index},'BackgroundColor','Orange');
        case 'Gain'
            set_param(BlockswitchBlockType{Index},'BackgroundColor','Cyan');
        case 'UnitDelay'
            set_param(BlockswitchBlockType{Index},'BackgroundColor','Green');
        case 'Sum'
            set_param(BlockswitchBlockType{Index},'BackgroundColor','Magenta');
        case 'Outport'
            set_param(BlockswitchBlockType{Index},'BackgroundColor','Red');
    end
end

