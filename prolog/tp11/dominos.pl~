/**
TP 11 Prolog

@author Corentin NICOLE
@author Maud LERAY
@version Annee scolaire 2014/2015
*/

%stones([stone(2, 2), stone(4, 6), stone(1, 2), stone(2, 4), stone(6, 2)]).

% stones([stone(2, 2), stone(4, 6), stone(1, 2), stone(2, 4), stone(6, 2), stone(5, 1), stone(5, 5), stone(4, 5), stone(2, 3), stone(3, 6)]).
 stones([stone(6, 6), stone(6, 5), stone(6, 4), stone(6, 3), stone(6, 2), stone(6, 1), stone(6, 0),
         stone(5, 5), stone(5, 4), stone(5, 3), stone(5, 2), stone(5, 1), stone(5, 0),
         stone(4, 4), stone(4, 3), stone(4, 2), stone(4, 1), stone(4, 0),
         stone(3, 3), stone(3, 2), stone(3, 1), stone(3, 0),
         stone(2, 2), stone(2, 1), stone(2, 0),
         stone(1, 1), stone(1, 0),
         stone(0, 0)]).

% QUESTION 1.1 %

choose(L,T,Rest):-
	choose(L,T,Rest,L).

choose([T|_],T,Rest,Mem):-
	subtract(Mem,[T],Rest).

choose([_|Q],Elt,Rest,Mem):-
	choose(Q,Elt,Rest,Mem).


% QUESTION 1.2 %

domino(Chains):-
	stones([stone(X,X)|Q]),
	chains(Q,[chain([X],[X]),chain([X],[double])],Chains),
	print_chains(Chains).


chains([],Chains,Chains).

chains(Stones,Partials,Chains):-
	choose(Stones,Elt,Rstones),
	add_dom_list(Elt,Partials,Rchain),
	chains(Rstones,Rchain,Chains).

joignable(stone(X,_),chain([X|_],_)).
joignable(stone(X,_),chain(_,[X|_])).
joignable(stone(_,Y),chain([Y|_],_)).
joignable(stone(_,Y),chain(_,[Y|_])).

add_dom_list(Stone,Lchain,Rchain):-
	add_dom_list(Stone,Lchain,Lchain,Rchain).

add_dom_list(Stone,[Chaine|Q],L,R):-
	not(joignable(Stone,Chaine)),
	add_dom_list(Stone,Q,L,R).
	

add_dom_list(Stone,[Chaine|_],L,R):-
	joignable(Stone,Chaine),
	add_dom(Stone,Chaine,Rdom),
	choose(L,Chaine,Rchoose),
	append(Rchoose,Rdom,R).
	

add_dom(stone(X,X),chain([X|Q],C2),[chain([X|[X|Q]],C2),chain([X],[double])]):-
	!.
add_dom(stone(X,X),chain(C1,[X|Q]),[chain(C1,[X|[X|Q]]),chain([X],[double])]):-
	!.

add_dom(stone(X,Y),chain([X|Q],C2),[chain([Y|[X|Q]],C2)]).
add_dom(stone(X,Y),chain(C1,[X|Q]),[chain(C1,[Y|[X|Q]])]).
add_dom(stone(X,Y),chain([Y|Q],C2),[chain([X|[Y|Q]],C2)]).
add_dom(stone(X,Y),chain(C1,[Y|Q]),[chain(C1,[X|[Y|Q]])]).




chains_to_list_of_list([], []).
chains_to_list_of_list([chain(L, [double]) | Rest], LL) :-
        length(L, 1),
        chains_to_list_of_list(Rest, LL).
chains_to_list_of_list([chain(L1, L2) | Rest], [Stones | LL]) :-
        (
            length(L1, N), N > 1 
        ; 
            L2 \== [double]
        ),
        reverse(L2, RevL2),
        append(L1, RevL2, L),
        create_stones(L, Stones),
        chains_to_list_of_list(Rest, LL).

create_stones([_], []).
create_stones([A, B | Rest], [stone(A, B) | Stones]) :-
        create_stones([B | Rest], Stones).

print_chains(Chains) :-
       chains_to_list_of_list(Chains, LL),
       (foreach(Chain, LL) do 
           writeln(Chain)).

/* %%%% TESTS %%%%

% QUESTION 1.1 %

[debug]  ?- choose([1,2,3],E,R).
E = 1,
R = [2, 3] ;
E = 2,
R = [1, 3] ;
E = 3,
R = [1, 2] ;
false.

% QUESTION 1.2 %

[eclipse 44]: domino(R).
[stone(4, 1), stone(1, 6), stone(6, 2), stone(2, 5), stone(5, double)]
[stone(6, 0), stone(0, 4), stone(4, double)]
[stone(3, 1), stone(1, 5), stone(5, 4), stone(4, 6), stone(6, double)]
[stone(5, 0), stone(0, 3), stone(3, double)]
[stone(0, 0), stone(0, 2), stone(2, double)]
[stone(0, 1), stone(1, 1), stone(1, 2), stone(2, 2), stone(2, 4), stone(4, 4), stone(4, 3), stone(3, 5), stone(5, 5), stone(5, 6), stone(6, 6), stone(6, 3), stone(3, 3), stone(3, 2)]


*/

