% Matteo Barbieri is the author of this function, it would be a shame to
% find this in your final project
%
%

function plotJ( J,a_v,b_v )
%plotJ 3D plot of the cost function
%   Detailed explanation goes here

[xGrid,yGrid] = meshgrid(a_v, b_v);
figure();
surf(xGrid, yGrid, J');
alpha 0.5
hold on
grid on
shading interp
xlabel('a');
ylabel('b');
zlabel('J(\theta)');

end

