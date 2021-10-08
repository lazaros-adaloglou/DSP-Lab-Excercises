function [xe,xo,m] = signalevenodd(x,n)
if any (imag(x)~=0)
    error('x is not a real sequence')
end
xe=(1/2)*(x+fliplr(x));
xo=(1/2)*(x-fliplr(x));
m=n;
end