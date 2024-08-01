solve_4_queen(Queens):-
    Queens=[Q1,Q2,Q3,Q4],
    permutation([1,2,3,4],Queens),
    safe(Queens).

safe([]).
safe([Q|Queens]):-
    safe_from(Q,Queens,1),
    safe(Queens).

safe_from(_,[],_).
safe_from(Q,[Q1|Queens],D):-
    Q=\=Q1,
    Q=\=Q1+D,
    Q=\=Q1-D,
    D1 is D+1,
    safe_from(Q,Queens,D1).

permutation([],[]).
permutation(L,[H|T]):-
    select(H,L,R),
    permutation(R,T).

select(X,[X|T],T).
select(X,[Y|T],[Y|R]):-
    select(X,T,R).
