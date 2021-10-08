function[y,t]=asignalfold(x,t)
% fold
% y(t)=x(-t)
y=fliplr(x);
t=-fliplr(t);
end