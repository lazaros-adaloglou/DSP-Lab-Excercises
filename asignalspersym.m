function [p,s] = asignalspersym(x,t)
p=signalperiodic(x,t);
if p>0
    s=signalsymmetric(x,t);
else
    s=0;
end
end