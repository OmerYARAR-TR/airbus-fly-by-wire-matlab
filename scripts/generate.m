% prepare clean environment
clear;
clc;

% change directory
cd ../codegen

try
    % load system
    load_system('FlyByWire');

    % get configuration
    config = getActiveConfigSet('FlyByWire');

    % set parameters
    set_param(config, 'SystemTargetFile', 'ert.tlc');
    set_param(config, 'GenCodeOnly', 'on');
    set_param(config, 'TargetLang', 'C++');
    set_param(config, 'PackageGeneratedCodeAndArtifacts', 'on');
    set_param(config, 'RTWCompilerOptimization', 'on');
    set_param(config, 'BuildConfiguration', 'Faster Runs');
    set_param(config, 'DefaultParameterBehavior', 'Tunable');
    set_param(config, 'GenerateReport', 'off');
    set_param(config, 'GenerateComments', 'off');
    set_param(config, 'StateflowObjectComments', 'on');
    set_param(config, 'MaxIdLength', '128');
    set_param(config, 'InternalIdentifier', 'Classic');
    set_param(config, 'TargetLangStandard', 'C++03 (ISO)');
    set_param(config, 'NewlineStyle', 'LF');
    set_param(config, 'MaxLineWidth', '120');
    set_param(config, 'SuppressErrorStatus', 'on');

    % save system
    save_system('FlyByWire', [], 'OverwriteIfChangedOnDisk', true);

    % start code generation
    rtwbuild('FlyByWire');

    % close 'fbw'
    close_system('FlyByWire');

    % clean up
    rmdir('FlyByWire_ert_rtw', 's');
    rmdir('slprj', 's');
    delete('FlyByWire.slxc');
catch ME
end

% restore directory
cd ..
