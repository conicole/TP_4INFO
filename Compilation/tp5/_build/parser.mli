type token =
  | INT of (int)
  | IDENT of (string)
  | TRUE
  | FALSE
  | LET
  | REC
  | IN
  | FUNCTION
  | ARROW
  | ALTERNATIVE
  | IF
  | THEN
  | ELSE
  | ADD
  | SUB
  | MULT
  | LESS
  | FST
  | SND
  | EQUAL
  | LEFT_PAREN
  | RIGHT_PAREN
  | LEFT_BRACKET
  | RIGHT_BRACKET
  | CONS
  | COMMA
  | END_OF_EXPRESSION
  | EOF
  | COLON
  | TBOOL
  | TINT
  | TLIST

val main :
  (Lexing.lexbuf  -> token) -> Lexing.lexbuf -> Ast.ml_ast * StrSet.t 
