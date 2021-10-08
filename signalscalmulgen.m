function[y,n]=signalscalmulgen(c,x,nx)
% frequency multiplication
% x(n) n=1:l
% y(n)=x(n/c)
% c>1
if nx(1)<0
   counter=1;
    while nx(counter)<0
        counter=counter+1;
    end
    xneg=x(1:counter-1);
    nneg=nx(1:counter-1);
    [yf,nf]=signalfold(xneg,nneg);
    [ynf,nnf]=signalscalmul(c,yf,nf);
    [yn,nn]=signalfold(ynf,nnf);
    y0=x(counter);
    n0=nx(counter);
    xp=x(counter+1:end);
    np=nx(counter+1:end);
    [yp,np]=signalscalmul(c,xp,np);
    y=[yn y0 yp];
    n=[nn n0 np];
elseif nx(1)==0
    y0=x(1);
    n0=nx(1);
    xp=x(2:end);
    np=nx(2:end);
    [yp,np]=signalscalmul(c,xp,np);
    y=[y0 yp];
    n=[n0 np];
else
    [y,n]=signalscalmul(c,x,nx);
end