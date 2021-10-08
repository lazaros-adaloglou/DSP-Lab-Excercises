function s = asignalsymmetric(x,t)
    if t==-fliplr(t)
        if x==fliplr(x)
            s=1;
        elseif x==-fliplr(x)
            s=2;
        else
            s=0;
        end
    else
        s=0;
    end
end
