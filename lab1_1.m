%lab 1.1.1
format compact
close all;
clear;
clc;

n=-3:3;
x=n-2;
disp(x);
display(x);
figure();
subplot(2,1,1);
plot(n,x); %for continous representation
hold on;
subplot(2,1,2);
stem(n,x); %for discrete representation
xlabel('Discrete Time');
ylabel('Real Signal');
axis([-3 3 -5 1]); %set axis value limits
title('Signal Representation'); %give title
text(0,-2,'\leftarrow Signal x=n-2'); %print text on diagram
legend('x(n)');
hold off;


