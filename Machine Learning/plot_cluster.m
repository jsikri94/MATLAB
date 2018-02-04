function [] = plot_cluster(X,idx)

n_one = find(idx==1);
n_two = find(idx==2);
cx = X';

figure
hold on
plot(cx(n_one,1),cx(n_one,2),'ko','MarkerFaceColor','r','MarkerSize',5);
plot(cx(n_two,1),cx(n_two,2),'ko','MarkerFaceColor','y','MarkerSize',5);