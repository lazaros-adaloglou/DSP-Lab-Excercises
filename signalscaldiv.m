function[y,n]=signalscaldiv(c,x,nx)
% frequency division
% x(n) n=1:l
% y(n)=x(cn)
% c>1
if nx(1)>0
n1=length(x);
m=floor(n1/c);
for i=1:m
y(i)=x(i*c);
end
n=nx(1):length(y);
else
disp("use generalized function");
end
end