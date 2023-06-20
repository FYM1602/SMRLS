function [W,P] = SMRLS(W0,P0,S,y,q_ij,y_ij,S_ij)
% q_ij = 1;
% if q_ij == 0
% W = W0 + P0*S*(y-S'*W0);
% P = P0 - (P0*(S*S')*P0)/(1+S'*P0*S);
% else 
W = W0 + P0*S*(y-S'*W0) - P0*S_ij*(y_ij-S_ij'*W0);
% W = W0 + P0*S*(y-y_ij);
% P = P0;
% P0 = P0 - (P0*S*S'*P0)/(1+S'*P0*S);
P = P0 - (P0*(S*S')*P0)/(1+S'*P0*S);
P = P + (P*(S_ij*S_ij')*P)/(1-S_ij'*P*S_ij);
% end

