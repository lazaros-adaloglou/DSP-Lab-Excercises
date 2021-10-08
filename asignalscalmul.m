function[y,t]=asignalscalmul(c,x,tx)
% frequency multiplication
% x(t) t=1:l
% y(t)=x(t/c)
% c>1
if tx(1)>0
tl=length(x);
m=tl*c;
for i=1:m
y(i)=0;
if mod(i,c)==0
y(i)=x(i/c);
end
end
t=nx(1):0.001:length(y);
else
disp("use generalized function");
end
end