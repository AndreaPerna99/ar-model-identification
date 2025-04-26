%This function provides the Loss Function related to the analyzed model
%estimation ThetaHat, that is, it provides the sum of the squares of the
%residuals. Notice that there is no minus for the Hankel matrix of the
%output, it should be inserted outside this function.

function [ J ] = myCostFunc(y,u,ThetaHat,type)
    
    N=length(y);
    p=length(ThetaHat); %number of parameters
    
    switch(type) %it evaluates all the possible cases

        case 'ARX'
            %in an ARX model the number of parameters p = 2*n
            n = p/2;
            Hu = myHank(u,n); 
            Hy = myHank(y,n); 
            H = [-Hy,Hu];
            %to check whether N-p or N-n
            J=1/(N-p)*(y(n+1:end)-H*ThetaHat)'*(y(n+1:end)-H*ThetaHat);

        case 'FIR'
            n = p;
            Hu = myHank(u,n);
            H = Hu;
            J=(y(n+1:end)-H*ThetaHat)'*(y(n+1:end)-H*ThetaHat);

        otherwise
            %new possibilities could be implemented
    end

end

