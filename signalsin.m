function [x,n]=signalsin(a,w,ph,n1,n2)
% discrete sinusoidal signal
% x(n)=a*sin(w*n+ph) n=n1..n2
if n1<=n2
n=n1:n2;
x=a*sin(w.*n+ph);
%stem(n,x);
else
disp('n1 must be the same or smaller than n2');
n=n1:n2;
x=0;
end