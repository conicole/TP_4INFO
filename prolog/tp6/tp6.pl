
%% TP6
%% Damien Crémilleux, Lauriane Holy
%%%%%%%%%%% First part
copy_prog(program(
start,
[stop],
[delta(start, ' ', ' ', right, stop),
delta(start, 1, ' ', right, s2),
delta(s2, 1, 1, right, s2),
delta(s2, ' ', ' ', right, s3),
delta(s3, 1, 1, right, s3),
delta(s3, ' ', 1, left, s4),
delta(s4, 1, 1, left, s4),
delta(s4, ' ', ' ', left, s5),
delta(s5, 1, 1, left, s5),
delta(s5, ' ', 1, right, start)
]
)
).
initial_state(program(InitialState, _, _), InitialState).
final_states(program(_, FinalStates, _), FinalStates).
transitions(program(_, _, Deltas), Deltas).
%write to meta post format
%compile result with:
% mpost filename
% epstopdf filename.1
dump_to_mpost(Filename, Dump) :-
open(Filename, write, Stream),
write_header(Stream),
write_dump(0, Dump, Stream),
write_end(Stream),
close(Stream).
write_header(Stream) :-
write(Stream, 'prologues := 1;\n'),
write(Stream, 'input turing;\n'),
write(Stream, 'beginfig(1)\n').
write_end(Stream) :-
write(Stream, 'endfig;\n'),
write(Stream, 'end').
write_dump(_, [], _).
write_dump(Y, [(State, Tape) | Tapes], Stream) :-
write(Stream, 'tape(0, '),
write(Stream, Y),
write(Stream, 'cm, 1cm, \"'),
write(Stream, State),
write(Stream, '\", '),
write_tape(Tape, Stream),
write(Stream, ');\n'),
Y1 is Y - 2,
write_dump(Y1, Tapes, Stream).
write_tape(tape(Left, Right), Stream) :-
length(Left, N),
write(Stream, '\"'),
append(Left, Right, L),
(param(Stream), foreach(X, L) do
write(Stream, X)
),
write(Stream, '\", '),
write(Stream, N),
write('\n').


%%%%%%%%%%% Optional part        
      

%make_pairs(+, -): 'a list * ('a * 'a) list
make_pairs([], _, []).
make_pairs([X | L], L2, Res) :-
        make_pairs_aux(X, L2, Pairs),
        make_pairs(L, L2, RemainingPairs),
        append(Pairs, RemainingPairs, Res).

%make_pairs_aux(+, +, -): 'a * 'a list * ('a * 'a) list
make_pairs_aux(_, [], []).
make_pairs_aux(X, [Y | Ys], [(X, Y) | Zs]) :-
        make_pairs_aux(X, Ys, Zs).

complete(S1, Sym, Symbols, Directions, States, Res) :-
        member(Sym1, Symbols),
        member(Dir, Directions),
        member(S2, States),
        Res = delta(S1, Sym, Sym1, Dir, S2).

complete_list([], _, _, _, []).
complete_list([(S, Sym) | Pairs], Symbols, Directions, States, [Delta | Deltas]) :-
        complete(S, Sym, Symbols, Directions, States, Delta),
        complete_list(Pairs, Symbols, Directions, States, Deltas).


%next(+, +, +, -, -, -)
next(Program, StatePrev, SymbolPrev, SymbolNext, Dir, StateNext) :-
	transitions(Program, Deltas),
	nextFromDeltas(Deltas, StatePrev, SymbolPrev, SymbolNext, Dir, StateNext).

nextFromDeltas([delta(StatePrev,SymbolPrev,SymbolNext,Dir,StateNext)|_], StatePrev, SymbolPrev, SymbolNext, Dir, StateNext).
nextFromDeltas([_|Rdeltas],StatePrev,SymbolPrev,SymbolNext,Dir,StateNext) :-
	nextFromDeltas(Rdeltas,StatePrev,SymbolPrev,SymbolNext,Dir,StateNext).
	
% Update_tape(+, +, +, -)

update_tape(tape([E],[_|R]),Symbol,left,tape([' '],[E|[Symbol|R]])) :- 
  !.

update_tape(tape(LL,[_]),Symbol,right, tape(RLL,[' '])) :-
  addLast(LL,Symbol,RLL),
  !.

update_tape(tape(LL,[_|R]),Symbol,right, tape(RLL,R)) :-
	addLast(LL,Symbol,RLL).

update_tape(tape(LL,[_|ResteLR]),Symbol,left,tape(NLL,[E|[Symbol|ResteLR]])) :-
  removeLast(LL,NLL,E).

addLast([],E,[E]).
addLast([T|Q],E,[T|R]) :- 
	addLast(Q,E,R).

removeLast([E],[],E).
removeLast([T|Q],[T|R],E) :-
	removeLast(Q,R,E).

% run_turing_machine(+, +, -, -): program * symbol list * symbol list * state
% run_turing_machine(Program, Input, Output, FinalState)

conc2([],L,L).
conc2([Tete|Reste],L2,[Tete|R]):-conc2(Reste,L2,R).

teteDeLecture(tape(_,[Symb|_]),Symb).

isFinalState(program(_ , [State|_], _), State) :-
  !.
isFinalState(program(_ , [_|Reste], _), State) :-
  isFinalState(program(_, Reste, _), State).

run_turing_machine(Program, tape(A, B), Output, FinalState, FinalState) :-
  isFinalState(Program, FinalState),
  conc2(A, B, Output).

run_turing_machine(Program, Input, Output, FinalState, CurrentState) :-
  teteDeLecture(Input,TLect),
  next(Program, CurrentState, TLect, NSymb, Dir, Nstate),
  update_tape(Input, NSymb, Dir, Ntape),
  run_turing_machine(Program, Ntape, Output, FinalState,Nstate).

run_turing_machine(Program,Input,Output,FinalState) :-
  initial_state(Program,InitS),
  teteDeLecture(tape([' '], Input),TLect),
  next(Program, InitS, TLect, NSymb, Dir, Nstate),
  update_tape(tape([' '], Input),NSymb,Dir,Ntape),
  run_turing_machine(Program, Ntape, Output, FinalState,Nstate).


%% TEST %%
test(0 ,SymbolNext,Dir,StateNext) :-
	copy_prog(Prog),
	next(Prog, s4, 1, SymbolNext,Dir,StateNext).

test(1, Output, FinalState) :-
  copy_prog(Prog),
  run_turing_machine(Prog, [1], Output, FinalState).

%%%%%%%%%%%%%%% TEST
/*
[eclipse 42]: test(0,SymbNext,Dir,StateNext).

SymbNext = 1
Dir = left
StateNext = s4
*/

/*
| ?- update_tape(tape([1,2,3],[' ']),10,right,T).

T = tape([1,2,3,10],[' '])

yes
| ?- update_tape(tape([' '],[3,4]),10,left,T).   

T = tape([' '],[' ',10,4])

yes
| ?- update_tape(tape([1,2],[3,4]),10,left,T).  

T = tape([1],[2,10,4]) ? 

yes
| ?- update_tape(tape([1,2],[3,4]),10,right,E).  

E = tape([1,2,10],[4]) ? 

yes

| ?- test(1, Output,FinalState).

FinalState = stop
Output = [' ',1,' ',1] ? 

*/