function idx = spec_clustering(A,k)
D = diag(sum(A,2));
L = D - A;
[v,d] = eig(L);
V = v(:,1:k);
idx = kmeans(V,k);
end
