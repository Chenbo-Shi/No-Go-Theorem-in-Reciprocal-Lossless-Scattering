% =========================================================================
% Random Rough Surface: Asymmetry Measure of the First 50 Eigenchannels
%
% This script plots the asymmetry measure (max over observation directions)
% for the first 50 eigenchannels of a random rough surface.
%
% Data are loaded from 'Err.mat' (expected variable: err).
% The figure compares two cases (e.g., lossless Z_s = 0 and lossy Z_s = 100 Ω)
% as two curves.
%
% Copyright (c) 2026 Chenbo Shi, UESTC, China.
% =========================================================================

clear; close all; clc;

%% ----------------------------- User settings ---------------------------
dataFile   = 'Err.mat';

% How many eigenchannels to show
nModes     = 50;

% Plot limits
yLim       = [1e-15, 1e5];

% Labels in the data (columns of err)
% By default: err(:,1) -> Z_s = 0, err(:,2) -> Z_s = 100
labelCol1  = '$Z_s = 0$';
labelCol2  = '$Z_s = 100$';

% Axes/figure style
fontName   = 'Times New Roman';
fontSize   = 8;
lineWidth  = 1;

%% ------------------------------ Load data ------------------------------
if ~isfile(dataFile)
    error("Data file '%s' not found in the current directory.", dataFile);
end

S = load(dataFile);

if ~isfield(S, 'err')
    error("Variable 'err' not found in '%s'.", dataFile);
end

err = S.err;

if size(err,2) < 2
    error("Variable 'err' must have at least 2 columns. Found %d.", size(err,2));
end

if size(err,1) < nModes
    warning("err has only %d rows; plotting the first %d instead of %d.", size(err,1), size(err,1), nModes);
    nModes = size(err,1);
end

%% ------------------------------ Plotting -------------------------------
fig = figure('Color','w');

semilogy(1:nModes, [err(1:nModes,1), err(1:nModes,2)], 'LineWidth', lineWidth);

xlim([1 nModes]);
ylim(yLim);

ylabel('$\max_{\hat{r}}\ \Xi_\mathrm{asym}$', 'Interpreter','latex');
xlabel('eigenchannels');

set(gca, 'FontName', fontName, 'FontSize', fontSize);
grid on;

%% ----------------------------- Annotations -----------------------------
% NOTE:
% Annotation positions are in normalized figure coordinates.
% If the figure layout changes, you may need to adjust these coordinates.

annotation(fig, 'textarrow', ...
    [0.573214285714286 0.507738095238095], ...
    [0.7 0.763492063492067], ...
    'String', {labelCol1}, ...
    'Interpreter','latex', ...
    'FontName', fontName);

annotation(fig, 'textarrow', ...
    [0.443452380952381 0.50297619047619], ...
    [0.280952380952381 0.203174603174604], ...
    'String', {labelCol2}, ...
    'Interpreter','latex', ...
    'FontName', fontName);
