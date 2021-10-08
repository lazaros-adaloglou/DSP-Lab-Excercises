function [x,tx]=asignalconv(x1,tx1,x2,tx2)
% linear convolution
% x(t)=x1(t)*x2(t)
tyb=tx1(1)+tx2(1);
tye=tx1(length(x1))+tx2(length(x2));
tx=tyb:0.001:tye;
x=conv(x1,x2);
end