%This function takes the empty set Ytrain for the binary classification
%problem and gives as a result the full set with the proper values 1 and 0

function [YtrainB] = binaryClassification(Ytrain,Utrain,class)
    for i=1:length(Utrain)
        if (Ytrain(i) == class)
            YtrainB(i) = 1; %it belongs to class Ci
        else 
            YtrainB(i) = 0; %it belongs to the rest
        end
    end
    YtrainB = YtrainB';
end