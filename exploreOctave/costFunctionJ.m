function J = costFunction(X, y, theta)
  
  % X is the design matric containing our training samples 
  % y is the class labels 
  
  m = size(X,1);   % # training examples no of rows in the matrix
  predictions = X * theta; % hypothesis h_x = X.theta
  sqrErrors = (predictions -y) .^ 2;
  
  J = 1/(2*m) * sum(sqrErrors);
endfunction
