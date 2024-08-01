% define the distances between the cities
distance(a,b,10).
distance(a,c,15).
distance(a,d,20).
distance(b,c,35).
distance(b,d,25).
distance(c,d,30).
distance(b,a,10).
distance(c,a,15).
distance(d,a,20).
distance(c,b,35).
distance(d,b,25).
distance(d,c,30).

% find the distance between two cities
path(X,Y,D):-distance(X,Y,D);distance(Y,X,D).

% calculate the ttotal distance of a route
route([X,Y],D):-path(X,Y,D).
route([X,Y|Rest],D):-path(X,Y,D1),
route([Y|Rest],D2),
D is D1+D2.

% find all permutations od the cities
permutation([],[]).
permutation(L,[H|T]):-
select(H,L,R),
permutation(R,T).

%find the shortest route
tsp(Start,Path,MinDist):-
findall(D,(permutation([b,c,d],P),route([Start|P],D)),Distances),
min_list(Distances,MinDist),permutation([b,c,d],Perm),route([Start|Perm],MinDist),
Path=[Start|Perm].

%find the minimum element in a list
min_list([Min],Min).
min_list([H,K|T],Min):-
H=<K,
min_list([H|T],Min).
min_list([H,K|T],Min):-
H>K,
min_list([k|T],Min).
