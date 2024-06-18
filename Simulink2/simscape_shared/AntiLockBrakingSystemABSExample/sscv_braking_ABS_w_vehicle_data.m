%% Data for tandem primary cylinder, vacuum booster and caliper disc brakes for sscv_braking_ABS_w_vehicle

% Copyright 2019-23 The MathWorks, Inc.

%% Tandem primary cylinder data
% Common assumed parameters across designs

tpc.caseNum = 1;                   % Tandem primary cylinder design selection
tpc.c1 = 1e-3;                     % (Ns/m)Damping coefficient piston 1
tpc.c2 = 1e-3;                     % (Ns/m)Damping coefficient piston 2
tpc.mass1 = 2e-1;                  % (Kg) Piston 1 mass
tpc.mass2 = 2e-1;                  % (Kg) Piston 2 mass
tpc.v2D = 5e-6;                    % (m^3) Brake circuit 1 dead volume
tpc.v4D = 5e-6;                    % (m^3) Brake circuit 2 dead volume
tpc.a1Ori = 100e-6;                % (m^2) Compensating orifice area
tpc.a2Ori = 10e-6;                 % (m^2) Brake circuit orifice area
tpc.pRes = 1e5;                    % (Pa) Initial pressure condition
tpc.hss = 1e10;                    % (N/m) Hard stop stiffness
tpc.hsd = 1e9;                     % (N/(m/s)) Hard stop damping coefficient

% Design parameters for tandem primary cylinder from supplier catalog and
% estimated (optimized based on performance) model parameters

switch tpc.caseNum
    
    case 1
        
        tpc.dp = 19.05*1e-3;               % (m) First and second circuit piston diameter
        tpc.stroke1 = 15.5*1e-3;           % (m) First circuit piston stroke
        tpc.stroke2 = 14*1e-3;             % (m) Second circuit piston stroke
        tpc.totalStroke = 29.5*1e-3;       % (m) Total stroke
        tpc.disp1 = 4.1*1e-6;              % (m^3) First circuit displacement
        tpc.disp2 = 3.7*1e-6;              % (m^3) Second circuit displacement
        tpc.totalDisp = 7.8*1e-6;          % (m^3) First circuit displacement
        tpc.maxPress = 100*1e5;            % (Pa or N/m^2) Max pressure
        tpc.k1 = 2.0058e+04;               % (N/m) First spring stiffness
        tpc.k2 = 2.2205e+04;               % (N/m) Second spring stiffness
        tpc.defLL = 0.0044;                % (m) First spring compression
        tpc.defLR = 0.0040;                % (m) Second spring compression
        tpc.aPist = (pi/4)*tpc.dp^2;       % (m^2) Pressure acting piston area
        
        % Compensating port length vector
        
        % x11 and x21 are the left most position for piston 1 and 2 respectively in
        % tandem primary cylinder. x12 and x22 defines when compensating port 1 and
        % 2 are starting to open for flow.
        
        tpc.x11 = 0;                       % (m)  opening length compensating port 1
        tpc.x21 = 0;                       % (m)  opening length compensating port 2
        tpc.x12 = 1.05e-3;                 % (m)  opening length compensating port 1
        tpc.x22 = 5e-4;                    % (m)  opening length compensating port 2
        tpc.x13 = tpc.totalStroke;         % (m)  opening length compensating port 1
        tpc.x23 = tpc.stroke2;             % (m)  opening length compensating port 2
        
        % Function diagram : defines expected behavior of tandem primary cylinder
        
        tpc.pushRodF = [0 100 3250];       % (N) Push rod force
        tpc.circuitP = [0 0   1e7];        % (Pa or N/m^2) Brake pressure vector
        
        
    case 2
        tpc.dp = 25.40*1e-3;               % (m) First and second circuit piston diameter
        tpc.stroke1 = 19*1e-3;             % (m) First circuit piston stroke
        tpc.stroke2 = 17*1e-3;             % (m) Second circuit piston stroke
        tpc.totalStroke = 36.0*1e-3;       % (m) Total stroke
        tpc.disp1 = 9.2*1e-6;              % (m^3) First circuit displacement
        tpc.disp2 = 7.3*1e-6;              % (m^3) Second circuit displacement
        tpc.totalDisp = 16.5*1e-6;         % (m^3) First circuit displacement
        tpc.maxPress = 150*1e5;            % (Pa or N/m^2) Max pressure
        tpc.k1 = 1.9146e+04;               % (N/m) First spring stiffness
        tpc.k2 = 2.1397e+04;               % (N/m) Second spring stiffness
        tpc.defLL = 0.0047;                % (m) First spring compression
        tpc.defLR = 0.0042;                % (m) Second spring compression
        tpc.aPist = (pi/4)*tpc.dp^2;       % (m^2) Pressure acting piston area
        
        % Compensating port length vector
        
        % x11 and x21 are the left most position for piston 1 and 2 respectively in
        % tandem primary cylinder. x12 and x22 defines when compensating port 1 and
        % 2 are starting to open for flow.
        
        tpc.x11 = 0;                       % (m)  opening length compensating port 1
        tpc.x21 = 0;                       % (m)  opening length compensating port 2
        tpc.x12 = 1e-3;                    % (m)  opening length compensating port 1
        tpc.x22 = 5e-4;                    % (m)  opening length compensating port 2
        tpc.x13 = tpc.totalStroke;         % (m)  opening length compensating port 1
        tpc.x23 = tpc.stroke2;             % (m)  opening length compensating port 2
        
        % Function diagram : defines expected behavior of tandem primary cylinder
        
        tpc.pushRodF = [0 100 4000];       % (N) Push rod force
        tpc.circuitP = [0 0   7e6];        % (Pa or N/m^2) Brake pressure vector
        
    case 3
        
        tpc.dp = 31.75*1e-3;               % (m) First and second circuit piston diameter
        tpc.stroke1 = 15.5*1e-3;           % (m) First circuit piston stroke
        tpc.stroke2 = 15.5*1e-3;           % (m) Second circuit piston stroke
        tpc.totalStroke = 31.0*1e-3;       % (m) Total stroke
        tpc.disp1 = 11*1e-6;               % (m^3) First circuit displacement
        tpc.disp2 = 11*1e-6;               % (m^3) Second circuit displacement
        tpc.totalDisp = 22*1e-6;           % (m^3) First circuit displacement
        tpc.maxPress = 150*1e5;            % (Pa or N/m^2) Max pressure
        tpc.k1 = 2.7759e+04;               % (N/m) First spring stiffness
        tpc.k2 = 2.7759e+04;               % (N/m) Second spring stiffness
        tpc.defLL = 0.0031;                % (m) First spring compression
        tpc.defLR = 0.0031;                % (m) Second spring compression
        tpc.aPist = (pi/4)*tpc.dp^2;       % (m^2) Pressure acting piston area
        
        % Compensating port length vector
        
        % x11 and x21 are the left most position for piston 1 and 2 respectively in
        % tandem primary cylinder. x12 and x22 defines when compensating port 1 and
        % 2 are starting to open for flow.
        
        tpc.x11 = 0;                       % (m)  opening length compensating port 1
        tpc.x21 = 0;                       % (m)  opening length compensating port 2
        tpc.x12 = 1e-3;                    % (m)  opening length compensating port 1
        tpc.x22 = 5e-4;                    % (m)  opening length compensating port 2
        tpc.x13 = tpc.totalStroke;         % (m)  opening length compensating port 1
        tpc.x23 = tpc.stroke2;             % (m)  opening length compensating port 2
        
        % Expected output function diagram
        
        tpc.pushRodF = [0 100 4000];       % (N) Push rod force
        tpc.circuitP = [0 0   4.4e6];      % (Pa or N/m^2) Brake pressure vector
        
    case 4
        
        tpc.dp = 25.40*1e-3;               % (m) First and second circuit piston diameter
        tpc.stroke1 = 19*1e-3;             % (m) First circuit piston stroke
        tpc.stroke2 = 14*1e-3;             % (m) Second circuit piston stroke
        tpc.totalStroke = 33.0*1e-3;       % (m) Total stroke
        tpc.disp1 = 9.2*1e-6;              % (m^3) First circuit displacement
        tpc.disp2 = 6.5*1e-6;              % (m^3) Second circuit displacement
        tpc.totalDisp = 15.7*1e-6;         % (m^3) First circuit displacement
        tpc.maxPress = 150*1e5;            % (Pa or N/m^2) Max pressure
        tpc.k1 = 1.9271e+04;               % (N/m) First spring stiffness
        tpc.k2 = 2.6151e+04;               % (N/m) Second spring stiffness
        tpc.defLL = 0.0045;                % (m) First spring compression
        tpc.defLR = 0.0033;                % (m) Second spring compression
        tpc.aPist = (pi/4)*tpc.dp^2;       % (m^2) Pressure acting piston area
        
        % Compensating port length vector
        
        % x11 and x21 are the left most position for piston 1 and 2 respectively in
        % tandem primary cylinder. x12 and x22 defines when compensating port 1 and
        % 2 are starting to open for flow.
        
        tpc.x11 = 0;                       % (m)  opening length compensating port 1
        tpc.x21 = 0;                       % (m)  opening length compensating port 2
        tpc.x12 = 1.2e-3;                  % (m)  opening length compensating port 1
        tpc.x22 = 5e-4;                    % (m)  opening length compensating port 2
        tpc.x13 = tpc.totalStroke;         % (m)  opening length compensating port 1
        tpc.x23 = tpc.stroke2;             % (m)  opening length compensating port 2
        
        % Expected output function diagram
        
        tpc.pushRodF = [0 100 4000];       % (N) Push rod force
        tpc.circuitP = [0 0   7e6];        % (Pa or N/m^2) Brake pressure vector
        
end

% Brake circuit capacity parameter

tpc.v2M = tpc.v2D+tpc.aPist*(tpc.x13-tpc.x23);     % (m^3) Brake circuit 1 max volume
tpc.v4M = tpc.v4D+tpc.aPist*(tpc.x23);             % (m^3) Brake circuit 2 max volume
tpc.vol1 = tpc.v2M-tpc.v2D-tpc.aPist*tpc.x12;      % (m^3) Fluid chamber capacity for brake circuit 1 : front wheels
tpc.vol2 = tpc.v4M-tpc.v4D-tpc.aPist*tpc.x22;      % (m^3) Fluid chamber capacity for brake circuit 2 : rear wheels
tpc.loadP1 = tpc.circuitP(3);                      % (Pa) Pressure at full capacity for brake circuit 1
tpc.loadP2 = tpc.circuitP(3);                      % (Pa) Pressure at full capacity for brake circuit 2

%% Brake caliper parameters calculation

fcdb.dPist = 45e-3;                                                             % (m) Caliper disk brake piston diameter
fcdb.area =(pi/4)*fcdb.dPist^2;                                                 % (m^2) Caliper disk brake piston area
fcdb.lPistDeadV = 0.005e-3;                                                     % (m) Caliper disk brake piston cylinder dead volume length
fcdb.deadV = fcdb.area*fcdb.lPistDeadV;                                         % (m^3) Caliper disk brake piston dead volume
fcdb.runClear = 0.005e-3;                                                       % (m) Caliper disk brake running clearance
fcdb.clearV = fcdb.area*fcdb.runClear;                                          % (m^3) Caliper disk brake running clearance volume
fcdb.pistNum = 2;                                                               % Number of pistons per caliper
fcdb.effVolF = (tpc.vol1-2*fcdb.pistNum*fcdb.clearV)/(2*fcdb.pistNum);          % (m^3) Front wheel caliper disk brake piston effective volume
fcdb.effVolR = (tpc.vol2-2*fcdb.pistNum*fcdb.clearV)/(2*fcdb.pistNum);          % (m^3) Rear wheel caliper disk brake piston effective volume
fcdb.effStrokeF = (fcdb.effVolF/fcdb.area);                                     % (m) Front wheel caliper disk brake piston effective stroke
fcdb.effStrokeR = (fcdb.effVolR/fcdb.area);                                     % (m) Rear wheel caliper disk brake piston effective stroke
fcdb.complianceF = tpc.loadP1*fcdb.area/fcdb.effStrokeF;                        % (N/m) Front wheel caliper disk brake pad stiffness
fcdb.complianceR = tpc.loadP2*fcdb.area/fcdb.effStrokeR;                        % (N/m) Rear wheel caliper disk brake pad stiffness
fcdb.damp = 100;                                                                % (N/(m/s)) Damping for caliper disk brake
fcdb.mass = 0.1;                                                                % (Kg) Moving component mass in caliper disk brake
fcdb.hss = 1e10;                                                                % (N/m) Hard stop stiffness
fcdb.hsd = 1e9;                                                                 % (N/(m/s)) Hard stop damping coefficient
fcdb.reffF = 0.08;                                                              % (m) Effective radius front wheel 
fcdb.reffR = 0.08;                                                              % (m) Effective radius rear wheel
fcdb.kinFric = 0.35;                                                            % Kinetic friction coefficient
fcdb.statFric = 0.45;                                                           % Static friction coefficient
fcdb.dampDisk = 0.01;                                                           % (N-m/(rad/s))Viscous drag torque coefficient

%% Parameter for vacuum booster
vb.massActuator = 1;                % (Kg) Net vacuum booster mass (moving + non moving)
vb.massDiaphragm = 0.2;             % (Kg) Diaphragm mass
vb.massRod = 0.2;                   % (Kg) Connector rod mass
vb.freePlay = 2.5e-3;               % (m) Distance between connector and diaphragm 
vb.hss = 1e10;                       % (N/m) Hard stop stiffness
vb.hsd = 1e9;                       % (N/(m/s)) Hard stop damping coefficient 
vb.sr1 = 10;                        % (N/m) Spring 1 stiffness coefficient 
vb.sr2 = 10;                        % (N/m) Spring 2 stiffness coefficient                  
vb.sr3 = 10;                        % (N/m) Spring 3 stiffness coefficient 
vb.dc1 = 1e-3;                      % (N/(m/s)) Damping coefficient 
vb.dc2 = 1e-3;                      % (N/(m/s)) Damping coefficient 
vb.dc3 = 1e-3;                      % (N/(m/s)) Damping coefficient 
vb.totalStroke = tpc.totalStroke;   % (m) Diaphragm stroke 
vb.initX = 0;                       % (m) Initial position
vb.aDiaphragm = 0.01;               % (m^2) Diaphragm pressure acting area
vb.aPipe = 5e-5;                    % (m^2) Pipe cross-sectional area
vb.initP = 0.051325;                % (MPa) Initial pressure inside chambers
vb.initT = 293.15;                  % (K) Initial gas temperature
vb.atmT = 293.15;                   % (K) Atmosphere temperature
vb.hcGW = 100;                      % (W/m^2-K) Gas-wall heat transfer coefficient
vb.hcWA = 20;                       % (W/m^2-K) Wall-atmosphere heat transfer coefficient
vb.cp = 870;                        % (J/(Kg/K)) Specific heat of material
vb.vo = 2.5e-3;                     % (m) Valve open position for atmosphere
vb.vc = 2e-3;                       % (m) Valve close position for gas
vb.ao = 4e-6;                       % (m^2) Valve open area to atmosphere at maximum displacement
vb.ac = 4e-6;                       % (m^2) Valve initial open area to intake manifold 
vb.amin = 5e-7;                     % (m^2) Orifice leakage area 
vb.amax = 4.5e-5;                   % (m^2) Orifice maximum area 
vb.cd = 0.82;                       % Coefficient of discharge 
vb.p1L = 1e-2;                      % (m) Connection pipe 1 length - pipe from atmosphere to chamber
vb.p2L = 1e-2;                      % (m) Connection pipe 2 length - pipe across diaphragm
vb.p3L = 1e-2;                      % (m) Connection pipe 3 length - pipe from intake manifold to chamber
vb.cmixL = 2*vb.totalStroke;        % (m) Mixing chamber length
vb.deadVFract = 2;                  % Dead volume fraction of swept volume
                                            