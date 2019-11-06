syms y
x= -6:0.1:6;
    for j=1:length(x)
    y(j)=f2(x(j));
  
    end
    
for i=-10:10
    
plot(x+5*i,y,'g');

hold on

end
axis([-10 10 -3 3])