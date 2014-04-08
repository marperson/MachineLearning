% You'd like to compute the activations of the hidden layer a(2)¡ÊR3. One way to do so is the following Octave code: 
% Theta1 is Theta with superscript "(1)" from lecture
% ie, the matrix of parameters for the mapping from layer 1 (input) to layer 2
% Theta1 has size 3x3
% Assume 'sigmoid' is a built-in function to compute 1 / (1 + exp(-z))

a2 = zeros (3, 1);
for i = 1:3
  for j = 1:3
    a2(i) = a2(i) + x(j) * Theta1(i, j);
  end
  a2(i) = sigmoid (a2(i));
end

z = Theta1 * x; a2 = sigmoid (z);
a2 = sigmoid (x * Theta1);