%gaussian test

function [ OUT ] = gaussianTest(N,gamma,alpha)

    z = 1.96; 

    if abs(gamma) <= (z/sqrt(N))
        OUT = true;
    else 
        OUT = false;
    end
end