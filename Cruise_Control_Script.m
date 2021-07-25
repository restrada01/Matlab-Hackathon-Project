% Variable Declaration

% Bicycle Characteristics
mass = 82.7;            % sum of rider, bicycle, and motor masses [kg]
wheelRadius = 0.3302;   % radius of tires wheel and tire [m]

% Drag Force
rho = 1.2041;           % air density [kg/m^3] at SATP
Cd = 1.1;               % drag coeff. of bicycle with upright rider
area = 0.510967;        % frontal area [m^2] of bicycle with rider

Kdrag = 0.5 * rho * Cd * area;      % drag constant, multiplied by v^2 for force.

% Motor Force - retrieved from torque-RPM table
MotorRPM = [20 40 60 80 100 120 138 160 178 200 218 240 258 280 298 320];
MotorTorque = [16.1 14.75 13.85 13.15 12.2 11 9.85 8.2 7.75 6.5 6 5.9 4.2 3.95 3.9 2.1];

% Rolling Resistance
Crr = 0.002;            % coefficient of R.R. for bicycle tires on concrete

% PI Controller - calculated by trial and error
Kp = 0.4;
Ki = 0.0035;