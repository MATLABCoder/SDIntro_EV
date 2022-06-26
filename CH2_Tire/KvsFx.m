Tire.MagicB = 10;
Tire.MagicC = 1.9;
Tire.MagicD = 0.9;
Tire.MagicE = 0.97;

D = Tire.MagicD;
B = Tire.MagicB;
C = Tire.MagicC;
E = Tire.MagicE;

k = -1:0.01:1;
Fz = 1000:1000:5000;
[k,Fz] = meshgrid(k,Fz);
Fx = Fz .* (D*sin(C*atan(B*k - E*(B*k - atan(B*k)))));
surf(k,Fz,Fx);
xlabel('k');
ylabel('Fz');
zlabel('Fx')
title('Fx = f(k,Fz)(魔术方程)');
%%
Vx = 0;  %
v_thr = 0.1;
wR = 0:0.01:0.5; 
Vsx = wR - Vx;
clear k
for i = 1:length(Vsx)
    if abs(Vx) > abs(v_thr)
         k(i) = Vsx(i)/abs(Vx);
    else
         k(i) = 2*Vsx(i)/(v_thr + Vx^2/v_thr);
         %k = 0;
    end
end
plot(Vsx,k,'*');
xlabel('Vsx （m/s）');
ylabel('k');
title('Vx = 0,Vthr = 0.1');
%%
Tire.MagicB = 10;
Tire.MagicC = 1.9;
Tire.MagicD = 0.9;
Tire.MagicE = 0.97;

D = Tire.MagicD;
B = Tire.MagicB;
C = Tire.MagicC;
E = Tire.MagicE;

Fz = 1000:1000:5000;
Vx = 0:0.01:0.5;
[Vx_m,Fz] = meshgrid(Vx,Fz);

v_thr = 0.1;
Vsx = 0 - Vx_m;
clear k
for i = 1:size(Vx_m,1)
    for j = 1:size(Vx_m,2)
        if abs(Vsx(i,j)) > abs(v_thr)
             k(i,j) = Vsx(i,j)/abs(Vsx(i,j));
        else
             k(i,j) = 2*Vsx(i,j)/(v_thr + Vsx(i,j)^2/v_thr);
             %k = 0;
        end
    end
    
end



Fx = Fz .* (D*sin(C*atan(B*k - E*(B*k - atan(B*k)))));
surf(Vx,Fz,Fx);
xlabel('Vx');
ylabel('Fz');
zlabel('Fx')
title('Fx = f(k,Fz)(魔术方程)');
%%
mu0 = 1;
Vthreshold = 0.001;
VehSpd = 0:0.0001:0.002;
mu = mu0 * tanh(4*VehSpd/Vthreshold);

plot(VehSpd,mu);
xlabel('VehSpd');
ylabel('mu');
title('双曲线平滑');
%%
N0 = 1;
P = 250*10^3;
P0 = 1;
alpha = -0.003;
beta = 0.97;
A = 84*10^-4;
B = 6.2*10^-4;
C = 1.6*10^-4;

VehSpd = 0:1:30;
Fz = (1000:1000:5000)*9.8;
[Vhub,N] = meshgrid(VehSpd,Fz);

F = (P/P0)^alpha .* (N/N0).^beta.*(A + B*abs(Vhub) + C* Vhub.^2);
surf(VehSpd,Fz,F);
xlabel('VehSpd');
ylabel('Fz');
zlabel('F')
title('滚动阻力');