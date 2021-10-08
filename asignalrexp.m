function[x,t]=asignalrexp(r,t1,t2)
% analog real exp signal
% r^t t=t1..t2
t=t1:0.001:t2;
if t1<=t2
x=r.^t;
else
disp('t1 must be the same or smaller than t2');
x=0;
end