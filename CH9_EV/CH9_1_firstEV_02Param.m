%
VehBodyParam
TireParam
% overwrite
% VehFrontDis = 1.5;% m
% VehRearDis = 1.5; % m
VehFrontDis = 1.4;% m
VehRearDis = 1.6; % m
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
%%
Veh_SpdIni = 0;%m/s
Tire_IniSpd = Veh_SpdIni/Tire_R;
windSpd = 0 ;%m/s