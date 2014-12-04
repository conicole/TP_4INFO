/**
TP 9 Prolog

@author Corentin NICOLE
@author Maud LERAY
@version Annee scolaire 2014/2015
*/

% Question 1.1 %

combiner([],[]).

combiner([T|Q],List_of_binomes):-
	creer_binomes(T,Q,R1),
	combiner(Q,R2),
	append(R1,R2,List_of_binomes).

creer_binomes(_,[],[]).
creer_binomes(B1,[T|Q],[(B1,T)|Cbin]):-
	creer_binomes(B1,Q,Cbin).

/* TESTS

[eclipse 2]: combiner (["valou","maud","corentin","jessica parker","hoel","flobear","justin bieber"],L).

L = [("valou", "maud"), ("valou", "corentin"), ("valou", "jessica parker"), ("valou", "hoel"), ("valou", "flobear"), ("valou", "justin bieber"), ("maud", "corentin"), ("maud", "jessica parker"), ("maud", "hoel"), ("maud", "flobear"), ("maud", "justin bieber"), ("corentin", "jessica parker"), ("corentin", "hoel"), ("corentin", "flobear"), ("corentin", "justin bieber"), ("jessica parker", "hoel"), ("jessica parker", "flobear"), ("jessica parker", "justin bieber"), (..., ...), ...]
Yes (0.00s cpu)
[eclipse 3]: combiner (["valou","maud","corentin"],L).

[eclipse 4]: combiner (["valou","maud","corentin","flobear"],L).

L = [("valou", "maud"), ("valou", "corentin"), ("valou", "flobear"), ("maud", "corentin"), ("maud", "flobear"), ("corentin", "flobear")]

*/
% Question 1.2 %

check_acc(_,[]).

check_acc(P,[(Tb1,Tb2)|Q]):-
	\==(P,Tb1),
	\==(P,Tb2),
	check_acc(P,Q).

extraire_aux(Lbin,0,TP,Lbin,TP).

extraire_aux([(B1,B2)|Q], NbBinomes, TP, RemainingBinomes, Acc ):-
	\==(NbBinomes,0),
	check_acc(B1,Acc),
	check_acc(B2,Acc),
	NbBinomesRes is NbBinomes - 1,
	extraire_aux(Q, NbBinomesRes, TP, RemainingBinomes, [(B1,B2)|Acc]).

extraire_aux([(B1,B2)|Q], NbBinomes, TP, [(B1,B2)|RemainingBinomes], Acc ):-
	\==(NbBinomes,0),
	not(check_acc(B1,Acc)),
	extraire_aux(Q, NbBinomes, TP, RemainingBinomes, Acc).

extraire_aux([(B1,B2)|Q], NbBinomes, TP, [(B1,B2)|RemainingBinomes], Acc ):-
	\==(NbBinomes,0),
	not(check_acc(B2,Acc)),
	extraire_aux(Q, NbBinomes, TP, RemainingBinomes, Acc).

extraire(AllPossibleBinomes, NbBinomes, TP, RemainingBinomes ):-
	extraire_aux(AllPossibleBinomes, NbBinomes, TP, RemainingBinomes, [] ).
	
/* TESTS

[eclipse 49]: combiner(["valou","maud","coco","flobear","hoel","justin"],Binomes),extraire(Binomes,2,TP,R).

Binomes = [("valou", "maud"), ("valou", "coco"), ("valou", "flobear"), ("valou", "hoel"), ("valou", "justin"), ("maud", "coco"), ("maud", "flobear"), ("maud", "hoel"), ("maud", "justin"), ("coco", "flobear"), ("coco", "hoel"), ("coco", "justin"), ("flobear", "hoel"), ("flobear", "justin"), ("hoel", "justin")]
TP = [("coco", "flobear"), ("valou", "maud")]
R = [("valou", "coco"), ("valou", "flobear"), ("valou", "hoel"), ("valou", "justin"), ("maud", "coco"), ("maud", "flobear"), ("maud", "hoel"), ("maud", "justin"), ("coco", "hoel"), ("coco", "justin"), ("flobear", "hoel"), ("flobear", "justin"), ("hoel", "justin")]
*/

% Question 1.3 %

les_tps(Copains, Tps) :-
	combiner(Copains, Binomes),
	longueur_liste(Copains,NbBinomes),
	NbBinomesRes is NbBinomes//2,
	extraire_all(Binomes,NbBinomesRes,Tps).

extraire_all([],_,[]).

extraire_all(Binomes,NbBinomes,[TP|Tps]):-
	extraire(Binomes,NbBinomes,TP,RemainingBinomes),
	extraire_all(RemainingBinomes,NbBinomes,Tps).

longueur_liste([],0).

longueur_liste([_|Q],Res):-
	longueur_liste(Q,R2),
	Res is R2+1.
	
/* TESTS

[eclipse 5]: les_tps(["coco","valou","maud","flobear"],Tps).

Tps = [[("maud", "flobear"), ("coco", "valou")], [("valou", "flobear"), ("coco", "maud")], [("valou", "maud"), ("coco", "flobear")]]

*/
