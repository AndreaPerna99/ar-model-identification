%This function performs the Newton-Raphson algorihm

function [Theta] = NewtonRaphson(Ytrain,Theta,PHITrain,alpha,delta,J,k)

    while 1 %it loops until the stopping criterion is fullfilled
        
        gradJ = LRCostFuncDeriv(PHITrain,Ytrain,Theta,1); %gradient of J
        HessJ=LRCostFuncDeriv(PHITrain,Ytrain,Theta,2); %hessian of J
        Theta = Theta - alpha*inv(HessJ)*gradJ; 
        J(k)=-myLRCostFunc(PHITrain,Ytrain,Theta); %loss function J  
        
        %stopping criterion
        if (abs(J(k)-J(k-1))<delta)
            break;
        end
        
        pause(0.1);
        k=k+1;
        
    end
end