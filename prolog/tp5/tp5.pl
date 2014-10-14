/**
TP 5 Arithmetique - Prolog

@author Maud LERAY
@author Corentin NICOLE
@version Annee scolaire 2014/2015
*/


/*
-------------------------------------------------------------------------------
 Definition des predicats
-------------------------------------------------------------------------------
*/

%%%%%%%%%  Les predicats premiers %%%%%%%%

/* QUESTION 1.1 */

add(zero,P,P).
add(P,zero,P).
add(s(X),Y,s(R)) :-
	add(X,Y,R).
	
/* QUESTION 1.2 */

sub(zero,_,zero).
sub(X,zero,X).
sub(s(X),s(Y),R) :-
	sub(X,Y,R).

/* QUESTION 1.3 */

prod(zero,_,zero).
prod(_,zero,zero).
prod(s(X),Y,Z) :-
	prod(X,Y,Rprod),
	add(Rprod,Y,Z).

/* QUESTION 1.4 */

fact(zero,s(zero)).
fact(s(X),R) :-
	fact(X,Temp),
	prod(s(X),Temp,R).

%%%%%%%%%  Representation binaire %%%%%%%%

/* QUESTION 1.5 */

%%%%%%%%%%% Binary representation
add_bit(0, 0, 0, 0, 0).
add_bit(0, 0, 1, 1, 0).
add_bit(0, 1, 0, 1, 0).
add_bit(0, 1, 1, 0, 1).
add_bit(1, 0, 0, 1, 0).
add_bit(1, 0, 1, 0, 1).
add_bit(1, 1, 0, 0, 1).
add_bit(1, 1, 1, 1, 1).


add_bin(B1,B2,BR) :-
	add_bin(B1,B2,0,BR).

add_bin(B,[],0,B).
add_bin([],B,0,B).

add_bin([B|T],[],1,[Res|Z]):-
	add_bit(B,0,1,Res,Cres),
	add_bin(T,[],Cres,Z).

add_bin([],[],1,[1]).

add_bin([T1|R1],[T2|R2],C,[Res|Z]):-	
	add_bit(T1,T2,C,Res,Cres),
	add_bin(R1,R2,Cres,Z).

/* QUESTION 1.6 */

/* inverse tous les bits du nombre */
inv_bin([],[]).

inv_bin([1|Q],[0|Qres]) :-
	inv_bin(Q,Qres).

inv_bin([0|Q],[1|Qres]) :-
	inv_bin(Q,Qres).

sub_bin(B1,B2,R) :-
	add_bin(R,B2,B1).

/* QUESTION 1.7 */

eg_zero([0]).
eg_zero([0|Q]) :-
	eg_zero(Q).

prod_bin([B],[1],[B]).
prod_bin([B],[0],[0]).

prod_bin(_,B2,[0]):-
	eg_zero(B2).

prod_bin(B1,B2,R) :-
	sub_bin(B2,[1],Btemp),
	prod_bin(B1,Btemp,Btemp2),
	add_bin(Btemp2,B1,R).
	
/* QUESTION 1.8 */

fact_bin([0],[1]).
fact_bin(B,Res) :
	sub_bin(B,[1],Btemp),
	fact_bin(Btemp,Rtemp),
	prod_bin(B,Rtemp,Res).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%           	     TESTS                %%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Q1.1 %%

/*
[eclipse 9]: add(X,Y,s(s(zero))).

X = zero
Y = s(s(zero))
Yes (0.00s cpu, solution 1, maybe more) ? ;

X = s(s(zero))
Y = zero
Yes (0.00s cpu, solution 2, maybe more) ? ;

X = s(zero)
Y = s(zero)
Yes (0.00s cpu, solution 3, maybe more) ? ;
*/

%% Q1.2 %%
/*
[eclipse 2]: sub(s(s(s(s(s(zero))))),s(zero),R).

R = s(s(s(s(zero))))
*/

%% Q1.3 %%
/*
[eclipse 8]: prod(s(s(zero)),s(s(s(zero))),Z).

Z = s(s(s(s(s(s(zero))))))
Yes (0.00s cpu, solution 1, maybe more) ? 
*/

%% Q1.4 %%

/*
[eclipse 11]: fact(s(s(s(zero))),R).

R = s(s(s(s(s(s(zero)))))) 
*/

%% Q1.5 %%
/*
 | ?- add_bin([1,1,1,1,1,1],[1],R).

R = [0,0,0,0,0,0,1] ? 

yes
| ?- add_bin([0,1],[1,1],R).      

R = [1,0,1] ? 
*/

%% Q1.6 %%
/*
| ?- sub_bin([0,0,0,1],[1],R).

R = [1,1,1,0] ? 

yes
| ?- sub_bin([0,0,1],[0,1],R).

R = [0,1,0] ? 
*/

%% Q1.7 %%
/*

| ?- prod_bin([1,1],[1,1],R). 

R = [1,0,0,1] ? 

yes
| ?- prod_bin([1],[0,1],R).   

R = [0,1] ? 

*/