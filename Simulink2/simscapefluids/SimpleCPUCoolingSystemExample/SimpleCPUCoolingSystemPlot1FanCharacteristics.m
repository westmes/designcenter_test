% Code to plot simulation results from SimpleCPUCoolingSystem
%% Plot Description:
%
% The plot below shows the volumetric flow rate - pressure rise 
% characteristics of CPU fan.

% Copyright 2018-2021 The MathWorks, Inc.

% Reuse figure if it exists, else create new figure
if ~exist('h1_SimpleCPUCoolingSystem', 'var') || ...
        ~isgraphics(h1_SimpleCPUCoolingSystem, 'figure')
    h1_SimpleCPUCoolingSystem = figure('Name', 'SimpleCPUCoolingSystem');
end
figure(h1_SimpleCPUCoolingSystem)
clf(h1_SimpleCPUCoolingSystem)

% Plot fan characteristics
plot(flow_rate_TLU', dp_vec(:), '-o', 'LineWidth', 1)
grid on
legend("\omega = " + num2str(omega_vec(:)) + " rpm")
legend boxoff
xlabel('Volumetric Flow Rate (l/min)')
ylabel('Pressure Rise (Pa)')