function X=DTFT(x,n,w)
X1=zeros(length(n),length(w));
n1=n(1);
for i=n1:n(end)
X1(i-n1+1,:)=x(i-n1+1).*exp(-1i.*w*i);
end
X=sum(X1,1);
end