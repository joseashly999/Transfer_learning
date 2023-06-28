function imgResized = resized(img)
% RESIZEIMAGE Resizes an image to 299x299
%   imgResized = resizeImage(img) resizes the input image img to a target
%   size of 299x299 and returns the resized image as imgResized.

% Set the target size
targetSize = [299, 299];

% Resize the image to the target size
imgResized = imresize(img, targetSize);

end
