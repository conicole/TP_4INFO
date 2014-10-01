


s(L) :- concat_([a],L1,L2,l),s(L1),B(L2).

s(L) :- concat(L1,[a],L), b(L1).
b([b]).
b([]).
s([a|L]) :- concat(L1,L2,L),S(L1),B(L2).



s(L) :- concat(L1,L2,L),s(L1),b(L2).
s([a]).
s([b]).



s([c|L],L).



/* *****************
S ::= aSB | Ba
B ::= b | epsilon 
************/

s([a|L],R) :- s(L,L1),b(L1,R).
s(L,R) :- b(L,[a|R]).
b([b|L],L).
b(L,L).

 
 /*
 E ::= T op1 E | T
 T ::= F op2 T | F
 F ::= (E) | atome
 Op1 ::= + | -
 Op2 ::= *

*/


