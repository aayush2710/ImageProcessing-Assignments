n = 50; 

k=5; 

X1 = rand(n/2,k)+ 4; 

X2 = rand(n/2,k); 

X = [X1;X2]; 

E = zeros(n,n); 

for i=1:n 

	    for j=1:n 

		            E(i,j) = exp(-0.5 * (norm((X(i)-X(j)),2)^2)); 

			             

			        end 

end 

 

V = 1:(n); 

E1 = sfo_fn_entropy(E,V); 

P = sfo_greedy_splitting(E1,V,2); 

P2 = kmeans(X,2); 

 

figure 

title("sfo greedy splitting");hold on 

plot(X(P{1},1),X(P{1},2),'bx'); hold on 

plot(X(P{2},1),X(P{2},2),'ro'); 

 

P_ = {}; 

P_{1} = P2==1; 

P_{2} = P2==2; 

figure 

title("KMeans");hold on 

plot(X(P_{1},1),X(P_{1},2),'bx'); hold on 

plot(X(P_{2},1),X(P_{2},2),'ro'); 
