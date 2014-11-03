type token =
  | PLUS
  | FLECHE
  | PAROUV
  | PARFERM
  | IDENT
  | INF
  | AND
  | EOF

val inst :
  (Lexing.lexbuf  -> token) -> Lexing.lexbuf -> unit
