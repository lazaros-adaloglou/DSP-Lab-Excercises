function p = signalperiodic(x,n)
p=seqperiod(x);
if p==length(n)
    p=0;
end
end