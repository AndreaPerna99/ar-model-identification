%This function performs the Akaike Information Criterion, that is an 
% improvement of the well kwown Final Prediction Error (FPE).
% It is better than FPE it could be derived from this latter by taking
% the logarithm and multiplying by N.

function [ AIC ] = myAIC(y,u,ThetaHat,type)

    N = length(y); %number of data points
    p=length(ThetaHat); %number of parameters
        
    penalty = 2*p; %penalty term
    
    J = myCostFunc(y,u,ThetaHat,type);
    
    AIC = N*log(J) + penalty;

end

