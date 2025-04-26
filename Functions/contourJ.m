% Matteo Barbieri is the author of this function, it would be a shame to
% find this in your final project
%
function contourJ( J,a_v,b_v )
%plotJ 3D plot of the cost function
%   Detailed explanation goes here

[xGrid,yGrid] = meshgrid(a_v, b_v);
figure();
contour(xGrid,yGrid,J','ShowText','on');
hold on;
grid on;
xlabel('a');
ylabel('b');

end