function [output]=q2fourierfunct(t)
[~,lenght]=size(t);
output=zeros(1,lenght);
w=2*pi/5;
    for index=1:lenght
        for k=-10:1:10
            seri=((1/5)*((1-(exp(-1))*(1j*k*w+1)+(1-(exp(-1)))*(1-k*1j*w))));
            output(index)=output(index)+seri*(power(exp(1),(1j*w*t(index))));

        end

    end
end