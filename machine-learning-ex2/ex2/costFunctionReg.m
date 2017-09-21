function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta

J=(1/m)*(sum(-y'*log(sigmoid(X*theta))-(1-y')*log(1-sigmoid(X*theta)))+(lambda*sum(theta(2:end).^2))./2);
disp(X);
disp(theta);
%grad=(1/m)*X'*(sigmoid(X*theta)-y)+(theta*[0:ones(length(theta)-1)]*[1:ones(length(theta)-1)]').*(lambda/m);
grad=(1/m)*X'*(sigmoid(X*theta)-y)+theta*lambda.*[0;ones(length(theta)-1,1)]./m



% =============================================================

end
