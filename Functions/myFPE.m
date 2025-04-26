%This function performs the Final Prediction Error Method, to evaluate the
%Final Prediction Error value for the estimation under analysis. The
%estimation with the smallest value of FPE would be the best one in terms
%of model's order.

function [ FPE ] = myFPE(y,u,ThetaHat,type)

    N = length(y); %number of data points
    p = length(ThetaHat);

    J=myCostFunc(y,u,ThetaHat,type); %cost function

    FPE=((N+p)/(N-p))*J;

end