function [ correlationResult ] = correlation( T, I )
% This function calculates cross-correlation at each (x, y) point.

R = I; % Face is assigned to local variable R.
 
% Divident part of the generalized cross-correlation.
T1 = double(T)-mean(mean(T));
I1 = double(R)-mean(mean(R));
 
% Divisor part of the generalized cross-correlation formula.
nT = sqrt(sum(sum(T1.^2)));
nI = sqrt(sum(sum(I1.^2)));
 
% Cross-correlation coefficient at point x,y is hold in variable correlationResult.
correlationResult =sum(sum( T1.*I1))/(nT*nI); % General cross correlation formula.

end