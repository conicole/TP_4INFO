/**
TP 12 Prolog

@author Corentin NICOLE
@author Maud LERAY
@version Annee scolaire 2014/2015
*/

:- dynamic enfant/1.
:- dynamic age/2.
:- dynamic pere/2.
:- dynamic parent/2.

enfant(e2).
enfant(e1).
age(e2,10).
age(e1,12).
age(p1,43).
pere(p1,e1).
pere(p1,e2).
parent(X,Y):-pere(X,Y).

built_in(writeln(_)).

:- dynamic my_append/3.

my_append([],Ys,Ys).
my_append([X|Xs],Ys,[X|Zs]):-
	writeln(X),
	my_append(Xs,Ys,Zs).

% ======================================================================== 
%        QUESTION 2.1 : solve0_v1
% ========================================================================
solve0_v1(A):-A.

% ======================================================================== 
%        QUESTION 2.2 : solve0
% ========================================================================

% C'est l'interpréteur de Prolog qui est appelé pour résoudre pere(p1,X)

solve0((A,B)) :-
	A,
	solve0(B).

solve0(A):-A.


% ======================================================================== 
%        QUESTION 2.9 : solve1_1
% ========================================================================


solve1_1((A,B),[A|Z]) :-
	clause(A,ptitZ),
	my_append(grosZ,ptitZ,Z),
	solve1_1(B,grosZ),
	!.

solve1_1(A,Z):- clause(A,Z).

% ======================================================================== 
%        QUESTION 2.11 : solve1_2
% ========================================================================


% ======================================================================== 
%        QUESTION 2.12 : solve2_1
% ========================================================================


% ======================================================================== 
%        QUESTION 2.14 : solve2_2
% ========================================================================


% ======================================================================== 
%        Boucle d interprétation
% ========================================================================

/* TESTS 

%%% Question 2.1 %%%

[eclipse 4]: solve0_v1(enfant(X)).

X = e2
Yes (0.00s cpu, solution 1, maybe more) ? ;

X = e1
Yes (0.00s cpu, solution 2)

[eclipse 6]: solve0_v1((pere(p1,X),age(X,10))).

X = e2
Yes (0.00s cpu)

%%% Question 2.2 %%%

[eclipse 13]: solve0((pere(p1,X),age(X,10),enfant(X))).

X = e2
Yes (0.00s cpu, solution 1, maybe more) ?

%%% Question 2.3 %%%

[eclipse 14]: clause(parent(X,Y),Z).
procedure not dynamic in clause(parent(X, Y), Z) in module eclipse
Abort

%%% Question 2.5 %%%

[eclipse 2]: clause(parent(X,Y),Z).

X = X
Y = Y
Z = pere(X, Y)
Yes (0.00s cpu)

%%% Question 2.6 %%%

[eclipse 5]: my_append(X,Y,[a,b,c]).

X = []
Y = [a, b, c]
Yes (0.00s cpu, solution 1, maybe more) ? ;
a

X = [a]
Y = [b, c]
Yes (0.00s cpu, solution 2, maybe more) ? ;
b

X = [a, b]
Y = [c]
Yes (0.00s cpu, solution 3, maybe more) ? ;
c

X = [a, b, c]
Y = []
Yes (0.00s cpu, solution 4)

%%% Question 2.7 %%%

[eclipse 2]: clause(my_append(A,B,C),Body).

A = []
B = B
C = B
Body = true
Yes (0.00s cpu, solution 1, maybe more) ? ;

A = [X|Xs]
B = B
C = [X|Zs]
Body = (writeln(X), my_append(Xs, B, Zs))
Yes (0.00s cpu, solution 2)

[eclipse 3]: clause(my_append([],B,C),Body).

B = B
C = B
Body = true
Yes (0.00s cpu)

%%% Question 2.8 %%%

[eclipse 4]: clause(true).
accessing a procedure defined in another module in clause(true)
Abort

*/

