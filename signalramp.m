function [x,n]=signalramp(n0,n1,n2)
% discrete ramp signal
% ur(n-n0) n=n1..n2
n=n1:n2;
x=zeros(1,length(n));
if n0>=n1 && n0<=n2
    for i=n 
        if i>=n0
            x(i-n1+1)=i;
        end
    end
end
end