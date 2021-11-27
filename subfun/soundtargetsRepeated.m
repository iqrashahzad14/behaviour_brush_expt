function [MYsoundTargets_matrix] = soundtargetsRepeated(soundTargets)

cfg.design.soundTargets=zeros(size(soundTargets,1), (size(soundTargets,2)+size(soundTargets,2)));
    for t=1:size(soundTargets,2)
        cfg.design.soundTargets(:,2*t-1) =soundTargets(:,t);
        cfg.design.soundTargets(:,2*t)=soundTargets(:,t); 
    end
cfg.design.soundTargets
MYsoundTargets_matrix=cfg.design.soundTargets;
end