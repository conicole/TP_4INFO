/**
TP 10 Prolog

@author Corentin NICOLE
@author Maud LERAY
@version Annee scolaire 2014/2015
*/

% dana likes cody
% bess does not like dana
% cody does not like abby
% nobody likes someone who does not like her
% abby likes everyone who likes bess
% dana likes everyone bess likes
% everybody likes somebody

% Question 1.1 %

likes(_,_).

creer_pairs(_,[],[]).
creer_pairs(E,[T|Q],[likes(E,T)|Cbin]):-
	creer_pairs(E,Q,Cbin).

make_all_pairs(L,Res):-
	make_all_pairs2(L,[],Res).

make_all_pairs2([],_,[]).
make_all_pairs2([T|Q],L,Res):-
	creer_pairs(T,L,Res0),
	creer_pairs(T,[T|Q],Res1),
	make_all_pairs2(Q,[T|L],Res2),
	append(Res1,Res2,Res12),
	append(Res0,Res12,Res).

% Question 1.2 %

/*
creer_mondes([],_,[]).
creer_mondes([T|Q],L,Res):-

	creer_mondes(L,Q,Res).
	

sub_list([],[]).
sub_list([T|Q],Res):-
	creer_mondes(T,Q,Res).

sub_list([T|Q],[T]).
sub_list([T|Q],Res):-
	sub_list(Q,Res).
*/

create_world(L,Res):-
	length(L,LG),
	subl_list(L,LG,Res).

create_n(_,0,[]):-
	!.

create_n([T|Q],N,[T|Res]):-
	Nres is N-1,
	create_n(Q,Nres,Res).

create_n([_|Q],N,Res):-
	create_n(Q,N,Res).


subl_list(_,0,[]):-
	!.


subl_list(L,N,Res) :-
	create_n(L,N,Res).

subl_list(L,N,Res):-
	Nres is N-1,
	subl_list(L,Nres,Res).

% Question 1.3 %

proposition_double([]).
proposition_double([likes(P1,P2)|Q]):-
	\==(P1,P2),
	proposition_double(Q).

proposition1([likes(dana,cody)|_]).
proposition1([_|Q]):-
	proposition1(Q).

proposition2([]).
proposition2([likes(bess,Qqun)|Q]) :-
	\==(Qqun,dana),
	proposition2(Q).
proposition2([likes(P1,_)|Q]):-
	\==(P1,bess),
	proposition2(Q).

proposition3([]).
proposition3([likes(cody,Qqun)|Q]):-
	\==(Qqun,abby),
	proposition3(Q).

proposition3([likes(P1,_)|Q]):-
	\==(P1,cody),
	proposition3(Q).

proposition4([],_).

proposition4([likes(P1,P2)|Q],L):-
	member(likes(P2,P1),L),
	proposition4(Q,L).

proposition4(L):-
	proposition4(L,L).

proposition5([],_).
proposition5([likes(Qqun,bess)|Q],L):-
	member(likes(abby,Qqun),L),
	proposition5(Q,L).

proposition5([likes(_,P2)|Q],L):-
	\==(P2,bess),
	proposition5(Q,L).

proposition5(L):-
	proposition5(L,L).

proposition6([],_).
proposition6([likes(bess,Qqun)|Q],L):-
	member(likes(dana,Qqun),L),
	proposition6(Q,L).

proposition6([likes(P1,_)|Q],L):-
	\==(P1,bess),
	proposition6(Q,L).

proposition6(L):-
	proposition6(L,L).

proposition7([],_).
proposition7([P|Q],Llike):-
	member(likes(P,_),Llike),
	proposition7(Q,Llike),
	!.

people([abby, bess, cody, dana]).


test(L):-
	people(List_people),
	make_all_pairs(List_people,R),
	create_world(R,L).

possible_worlds(L):-
	people(List_people),
	make_all_pairs(List_people,R),
	create_world(R,L),
	%proposition_double(L),
	proposition1(L),
	proposition2(L),
	proposition3(L),
	proposition4(L),
	proposition5(L),
	proposition6(L),
	proposition7(List_people,L).

% Questions 1.6 and 1.7
test_possible_worlds :-
        possible_worlds(World),
        writeln(World),
        fail.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%           TEST               %%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

/* 

% QUESTION 1.1 %

[eclipse 11]: make_all_pairs([1,2],Res).

Res = [likes(1, 1), likes(1, 2), likes(2, 1), likes(2, 2)]
Yes (0.00s cpu)

% QUESTION 1.2 %
 
 [eclipse 5]: create_world([1,2,3],Res).

Res = [1, 2, 3]
Yes (0.00s cpu, solution 1, maybe more) ? ;

Res = [1, 2]
Yes (0.00s cpu, solution 2, maybe more) ? ;

Res = [1, 3]
Yes (0.00s cpu, solution 3, maybe more) ? ;

Res = [2, 3]
Yes (0.00s cpu, solution 4, maybe more) ? ;

Res = [1]
Yes (0.00s cpu, solution 5, maybe more) ? ;

Res = [2]
Yes (0.00s cpu, solution 6, maybe more) ? ;

Res = [3]
Yes (0.00s cpu, solution 7, maybe more) ? ;

Res = []
Yes (0.00s cpu, solution 8)

% QUESTION 1.3 %

[eclipse 10]: proposition1([likes(a,b),likes(b,g),likes(cody,dana)]).

No (0.00s cpu)
[eclipse 11]: proposition1([likes(a,b),likes(b,g),likes(dana,cody)]).

Yes (0.00s cpu, solution 1, maybe more) ? 

[eclipse 22]: proposition2([likes(a,b),likes(b,g), likes(bess,dana)]).

No (0.00s cpu)
[eclipse 23]: proposition2([likes(a,b),likes(b,g), likes(bess,cody)]).

Yes (0.00s cpu, solution 1, maybe more) ? 
[eclipse 24]: proposition2([likes(a,b),likes(b,g)]).

Yes (0.00s cpu)

[eclipse 13]:  proposition3([likes(a,b),likes(b,g),likes(cody,bess)]).

Yes (0.00s cpu, solution 1, maybe more) ? 
[eclipse 14]:  proposition3([likes(a,b),likes(b,g),likes(cody,abby)]).

No (0.00s cpu)
[eclipse 15]:  proposition3([likes(a,b),likes(b,g)]).

Yes (0.00s cpu)

[eclipse 6]: proposition4([likes(a,b),likes(c,d),likes(b,a),likes(d,c)]).

Yes (0.00s cpu, solution 1, maybe more) ? 
[eclipse 7]: proposition4([likes(a,b),likes(c,d),likes(b,g),likes(d,c)]).

No (0.00s cpu)
[eclipse 8]: proposition4([likes(a,b),likes(c,d),likes(d,c)]).

No (0.00s cpu)

[eclipse 29]:  proposition5([likes(a,b),likes(b,g),likes(abby,dana),likes(dana,bess)]).

Yes (0.00s cpu, solution 1, maybe more) ? 
[eclipse 30]:  proposition5([likes(a,b),likes(b,g),likes(abby,dana)]).

Yes (0.00s cpu)
[eclipse 31]:  proposition5([likes(a,b),likes(b,g),likes(dana,bess)]).

No (0.00s cpu)

[eclipse 37]:  proposition6([likes(cody,bess),likes(a,b),likes(b,g),likes(dana,cody)]).

Yes (0.00s cpu)
[eclipse 38]:  proposition6([likes(a,b),likes(b,g),likes(dana,cody)]).

Yes (0.00s cpu)
[eclipse 39]:  proposition6([likes(a,b),likes(b,g),likes(dana,cody),likes(bess,cody)]).

Yes (0.00s cpu, solution 1, maybe more) ? 
[eclipse 40]:  proposition6([likes(a,b),likes(b,g),likes(dana,cody),likes(bess,abby)]).

No (0.00s cpu)

[eclipse 18]: proposition7([likes(a,b),likes(b,a),likes(c,a),likes(b,c)]).

Yes (0.00s cpu, solution 1, maybe more) ? 

[eclipse 8]: proposition7([likes(a,b)]).

No (0.00s cpu)

% QUESTIONS 1.4 & 1.5) %

| ?- possible_worlds(L).

L = [likes(abby,abby),likes(abby,bess),likes(abby,dana),likes(bess,abby),likes(cody,cody),likes(cody,dana),likes(dana,cody),likes(dana,abby),likes(dana,dana)] ? ;

L = [likes(abby,abby),likes(abby,bess),likes(abby,dana),likes(bess,abby),likes(cody,cody),likes(cody,dana),likes(dana,cody),likes(dana,abby)] ? ;

L = [likes(abby,abby),likes(abby,bess),likes(abby,dana),likes(bess,abby),likes(cody,dana),likes(dana,cody),likes(dana,abby),likes(dana,dana)] ? ;

L = [likes(abby,abby),likes(abby,bess),likes(abby,dana),likes(bess,abby),likes(cody,dana),likes(dana,cody),likes(dana,abby)] ? ;

(664 ms) no

*/
