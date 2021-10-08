function [y,t]=asignaladd(x1,t1,x2,t2)
% addition
% y(t)=x1(t)+x2(t)
t=min(min(t1),min(t2)):0.001:max(max(t1),max(t2));
y1=zeros(1,length(t));
y2=y1;
y1(find((t>=min(t1))&(t<=max(t1))==1))=x1;
y2(find((t>=min(t2))&(t<=max(t2))==1))=x2;
y=y1+y2;
end