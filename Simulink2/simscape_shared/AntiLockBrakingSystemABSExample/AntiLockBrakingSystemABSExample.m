%% Anti-Lock Braking System (ABS)
%
% This example shows a simple way of modeling an ABS
% braking system.
% The model shows the velocity profile responses
% achieved for the vehicle CG and the wheels.
%

% Copyright 2020-22 The MathWorks, Inc.


%% Model
%
% The following figure shows the model of an ABS system with a test harness.
% The output of the model is the plot of the velocity profile
% achieved for the vehicle CG and the wheels.
%

open_system('sscv_braking_ABS_w_vehicle')

set_param(find_system('sscv_braking_ABS_w_vehicle','FindAll', 'on','type','annotation','Tag','ModelFeatures'),'Interpreter','off')


%% Vehicle Subsystem
%
% This subsystem shows the modeling of the vehicle body with the four wheels. 
%


set_param('sscv_braking_ABS_w_vehicle/Vehicle','LinkStatus','none')
open_system('sscv_braking_ABS_w_vehicle/Vehicle','force')

%% Brakes with ABS
%
% This subsystem shows the modeling of the brakes with the ABS.
%


set_param('sscv_braking_ABS_w_vehicle/Brakes with ABS','LinkStatus','none')
open_system('sscv_braking_ABS_w_vehicle/Brakes with ABS','force')

%% Simulation Results from Simscape Logging
%%
% Based on the given inputs, the model generates a plot of the velocity profile
% achieved for the vehicle CG and the wheels.
%

sscv_braking_ABS_w_vehicle_plotVchar;
