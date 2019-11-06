t=-10:10;
y=q2fourierfunct(t);
plot(t,y);

w=2*pi/5;

for k=10:51
    seri=((1/5)*((1-(exp(-1))*(1j*k*w+1)+(1-(exp(-1)))*(1-k*1j*w))));

    fprintf('Seri(%d)= %.4d \n',k,seri);
end