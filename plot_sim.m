error1 = [];
error2 = [];
error3 = [];
error4 = [];
n_steps = 10000;
dt = 0.01;
x1 = x;
x2 = v;
for i = 0:n_steps
       y = approximated_function([x1((i+1)*Nt);x2((i+1)*Nt)],i*dt);
       [S,f1] = RBFNN([x1((i+1)*Nt);x2((i+1)*Nt)],W1);
       error1 = [error1 (y-f1)];
       [S,f2] = RBFNN([x1((i+1)*Nt);x2((i+1)*Nt)],W2);
       error2 = [error2 (y-f2)];
       [S,f3] = RBFNN([x1((i+1)*Nt);x2((i+1)*Nt)],W3);
       error3 = [error3 (y-f3)];
       [S,f4] = RBFNN([x1((i+1)*Nt);x2((i+1)*Nt)],W4);
       error4 = [error4 (y-f4)];
end
figure(1);
plot(dt*(0:n_steps),error1);
hold on;
plot(dt*(0:n_steps),error2);
hold on;
plot(dt*(0:n_steps),error3);
hold on;
plot(dt*(0:n_steps),error4);
legend('SGD','FFRLS','VDFRLS','SMRLS');
% figure(2);
% plot(dt*(0:n_steps),N1);
% hold on;
% plot(dt*(0:n_steps),N2);
% hold on;
% plot(dt*(0:n_steps),N3);
% hold on;
% plot(dt*(0:n_steps),N4);