clear
% VehBody
VehMass = 1200;%kg
VehWhlperAxle = 2;% 
VehFrontDis = 1.4;% m
VehRearDis = 1.6; % m
VehCGhight = 0.5;
% Drag
VehFrontalA = 3;%m^2
VehDragCoeff = 0.4;
AirDensity = 1.18;% kg/m^3
% Pitch Dynamic Off
%% Tire
Tire_R = 0.4;%m
% Tire road-force action
Tire_MagicB = 10;
Tire_MagicC = 1.9;
Tire_MagicD = 0.9;
Tire_MagicE = 0.97;
%
Tire_thrSpd = 0.01;%rad/s

Tire_K = 1e8;%N/m
Tire_Damp = 1000;% N/(m/s)
Tire_Inertia = 1;%kg*m^2;
Tire_EffMass = 1/0.4^2 ;%kg
% Tire RollRes
Tire_pressure = 250e3;%Pa
Tire_alpha = -0.003;
Tire_beta = 0.97;
Tire_A = 84e-4;
Tire_B = 6.2e-4;% s/m
Tire_C = 1.6e-4 ;%s^2/m^2
%% Transmission Gear
Motor_GearRio = 2.6;
% Mesh Loss
Motor_GearEff = 0.98;
% Faults Off
% Viscous Loss Off
%% Ideal Motor
% time constant
Motor_tTorque = 0.02;
% Loss Ploss = k * T^2
Motor_kTorque = 0.01;
% Limit
Motor_TrqMax = 400;
Motor_TrqMin = -400;
%% Motor Torque Controller
Motor_TrqKp = 600;
Motor_TrqKi = 400;
%% Ideal DC-DC Converter
DCDC_WindingRio = 500/201.6;
%% Ideal Battery
Batt_V = 201.6;%V
Batt_R0 = 0.05 ;%ohm
%% Ini Param
Veh_SpdIni = 0;%m/s
Tire_IniSpd = Veh_SpdIni/Tire_R;
windSpd = 0 ;%m/s