/**
TP 4 Arbres binaires - Prolog

@author Maud LERAY
@author Corentin NICOLE
@version Annee scolaire 2014/2015
*/


/*
-------------------------------------------------------------------------------
 Définition des prédicats
-------------------------------------------------------------------------------
*/

/* QUESTION 2.1 */

arbre_binaire(vide).
arbre_binaire(arb_bin(R,G,D)):- 
        integer(R),
        arbre_binaire(G),
        arbre_binaire(D).

/*********** TESTS ***********

[eclipse 2]: arbre_binaire(arb_bin(1, 
        arb_bin(2, arb_bin(6, vide, vide), vide),
        arb_bin(3, arb_bin(4, vide, vide), arb_bin(5, vide, vide)))).

Yes (0.00s cpu)
[eclipse 3]: arbre_binaire(arb_bin(1,
        arb_bin(2, arb_bin(6, vide, vide), vide),
        arb_bin(3, arb_bin(4, vide, vide), arb_bin(A, vide, vide)))).

No (0.00s cpu)

******************************/

/* QUESTION 2.2 */

dans_arbre_binaire(E,arb_bin(E,_,_)) :-
        !. % Arreter d'explorer lorsqu'on trouve un element.
dans_arbre_binaire(E,arb_bin(_,G,D)):-   
        dans_arbre_binaire(E,G);
        dans_arbre_binaire(E,D).

/*********** TESTS ***********

[eclipse 11]: dans_arbre_binaire(3,
        arb_bin(1,
                arb_bin(2,
                arb_bin(6, vide, vide), vide), arb_bin(3, arb_bin(4, vide, vide),
                arb_bin(5, vide, vide)))).

Yes (0.00s cpu, solution 1, maybe more) ? ;

[eclipse 12]: dans_arbre_binaire(9,
        arb_bin(1,
                arb_bin(2, 
                arb_bin(6, vide, vide), vide),
                arb_bin(3, arb_bin(4, vide, vide), arb_bin(5, vide, vide)))).

No (0.00s cpu)

******************************/

/* QUESTION 2.3 */

sous_arbre_binaire(A,A) :-
        !.  % Arreter l'exploration quand on trouve un sous arbre égale.
sous_arbre_binaire(S,arb_bin(_,G,D)):-
        sous_arbre_binaire(S,G);
        sous_arbre_binaire(S,D).

/*********** TESTS ***********

[eclipse 14]: sous_arbre_binaire(arb_bin(6,vide,vide),
         arb_bin(3,
                arb_bin(4, vide, vide), 
                arb_bin(5, arb_bin(6, vide, vide),arb_bin(7, vide, vide)))).

Yes (0.00s cpu, solution 1, maybe more) ? ;

No (0.00s cpu)
[eclipse 15]: sous_arbre_binaire(arb_bin(12,vide,vide),
         arb_bin(3,
                arb_bin(4, vide, vide),        
                arb_bin(5, arb_bin(6, vide, vide),arb_bin(7, vide, vide)))).

No (0.00s cpu)

******************************/

/* QUESTION 2.4 */

remplacer(_,_,vide,vide).
remplacer(SA1,SA2,SA1,SA2).
remplacer(SA1,SA2,arb_bin(R,G1,D1),arb_bin(R,G2,D2)):-
        remplacer(SA1,SA2,G1,G2),
        remplacer(SA1,SA2,D1,D2).

/*********** TESTS ***********

| ?- remplacer(arb_bin(4,vide,vide),
        arb_bin(35,vide,vide),
        arb_bin(3, arb_bin(4, vide, vide), arb_bin(5, vide, vide)),R).

R = arb_bin(3,
        arb_bin(35,vide,vide),
        arb_bin(5,vide,vide)) 

(16 ms) yes

******************************/


/* QUESTION 2.5 */

isomorphes(vide,vide).
isomorphes(A1,A1).
isomorphes(arb_bin(R,SA,_),arb_bin(R,_,SA)).
isomorphes(arb_bin(R,_,SA),arb_bin(R,SA,_)).
isomorphes(arb_bin(R,G1,D1),arb_bin(R,G2,D2)):-
        isomorphes(G1,D2);
        isomorphes(G2,D1).

/*********** TESTS ***********

| ?- isomorphes(arb_bin(3,arb_bin(4,vide,vide),arb_bin(5,arb_bin(6,vide,vide),
        arb_bin(7,vide,vide))),arb_bin(3,arb_bin(5,arb_bin(6,vide,vide),
        arb_bin(7,vide,vide)),arb_bin(4,vide,vide))).

true ? 

| ?- isomorphes(arb_bin(3,
                arb_bin(6,vide,vide),arb_bin(5,arb_bin(4,vide,vide),arb_bin(7,vide,vide))),
        arb_bin(3,
                arb_bin(5,arb_bin(6,vide,vide),arb_bin(7,vide,vide)),
                arb_bin(4,vide,vide))).

no

******************************/

/* QUESTION 2.6 avec conc2 **/

conc2([],L,L).
conc2([Tete|Reste],L2,[Tete|R]):-
        conc2(Reste,L2,R).

infixe(vide,[]).
infixe(arb_bin(R,G,D),L):-
        infixe(G,L1),
        infixe(D,L2),
        conc2(L1,[R|L2],L).
        
/*********** TESTS ***********

| ?- infixe(arb_bin(3, arb_bin(4, vide, vide), 
         arb_bin(5,arb_bin(6, vide, vide), arb_bin(7, vide, vide))),
         L).

L = [4,3,6,5,7]

******************************/

/* QUESTION 2.7 */

insertion(Elem,vide,arb_bin(Elem,vide,vide)).
insertion(R,arb_bin(R,G,D),arb_bin(R,G,D)).
insertion(Elem,arb_bin(R,G1,D),arb_bin(R,G2,D)):-
        Elem<R,
        insertion(Elem,G1,G2).
insertion(Elem,arb_bin(R,G,D1),arb_bin(R,G,D2)):-
        Elem>R,
        insertion(Elem,D1,D2).
        
/*********** TESTS ***********

| ?- insertion(10, 
        arb_bin(8,arb_bin(4,arb_bin(2,vide,vide),arb_bin(6,vide,vide)),vide),
        A).

A = arb_bin(8,
        arb_bin(4,arb_bin(2,vide,vide),
        arb_bin(6,vide,vide)),
        arb_bin(10,vide,vide)) ? 

(16 ms) yes

| ?- insertion(1,
        arb_bin(8, 
                arb_bin(4,arb_bin(2, vide, vide),arb_bin(6, vide, vide)), 
                arb_bin(12, arb_bin(10, vide, vide), vide)),
        A).

A = arb_bin(8,
        arb_bin(4,
                arb_bin(2,arb_bin(1,vide,vide),vide),
                arb_bin(6,vide,vide)),
        arb_bin(12,arb_bin(10,vide,vide),vide)) ? 

*****************************/

/* Question 2.8 */

insertion1(Elem,A):-
        free(A),
        A = arb_bin(Elem,_,_).
insertion1(R,arb_bin(R,_,_)).
insertion1(Elem,arb_bin(R,G,_)):-
        Elem<R,
        insertion1(Elem,G).
insertion1(Elem,arb_bin(R,_,D)):-
        Elem>R,
        insertion1(Elem,D).

/*********** TESTS ***********

 insertion1(1, 
        arb_bin(8,arb_bin(4,arb_bin(2,vide,vide),arb_bin(6,vide,vide)),vide)).

*****************************/
