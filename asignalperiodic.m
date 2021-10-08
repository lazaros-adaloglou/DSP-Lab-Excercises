function p = asignalperiodic(x,t)
p=seqperiod(x);
if p==length(t)
    p=0;
end
end