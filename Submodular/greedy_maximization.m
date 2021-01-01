m = 50; 

ii = rand(m); 

E = 10*ii*ii.'; 

k = linspace(1,50,50); 

Entropy = sfo_fn_entropy(E,k); 

A = sfo_greedy_lazy(Entropy , k , 10); 

B = sfo_greedy_lazy(Entropy , k , 20); 

C = sfo_greedy_lazy(Entropy , k , 30); 

disp("K=10") 

disp(Entropy(A)) 

disp("K=20") 

disp(Entropy(B)) 

disp("K=30") 

disp(Entropy(C)) 

disp("Entropy of ALL") 

disp(Entropy(k)) 

All_En = Entropy(k); 

for i=1:50 

	    if Entropy(sfo_greedy_lazy(Entropy , k , i)) >= 0.9*All_En 

		            disp("K for 90% of entropy of all the variables"); 

			            disp(i); 

				            break; 

					        end 

end 
