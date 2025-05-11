function x = NaiveGauss(A, b)
    % Naive Gaussian Elimination for solving Ax = b
    % Input: 
    %   A - Coefficient matrix (n x n)
    %   b - Right-hand side vector (n x 1)
    % Output:
    %   x - Solution vector (n x 1)
    
    n = length(b);
    
    % Forward elimination
    for k = 1:n-1
        for i = k+1:n
            factor = A(i,k) / A(k,k);
            A(i, k:n) = A(i, k:n) - factor * A(k, k:n);
            b(i) = b(i) - factor * b(k);
        end
    end
    
    % Back-substitution
    x = zeros(n, 1);
    x(n) = b(n) / A(n,n);
    for i = n-1:-1:1
        x(i) = (b(i) - A(i, i+1:n) * x(i+1:n)) / A(i,i);
    end
end
