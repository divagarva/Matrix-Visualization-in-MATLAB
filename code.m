% Matrix Visualization Project in MATLAB

clc;        % Clear the command window
clear;      % Clear all variables from the workspace

% Display the menu for matrix visualization options
fprintf('Matrix Visualization in MATLAB\n');
fprintf('----------------------------------\n');
fprintf('1. Heatmap\n');
fprintf('2. Surface Plot\n');
fprintf('3. Contour Plot\n');
fprintf('4. Exit\n');

choice = input('Enter the visualization number (1-4): ');

% User inputs the matrix
A = input('Enter the matrix A (in the form [1 2 3; 4 5 6; 7 8 9]): ');

switch choice
    case 1
        % Heatmap visualization
        figure;
        heatmap(A);
        title('Heatmap of Matrix A');
        xlabel('Columns');
        ylabel('Rows');
        
    case 2
        % Surface plot visualization
        [X, Y] = meshgrid(1:size(A, 2), 1:size(A, 1)); % Create grid
        figure;
        surf(X, Y, A);
        title('Surface Plot of Matrix A');
        xlabel('X-axis');
        ylabel('Y-axis');
        zlabel('Values');
        colorbar; % Show color scale
        
    case 3
        % Contour plot visualization
        [X, Y] = meshgrid(1:size(A, 2), 1:size(A, 1)); % Create grid
        figure;
        contour(X, Y, A);
        title('Contour Plot of Matrix A');
        xlabel('X-axis');
        ylabel('Y-axis');
        colorbar; % Show color scale
        
    case 4
        % Exit the program
        disp('Exiting the program.');
        return;
        
    otherwise
        disp('Invalid selection. Please choose a number between 1 and 4.');
end
