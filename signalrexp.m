function[x,n]=signalrexp(r,n1,n2)
% discrete real exp signal
% r^n n=n1..n2
n=n1:n2;
if n1<=n2
x=r.^n;
else
disp('n1 must be the same or smaller than n2');
x=0;
end