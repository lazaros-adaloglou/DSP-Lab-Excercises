function [x,t]=signalanalogramp(t0,t1,t2)
% analog ramp signal
% rt(t-t0) t=t1..t2
t=t1:0.001:t2;
x=zeros(1,length(t));
if t0>=t1 && t0<=t2
    for i=1:length(t)
        if t(i)>=t0
            x(i)=t(i);
        end
    end
end
end