function [p,s] = signalspersym(x,n)
p=signalperiodic(x,n);
if p>0
    s=signalsymmetric(x,n);
else
    s=0;
end
end