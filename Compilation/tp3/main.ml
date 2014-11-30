


open Parser
open Lexer
open Lexing
open Parsing

let _ =
(* si le fichier "test" contient un code à analyser *)
(* bloc token (Lexing.from_channel (open_in "test"));; *)
(* pour de tous petits tests *)
let lex = from_string
"
lego <- a + b <-
"
in
try inst token lex with
| Parse_error -> failwith (let err = lexeme_start_p lex in
"Erreur a la ligne "^string_of_int(err.pos_lnum)
^", caractere "^string_of_int(err.pos_cnum - err.pos_bol));;








(* Parser.inst Lexer.token (Lexing.from_string "lego <- a + b");; *)

(*     | error { let pos = Parsing.symbol_start_pos() in
              print_int pos.Lexing.pos_cnum; print_endline " ERROR "} *)