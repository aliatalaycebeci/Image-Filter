t= -3:0.01:2;

for j=1:length(t) 
    y(j)=f3(t(j));
end


for j=-7:1:7 %main function plotting
plot(t-3*j,y,'b')

hold on
end
axis([-10 10 -3 3])