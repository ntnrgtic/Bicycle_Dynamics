%% BICYCLE MODEL PARAMETERS INITIALIZATION

m_rider = 75;
m_bicycle = 12;
m_otherParts = 5;
m = m_rider + m_bicycle + m_otherParts; % mass of bicycle (with rider)
g = 9.8; % m/s^2
a = 0.3; % tentatively
b = 0.8; % wheelbase (in m)
c = 0.3; % trail
h = 0.7; % height on COM above ground when phi = 0 (tentatively)   
lambda = 75*pi/180; % head angle
J = m*h^2; % Jxx
D = m*a*h; % Jxz

mr = m_rider;
hr = 0.7; % z position of rider's COM (tentatively)
Jr = mr*h^2; % of rider about x axis
t_humRes = 0.3; % human response time (s)
delay = floor(50/t_end*t_humRes); % closest integral time step to t_humRes when 'variable step size' (50 steps) is selected
delay = 3; % for step size = 0.1s

k1 = b^2/(V^2*sin(lambda)-b*g*cos(lambda))/(m*a*c*sin(lambda));
k2 = b*g/(V^2*sin(lambda)-b*g*cos(lambda));

% intial values
phi0 = 5*pi/180;
V = 5; % velocity in m/s

% simulation ending time
t_end = 20;