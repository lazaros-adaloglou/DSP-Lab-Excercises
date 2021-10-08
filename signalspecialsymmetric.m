function s = signalspecialsymmetric(x,n)
if n(end)~=-n(1)
    if rem(n(end), 2) == 0 %if N is even
        if x==fliplr(x)
            s=1;
        elseif x==-fliplr(x)
            s=2;
        else
            s=0;
        end
    else
        if x==fliplr(x)
            s=3;
        elseif x==-fliplr(x)
            s=4;
             else
            s=0;
        end
    end
else 
    s=0;
end
end