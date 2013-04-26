%%Fuzzy Sets
:-domain(age(0,100,years)).
:-fuzzy_set(age,[young(0,0,30,40), middle(30,40,50,70), old(50,70,100,100)]).

%%Facts
person(john,young).
person(warren,very#young).
person(mary,age#31).
person(paul(about#age#35)).

%%Proximity equations
teenager~young = 0.8.