function A = similarityMatrix(X,s)
[m ,n] = size(X);
A = zeros(n,n);
for i = 1:n
    for j = 1:n
        A(i,j) = exp(-(norm(X(:,i)-X(:,j)))/(2*s*s));
    end
end
end