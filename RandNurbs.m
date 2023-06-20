function [Y,Y_sample] = RandNurbs(len,delta_min,delta_max1,delta_max2,mu,sigma,sample_freq)
%


y=normrnd(mu,sigma,[len 1]);
delta_max=delta_max1+(delta_max2-delta_max1)*rand(len,1);
for i=1:len
   delta_t(i)=delta_min+(delta_max(i)-delta_min)*rand(1,1);
   t(i)=sum(delta_t(1:i));
end

Y=spapi(5,t,y);

Y_sample=fnval( Y, 0:sample_freq:t(end) );



end