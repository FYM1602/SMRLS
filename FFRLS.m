function [W,P] = FFRLS(W0,P0,S,y)
lambda = 0.999;
W = W0 + P0*S*(y-S'*W0);
P = (1/lambda)*(P0 - (P0*S*S'*P0)/(lambda+S'*P0*S));





