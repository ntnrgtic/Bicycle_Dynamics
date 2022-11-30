g = 9.81; %m/s^2
h = 0.3; %m
a = 0.3; %m
b = 0.8; %m
V = 1.46;
k2 = (b*g)/(V*V*sin(lambda)-b*g*cos(lambda));
lambda = 75 * pi/180;
V_values = 1.4:5:50;

global_t = [];
global_phi = [];
global_v = [];

% for i = 1:length(V_values)
%     V = V_values(i);
%     k2 = (b*g)/(V*V*sin(lambda)-b*g*cos(lambda));
%     sim('TestModelv1.slx');
%     phiSignal = ans.yout.getElement('phi');
%     t = phiSignal.Values.Time;
%     phi = phiSignal.Values.Data;
% %     global_t = [global_t t'];
% %     global_phi = [global_phi phi'];
% %     global_v = [global_v ones(1,length(phi))*V];
%     plot3(t',ones(1,length(t'))*V,phi');
% %     zlim([0 100]);
%     hold on;
%     xlabel('time');
%     ylabel('velocity');
%     zlabel('phi');
% end
