%%
% creating empty log txt
% Sep 2021 Version
% Ziyi

LogfPathIn= 'D:\tdcs+eeg\mtg\log_mtg';
LogfPathOut= 'D:\tdcs+eeg\mtg\log_mtg_discrete';
% declare input and output path

fileNames=dir(fullfile(LogfPathIn,'*.txt'));
% get names of datasets

for i = 1:length(fileNames)
    baseFileName = fileNames(i).name;
    % get the original file name
    dotLocations = find(baseFileName == '.');
    if isempty(dotLocations)
        fileName = baseFileName;
    else
        fileName = baseFileName(1:dotLocations(1)-1);
    end
    % in case dot missing
    
    outFileName = [fileName, '_extracted.txt'];
    outFile = fullfile(LogfPathOut, outFileName);
    % generate file path & name for the extracted log
    
    inFileName = fullfile(LogfPathIn, baseFileName);
    % data = importdata(inFileName);
    % save(outFile,data.textdata)
    
    savename1 = [fileName, '_sd.txt'];
    savename2 = [fileName, '_sd_type.txt'];
    savename3 = [fileName, '_sd_type_dp.txt'];
    savename4 = [fileName, '_sd_type_ip_.txt'];
    savename5 = [fileName, '_sd_type_extract.txt'];
    % generate file names for discreted files
    
    savepath1 = fullfile(LogfPathOut, savename1);
    savepath2 = fullfile(LogfPathOut, savename2);
    savepath3 = fullfile(LogfPathOut, savename3);
    savepath4 = fullfile(LogfPathOut, savename4);
    savepath5 = fullfile(LogfPathOut, savename5);
    
    save1 = fopen(savepath1,'a');
    fclose(save1);
    save2 = fopen(savepath2,'a');
    fclose(save2);
    save3 = fopen(savepath3,'a');
    fclose(save3);
    save4 = fopen(savepath4,'a');
    fclose(save4);
    save5 = fopen(savepath5,'a');
    fclose(save5);
    
end


  
  

    