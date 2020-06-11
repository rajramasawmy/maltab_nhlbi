% make_dev.m 
%
% creates a dev "class" from scratch_functions.m
% functions then can be called by dev.<function_name>(X)
% R Ramasawmy Jan 2019
% This and scratch_functions.m can be combined in to a single file from
% 2016b.

clear nhlbi_utils;
% Get a cell array of function handles
% disp('Calling "nhlbi_toolbox.m"');
fh = nhlbi_utils;

% And use the function names as substructures..
scratch_list = cell(1,length(fh));
for i =1:length(fh)
    scratch_list{i} = func2str(fh{i});
end

nhlbi_utils = cell2struct(fh, scratch_list); % One can call this anything they like, but this is nice and short. 

% Tidy up
clear fh i scratch_list; 