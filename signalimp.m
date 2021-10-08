function [x,n]=signalimp(n0,n1,n2)
% discrete impulse signal
% δ(n-n0) n=n1..n2
n=n1:n2;
if n0>=n1 && n0<=n2
x=(n-n0)==0; 
else 
x=zeros(1,length(n)); 
end
end