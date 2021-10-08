function [Xk]=signaldft(xn,N)
% DFT
% x(n) -- X(k)
% N = length of x(n)
n=0:1:N-1;
k=0:1:N-1;
WN=exp(-1i*2*pi/N);
nk=n'*k;
WNnk=WN.^nk;
Xk=xn*WNnk;
end