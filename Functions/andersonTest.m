%Anderson Test, it is a binary statistical hypothesis test that is used to
%assess the model and take the final decision

function [OUT,x] = andersonTest(m,m_bar,alpha)
    
    x = m_bar/m;
    if x <= alpha
        OUT = true; %test passed, accept H0
    else 
        OUT = false; %test failed, accept H1
    end

end