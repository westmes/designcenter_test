% Code to plot simulation results for sscv_braking_ABS_w_vehicle
%% Plot Description:
%
% This script shows how to generate the ABS equipped vehicle velocity curves.

% Copyright 2019-23 The MathWorks, Inc.

%% Parameterize the model

sscv_braking_ABS_w_vehicle_input;

%% Generate new simulation results if they don't exist
if ~exist('simlog_sscv_braking_ABS_w_vehicle', 'var')
    sim('sscv_braking_ABS_w_vehicle.slx',1)      % Simulating model
end
%% Create figure for the results
if ~exist('h_sscv_braking_ABS_w_vehicle', 'var') || ...
        ~isgraphics(h_sscv_braking_ABS_w_vehicle, 'figure')
    h_sscv_braking_ABS_w_vehicle = figure('Name', 'h_sscv_braking_ABS_w_vehicle');
end

clf(h_sscv_braking_ABS_w_vehicle);
plotVelocity(simlog_sscv_braking_ABS_w_vehicle,wheel_rad)

%% Plotting output from Simscape(TM) sscv_braking_ABS_w_vehicle model

function plotVelocity(simlog,wheel_rad)
p1 = plot(simlog.Vehicle.Vehicle_Body.V.series.time,...
    simlog.Vehicle.Vehicle_Body.V.series.values,...
    simlog.Vehicle.Sensing_FL.Motion_Sensor.W.series.time,...
    simlog.Vehicle.Sensing_FL.Motion_Sensor.W.series.values*wheel_rad,...
    simlog.Vehicle.Sensing_FR.Motion_Sensor.W.series.time,...
    simlog.Vehicle.Sensing_FR.Motion_Sensor.W.series.values*wheel_rad,...
    simlog.Vehicle.Sensing_RL.Motion_Sensor.W.series.time,...
    simlog.Vehicle.Sensing_RL.Motion_Sensor.W.series.values*wheel_rad,...
    simlog.Vehicle.Sensing_RR.Motion_Sensor.W.series.time,...
    simlog.Vehicle.Sensing_RR.Motion_Sensor.W.series.values*wheel_rad);

l1 = legend('CG','Front left wheel',...
    'Front right wheel',...
    'Rear left wheel',...
    'Rear right wheel');
l1.FontSize = 16;
title('ABS performance')

xx = xlabel('Time (s)');
yy = ylabel('Velocity (m/s)');

xx.FontSize = 16;
yy.FontSize = 16;
grid on
p1(1).LineWidth = 1;
p1(2).LineWidth = 1;
p1(3).LineWidth = 1;
p1(4).LineWidth = 1;

end