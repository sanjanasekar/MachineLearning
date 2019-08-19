function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %
    % if theta_j is the parameter for feature x_j 
    %then the computation is done using the following expression
    %theta_j := theta_j - alpha * (1/m) [sum(h(x_i) - y_i)] * x_j
    theta_1 = theta(1);
    theta_2 = theta(2);
    h_X = X * theta;
    hX_y_DIFF = h_X - y; 
    theta_1 = theta_1 - (alpha * (1/m) * (sum(hX_y_DIFF.* X(:,1))));
    theta_2 = theta_2 - (alpha * (1/m) * (sum(hX_y_DIFF .* X(:,2))));

    %Update theta_1 and theta_2 simultaneously
    theta = [ theta_1; theta_2];


    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);
    #fprintf('Iteration #%d completed \n', iter);
    #fprintf('With theta = %f\n Cost computed = %f\n', theta, J_history(iter));

end


end
