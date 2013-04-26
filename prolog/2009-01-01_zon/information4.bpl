%directives
:-transitivity(yes,min).

%equations
wheat~bean=0.315. 
bean~corn=0.48. 
bean~potato=0.5. 
wheat~corn=0.315. 
bean~animal=0.35. 
bean~crop=0.315.
wheat~grass=0.315. 
bean~child=0.33. 
bean~flower=0.315.
wheat~horse=0.315. 
bean~grass=0.315. 
bean~table=0.35.
wheat~human=0.205. 
bean~horse=0.335.

%search CUT
searchTerm(T,[],[]).
searchTerm(T,[X|R],L):- T~X= D, !, searchTerm(T,R,L1), insert(t(X,1,D),L1,L).
searchTerm(T,[X|R],L):- searchTerm(T,R,L).

%insert
insert(t(T,N,D), [], [t(T,N,D)]).
insert(t(T1,N1,D), [t(T2,N2,_)|R], [t(T1,N,D)|R]) :- T1 = T2, N is N1+N2.
insert(t(T1,N1,D), [t(T2,N2,D2)|R2], [t(T2,N2,D2)|R]) :- T1 \= T2, insert(t(T1,N1,D), R2, R).
g(T,L):-searchTerm(T,[agriculture,department,report,farm,own, reserve,national,average,price,loan,release, price,reserves,matured,bean, grain,enter,corn, sorghum,rates,bean,potato], L).

