


open Parser
open Lexer
open Lexing
open Parsing

let _ =

let lex = from_string 
"begin int lapin , bool bionicle ; begin bool duplo ; lapin <- bionicle and duplo end end"
in
try main token lex with
| Parse_error -> failwith (let err = lexeme_start_p lex in
"Erreur a la ligne "^string_of_int(err.pos_lnum)
^", caractere "^string_of_int(err.pos_cnum - err.pos_bol));;

