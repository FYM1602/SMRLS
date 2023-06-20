function [fx] = approximated_function(x,t)
%function f_I(x) to be approximated
if t<=50
g=9.8;mc=0.1;m=0.02;l=0.2;
else
g=9.8;mc=0.1;m=0.02;l=0.2;
end
p=l*(4/3-m*cos(x(1))^2/(m+mc));
fx=(g*sin(x(1))-m*l*x(2)^2*cos(x(1))*sin(x(1))/(mc+m))/p;
% fx = sin(x(1));
end

