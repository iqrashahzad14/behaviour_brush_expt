function [cfg] = loadAudioFiles(cfg)
%% This function loads the pre-recorded audiofiles. 
%R=Right, L=Left, U=Up, D=Down
%T=Target

    %% Load the sounds

    % static Stimuli
    fileName = fullfile('input', 'Static', 'one.wav');
    [soundData.S1, freq1] = audioread(fileName);
    soundData.S1 = soundData.S1';
    
    fileName = fullfile('input', 'Static', 'two.wav');
    [soundData.S2, freq2] = audioread(fileName);
    soundData.S2 = soundData.S2';
    
    % motion input
    fileName = fullfile('input', 'Motion','Left.wav');
    [soundData.Left, freq3] = audioread(fileName);
    soundData.Left = soundData.Left';
    
    fileName = fullfile('input', 'Motion','Right.wav');
    [soundData.Right, freq4] = audioread(fileName);
    soundData.Right = soundData.Right';
   
    fileName = fullfile('input', 'Motion', 'Up.wav');
    [soundData.Up, freq5] = audioread(fileName);
    soundData.Up = soundData.Up';
   
    fileName = fullfile('input', 'Motion', 'Down.wav');
    [soundData.Down, freq6] = audioread(fileName);
    soundData.Down = soundData.Down';

    %% Targets

%     % static Stimuli
%     fileName = fullfile('input', 'Static','Static1_T.wav');
%     [soundData.S1_T, freq6] = audioread(fileName);
%     soundData.S1_T = soundData.S1_T';
%     
%     fileName = fullfile('input', 'Static','Static2_T.wav');
%     [soundData.S2_T, freq66] = audioread(fileName);
%     soundData.S2_T = soundData.S2_T';
% 
%     % motion Stimuli
%     fileName = fullfile('input', 'Motion','LR_T.wav');
%     [soundData.LR_T, freq7] = audioread(fileName);
%     soundData.LR_T = soundData.LR_T';
% 
%     fileName = fullfile('input', 'Motion','RL_T.wav');
%     [soundData.RL_T, freq8] = audioread(fileName);
%     soundData.RL_T = soundData.RL_T';
%     
%     fileName = fullfile('input', 'Motion', 'UD_T.wav');
%     [soundData.UD_T, freq9] = audioread(fileName);
%     soundData.UD_T = soundData.UD_T';
% 
%     fileName = fullfile('input', 'Motion', 'DU_T.wav');
%     [soundData.DU_T, freq10] = audioread(fileName);
%     soundData.DU_T = soundData.DU_T';
  

    if length(unique([freq1 freq2 freq3 freq4 freq5 freq6])) > 1
        error ('Sounds do not have the same frequency');
    else
        freq = unique([freq1 freq2 freq3 freq4 freq5 freq6]);
    end

    cfg.soundData = soundData;
    cfg.audio.fs = freq;
