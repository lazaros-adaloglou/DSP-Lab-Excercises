function[y,t]=asignalscaldivgen(c,x,tx)
% frequency division
% x(t) t=1:l
% y(t)=x(ct)
% c>1
if tx(1)<0
    counter=1;
    while tx(counter)<0
        counter=counter+1;
    end
    xneg=x(1:counter-1);
    tneg=tx(1:counter-1);
    [yf,tf]=asignalfold(xneg,tneg);
    [ynf,tnf]=asignalscaldiv(c,yf,tf);
    [yn,nn]=asignalfold(ynf,tnf);
    y0=x(counter);
    t0=nx(counter);
    xp=x(counter+1:end);
    tp=tx(counter+1:end);
    [yp,tp]=signalscaldiv(c,xp,tp);
    y=[yn y0 yp];
    t=[tn t0 tp];
elseif tx(1)==0
    y0=x(1);
    t0=nx(1);
    xp=x(2:end);
    tp=tx(2:end);
    [yp,tp]=signalscaldiv(c,xp,tp);
    y=[y0 yp];
    t=[t0 tp];
else
    [y,t]=signalscaldiv(c,x,tx);
end