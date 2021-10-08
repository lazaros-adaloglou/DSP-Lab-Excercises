function [x,t]=asignalramp(t0,t1,t2)
% ramp signal
% ur(t-t0) t=t1..t2
t=t1:0.001:t2;
x=zeros(1,length(n));
if t0>=t1 && t0<=t2
    for i=t 
        if i>=t0
            x(i-t1+1)=i;
        end
    end
end
end