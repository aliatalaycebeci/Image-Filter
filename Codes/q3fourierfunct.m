function [output]=q3fourierfunct(t)
[~,lenght]=size(t);
output=zeros(1,lenght);
w=2*pi/5;
for index=1:lenght
      for k=-5:1:5
            seri=(1/3)*(((power(exp(1),(-1j*w))*(1+1j*w)/(w*w)))-(1/(w*w)))*(power(exp(1),(1j*w*t)));
%         % y(0,a)=total;
%             fprintf('G(%d) ; %.2d \n',t,total);
%             a=a+1;
     end
end