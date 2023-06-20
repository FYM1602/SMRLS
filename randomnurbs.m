%%
x=[];
v=[];
% clc;clear;close all;
len=500;
delta_min=0.3;
delta_max1=5;
delta_max2=5;

mu=0;
sigma=10;
sample_freq=0.01; 
[X,X_sample] = RandNurbs(len,delta_min,delta_max1,delta_max2,mu,sigma,sample_freq);

R =  find(abs(X_sample)<0.01);
for m = 1:length(R)
    if R(m)>2000
        M = R(m);
        break;
    end
end
X_sample = X_sample(M-1:end);

X_sample = X_sample(1:30010);
vel_x=(X_sample(2:end)-X_sample(1:end-1))/0.002;

x = (2*X_sample - max(X_sample) - min(X_sample))/(max(X_sample) - min(X_sample));
x = x(1:end-1);
vel_x = vel_x(1:end);
v = (2*vel_x - max(vel_x) - min(vel_x))/(max(vel_x) - min(vel_x));
figure(1);
plot(x);
figure(2);
plot(v);
figure(3);
plot(x,v);