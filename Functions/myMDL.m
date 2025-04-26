%This function performs the Minimum Description Length Method, that is the
% mathematical interpretation of the Occam's Razor (Parsimony Principle),
% it is better than FPE and AIC because of the presence of the logarithmic 
% term in the penalizing term.

function [ MDL ] = myMDL(y,u,ThetaHat,type)
    
    %complexity
    p=length(ThetaHat); 
    N = length(y); %number of data points
    
    J = myCostFunc(y,u,ThetaHat,type); %cost function
    
    MDL = N*log(J) + 2*p*log(N); %trade-off

end

