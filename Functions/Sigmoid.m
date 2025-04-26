%This function provides the value of the sigmoid function for the logistic
%regression.

function g = Sigmoid(z)
    g = exp(z) ./ (1 + exp(z));
end
