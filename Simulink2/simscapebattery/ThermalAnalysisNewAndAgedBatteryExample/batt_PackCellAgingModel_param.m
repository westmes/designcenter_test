%% Battery parameters

% Copyright 2022-2023 The MathWorks, Inc.

%% ModuleType1
ModuleType1.SOC_vecCell = [0, .1, .25, .5, .75, .9, 1]; % Vector of state-of-charge values, SOC
ModuleType1.V0_vecCell = [3.5057, 3.566, 3.6337, 3.7127, 3.9259, 4.0777, 4.1928]; % Open-circuit voltage, V0(SOC), V
ModuleType1.V_rangeCell = [0, inf]; % Terminal voltage operating range [Min Max], V
ModuleType1.R0_vecCell = [.0085, .0085, .0087, .0082, .0083, .0085, .0085]; % Terminal resistance, R0(SOC), Ohm
ModuleType1.AHCell = 27; % Cell capacity, AH, A*hr
ModuleType1.N0Cell = 100; % Number of discharge cycles, N
ModuleType1.dV0Cell = 0; % Change in open-circuit voltage after N discharge cycles (%)
ModuleType1.dR0Cell = 0; % Change in terminal resistance after N discharge cycles (%)
ModuleType1.dAHCell = 0; % Change in cell capacity after N discharge cycles (%)
ModuleType1.thermal_massCell = 100; % Thermal mass, J/K
ModuleType1.CoolantResistance = 1.2; % Cell level coolant thermal path resistance, K/W

%% ParallelAssemblyType1
ParallelAssemblyType1.SOC_vecCell = [0, .1, .25, .5, .75, .9, 1]; % Vector of state-of-charge values, SOC
ParallelAssemblyType1.V0_vecCell = [3.5057, 3.566, 3.6337, 3.7127, 3.9259, 4.0777, 4.1928]; % Open-circuit voltage, V0(SOC), V
ParallelAssemblyType1.V_rangeCell = [0, inf]; % Terminal voltage operating range [Min Max], V
ParallelAssemblyType1.R0_vecCell = [.0085, .0085, .0087, .0082, .0083, .0085, .0085]; % Terminal resistance, R0(SOC), Ohm
ParallelAssemblyType1.AHCell = 27; % Cell capacity, AH, A*hr
ParallelAssemblyType1.N0Cell = 100; % Number of discharge cycles, N
ParallelAssemblyType1.dV0Cell = 0; % Change in open-circuit voltage after N discharge cycles (%)
ParallelAssemblyType1.dR0Cell = 0; % Change in terminal resistance after N discharge cycles (%)
ParallelAssemblyType1.dAHCell = 0; % Change in cell capacity after N discharge cycles (%)
ParallelAssemblyType1.thermal_massCell = 100; % Thermal mass, J/K
ParallelAssemblyType1.CoolantResistance = 1.2; % Cell level coolant thermal path resistance, K/W

%% Battery initial targets

%% ModuleAssembly1.Module1
ModuleAssembly1.Module1.iCell = 0; % Cell current (positive in), A
ModuleAssembly1.Module1.vCell = 0; % Cell terminal voltage, V
ModuleAssembly1.Module1.socCell = 1; % Cell state of charge
ModuleAssembly1.Module1.numCyclesCell = 0; % Cell discharge cycles
ModuleAssembly1.Module1.temperatureCell = 298.15; % Cell temperature, K
ModuleAssembly1.Module1.vParallelAssembly = repmat(0, 4, 1); % Parallel Assembly Voltage, V
ModuleAssembly1.Module1.socParallelAssembly = repmat(1, 4, 1); % Parallel Assembly state of charge

%% ModuleAssembly1.Module2
ModuleAssembly1.Module2.iCell = 0; % Cell current (positive in), A
ModuleAssembly1.Module2.vCell = 0; % Cell terminal voltage, V
ModuleAssembly1.Module2.socCell = 1; % Cell state of charge
ModuleAssembly1.Module2.numCyclesCell = 0; % Cell discharge cycles
ModuleAssembly1.Module2.temperatureCell = 298.15; % Cell temperature, K
ModuleAssembly1.Module2.vParallelAssembly = repmat(0, 4, 1); % Parallel Assembly Voltage, V
ModuleAssembly1.Module2.socParallelAssembly = repmat(1, 4, 1); % Parallel Assembly state of charge

%% ModuleAssembly1.Module3
ModuleAssembly1.Module3.iCell = 0; % Cell current (positive in), A
ModuleAssembly1.Module3.vCell = 0; % Cell terminal voltage, V
ModuleAssembly1.Module3.socCell = 1; % Cell state of charge
ModuleAssembly1.Module3.numCyclesCell = 0; % Cell discharge cycles
ModuleAssembly1.Module3.temperatureCell = 298.15; % Cell temperature, K
ModuleAssembly1.Module3.vParallelAssembly = repmat(0, 4, 1); % Parallel Assembly Voltage, V
ModuleAssembly1.Module3.socParallelAssembly = repmat(1, 4, 1); % Parallel Assembly state of charge

%% ModuleAssembly1.Module4
ModuleAssembly1.Module4.iCell = 0; % Cell current (positive in), A
ModuleAssembly1.Module4.vCell = 0; % Cell terminal voltage, V
ModuleAssembly1.Module4.socCell = 1; % Cell state of charge
ModuleAssembly1.Module4.numCyclesCell = 0; % Cell discharge cycles
ModuleAssembly1.Module4.temperatureCell = 298.15; % Cell temperature, K
ModuleAssembly1.Module4.vParallelAssembly = repmat(0, 4, 1); % Parallel Assembly Voltage, V
ModuleAssembly1.Module4.socParallelAssembly = repmat(1, 4, 1); % Parallel Assembly state of charge

%% ModuleAssembly1.Module5
ModuleAssembly1.Module5.iCell = 0; % Cell current (positive in), A
ModuleAssembly1.Module5.vCell = 0; % Cell terminal voltage, V
ModuleAssembly1.Module5.socCell = 1; % Cell state of charge
ModuleAssembly1.Module5.numCyclesCell = 0; % Cell discharge cycles
ModuleAssembly1.Module5.temperatureCell = 298.15; % Cell temperature, K
ModuleAssembly1.Module5.vParallelAssembly = repmat(0, 4, 1); % Parallel Assembly Voltage, V
ModuleAssembly1.Module5.socParallelAssembly = repmat(1, 4, 1); % Parallel Assembly state of charge

%% ModuleAssembly2.Module1
ModuleAssembly2.Module1.iCell = 0; % Cell current (positive in), A
ModuleAssembly2.Module1.vCell = 0; % Cell terminal voltage, V
ModuleAssembly2.Module1.socCell = 1; % Cell state of charge
ModuleAssembly2.Module1.numCyclesCell = 0; % Cell discharge cycles
ModuleAssembly2.Module1.temperatureCell = 298.15; % Cell temperature, K
ModuleAssembly2.Module1.vParallelAssembly = repmat(0, 4, 1); % Parallel Assembly Voltage, V
ModuleAssembly2.Module1.socParallelAssembly = repmat(1, 4, 1); % Parallel Assembly state of charge

%% ModuleAssembly2.Module2
ModuleAssembly2.Module2.iCell = 0; % Cell current (positive in), A
ModuleAssembly2.Module2.vCell = 0; % Cell terminal voltage, V
ModuleAssembly2.Module2.socCell = 1; % Cell state of charge
ModuleAssembly2.Module2.numCyclesCell = 0; % Cell discharge cycles
ModuleAssembly2.Module2.temperatureCell = 298.15; % Cell temperature, K
ModuleAssembly2.Module2.vParallelAssembly = repmat(0, 4, 1); % Parallel Assembly Voltage, V
ModuleAssembly2.Module2.socParallelAssembly = repmat(1, 4, 1); % Parallel Assembly state of charge

%% ModuleAssembly2.Module3
ModuleAssembly2.Module3.iCell = 0; % Cell current (positive in), A
ModuleAssembly2.Module3.vCell = 0; % Cell terminal voltage, V
ModuleAssembly2.Module3.socCell = 1; % Cell state of charge
ModuleAssembly2.Module3.numCyclesCell = 0; % Cell discharge cycles
ModuleAssembly2.Module3.temperatureCell = 298.15; % Cell temperature, K
ModuleAssembly2.Module3.vParallelAssembly = repmat(0, 4, 1); % Parallel Assembly Voltage, V
ModuleAssembly2.Module3.socParallelAssembly = repmat(1, 4, 1); % Parallel Assembly state of charge

%% ModuleAssembly2.Module4
ModuleAssembly2.Module4.iCell = 0; % Cell current (positive in), A
ModuleAssembly2.Module4.vCell = 0; % Cell terminal voltage, V
ModuleAssembly2.Module4.socCell = 1; % Cell state of charge
ModuleAssembly2.Module4.numCyclesCell = 0; % Cell discharge cycles
ModuleAssembly2.Module4.temperatureCell = 298.15; % Cell temperature, K
ModuleAssembly2.Module4.vParallelAssembly = repmat(0, 4, 1); % Parallel Assembly Voltage, V
ModuleAssembly2.Module4.socParallelAssembly = repmat(1, 4, 1); % Parallel Assembly state of charge

%% ModuleAssembly2.Module5
ModuleAssembly2.Module5.iCell = 0; % Cell current (positive in), A
ModuleAssembly2.Module5.vCell = 0; % Cell terminal voltage, V
ModuleAssembly2.Module5.socCell = 1; % Cell state of charge
ModuleAssembly2.Module5.numCyclesCell = 0; % Cell discharge cycles
ModuleAssembly2.Module5.temperatureCell = 298.15; % Cell temperature, K
ModuleAssembly2.Module5.vParallelAssembly = repmat(0, 4, 1); % Parallel Assembly Voltage, V
ModuleAssembly2.Module5.socParallelAssembly = repmat(1, 4, 1); % Parallel Assembly state of charge

%% ModuleAssembly3.Module1
ModuleAssembly3.Module1.iCell = 0; % Cell current (positive in), A
ModuleAssembly3.Module1.vCell = 0; % Cell terminal voltage, V
ModuleAssembly3.Module1.socCell = 1; % Cell state of charge
ModuleAssembly3.Module1.numCyclesCell = 0; % Cell discharge cycles
ModuleAssembly3.Module1.temperatureCell = 298.15; % Cell temperature, K
ModuleAssembly3.Module1.vParallelAssembly = repmat(0, 4, 1); % Parallel Assembly Voltage, V
ModuleAssembly3.Module1.socParallelAssembly = repmat(1, 4, 1); % Parallel Assembly state of charge

%% ModuleAssembly3.Module2
ModuleAssembly3.Module2.iCell = 0; % Cell current (positive in), A
ModuleAssembly3.Module2.vCell = 0; % Cell terminal voltage, V
ModuleAssembly3.Module2.socCell = 1; % Cell state of charge
ModuleAssembly3.Module2.numCyclesCell = 0; % Cell discharge cycles
ModuleAssembly3.Module2.temperatureCell = 298.15; % Cell temperature, K
ModuleAssembly3.Module2.vParallelAssembly = repmat(0, 4, 1); % Parallel Assembly Voltage, V
ModuleAssembly3.Module2.socParallelAssembly = repmat(1, 4, 1); % Parallel Assembly state of charge

%% ModuleAssembly3.Module3
ModuleAssembly3.Module3.iCell = 0; % Cell current (positive in), A
ModuleAssembly3.Module3.vCell = 0; % Cell terminal voltage, V
ModuleAssembly3.Module3.socCell = 1; % Cell state of charge
ModuleAssembly3.Module3.numCyclesCell = 0; % Cell discharge cycles
ModuleAssembly3.Module3.temperatureCell = 298.15; % Cell temperature, K
ModuleAssembly3.Module3.vParallelAssembly = repmat(0, 4, 1); % Parallel Assembly Voltage, V
ModuleAssembly3.Module3.socParallelAssembly = repmat(1, 4, 1); % Parallel Assembly state of charge

%% ModuleAssembly3.Module4
ModuleAssembly3.Module4.iCell = 0; % Cell current (positive in), A
ModuleAssembly3.Module4.vCell = 0; % Cell terminal voltage, V
ModuleAssembly3.Module4.socCell = 1; % Cell state of charge
ModuleAssembly3.Module4.numCyclesCell = 0; % Cell discharge cycles
ModuleAssembly3.Module4.temperatureCell = 298.15; % Cell temperature, K
ModuleAssembly3.Module4.vParallelAssembly = repmat(0, 4, 1); % Parallel Assembly Voltage, V
ModuleAssembly3.Module4.socParallelAssembly = repmat(1, 4, 1); % Parallel Assembly state of charge

%% ModuleAssembly3.Module5
ModuleAssembly3.Module5.iCell = 0; % Cell current (positive in), A
ModuleAssembly3.Module5.vCell = 0; % Cell terminal voltage, V
ModuleAssembly3.Module5.socCell = 1; % Cell state of charge
ModuleAssembly3.Module5.numCyclesCell = 0; % Cell discharge cycles
ModuleAssembly3.Module5.temperatureCell = 298.15; % Cell temperature, K
ModuleAssembly3.Module5.vParallelAssembly = repmat(0, 4, 1); % Parallel Assembly Voltage, V
ModuleAssembly3.Module5.socParallelAssembly = repmat(1, 4, 1); % Parallel Assembly state of charge

%% ModuleAssembly4.Module1
ModuleAssembly4.Module1.iCell = 0; % Cell current (positive in), A
ModuleAssembly4.Module1.vCell = 0; % Cell terminal voltage, V
ModuleAssembly4.Module1.socCell = 1; % Cell state of charge
ModuleAssembly4.Module1.numCyclesCell = 0; % Cell discharge cycles
ModuleAssembly4.Module1.temperatureCell = 298.15; % Cell temperature, K
ModuleAssembly4.Module1.vParallelAssembly = repmat(0, 4, 1); % Parallel Assembly Voltage, V
ModuleAssembly4.Module1.socParallelAssembly = repmat(1, 4, 1); % Parallel Assembly state of charge

%% ModuleAssembly4.Module2
ModuleAssembly4.Module2.iCell = 0; % Cell current (positive in), A
ModuleAssembly4.Module2.vCell = 0; % Cell terminal voltage, V
ModuleAssembly4.Module2.socCell = 1; % Cell state of charge
ModuleAssembly4.Module2.numCyclesCell = 0; % Cell discharge cycles
ModuleAssembly4.Module2.temperatureCell = 298.15; % Cell temperature, K
ModuleAssembly4.Module2.vParallelAssembly = repmat(0, 4, 1); % Parallel Assembly Voltage, V
ModuleAssembly4.Module2.socParallelAssembly = repmat(1, 4, 1); % Parallel Assembly state of charge

%% ModuleAssembly4.Module3
ModuleAssembly4.Module3.iCell = 0; % Cell current (positive in), A
ModuleAssembly4.Module3.vCell = 0; % Cell terminal voltage, V
ModuleAssembly4.Module3.socCell = 1; % Cell state of charge
ModuleAssembly4.Module3.numCyclesCell = 0; % Cell discharge cycles
ModuleAssembly4.Module3.temperatureCell = 298.15; % Cell temperature, K
ModuleAssembly4.Module3.vParallelAssembly = repmat(0, 4, 1); % Parallel Assembly Voltage, V
ModuleAssembly4.Module3.socParallelAssembly = repmat(1, 4, 1); % Parallel Assembly state of charge

%% ModuleAssembly4.Module4
ModuleAssembly4.Module4.iCell = 0; % Cell current (positive in), A
ModuleAssembly4.Module4.vCell = 0; % Cell terminal voltage, V
ModuleAssembly4.Module4.socCell = 1; % Cell state of charge
ModuleAssembly4.Module4.numCyclesCell = 0; % Cell discharge cycles
ModuleAssembly4.Module4.temperatureCell = 298.15; % Cell temperature, K
ModuleAssembly4.Module4.vParallelAssembly = repmat(0, 4, 1); % Parallel Assembly Voltage, V
ModuleAssembly4.Module4.socParallelAssembly = repmat(1, 4, 1); % Parallel Assembly state of charge

%% ModuleAssembly4.Module5
ModuleAssembly4.Module5.iCell = 0; % Cell current (positive in), A
ModuleAssembly4.Module5.vCell = 0; % Cell terminal voltage, V
ModuleAssembly4.Module5.socCell = 1; % Cell state of charge
ModuleAssembly4.Module5.numCyclesCell = 0; % Cell discharge cycles
ModuleAssembly4.Module5.temperatureCell = 298.15; % Cell temperature, K
ModuleAssembly4.Module5.vParallelAssembly = repmat(0, 4, 1); % Parallel Assembly Voltage, V
ModuleAssembly4.Module5.socParallelAssembly = repmat(1, 4, 1); % Parallel Assembly state of charge

%% ModuleAssembly5.Module1
ModuleAssembly5.Module1.iCell = 0; % Cell current (positive in), A
ModuleAssembly5.Module1.vCell = 0; % Cell terminal voltage, V
ModuleAssembly5.Module1.socCell = 1; % Cell state of charge
ModuleAssembly5.Module1.numCyclesCell = 0; % Cell discharge cycles
ModuleAssembly5.Module1.temperatureCell = 298.15; % Cell temperature, K
ModuleAssembly5.Module1.vParallelAssembly = repmat(0, 4, 1); % Parallel Assembly Voltage, V
ModuleAssembly5.Module1.socParallelAssembly = repmat(1, 4, 1); % Parallel Assembly state of charge

%% ModuleAssembly5.Module2
ModuleAssembly5.Module2.iCell = 0; % Cell current (positive in), A
ModuleAssembly5.Module2.vCell = 0; % Cell terminal voltage, V
ModuleAssembly5.Module2.socCell = 1; % Cell state of charge
ModuleAssembly5.Module2.numCyclesCell = 0; % Cell discharge cycles
ModuleAssembly5.Module2.temperatureCell = 298.15; % Cell temperature, K
ModuleAssembly5.Module2.vParallelAssembly = repmat(0, 4, 1); % Parallel Assembly Voltage, V
ModuleAssembly5.Module2.socParallelAssembly = repmat(1, 4, 1); % Parallel Assembly state of charge

%% ModuleAssembly5.Module3
ModuleAssembly5.Module3.iCell = 0; % Cell current (positive in), A
ModuleAssembly5.Module3.vCell = 0; % Cell terminal voltage, V
ModuleAssembly5.Module3.socCell = 1; % Cell state of charge
ModuleAssembly5.Module3.numCyclesCell = 0; % Cell discharge cycles
ModuleAssembly5.Module3.temperatureCell = 298.15; % Cell temperature, K
ModuleAssembly5.Module3.vParallelAssembly = repmat(0, 4, 1); % Parallel Assembly Voltage, V
ModuleAssembly5.Module3.socParallelAssembly = repmat(1, 4, 1); % Parallel Assembly state of charge

%% ModuleAssembly5.Module4
ModuleAssembly5.Module4.iCell = 0; % Cell current (positive in), A
ModuleAssembly5.Module4.vCell = 0; % Cell terminal voltage, V
ModuleAssembly5.Module4.socCell = 1; % Cell state of charge
ModuleAssembly5.Module4.numCyclesCell = 0; % Cell discharge cycles
ModuleAssembly5.Module4.temperatureCell = 298.15; % Cell temperature, K
ModuleAssembly5.Module4.vParallelAssembly = repmat(0, 4, 1); % Parallel Assembly Voltage, V
ModuleAssembly5.Module4.socParallelAssembly = repmat(1, 4, 1); % Parallel Assembly state of charge

%% ModuleAssembly5.Module5
ModuleAssembly5.Module5.iCell = 0; % Cell current (positive in), A
ModuleAssembly5.Module5.vCell = 0; % Cell terminal voltage, V
ModuleAssembly5.Module5.socCell = 1; % Cell state of charge
ModuleAssembly5.Module5.numCyclesCell = 0; % Cell discharge cycles
ModuleAssembly5.Module5.temperatureCell = 298.15; % Cell temperature, K
ModuleAssembly5.Module5.vParallelAssembly = repmat(0, 4, 1); % Parallel Assembly Voltage, V
ModuleAssembly5.Module5.socParallelAssembly = repmat(1, 4, 1); % Parallel Assembly state of charge

% Suppress MATLAB editor message regarding readability of repmat
%#ok<*REPMAT>
