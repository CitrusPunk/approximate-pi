% NEED:
% Octave - can be downloaded from https://octave.org/download
% USAGE:
% 1. Open the Octave GUI.
% 2. Select File from the menu bar, then choose Open.
% 3. Navigate to the directory where the file is located and select it. Click Open to load the file into the Octave Editor.
% 4. To run the file, click the Run button in the toolbar, or press the F5 key.
% 5. If the file defines a function, enter the arguments in the Command Window and press Enter to call the function. If the file is a script, it will execute when you run it.
%
% Take care with the plot usage because it can get quite laggy depending on the iterations


iterations = 1000000; % number of points to generate
in_circle = 0;
radius = 1;

% generate iterations random x and y values between 0 and radius
x_values = rand(iterations, radius);
y_values = rand(iterations, radius);

% scale and shift x and y values to desired range
x_points = radius - radius* 2 * x_values;
y_points = radius - radius* 2 * y_values;

for i = 1:iterations
  x = x_points(i); % get x-coordinate of current point
  y = y_points(i); % get y-coordinate of current point
  distance = sqrt(x^2 + y^2); % calculate distance to (0,0) using the distance formula
  if distance < radius
    in_circle = in_circle + 1;
  end
end


points = [x_points, y_points];
plot(points(:,1), points(:,2), '.');

% Plot a circle with a radius of 1
rectangle('Position', [-1, -1, 2, 2], 'Curvature', 1, 'EdgeColor', 'r', 'LineWidth', 2);

axis equal; % set the aspect ratio to 1:1
axis([-radius, radius, -radius, radius]); % set the axis limits to match the circle size
xlabel('X');
ylabel('Y');
title('Pi-Approximation with Monte Carlo');

% Add a variable to the plot
pi = 4 * in_circle / iterations;
x_var = 0.5; % x-coordinate of the variable
y_var = 0.5; % y-coordinate of the variable
text(0, 0, sprintf('Pi = %.6f', pi), 'fontsize', 14, 'backgroundcolor', '#fff'); % add the variable text to the plot


