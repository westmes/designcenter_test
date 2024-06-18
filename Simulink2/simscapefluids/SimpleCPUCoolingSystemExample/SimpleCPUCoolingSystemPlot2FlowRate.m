% Code to plot simulation results from SimpleCPUCoolingSystem
%% Plot Description:
%
% The plots below show the volumetric flow rate through and pressure rise
% across the CPU fan.

% Copyright 2018-2021 The MathWorks, Inc.

% Generate simulation results if they don't exist
if(~exist('simlog_SimpleCPUCoolingSystem','var'))
    sim('SimpleCPUCoolingSystem')
end

% Reuse figure if it exists, else create new figure
if ~exist('h2_SimpleCPUCoolingSystem', 'var') || ...
        ~isgraphics(h2_SimpleCPUCoolingSystem, 'figure')
    h2_SimpleCPUCoolingSystem = figure('Name', 'SimpleCPUCoolingSystem');
end
figure(h2_SimpleCPUCoolingSystem)
clf(h2_SimpleCPUCoolingSystem)

plotFlowRate(simlog_SimpleCPUCoolingSystem)



% Create plots from simulation results
function plotFlowRate(simlog)

% Get simulation results
t = simlog.CPU_fan.mdot_A.series.time;
dp = simlog.CPU_fan.p_diff.series.values('Pa');
Vdot = simlog.CPU_fan.q_A.series.values('lpm');

% Plot results
handles(1) = subplot(2,1,1);
plot(t, Vdot, 'LineWidth', 1)
grid on
title('CPU Fan');
ylabel('Volumetric Flow Rate (l/min)');

handles(2) = subplot(2,1,2);
plot(t, dp, 'LineWidth', 1)
grid on
xlabel('Time (s)');
ylabel('Pressure Rise (Pa)');

linkaxes(handles, 'x')

end
