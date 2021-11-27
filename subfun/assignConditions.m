function [conditionNamesVector, CONDITON1_INDEX, CONDITON2_INDEX] = assignConditions(cfg)

    [~, nbRepet] = getDesignInput(cfg);

    conditionNamesVector = repmat(cfg.design.names, nbRepet, 1);
    nameCondition1 = 'HandParallel';
    nameCondition2 = 'HandPerpendicular';
    % Get the index of each condition
    CONDITON1_INDEX = find(strcmp(conditionNamesVector, nameCondition1));
    CONDITON2_INDEX = find(strcmp(conditionNamesVector, nameCondition2));

end

