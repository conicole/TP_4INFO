type token =
  | INT of (int)
  | IDENT of (string)
  | TWO_POINT
  | TRUE
  | FALSE
  | OPEN_BRACKET
  | CLOSE_BRACKET
  | CONS
  | LET
  | EOF
  | END_OF_EXPRESSION
  | LEFT_PAREN
  | RIGHT_PAREN
  | COMMA

val main :
  (Lexing.lexbuf  -> token) -> Lexing.lexbuf -> Ast.ml_expr
