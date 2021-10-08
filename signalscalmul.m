function[y,n]=signalscalmul(c,x,nx)
% frequency multiplication
% x(n) n=1:l
% y(n)=x(n/c)
% c>1
if nx(1)>0
nl=length(x);
m=nl*c;
for i=1:m
y(i)=0;
if mod(i,c)==0
y(i)=x(i/c);
end
end
n=nx(1):length(y);
else
disp("use generalized function");
end
end