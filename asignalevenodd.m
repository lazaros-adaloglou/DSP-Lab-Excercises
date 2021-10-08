function [xe,xo,to] = asignalevenodd(x,t)
if any (imag(x)~=0)
    error('x is not real')
end
xe=(1/2)*(x+fliplr(x));
xo=(1/2)*(x-fliplr(x));
to=t;
end