function [CONDITION1_DIRECTIONS, CONDITION2_DIRECTIONS] = getDirectionBaseVectors(cfg)

    % CONSTANTS
    % Set directions for static and motion condition

    CONDITION1_DIRECTIONS = cfg.design.motionDirections;
    CONDITION2_DIRECTIONS = cfg.design.motionDirections;

end

