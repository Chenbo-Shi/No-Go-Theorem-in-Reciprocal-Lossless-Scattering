% =========================================================================
% UV Asymmetry Map of Eigenchannels for a Tensor-Permittivity Cone (Reciprocal Case)
%
% This script visualizes the asymmetry metric of eigenchannels of a cone
% with tensor permittivity (reciprocal material parameters).
%
% Data format:
%   - u, v: UV coordinates (typically u = sin(theta)cos(phi), v = sin(theta)sin(phi))
%   - X1, X3, X7: asymmetry metric for eigenchannels 1, 3, and 7
% The script loads data from 'UV_repo.mat' in the current folder.
%
% Output:
%   - Three UV scatter maps for channels 1, 3, and 7
%   - A shared horizontal colorbar
%
% Copyright (c) 2026 Chenbo Shi, UESTC, China.
% =========================================================================

clear; close all; clc;

%% ----------------------------- User settings ---------------------------
dataFile  = 'UV_repo.mat';
channels  = [1 3 7];               % which eigenchannels to plot
markerSz  = 2;                     % scatter marker size
cmapName  = "turbo";

% Color limits (set empty [] to auto-scale)
cLim = [0 6e-13];                  % match your original: [0, 6]*1e-13

% Shared colorbar ticks (set empty [] to auto)
cbTicks = [0 3e-13 6e-13];         % match your original

% Figure size (inches)
figW = 6; figH = 6;

%% ------------------------------ Load data ------------------------------
if ~isfile(dataFile)
    error("Data file '%s' not found in the current directory.", dataFile);
end
S = load(dataFile);

% Required variables
req = ["u","v","X1","X3","X7"];
missing = req(~isfield(S, req));
if ~isempty(missing)
    error("Missing variables in '%s': %s", dataFile, strjoin(string(missing), ", "));
end

u = S.u; v = S.v;
X = struct('X1', S.X1, 'X3', S.X3, 'X7', S.X7);

%% ------------------------------ Figure --------------------------------
fig = figure('Color','w');
set(fig, 'Units', 'Inches', 'Position', [1, 1, figW, figH]);
colormap(cmapName);

% Common labels
xlab = '$\sin\theta \cos\varphi$';
ylab = '$\sin\theta \sin\varphi$';

% Axes positions (kept close to your original layout)
pos = [ ...
    0.083333333333333, 0.765376984126982, 0.168154761904762, 0.168154761904762; ...
    0.304779430005345, 0.764633927079989, 0.168154761904762, 0.168154761904762; ...
    0.489519177471008, 0.763147812986004, 0.168154761904762, 0.168154761904762  ...
];

ax = gobjects(1,3);

%% ------------------------------ Plotting -------------------------------
for k = 1:numel(channels)
    ch = channels(k);

    % Pick data variable
    field = "X" + ch;
    if ~isfield(X, field)
        error("Expected variable '%s' not found (needed for channel %d).", field, ch);
    end
    C = abs(X.(field));

    ax(k) = axes('Position', pos(k,:));
    scatter(ax(k), u(:), v(:), markerSz, C(:), 'filled');
    axis(ax(k), 'equal');
    axis(ax(k), 'tight');

    xlabel(ax(k), xlab, 'FontSize', 8, 'Interpreter','latex');
    if k == 1
        ylabel(ax(k), ylab, 'FontSize', 8, 'Interpreter','latex');
    else
        yticklabels(ax(k), []);
    end

    set(ax(k), 'FontName','Times New Roman', 'FontSize', 8);

    % Dynamic title per channel (you can customize)
    title(ax(k), sprintf('Channel %d', ch), 'FontSize', 9, 'FontName','Times New Roman');

    % Apply consistent color limits if provided
    if ~isempty(cLim)
        clim(ax(k), cLim);
    end
end

%% --------------------------- Shared colorbar ---------------------------
% Create one shared colorbar based on the last axes handle
hbar = colorbar(ax(end), 'Position', [0.495866402116381, 0.67997685185185, 0.164434523809543, 0.023396164021132], ...
    'Orientation','Horizontal');

if ~isempty(cbTicks)
    hbar.Ticks = cbTicks;
end

% Optional: add a label for the colorbar (uncomment if needed)
% hbar.Label.String = 'Asymmetry metric |X_n|';
% hbar.Label.Interpreter = 'tex';
% hbar.Label.FontName = 'Times New Roman';
% hbar.Label.FontSize = 8;

%% -------------------------- Publication polish -------------------------
% Make sure all axes use the same colormap (MATLAB sometimes inherits)
for k = 1:numel(ax)
    colormap(ax(k), cmapName);
end
