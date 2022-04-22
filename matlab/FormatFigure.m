% FORMAT A FIGURE: GIVES FIGURE LATEX FORMATTING
% A standalone function to run after plotting
%
% DEFAULT USAGE:
%     fh = figure;
%     plot(x,y,'-');
%     FormatFigure(fh,{'x','y'});
%
% INPUTS: 
%   - figHandle: figure handle (figHandle = figure; OR figHandle = subplot(...);)
%   - axisLabels: axis label text cell array (axisLabels = {'x (m)','y (m)','z (m)'};)
%
% OPTIONAL INPUTS:
%   - legHandle: legend handle (lh = Legend(...);)
%   - The following are customisable with care.
%       - fontSize: size of all text - titles, axes, legends etc.
%       - lineWidth: size of all lines in the plot
%       - markerSize: size of all markers in the plot
%
% Author: Tara Bartlett 
% Email: tara.bartlett22@gmail.com

function FormatFigure(figHandle,axisLabels,varargin)

    % set the parameters
    fontSize = 16;
    lineWidth = 2;
    markerSize = 30;
    legend = 0;
    plotDimensions = length(axisLabels); % TODO: FIX: numel(axes(figHandle))/2; % checks if it's 2D or 3D
    
    % check axis labels and plot dimensions match
    if length(axisLabels) ~= plotDimensions
        error('Number of axis labels must match plot dimensions.');
    end
    
    while ~isempty(varargin)
        switch lower(varargin{1})
            case 'legend'
                legendHandle = varargin{2};
                legend = 1;
            case 'fontsize'
                fontSize = varargin{2};
            case 'linewidth'
                lineWidth = varargin{2};
            case 'markersize'
                markerSize = varargin{2};
            otherwise
                error(['Unexpected option: ' varargin{1}])
        end
        varargin(1:2) = [];
    end
    
    % select the figure
    figure(figHandle);
    grid on; grid minor;
    
    % Format tick labels
    set(gca,'TickLabelInterpreter','latex','FontSize',fontSize,'LineWidth',1.5);
    
    % set and format the axis labels
    set(xlabel(axisLabels{1}),'Interpreter','Latex','FontSize',fontSize);
    set(ylabel(axisLabels{2}),'Interpreter','Latex','FontSize',fontSize);
    
    % if it's a 3d plot, do the same for z
    if plotDimensions == 3
        set(zlabel(axisLabels{3}),'Interpreter','Latex','FontSize',fontSize);
    end   
    
    % format the legend
    if legend 
        set(legendHandle,'Interpreter','latex','Location','best','FontSize',fontSize);
    end 
    
    % Format markers and lines
    set(findall(figHandle,'Type','Line'), 'LineWidth',lineWidth);
    set(findall(figHandle,'Type','Marker'), 'MarkerSize',markerSize);
end