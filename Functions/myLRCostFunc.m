%This function provides the expression of the cost function for Logistic
%Regression, by computing it from the values of Y and F

function [ J ] = myLRCostFunc(Phi,Y,Theta)

    J=0;
    N=length(Y);
    
    F=Sigmoid(Phi*Theta);
    
    %computation of the cost function
    J=[ones(1,N)*(Y.*log(F)+(1-Y).*log(1-F))];

end
