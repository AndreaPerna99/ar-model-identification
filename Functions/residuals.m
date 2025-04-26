%This function computes the sequence of residuals given input and output
%sequences in addition to the relative estimation ThetaHat

function [res] = residuals(y,u,ThetaHat,type)

    p=length(ThetaHat); %number of parameters

    switch(type) %it evaluates all the possible cases

        case 'ARX'
            %in an ARX model the number of parameters p = 2*n
            n = p/2;
            Hu = myHank(u,n); 
            Hy = myHank(y,n); 
            H = [-Hy,Hu];
            res= y(n+1:end)-H*ThetaHat; %residuals

        case 'FIR'
            n = p;
            Hu = myHank(u,n);
            H = [Hu];
            res = y(n+1:end)-H*ThetaHat; %residuals

        otherwise
            %new possibilities could be implemented
    end
end