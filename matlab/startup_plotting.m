% Default plot formatting - text interpreter/colors
%
% Function changes the text interpreter to the specified string, with the
% default as 'latex', and sets default plotting colors.
%
% Author:   Nicholas Barbara
% Email:    nicholas.barbara@sydney.edu.au

function startup_plotting(str)

    % Inputs
    if nargin < 1
        str = 'latex';
    end

    % Change the defaults
    set(groot,'defaulttextinterpreter',str);
    set(groot,'defaultAxesTickLabelInterpreter',str);
    set(groot,'defaultLegendInterpreter',str);

    % Set colour scheme
    colors = NiceColors(8);
    set(groot,'defaultAxesColorOrder',[colors{1};colors{2};...
        colors{3};colors{4};colors{5};colors{6};colors{7};colors{8}]);
end

% Helper function to get nice colors
function colorCell = NiceColors(numColors)

    if numColors > 8
        error("Too many colors for this colorscheme.");
    end
    
    % Colours from the Wong palette (see GiveMeColors.m)
    cCell = {[0,114,178],[213,94,0],[0,158,115],0.25*255*[1,1,1],...
             [230,159,0],[86,180,233],[240,215,66],[204,121,167]};
    
    % Pick the required number of colors
    cCell = cellfun(@(x) x/255,cCell,'un',0)';
    colorCell = cCell(1:numColors);
end
