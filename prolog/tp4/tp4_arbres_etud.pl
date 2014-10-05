/**
TP 4 Arbres binaires - Prolog

@author Prenom1 NOM1
@author Corentin NICOLE Maud LERAY
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

[eclipse 2]: arbre_binaire(arb_bin(1, arb_bin(2, arb_bin(6, vide, vide), vide), arb_bin(3, arb_bin(4, vide, vide), arb_bin(5, vide, vide)))).

Yes (0.00s cpu)
[eclipse 3]: arbre_binaire(arb_bin(1, arb_bin(2, arb_bin(6, vide, vide), vide), arb_bin(3, arb_bin(4, vide, vide), arb_bin(A, vide, vide)))).

No (0.00s cpu)

******************************/

/* QUESTION 2.2 */

dans_arbre_binaire(E,arb_bin(E,_,_)).
dans_arbre_binaire(E,arb_bin(_,G,D)):-   
        dans_arbre_binaire(E,G);
        dans_arbre_binaire(E,D).

/*********** TESTS ***********

[eclipse 11]: dans_arbre_binaire(3,arb_bin(1, arb_bin(2, arb_bin(6, vide, vide), vide), arb_bin(3, arb_bin(4, vide, vide), arb_bin(5, vide, vide)))).

Yes (0.00s cpu, solution 1, maybe more) ? ;

No (0.00s cpu)
[eclipse 12]: dans_arbre_binaire(9,arb_bin(1, arb_bin(2, arb_bin(6, vide, vide), vide), arb_bin(3, arb_bin(4, vide, vide), arb_bin(5, vide, vide)))).

No (0.00s cpu)

******************************/

/* QUESTION 2.3 */

sous_arbre_binaire(A,A).
sous_arbre_binaire(S,arb_bin(_,G,D)):-
        sous_arbre_binaire(S,G);
        sous_arbre_binaire(S,D).

/*********** TESTS ***********

[eclipse 14]: sous_arbre_binaire(arb_bin(6,vide,vide), arb_bin(3, arb_bin(4, vide, vide), arb_bin(5, arb_bin(6, vide, vide), arb_bin(7, vide, vide)))).

Yes (0.00s cpu, solution 1, maybe more) ? ;

No (0.00s cpu)
[eclipse 15]: sous_arbre_binaire(arb_bin(12,vide,vide), arb_bin(3, arb_bin(4, vide, vide), arb_bin(5, arb_bin(6, vide, vide), arb_bin(7, vide, vide)))).

No (0.00s cpu)

******************************/

/* QUESTION 2.4 */

remplacer(SA1,SA2,vide,vide).

remplacer(SA1,SA2,arb_bin(R,SA1,D),_):-
        remplacer(SA1,SA2,arb_bin(R,SA2,D),Res1).
/*remplacer(SA1,SA2,arb_bin(R,G,SA1),_):-
        Res1 is arb_bin(R,G,SA2),
        remplacer(SA1,SA2,Res1,Res1).
remplacer(SA1,SA2,arb_bin(R,G,D),arb_bin(R,ResG,ResD)):-
        remplacer(SA1,SA2,G,ResG),
        remplacer(SA1,SA2,D,ResD).*/

/*********** TESTS ***********

******************************/

/*
-------------------------------------------------------------------------------
 Tests
-------------------------------------------------------------------------------
*/

% Quelques arbres à copier coller pour vous faire gagner du temps, mais
% n'hésitez pas à en définir d'autres

/*
arb_bin(1, arb_bin(2, arb_bin(6, vide, vide), vide), arb_bin(3, arb_bin(4, vide, vide), arb_bin(5, vide, vide)))

arb_bin(3, arb_bin(4, vide, vide), arb_bin(5, vide, vide))

arb_bin(3, arb_bin(4, vide, vide), arb_bin(5, 7, vide))

arb_bin(3, arb_bin(4, vide, vide), arb_bin(5, arb_bin(6, vide, vide), arb_bin(7, vide, vide)))

arb_bin(3, arb_bin(5, arb_bin(6, vide, vide), arb_bin(7, vide, vide)), arb_bin(4, vide, vide))

arb_bin(3, arb_bin(6, vide, vide), arb_bin(5, arb_bin(4, vide, vide), arb_bin(7, vide, vide)))

arb_bin(8, arb_bin(4, arb_bin(2, vide, vide), arb_bin(6, vide, vide)), arb_bin(12, arb_bin(10, vide, vide), vide))

arb_bin(8, arb_bin(4, arb_bin(2, _, _), arb_bin(6, _, _)), arb_bin(12, arb_bin(10, _, _), _))

arb_bin(6,arb_bin(2,arb_bin(1,vide,vide),arb_bin(4,vide,vide)),arb_bin(8,vide,arb_bin(10,vide,vide)))

arb_bin(8,arb_bin(2,arb_bin(1,vide,vide),arb_bin(4,vide,vide)),arb_bin(6,vide,arb_bin(10,vide,vide)))

arb_bin(6,arb_bin(2,arb_bin(1,vide,vide),arb_bin(4,vide,vide)),arb_bin(8,arb_bin(2,arb_bin(1,vide,vide),arb_bin(4,vide,vide)),arb_bin(10,vide,vide)))

*/