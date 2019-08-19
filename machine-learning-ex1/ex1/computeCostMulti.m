function J = computeCostMulti(X, y, theta)
%COMPUTECOSTMULTI Compute cost for linear regression with multiple variables
%   J = COMPUTECOSTMULTI(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.

m = size(X,1);                      % no of training samples 
H_X = X * theta;                    % hypothesis h(x)
SquareError = (H_X - y) .^ 2;       % [h(X) - y]^2
J = 1/(2*m)*sum(SquareError);       % J(theta) = 1/2m * sum(h(x_i) -y_i)^ 2



% =========================================================================

end
