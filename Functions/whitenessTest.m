%This function performs the whiteness test, a binary statistical 
%hypothesis test that could be used in model assessment, as
%well as in model order estimation, to evaluate whether a distribution
% is a zero-mean white process or not (in this project).

function [ OUT ] = whitenessTest(y,u,ThetaHat,type)

    %computation of the sequence of residuals
    res = residuals(y,u,ThetaHat,type);

    N=length(y)-n; %number of data points
    m = N/4; %number of tests

    %The autocorrelation of the residuals'sequence should be evaluated.
    %By considering normalized autocorrelation samples, it is possible to
    %evaluate m gaussian tests in lieu of a chi-squared distribution test.
    
    autoCorrEps = autocorr(res); %autocorrelation vector of residuals

    %take m gaussian tests
    for i=1:m
        gamma = autoCorrEps(i) / autoCorrEps(0);
        if not(gaussianTest(N,gamma))
            m_bar = m_bar + 1;
        end
    end

    %finally, the anderson test is performed to take the final decision
    if (andersonTest(m,m_bar,alpha))
        disp("Model accepted.");
        OUT = true;
    else 
        disp("Model rejected.");
        OUT = false;
    end

end