% TestGauss.m
% This script tests the NaiveGauss function using the special matrix A
% defined in the theoretical problem where a_ij = min(i, j) with n = 10.

n = 10;  % Define matrix size
A = zeros(n, n);

% Construct matrix A where a_ij = min(i, j)
for i = 1:n
    for j = 1:n
        A(i, j) = min(i, j);
    end
end

% Construct vector b
b = sum(A, 2);  % Since the expected solution is [1; 1; ...; 1]

% Solve using Naive Gaussian Elimination
x = NaiveGauss(A, b);

% Display result
disp('Computed solution:');
disp(x);

% Verify correctness
if all(abs(x - ones(n,1)) < 1e-6)
    disp('Solution is correct!');
else
    disp('Solution is incorrect.');
end
% --- Save Output to a .txt file ---
output_file = 'TestGauss_output.txt';
fid = fopen(output_file, 'w');

fprintf(fid, 'Computed solution:\n');
fprintf(fid, '%f\n', x);

if all(abs(x - ones(n,1)) < 1e-6)
    fprintf(fid, 'Solution is correct!\n');
else
    fprintf(fid, 'Solution is incorrect.\n');
end

fclose(fid);

disp(['Output saved to ', output_file]);