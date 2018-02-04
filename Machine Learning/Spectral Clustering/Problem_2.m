clear all; clc;
X = circs();

%considering a few values of s
s = [0.01 0.1 1 10 100];
for i = 1:length(s)
    %calculating the similarity matrix
    A = similarityMatrix(X,s(i));
    idx = spec_clustering(A,2);
    plot_cluster(X,idx);
end
%performing kmeans clustering on just the data
[idx_k,c] = kmeans(X',2);
plot_cluster(X,idx_k);
