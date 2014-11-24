{
  open Parser
  let keyword_table = Hashtbl.create 53
  let _ =
    List.iter (fun (kwd, tok) -> Hashtbl.add keyword_table kwd tok)
      [
	("let", LET);
	("true", TRUE);
	("false", FALSE);
  ("prems", PREMS);
  ("deuz", DEUZ );
  ("if", IF );
  ("then", THEN);
  ( "else", ELSE);
  ( "funky", FUN);
      ] 
}

let space = [' ' '\t']

let letter = ['A'-'Z' 'a'-'z' '_']

let digit = ['0'-'9']


rule get_token = parse
  | "//" [^'\n']* '\n'? { get_token lexbuf }
  | "/*" ([^'*']|('*'+[^'*''/']))* '*'+ '/' { get_token lexbuf}
  | ['\n' '\r'] { Lexing.new_line lexbuf; get_token lexbuf }
  | ','  { COMMA }
  | '|' { PIPE }
  | '('  { LEFT_PAREN }
  | ')'  { RIGHT_PAREN }
  | '[' { OPEN_BRACKET }
  | ']' { CLOSE_BRACKET }
  | "::" { TWO_TWO_POINTS }
  | ";;" { END_OF_EXPRESSION }
  | '+' { PLUS }
  | '-' { MINUS }
  | '*' { TIME }
  |'=' { EQUAL }
  | "->" { ARROW }
  | '<' { LESS }
  | ['A'-'Z' 'a'-'z'] ['A'-'Z' 'a'-'z' '0'-'9' '_'] * as id
               { try
                   Hashtbl.find keyword_table id
                 with Not_found ->
                   IDENT id }
  | space { get_token lexbuf }
  | digit+ as v { INT (int_of_string v) }
  | eof { EOF }


