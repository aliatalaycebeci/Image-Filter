% This main function calculates the average face image and calculates the cross-correlation by calling correlation function.

function [] = facedetect() 

% Get images from folder. It is needed to change the directory manually to be run.
TestImage1 = rgb2gray(imread('\Users\aliatalaycebeci\Desktop\TestImages\test1.jpg'));
TestImage2 = rgb2gray(imread('\Users\aliatalaycebeci\Desktop\TestImages\test2.jpg'));
TestImage3 = rgb2gray(imread('\Users\aliatalaycebeci\Desktop\TestImages\test3.jpg'));
GroupImage1 = rgb2gray(imread('\Users\aliatalaycebeci\Desktop\TestImages\testGroup2.jpeg'));


% Each image is converted to double. 
TestImage1 = im2double(TestImage1);
TestImage2 = im2double(TestImage2);
TestImage3 = im2double(TestImage3);
GroupImage1 = im2double(GroupImage1);

% Calculate the average of 3 faces.
averageImage = (TestImage1 + TestImage2 + TestImage3) / 3;
 
% Size of face image and group images are assigned to variables p,q ; m,n respectively. 
[p,q] = size(averageImage);
[m, n] = size(GroupImage1);

% A zero matrix is initialized in size(x,y | groupImages(x,y) - averageImage(x,y)) 
corrResult = zeros(m-p,n-q);
    
   % This for loop calculates the cross-correlation at each point x,y and assigns each value to zero matrix initialized above.
   for i=1: m-p
       for j=1: n-q
           corrResult(i, j) = correlation(averageImage, GroupImage1( i:(i+p-1) , j:(j+q-1)) );
       end
   end
% Output the 3D figure of cross-correlation at each i,j point.
figure, surf(corrResult), shading flat

% Assign peak points of x and y axes to draw rectangle around the face. The peak point is obtained by find(max(2D-array)) function.
% The most similar face's top-left corner (x,y coordinates) is held in xpeak and ypeak variables. 
[ypeak, xpeak] = find(corrResult==max(corrResult(:)));

% Output the large image and draw rectangle around the face that is the most similar to the average face in dataset of 3.
    figure
    imshow(GroupImage1);
    imrect(gca, [xpeak+1, ypeak+1, (size(averageImage,2)), (size(averageImage,1))]);
end
