% Script to initialize parameters for sscv_braking_ABS_w_vehicle

% Copyright 2019-22 The MathWorks, Inc.

%% Apply and release valve parameters

HCU.PushPinS = 0.01;                 % (m) Valve stroke
HCU.SwitchOnT = 0.001;               % (s) Switching-on time
HCU.SwitchOffT = 0.001;              % (s) Switching-off time
HCU.NomSigV = 0.5;                   % Nominal signal value
HCU.valve_maxA = 0.25*pi*1^2*1e-3;   % (m^2)Valve maximum area
HCU.valve_maxO = 0.005;              % (m) Valve maximum opening
HCU.valve_leak = 1e-12;              % (m^2) Leakage area
HCU.valve_x0   = 0;                  % (m) Valve initial position
HCU.period     = 0.02;               % (s) Defines valve switching frequency
HCU.brkTs      = 0.001;% Apply and release valve time constant 

%% Check valve parameters

HCU.cv1Amax = 0.25*pi*2e-3^2;        % (m^2) Maximum passage area
HCU.cv1CrackP = 1e5;                 % (Pa) Cracking pressure
HCU.cv1MaxOpP = 3e5;                 % (Pa) Maximum opening pressure

%% Accumulator parameters

HCU.FluidChamC = 10e-2;              % (cm^3) Fluid chamber capacity
HCU.PrelP = 3;                       % (bar) Preload pressure (gauge)
HCU.FullCapP = 100;                  % (bar) Full capacity pressure (gauge)
HCU.hss = 1e6;                       % (Pa/m^3) Hard-stop stiffness coefficient
HCU.hsd = 1e2;                       % (s*Pa/m^6) Hard-stop damping coefficient

%% Script for tandem primary cylinder and fixed caliper disc brake parameters

sscv_braking_ABS_w_vehicle_data

load sscv_braking_ABS_w_vehicle_IceMu

MFormulaCoeff.DryTarmac = [10 1.9 1 0.97];
MFormulaCoeff.WetTarmac = [12 2.3 0.82 1];
MFormulaCoeff.Snow      = [5 2 0.3 1];
MFormulaCoeff.Ice       = [4 2 0.1 1];

wheel_rad  = 0.3;  % (m) Wheel radius
wheel_vth  = 0.01; % (m/s) Wheel velocity threshold 
