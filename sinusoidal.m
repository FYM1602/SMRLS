dt = 0.01;
N = 100000;
x = [];
v = [];
for i = 1:N
%     x(i) = sin(i*dt-dt);
%     v(i) = cos(i*dt-dt);
x(i) = ((20+dt*i)*sin(dt*i))/120;
v(i) = (sin(dt*i)+(20+dt*i)*cos(dt*i))/120;
end
