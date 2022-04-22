% Colormap stuff.
%
% Nice colormap to use for plotting, which is also colorblind friendly. It
% is based on Paul Tol's Muted colorscheme, found here:
% https://personal.sron.nl/~pault/
%
% A version of Bang Wong's color scheme published in Nature is included:
% https://www.nature.com/articles/nmeth.1618
%
% INPUTS:
%   - numColors:    Number of colors wanted
%   - scheme:       Color scheme to use. Options currently supported are:
%                       . 'bright'
%                       . 'vibrant'
%                       . 'muted'
%                       . 'light'
%                       . 'wong'    (Default)
%                   See https://personal.sron.nl/~pault/ for details
% 
% OUTPUTS:
%   - colorCell:    numColors x 1 cell array of rgb colors.
%
% This function currently supports no more than 10 colors at a time, and
% will return an error for more ambitious requests (only 8 for Wong).
%
% Author:   Nicholas Barbara
% Email:    nicholas.barbara@sydney.edu.au


function colorCell = GiveMeColors(numColors,scheme)

    % Inputs
    if nargin < 2
        scheme = 'wong';
    end
    
    % Special case
    if numColors == 1
        colorCell = {[0 0 0]};
        return
    end
    
    % Check which scheme and assign accordingly
    switch scheme
        case 'bright'
            cCell = {[68,119,170],[102,204,238],[34,136,51],...
                [204,187,68],[238,102,119],[170,51,119],[187,187,187]};
        case 'vibrant'
            cCell = {[0,119,187],[51,187,238],[0,153,136],[238,119,51],...
                [204,51,17],[238,51,119],[221,204,119],[187,187,187]};
        case 'muted'
            cCell = {[51,34,136],[136,204,238],[68,170,153],[17,119,51],...
                [221,204,119],[204,102,119],[136,34,85],[170,68,53],...
                [153,153,51],[221,221,221]};
        case 'light'
            cCell = {[119,170,221],[153,221,255],[68,187,153],...
                [187,204,51],[170,170,0],[238,221,136],[238,136,102],...
                [255,170,187],[221,221,221]};
        case 'wong'
            cCell = {[0,114,178],[213,94,0],[0,158,115],0.25*255*[1,1,1],...
                     [230,159,0],[86,180,233],[240,215,66],[204,121,167]};
        otherwise
            error('Unrecognised scheme %s',scheme);
    end
    
    % Pick the required number of colors
    cCell = cellfun(@(x) x/255,cCell,'un',0)';
    isTooLong(numColors,cCell,scheme);
    colorCell = cCell(1:numColors);
end

% Helper function to check errors
function isTooLong(numColors,cCell,scheme)
    if numColors > length(cCell)
        error('Too many colors for scheme %s. Try a different map.',scheme);
    end
end
