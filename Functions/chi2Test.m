
%Chi-square test
function [OUT, Xsquare] = chi2Test(x,m,alpha)

    Xsquare = chi2inv(1-alpha,m); %value from the chi2 distribution table
    
    if (x <= Xsquare)
        disp("passed");
        OUT = true;
    else
        disp("rejected");
        OUT = false;
    end
    
end