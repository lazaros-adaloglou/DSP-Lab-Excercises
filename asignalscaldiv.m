function[y,t]=asignalscaldiv(c,x,tx)
% frequency division
% x(t) t=1:l
% y(t)=x(ct)
% c>1
if tx(1)>0
t1=length(x);
m=floor(t1/c);
for i=1:m
y(i)=x(i*c);
end
t=tx(1):0.001:length(y);
else
disp("use generalized function");
end
end