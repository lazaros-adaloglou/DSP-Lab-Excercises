clear;
clc;
format compact;
t1=0:0.01:4;
t2=0:0.01:3;
for i=1:length(t1)
x1(i)=1;
end
x2=3-t2;
graphConvolve(x2,x1);