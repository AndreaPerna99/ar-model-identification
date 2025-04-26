%Least Squares Function for Identification of models.
%This function estimates the vector of parameters ThetaHat related to the 
% specified model,indicated through the variable type

function [Theta]=myLS(y,u,n,type)

    N=length(y)-n; %number of data points
    
    switch(type) %it evaluates all the possible cases

        case 'ARX'
            Hu = myHank(u,n); 
            Hy = myHank(y,n); 
            H = [-Hy,Hu];
            y=y(n+1:end);
            Theta=pinv(H'*H/N)*H'*y/N;

        case 'FIR'
            Hu = myHank(u,n);
            H = [Hu];
            y=y(n+1:end);
            Theta=pinv(H'*H)*H'*y;

        otherwise
            %new possibilities could be implemented
    end

end