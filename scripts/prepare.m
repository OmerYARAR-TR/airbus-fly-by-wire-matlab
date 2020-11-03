% change directory
cd ../models

% try
try
    % create directory
    mkdir('../codegen');

    % define directory
    myDir = '.';

    % get files
    myFiles = dir(fullfile(myDir,'*.slx'));

    % process files
    for k = 1:length(myFiles)
        % get base filename
        baseFileName = myFiles(k).name;

        % get full file name including path
        fullFileName = fullfile(myDir, baseFileName);

        % get file parts
        [filePath, fileName, fileExtension] = fileparts(fullFileName);

        % print information what file we currently process
        fprintf(1, 'Now processing model %s to target version %s ...\n', fullFileName, targetVersion);

        % load model
        fprintf(1, '  ...loading...');
        load_system(fileName);
        fprintf(1, 'loaded.\n');

        % convert
        fprintf(1, '  ...exporting...');
        Simulink.exportToVersion(fileName, strcat('../codegen/', fullFileName), targetVersion, 'BreakUserLinks', true);
        fprintf(1, 'exported.\n');

        % close
        fprintf(1, '  ...closing...');
        close_system(fileName);
        fprintf(1, 'closed.\n');
    end

    % get files
    myFiles = dir(fullfile(myDir,'*.sldd'));

    % process files
    for k = 1:length(myFiles)
        % get base filename
        baseFileName = myFiles(k).name;

        % get full file name including path
        fullFileName = fullfile(myDir, baseFileName);

        % get file parts
        [filePath, fileName, fileExtension] = fileparts(fullFileName);

        % print information what file we currently process
        fprintf(1, 'Now processing data dictionary %s to target version %s ...\n', fullFileName, targetVersion);

        % load model
        fprintf(1, '  ...loading...');
        dataDictionary = Simulink.data.dictionary.open(fullFileName);
        fprintf(1, 'loaded.\n');

        % convert
        fprintf(1, '  ...exporting...');
        exportToVersion(dataDictionary, '../codegen/', targetVersion);
        fprintf(1, 'exported.\n');
        
        % close
        Simulink.data.dictionary.closeAll();
    end

    % get files
    myFiles = dir(fullfile(myDir,'*.m'));

    % process files
    for k = 1:length(myFiles)
        % get base filename
        baseFileName = myFiles(k).name;

        % get full file name including path
        fullFileName = fullfile(myDir, baseFileName);

        % get file parts
        [filePath, fileName, fileExtension] = fileparts(fullFileName);

        % print information what file we currently process
        fprintf(1, 'Now copying m-file %s to target version %s ...\n', fullFileName, targetVersion);

        % load model
        fprintf(1, '  ...copy...');
        copyfile(fullFileName, '../codegen/');
        fprintf(1, 'copied.\n');
    end
catch ME
    fprintf(1, 'Failed to process!\n');
end

% restore directory
cd ..
