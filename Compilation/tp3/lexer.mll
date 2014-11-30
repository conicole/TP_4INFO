
        (* File lexer.mll *)
{
	open Parser
	open Lexing
	let keyword_table = Hashtbl.create 53
	let _ =
	List.iter (fun (kwd, tok) -> Hashtbl.add keyword_table kwd tok)
	  	[ 
	  	"begin", BEGIN;
		"end", END;
		"int", INT;
		"bool", BOOL;
		"and", AND
		]
}

let char  = ['0'-'9' 'a'-'z' 'A'-'Z' '_' '\'' '<' '>']
let comment = '%' [^'\n']* '\n'


rule token = parse
| [' ' '\t']+     { token lexbuf }     (* skip blanks *)
| '\n'           { Lexing.new_line lexbuf ; token lexbuf }
| "<-"                { FLECHE }              
| "("                 { PAROUV }
| ")"                 { PARFERM }
| "+"                 { PLUS }
| "<"                 { INF }
| eof				  { EOF }
| ['A'-'Z' 'a'-'z'] ['A'-'Z' 'a'-'z' '0'-'9' '_'] * as id
               { try
                   Hashtbl.find keyword_table id
                 with Not_found ->
                   IDENT id }


(*
|  _    as lxm       { let pos = lexeme_start_p lexbuf in
                        failwith 
                         (Printf.sprintf
                         "Unknowm token %c at line %i column %i" lxm pos.pos_lnum pos.pos_bol)
                      }
*)
