function [ y ] = f2( t )
if t<-1||t>1
    y=0;
else
    y=exp(-abs(t))*(1);

end