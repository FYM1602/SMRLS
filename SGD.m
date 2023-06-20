function [W] = SGD(W0,S,y)
eta = 0.02;
W = W0 + eta*S*(y-S'*W0);
end

