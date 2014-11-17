type token =
  | INT of (int)
  | IDENT of (string)
  | TWO_TWO_POINTS
  | TRUE
  | FALSE
  | OPEN_BRACKET
  | CLOSE_BRACKET
  | LET
  | EOF
  | END_OF_EXPRESSION
  | LEFT_PAREN
  | RIGHT_PAREN
  | COMMA
  | PLUS
  | MINUS
  | TIME
  | EQUAL
  | LESS
  | PREMS

val main :
  (Lexing.lexbuf  -> token) -> Lexing.lexbuf -> Ast.ml_expr
