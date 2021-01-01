m = 50; 

global E; 

ii = rand(m); 

E = 10*ii*ii.'; 

k = linspace(1,50,50); 

MI = sfo_fn_mi(E,k); 

A = sfo_queyranne(MI,k); 

disp(A); 
