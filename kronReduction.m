%kronr reduction technique
% input the value of k
k = input('Enter the value of k: ');

% Initialize arr matrix
arr = zeros(k, k);

% Input values into arr matrix
for i = 1:k
    for j = 1:k
        arr(i, j) = input(['Enter value for arr(', num2str(i), ',', num2str(j), '): ']);
    end
end

% Perform operations on arr matrix
for i = 1:k - 1
    for j = 1:k - 1
        arr(i, j) = (arr(i, j) - (arr(i, k) * arr(k - 1, j)) / arr(k - 1, k - 1));
    end
end

% Copy arr matrix to a matrix a
a = arr(1:k-1, 1:k-1);

% Display the result
disp('Resulting matrix:');
disp(a);
