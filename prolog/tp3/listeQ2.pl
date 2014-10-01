/* QUESTION 2.1 */

inclus([],_).
inclus([Tete|Reste],Y):-membre(Tete,Y),
			inclus(Reste,Y).

/*********** TESTS ***********

| ?- inclus([2,3,6],[1,2,3,4,5]).

no
| ?- inclus([2,3,4],[1,2,3,4,5]).

true ?

******************************/

non_inclus([Tete|Reste],Y):-(membre(Tete,Y),
			    non_inclus(Reste,Y));
			    hors_de(Tete,Y).

/*********** TESTS ***********

| ?- non_inclus([2,3,4],[1,2,3,4,5]).

no
| ?- non_inclus([2,3,42],[1,2,3,4,5]).

true ? 

******************************/

union_ens([],L,L).
union_ens([Tete|Reste],Y,Z):-(non_inclus([Tete],Y),
			     union_ens(Reste,[Tete|Y],Z));
			     union_ens(Reste,Y,Z).

/*********** TESTS ***********

| ?- union_ens([1,2,3],[4,5,6],Z).

Z = [3,2,1,4,5,6] ? 

yes
| ?- union_ens([1,2,2],[3,5,6],Z).

Z = [2,1,3,5,6] ? 

yes
| ?- union_ens([1,2,3],[3,5,6],Z).

Z = [2,1,3,5,6] ? 

yes

*******************************/