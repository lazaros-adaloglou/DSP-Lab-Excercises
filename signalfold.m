function[y,n]=signalfold(x,n)
% fold
% y(n)=x(-n)
y=fliplr(x);
n=-fliplr(n);
end