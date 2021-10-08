function [conv,M] = graphConvolve(a,b,pausespacing)

if nargin < 3
    pausespacing = 0.1;
end

sizeb = size(b);
if sizeb(1) ~=1
    if sizeb(2) ~=1
        error('make sure you have vector inputs')
    else
        b = b';
    end
end

mlen = length(a)+length(b);

zeropadda = zeros(1,(mlen-length(a)));
zeropaddb = zeros(1,(mlen-length(b)));
b = [b zeropaddb]; a = [a zeropadda];

xa = 0:length(a)-1;

xb = 0:length(b)-1;

h = figure;
red = [0.8 0 0];   
subplot(211);
stem(xa,a); hold on; stem(xb,b,'Color',red);
xlim([-length(b) mlen]);
M(1) = getframe;
pause(1);       

b = fliplr(b);

xb = -fliplr(xb);

hold off;
stem(xa,a); hold on; stem(xb,b,'Color',red);
xlim([-length(b) mlen]);
M(2) = getframe;
pause(1);    

for m = 1:mlen-1
    conv(m) = sum((a(1:m).*b((end-m+1):end)));
    subplot(212); hold off; stem(conv,'k'); xlim([-length(b) mlen]);
    xb = xb+1;
    pause(pausespacing);
    subplot(211); hold off; stem(xa,a); hold on;stem(xb,b,'Color',red);xlim([-length(b) mlen]);
    M(m+2) = getframe;
end