% Function that generates the Hankel matrix associated to the regressor
% vector Fi

function H = myHank(s,n)
    N=length(s);
    
    H=zeros(N-n,n);
    
    for i=1:n
       H(:,i)=s(n+1-i:end-i);
    end
end
