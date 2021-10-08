function[y,t]=asignalscalmulgen(c,x,tx)
% frequency multiplication
% x(t) t=1:l
% y(t)=x(t/c)
% c>1
if tx(1)<0
   counter=1;
    while tx(counter)<0
        counter=counter+1;
    end
    xneg=x(1:counter-1);
    tneg=tx(1:counter-1);
    [yf,tf]=asignalfold(xneg,tneg);
    [ynf,tnf]=asignalscalmul(c,yf,tf);
    [yn,tn]=asignalfold(ynf,tnf);
    y0=x(counter);
    t0=tx(counter);
    xp=x(counter+1:end);
    tp=tx(counter+1:end);
    [yp,tp]=asignalscalmul(c,xp,tp);
    y=[yn y0 yp];
    t=[tn t0 tp];
elseif tx(1)==0
    y0=x(1);
    t0=tx(1);
    xp=x(2:end);
    tp=tx(2:end);
    [yp,tp]=asignalscalmul(c,xp,tp);
    y=[y0 yp];
    t=[t0 tp];
else
    [y,t]=asignalscalmul(c,x,tx);
end