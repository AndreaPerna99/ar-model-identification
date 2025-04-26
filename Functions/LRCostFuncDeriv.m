%This function computes the derivative of the loss function J for Logistic
%Regression for any order. It is possible to compute either the gradient
%or the Hessian by specifying respectively the orders 1 and 2. This 
%function could be improved by adding higher order derivatives in the 
%swicth-case strcuture.

%CHOICE OF THE ORDER
% 1 -> gradient of the loss function J for LR
% 2 -> hessian of the loss function J for LR

function [OUT] = LRCostFuncDeriv(Phi,Y,Theta,order)
    
    F=Sigmoid(Phi*Theta); %computation of sigmoid function f(z)
    N = length(Y);
    J = 0;

    switch (order)
        case 1 %gradient of the loss function's computation
            gradJ=Phi'*(F-Y);
            OUT = gradJ;

        case 2 %hessian of the loss function's computation
            W=diag(F.*(1-F));
            HessJ=Phi'*W*Phi;
            OUT = HessJ;

        otherwise
            disp("Not valid order.");
    end
end