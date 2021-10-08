function [y]=signalcirconv(x1,x2,N)
% circular convolution
% y(n)=x1(n) N x2(n)
x1=[x1 zeros(1,N-length(x1))];
x2=[x2 zeros(1,N-length(x2))];
m=0:1:N-1;
x2=x2(mod(-m,N)+1);
H=zeros(N,N);
for n=1:1:N
H(n,:)=signalcirshift(x2,n-1,N);
end
y=x1*H';
end