function [x,t]=asignalimp(t0,t1,t2)
% discrete impulse signal
% δ(t-t0) t=t1..t2
t=t1:0.001:t2;
if t0>=t1 && t0<=t2
x=(t-t0)==0; 
else 
x=zeros(1,length(t)); 
end
end