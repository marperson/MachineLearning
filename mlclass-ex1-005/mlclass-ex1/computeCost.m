function J = computeCost(X, y, theta)
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.

% ================================================================================
% No vectorized code
%tmp=0;
%for i=1:m, 
%    tmp = tmp+ (theta (1,1) + theta (2,1)*X(i,2) - y(i))^2; %differenzberechnung
%end

%J= (1/(2*m)) * tmp;

% =========================================================================
% Vectorized code
predictions = X * theta;
sqrerror = (predictions - y).^2;
J = (1/(2*m))*sum(sqrerror);


% =========================================================================
end
