function [y]=signalcirshift(x,m,N)
% circural shift
% x(n) of length N
% y(n) = x((n-m))N
x=[x zeros(1,N-length(x))];
n=0:1:N-1;
n=mod(n-m,N);
y=x(n+1);
end