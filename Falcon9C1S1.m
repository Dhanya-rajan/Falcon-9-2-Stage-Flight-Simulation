function [dqdt] = Falcon9C1S1(t,q)
%data
g0 = 9.81;
dia_F9 = 3.7;
Cd = 0.8;
rho0 = 1.225;
RE = 6378000;

%stage 1 Specific
theta = 0;   %+(45-0)/160*t;
T0 = 8e6;
m0 = 550000;
md = 2500;

m = m0 - md*t;

%write my vars in terms of q
x = q(1);
y = q(2);
Vx = q(3);
Vy = q(4);

r = sqrt(x^2 + y^2);
V_mag = sqrt(Vx^2 + Vy^2);
h = r - RE;
rho = rho0*exp(-0.00012*h);
g = g0*RE^2/r^2;

dxdt = Vx;
dydt = Vy;

T = T0*[sind(theta);cosd(theta)];
Fg = [0,-m*g]; %*[x/r;y/r];   --Flat Earth Assumption--
D = [0,0];  %-1/2*rho*V_mag*(pi*dia_F9^2/4)*Cd*[Vx;Vy];

dVxdt = (T(1)+Fg(1)+D(1))/m;
dVydt = (T(2)+Fg(2)+D(2))/m;

dqdt = [dxdt;dydt;dVxdt;dVydt];

end