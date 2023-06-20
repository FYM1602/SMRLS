n = 9;
dt = 0.01;
Nt = 1;
T = 300;
n_steps = T/dt;
W0 = zeros(n,1);
P0 = 10*eye(n,n);
H0 = zeros(100,100,n);
Y0 = zeros(100,100);
Q0 = zeros(100,100);%flag of each partition
error1 = [];
error2 = [];
error3 = [];
error4 = [];
Y = [];
F = [];
w1 = [];
w2 = [];
w3 =[];
w4 = [];
x1 = x;
x2 = v;
X1 = [];
X2 = [];
N1 = [];
N2 = [];
N3 = [];
N4 = [];
%%
%SGD based real-time learning
for i = 0:n_steps
    y = approximated_function([x1((i+1)*Nt);x2((i+1)*Nt)],i*dt);
    if i == 0
    [S,f] = RBFNN([x1((i+1)*Nt);x2((i+1)*Nt)],W0);
    W1 = SGD(W0,S,y);
    else
    [S,f] = RBFNN([x1((i+1)*Nt);x2((i+1)*Nt)],W1);
    W1 = SGD(W1,S,y);
    end
    N1 = [N1 norm(W1)];
    error1 = [error1 (y-f)];
    Y = [Y y];
    w1 = [w1 W1];
end
plot(dt*(0:n_steps),error1);
hold on;

%%
%FFRLS based learning
for i = 0:n_steps
    y = approximated_function([x1((i+1)*Nt);x2((i+1)*Nt)],i*dt);
    if i == 0
    [S,f] = RBFNN([x1((i+1)*Nt);x2((i+1)*Nt)],W0);
    [W2,P] = FFRLS(W0,P0,S,y);
    else
    [S,f] = RBFNN([x1((i+1)*Nt);x2((i+1)*Nt)],W2);
    [W2,P] = FFRLS(W2,P,S,y);
    end
    error2 = [error2 (y-f)];
     N2 = [N2 norm(W2)];
    w2 = [w2 W2];
end
plot(dt*(0:n_steps),error2);
hold on;

%%
%VDFRLS based learning
R0 = 0.1*eye(n,n);
PI0 = 0.1*eye(n,n);
for i = 0:n_steps
    y = approximated_function([x1((i+1)*Nt);x2((i+1)*Nt)],i*dt);
    if i == 0
    [S,f] = RBFNN([x1((i+1)*Nt);x2((i+1)*Nt)],W0);
    [W3,PI,R] = VDFRLS(W0,PI0,R0,S,y);
    else
    [S,f] = RBFNN([x1((i+1)*Nt);x2((i+1)*Nt)],W3);
    [W3,PI,R] = VDFRLS(W3,PI,R,S,y);
    end
    error3 = [error3 (y-f)];
     N3 = [N3 norm(W3)];
      w3 = [w3 W3];
end
plot(dt*(0:n_steps),error3);
hold on;


%%
%SMRLS based learning
Q = [];
P0 = 10*eye(n,n);
for k = 0:n_steps
    y = approximated_function([x1((k+1)*Nt);x2((k+1)*Nt)],k*dt);
i = round(x1((k+1)*Nt)*50)+50;
j = round(x2((k+1)*Nt)*50)+50;
if i == 0
    i = 1;
end
if j ==0
    j = 1;
end

    if k == 0
    [S,f] = RBFNN([x1((k+1)*Nt);x2((k+1)*Nt)],W0);
    [W4,P] = SMRLS(W0,P0,S,y,Q0(i,j),Y0(i,j),squeeze(H0(i,j,:)));
    else
    [S,f] = RBFNN([x1((k+1)*Nt);x2((k+1)*Nt)],W4);
    [W4,P] = SMRLS(W4,P,S,y,Q0(i,j),Y0(i,j),squeeze(H0(i,j,:)));
    end
Q = [Q Q0(i,j)];
Q0(i,j) = 1;
Y0(i,j) = y;
H0(i,j,:) = S;

error4 = [error4 (y-f)];
X1 = [X1 x1((k+1)*Nt)];
X2 = [X2 x2((k+1)*Nt)];
w4 = [w4 W4];
N4 = [N4 norm(W4)];
end
plot(dt*(0:n_steps),error4);
hold on;
legend('SGD','FFRLS','VDFRLS','SMRLS');
% figure(2);
% plot(dt*(0:n_steps),F);
%%
%evolving weights
W = w4;
figure(3);
for q = 1:n
    plot(dt*(0:n_steps),W(q,:));
    hold on;
end
%%
figure(4)
plot(X1,X2);
    