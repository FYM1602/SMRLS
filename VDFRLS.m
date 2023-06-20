function [W,PI,R] = VDFRLS(W0,PI0,R0,S,y)
[U,X,V] = svd(PI0);
psai = S'*U;
epsilon = 1;
lambda = 0.999;
Lb = eye(length(S),length(S));
for i = 1:length(S)
    if norm(psai(:,i))>0.5
        Lb(i,i) = sqrt(lambda);
        norm(psai(:,i));
    end
end
L = U*Lb*U';
R = R0 + L*PI0*L - PI0;
PI = L*PI0*L + S*S';
P = pinv(PI);
% W = W0 + P*S*(y-S'*W0)-P*(R-R0)*W0;
W = W0 + P*S*(y-S'*W0);
