t=-10:10;
y=q3fourierfunct(t);
plot(t,y);

w=2*pi/5;

for t=10:51
    seri=(1/3)*(((power(exp(1),(-1j*w))*(1+1j*w)/(w*w)))-(1/(w*w)))*(power(exp(1),(1j*w*t)));

    fprintf('Seri(%d)= %.4d \n',t,seri);
end