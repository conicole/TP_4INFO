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

open Parsing;;
let _ = parse_error;;
# 2 "parser.mly"
  open Ast
# 40 "parser.ml"
let yytransl_const = [|
  259 (* TRUE *);
  260 (* FALSE *);
  261 (* LET *);
  262 (* REC *);
  263 (* IN *);
  264 (* FUNCTION *);
  265 (* ARROW *);
  266 (* ALTERNATIVE *);
  267 (* IF *);
  268 (* THEN *);
  269 (* ELSE *);
  270 (* ADD *);
  271 (* SUB *);
  272 (* MULT *);
  273 (* LESS *);
  274 (* FST *);
  275 (* SND *);
  276 (* EQUAL *);
  277 (* LEFT_PAREN *);
  278 (* RIGHT_PAREN *);
  279 (* LEFT_BRACKET *);
  280 (* RIGHT_BRACKET *);
  281 (* CONS *);
  282 (* COMMA *);
  283 (* END_OF_EXPRESSION *);
    0 (* EOF *);
  284 (* COLON *);
  285 (* TBOOL *);
  286 (* TINT *);
  287 (* TLIST *);
    0|]

let yytransl_block = [|
  257 (* INT *);
  258 (* IDENT *);
    0|]

let yylhs = "\255\255\
\001\000\001\000\001\000\001\000\001\000\002\000\002\000\002\000\
\002\000\002\000\002\000\002\000\002\000\002\000\002\000\002\000\
\002\000\002\000\002\000\002\000\002\000\003\000\003\000\003\000\
\003\000\007\000\007\000\008\000\008\000\008\000\008\000\008\000\
\008\000\004\000\009\000\009\000\005\000\010\000\010\000\011\000\
\011\000\006\000\006\000\006\000\006\000\006\000\006\000\000\000"

let yylen = "\002\000\
\001\000\005\000\006\000\002\000\001\000\001\000\003\000\003\000\
\005\000\002\000\002\000\003\000\003\000\003\000\003\000\003\000\
\006\000\002\000\001\000\006\000\009\000\001\000\001\000\004\000\
\001\000\001\000\001\000\003\000\001\000\001\000\005\000\004\000\
\003\000\004\000\005\000\000\000\003\000\001\000\003\000\002\000\
\000\000\001\000\001\000\003\000\002\000\003\000\003\000\002\000"

let yydefred = "\000\000\
\000\000\000\000\005\000\022\000\025\000\027\000\026\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\001\000\048\000\
\000\000\000\000\019\000\023\000\000\000\000\000\000\000\029\000\
\000\000\000\000\000\000\018\000\030\000\000\000\000\000\000\000\
\010\000\011\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\004\000\000\000\038\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\013\000\000\000\000\000\
\000\000\000\000\000\000\037\000\000\000\000\000\000\000\000\000\
\042\000\043\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\039\000\040\000\000\000\002\000\
\000\000\000\000\000\000\000\000\000\000\045\000\000\000\000\000\
\000\000\034\000\000\000\000\000\009\000\000\000\003\000\000\000\
\047\000\000\000\000\000\031\000\000\000\017\000\000\000\000\000\
\000\000\000\000\000\000\035\000"

let yydgoto = "\002\000\
\016\000\017\000\018\000\028\000\019\000\075\000\020\000\030\000\
\098\000\021\000\068\000"

let yysindex = "\010\000\
\001\000\000\000\000\000\000\000\000\000\000\000\000\000\085\255\
\218\255\207\255\207\255\207\255\207\255\023\255\000\000\000\000\
\142\000\000\000\000\000\000\000\230\255\254\254\066\255\000\000\
\041\255\218\255\047\255\000\000\000\000\010\255\211\255\156\000\
\000\000\000\000\177\000\054\255\207\255\207\255\207\255\207\255\
\207\255\207\255\000\000\207\255\000\000\230\255\207\255\250\254\
\129\255\031\255\065\255\207\255\218\255\079\255\105\255\207\255\
\000\000\207\255\129\255\118\255\118\255\000\000\002\000\002\000\
\002\000\198\000\230\255\000\000\229\255\207\255\129\255\129\255\
\000\000\000\000\007\255\218\255\129\255\135\000\112\255\207\255\
\116\255\191\000\210\000\007\255\000\000\000\000\207\255\000\000\
\163\000\253\254\101\255\129\255\129\255\000\000\243\254\007\255\
\218\255\000\000\038\255\207\255\000\000\222\000\000\000\207\255\
\000\000\114\255\018\255\000\000\034\255\000\000\123\000\207\255\
\207\255\135\000\222\000\000\000"

let yyrindex = "\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\126\255\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\016\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\153\255\000\000\000\000\037\000\058\000\000\000\069\000\080\000\
\091\000\000\000\016\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\072\255\000\000\000\000\120\000\109\255\000\000\
\000\000\000\000\000\000\063\255\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\163\255\
\000\000\000\000\000\000\000\000\000\000\102\000\000\000\000\000\
\000\000\099\255\180\255\000\000\000\000\000\000\000\000\000\000\
\000\000\120\000\109\000\000\000"

let yygindex = "\000\000\
\000\000\248\255\235\255\000\000\000\000\205\255\254\255\240\255\
\047\000\250\255\095\000"

let yytablesize = 503
let yytable = "\045\000\
\015\000\032\000\033\000\034\000\035\000\092\000\029\000\084\000\
\108\000\050\000\001\000\053\000\093\000\070\000\046\000\092\000\
\104\000\047\000\052\000\090\000\091\000\071\000\093\000\029\000\
\045\000\096\000\092\000\094\000\060\000\061\000\062\000\063\000\
\064\000\065\000\053\000\066\000\079\000\094\000\069\000\067\000\
\106\000\107\000\112\000\078\000\087\000\045\000\036\000\082\000\
\094\000\083\000\029\000\037\000\038\000\039\000\040\000\053\000\
\076\000\041\000\053\000\095\000\067\000\089\000\042\000\024\000\
\024\000\024\000\024\000\048\000\049\000\024\000\051\000\099\000\
\024\000\029\000\024\000\024\000\024\000\024\000\102\000\024\000\
\109\000\059\000\024\000\024\000\024\000\024\000\022\000\024\000\
\024\000\024\000\023\000\110\000\077\000\028\000\029\000\111\000\
\028\000\028\000\080\000\044\000\044\000\044\000\044\000\114\000\
\115\000\044\000\081\000\044\000\044\000\092\000\044\000\044\000\
\044\000\044\000\044\000\044\000\093\000\033\000\044\000\044\000\
\044\000\044\000\105\000\044\000\044\000\044\000\038\000\038\000\
\038\000\038\000\033\000\094\000\006\000\039\000\033\000\006\000\
\053\000\006\000\006\000\006\000\006\000\006\000\006\000\071\000\
\094\000\006\000\038\000\006\000\038\000\072\000\006\000\006\000\
\006\000\039\000\039\000\039\000\039\000\073\000\074\000\007\000\
\116\000\086\000\007\000\000\000\007\000\007\000\007\000\007\000\
\007\000\007\000\000\000\000\000\007\000\039\000\007\000\039\000\
\000\000\007\000\007\000\007\000\046\000\046\000\046\000\046\000\
\032\000\000\000\046\000\032\000\032\000\046\000\000\000\046\000\
\046\000\046\000\046\000\046\000\046\000\000\000\000\000\046\000\
\046\000\046\000\046\000\000\000\046\000\046\000\046\000\004\000\
\005\000\006\000\007\000\031\000\054\000\000\000\009\000\000\000\
\055\000\010\000\024\000\025\000\006\000\007\000\000\000\000\000\
\011\000\012\000\000\000\013\000\000\000\014\000\004\000\005\000\
\006\000\007\000\000\000\087\000\000\000\000\000\026\000\000\000\
\027\000\000\000\037\000\038\000\039\000\040\000\000\000\000\000\
\041\000\000\000\044\000\000\000\014\000\042\000\000\000\088\000\
\003\000\004\000\005\000\006\000\007\000\008\000\000\000\000\000\
\009\000\000\000\000\000\010\000\000\000\000\000\000\000\037\000\
\038\000\039\000\011\000\012\000\000\000\013\000\041\000\014\000\
\000\000\041\000\042\000\041\000\041\000\041\000\041\000\041\000\
\041\000\000\000\000\000\041\000\000\000\041\000\000\000\000\000\
\041\000\041\000\041\000\012\000\000\000\000\000\012\000\000\000\
\012\000\012\000\012\000\012\000\000\000\012\000\000\000\000\000\
\012\000\000\000\012\000\000\000\000\000\012\000\012\000\012\000\
\014\000\000\000\000\000\014\000\000\000\014\000\014\000\014\000\
\014\000\000\000\014\000\015\000\000\000\014\000\015\000\014\000\
\015\000\015\000\014\000\014\000\014\000\015\000\016\000\000\000\
\015\000\016\000\015\000\016\000\016\000\000\000\015\000\015\000\
\016\000\008\000\000\000\016\000\008\000\016\000\008\000\008\000\
\000\000\016\000\016\000\008\000\020\000\000\000\008\000\020\000\
\008\000\020\000\020\000\021\000\008\000\008\000\021\000\000\000\
\021\000\021\000\000\000\020\000\000\000\000\000\036\000\020\000\
\020\000\113\000\021\000\036\000\036\000\000\000\021\000\021\000\
\037\000\038\000\039\000\040\000\000\000\036\000\041\000\000\000\
\097\000\036\000\036\000\042\000\037\000\038\000\039\000\040\000\
\000\000\000\000\041\000\037\000\038\000\039\000\040\000\042\000\
\000\000\041\000\000\000\000\000\000\000\000\000\042\000\056\000\
\043\000\037\000\038\000\039\000\040\000\000\000\000\000\041\000\
\037\000\038\000\039\000\040\000\042\000\000\000\041\000\000\000\
\000\000\000\000\000\000\042\000\000\000\103\000\037\000\038\000\
\039\000\040\000\000\000\000\000\041\000\000\000\057\000\000\000\
\000\000\042\000\058\000\100\000\037\000\038\000\039\000\040\000\
\000\000\000\000\041\000\037\000\038\000\039\000\040\000\042\000\
\000\000\041\000\000\000\085\000\000\000\000\000\042\000\037\000\
\038\000\039\000\040\000\000\000\000\000\041\000\000\000\101\000\
\000\000\000\000\042\000\037\000\038\000\039\000\040\000\000\000\
\000\000\041\000\000\000\000\000\000\000\000\000\042\000"

let yycheck = "\021\000\
\000\000\010\000\011\000\012\000\013\000\009\001\009\000\059\000\
\022\001\026\000\001\000\025\001\016\001\020\001\021\000\009\001\
\020\001\020\001\009\001\071\000\072\000\028\001\016\001\026\000\
\046\000\077\000\009\001\031\001\037\000\038\000\039\000\040\000\
\041\000\042\000\025\001\044\000\053\000\031\001\047\000\046\000\
\092\000\093\000\009\001\052\000\007\001\067\000\024\001\056\000\
\031\001\058\000\053\000\014\001\015\001\016\001\017\001\025\001\
\026\001\020\001\025\001\076\000\067\000\070\000\025\001\001\001\
\002\001\003\001\004\001\002\001\028\001\007\001\024\001\080\000\
\010\001\076\000\012\001\013\001\014\001\015\001\087\000\017\001\
\097\000\028\001\020\001\021\001\022\001\023\001\002\001\025\001\
\026\001\027\001\006\001\100\000\028\001\022\001\097\000\104\000\
\025\001\026\001\020\001\001\001\002\001\003\001\004\001\112\000\
\113\000\007\001\002\001\009\001\010\001\009\001\012\001\013\001\
\014\001\015\001\016\001\017\001\016\001\009\001\020\001\021\001\
\022\001\023\001\022\001\025\001\026\001\027\001\001\001\002\001\
\003\001\004\001\022\001\031\001\007\001\016\001\026\001\010\001\
\025\001\012\001\013\001\014\001\015\001\016\001\017\001\028\001\
\031\001\020\001\021\001\022\001\023\001\021\001\025\001\026\001\
\027\001\001\001\002\001\003\001\004\001\029\001\030\001\007\001\
\114\000\067\000\010\001\255\255\012\001\013\001\014\001\015\001\
\016\001\017\001\255\255\255\255\020\001\021\001\022\001\023\001\
\255\255\025\001\026\001\027\001\001\001\002\001\003\001\004\001\
\022\001\255\255\007\001\025\001\026\001\010\001\255\255\012\001\
\013\001\014\001\015\001\016\001\017\001\255\255\255\255\020\001\
\021\001\022\001\023\001\255\255\025\001\026\001\027\001\001\001\
\002\001\003\001\004\001\005\001\002\001\255\255\008\001\255\255\
\006\001\011\001\001\001\002\001\003\001\004\001\255\255\255\255\
\018\001\019\001\255\255\021\001\255\255\023\001\001\001\002\001\
\003\001\004\001\255\255\007\001\255\255\255\255\021\001\255\255\
\023\001\255\255\014\001\015\001\016\001\017\001\255\255\255\255\
\020\001\255\255\021\001\255\255\023\001\025\001\255\255\027\001\
\000\001\001\001\002\001\003\001\004\001\005\001\255\255\255\255\
\008\001\255\255\255\255\011\001\255\255\255\255\255\255\014\001\
\015\001\016\001\018\001\019\001\255\255\021\001\007\001\023\001\
\255\255\010\001\025\001\012\001\013\001\014\001\015\001\016\001\
\017\001\255\255\255\255\020\001\255\255\022\001\255\255\255\255\
\025\001\026\001\027\001\007\001\255\255\255\255\010\001\255\255\
\012\001\013\001\014\001\015\001\255\255\017\001\255\255\255\255\
\020\001\255\255\022\001\255\255\255\255\025\001\026\001\027\001\
\007\001\255\255\255\255\010\001\255\255\012\001\013\001\014\001\
\015\001\255\255\017\001\007\001\255\255\020\001\010\001\022\001\
\012\001\013\001\025\001\026\001\027\001\017\001\007\001\255\255\
\020\001\010\001\022\001\012\001\013\001\255\255\026\001\027\001\
\017\001\007\001\255\255\020\001\010\001\022\001\012\001\013\001\
\255\255\026\001\027\001\017\001\007\001\255\255\020\001\010\001\
\022\001\012\001\013\001\007\001\026\001\027\001\010\001\255\255\
\012\001\013\001\255\255\022\001\255\255\255\255\007\001\026\001\
\027\001\007\001\022\001\012\001\013\001\255\255\026\001\027\001\
\014\001\015\001\016\001\017\001\255\255\022\001\020\001\255\255\
\010\001\026\001\027\001\025\001\014\001\015\001\016\001\017\001\
\255\255\255\255\020\001\014\001\015\001\016\001\017\001\025\001\
\255\255\020\001\255\255\255\255\255\255\255\255\025\001\012\001\
\027\001\014\001\015\001\016\001\017\001\255\255\255\255\020\001\
\014\001\015\001\016\001\017\001\025\001\255\255\020\001\255\255\
\255\255\255\255\255\255\025\001\255\255\027\001\014\001\015\001\
\016\001\017\001\255\255\255\255\020\001\255\255\022\001\255\255\
\255\255\025\001\026\001\013\001\014\001\015\001\016\001\017\001\
\255\255\255\255\020\001\014\001\015\001\016\001\017\001\025\001\
\255\255\020\001\255\255\022\001\255\255\255\255\025\001\014\001\
\015\001\016\001\017\001\255\255\255\255\020\001\255\255\022\001\
\255\255\255\255\025\001\014\001\015\001\016\001\017\001\255\255\
\255\255\020\001\255\255\255\255\255\255\255\255\025\001"

let yynames_const = "\
  TRUE\000\
  FALSE\000\
  LET\000\
  REC\000\
  IN\000\
  FUNCTION\000\
  ARROW\000\
  ALTERNATIVE\000\
  IF\000\
  THEN\000\
  ELSE\000\
  ADD\000\
  SUB\000\
  MULT\000\
  LESS\000\
  FST\000\
  SND\000\
  EQUAL\000\
  LEFT_PAREN\000\
  RIGHT_PAREN\000\
  LEFT_BRACKET\000\
  RIGHT_BRACKET\000\
  CONS\000\
  COMMA\000\
  END_OF_EXPRESSION\000\
  EOF\000\
  COLON\000\
  TBOOL\000\
  TINT\000\
  TLIST\000\
  "

let yynames_block = "\
  INT\000\
  IDENT\000\
  "

let yyact = [|
  (fun _ -> failwith "parser")
; (fun __caml_parser_env ->
    Obj.repr(
# 36 "parser.mly"
       ( Printf.printf "\nbye"; exit 0 )
# 329 "parser.ml"
               : Ast.ml_ast * StrSet.t ))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 3 : string) in
    let _4 = (Parsing.peek_val __caml_parser_env 1 : 'expr) in
    Obj.repr(
# 37 "parser.mly"
                                          ( Ml_definition(_2, fst _4), snd _4 )
# 337 "parser.ml"
               : Ast.ml_ast * StrSet.t ))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 3 : string) in
    let _5 = (Parsing.peek_val __caml_parser_env 1 : 'expr) in
    Obj.repr(
# 38 "parser.mly"
                                              ( Ml_definitionrec(_3, failwith "let rec type expected", fst _5) , snd _5 )
# 345 "parser.ml"
               : Ast.ml_ast * StrSet.t ))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'expr) in
    Obj.repr(
# 39 "parser.mly"
                          ( Ml_expr (fst _1) , (*TODO*) StrSet.empty)
# 352 "parser.ml"
               : Ast.ml_ast * StrSet.t ))
; (fun __caml_parser_env ->
    Obj.repr(
# 40 "parser.mly"
         (
    let bol = (Parsing.symbol_start_pos ()).Lexing.pos_bol in
    failwith ("parsing: line " ^ 
		 (string_of_int ((Parsing.symbol_start_pos ()).Lexing.pos_lnum)) ^ 
		 " between character " ^
		 (string_of_int (Parsing.symbol_start () - bol)) ^
		 " and " ^
		 (string_of_int ((Parsing.symbol_end ()) + 1 - bol)))
 )
# 366 "parser.ml"
               : Ast.ml_ast * StrSet.t ))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'simple_expr) in
    Obj.repr(
# 51 "parser.mly"
               ( _1 )
# 373 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'expr) in
    Obj.repr(
# 52 "parser.mly"
                               ( _2 )
# 380 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 53 "parser.mly"
                  ( Ml_cons(fst _1, fst _3) ,  StrSet.union (snd _1) (snd _3) )
# 388 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 3 : 'expr) in
    let _4 = (Parsing.peek_val __caml_parser_env 1 : 'expr) in
    Obj.repr(
# 54 "parser.mly"
                                          ( Ml_pair(fst _2, fst _4) ,  StrSet.union (snd _2) (snd _4) )
# 396 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 55 "parser.mly"
            ( Ml_unop(Ml_fst, fst _2) , snd _2 )
# 403 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 56 "parser.mly"
            ( Ml_unop(Ml_snd, fst _2) , snd _2 )
# 410 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 57 "parser.mly"
                 ( Ml_binop(Ml_add, fst _1, fst _3) ,  StrSet.union (snd _1) (snd _3) )
# 418 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 58 "parser.mly"
                  ( Ml_binop(Ml_mult, fst _1, fst _3) ,  StrSet.union (snd _1) (snd _3) )
# 426 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 59 "parser.mly"
                 ( Ml_binop(Ml_sub, fst _1, fst _3),  StrSet.union (snd _1) (snd _3))
# 434 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 60 "parser.mly"
                  ( Ml_binop(Ml_less, fst _1, fst _3), StrSet.union (snd _1) (snd _3) )
# 442 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 61 "parser.mly"
                   ( Ml_binop(Ml_eq, fst _1, fst _3), StrSet.union (snd _1) (snd _3) )
# 450 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 4 : 'expr) in
    let _4 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _6 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 62 "parser.mly"
                               ( Ml_if(fst _2, fst _4, fst _6), StrSet.union (snd _2) (StrSet.union (snd _4) (snd _6)))
# 459 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'pattern_expr_list) in
    Obj.repr(
# 63 "parser.mly"
                              ( Ml_fun (fst _2) , snd _2 )
# 466 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'application) in
    Obj.repr(
# 64 "parser.mly"
               ( List.fold_left (fun res a -> Ml_app(res, a)) (List.hd (fst _1)) (List.tl (fst _1)) , snd _1   )
# 473 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 4 : string) in
    let _4 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _6 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 65 "parser.mly"
                                 ( Ml_let(_2, fst _4, fst _6) , (StrSet.union (snd _4) (StrSet.remove _2 (snd _6))) )
# 482 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 6 : string) in
    let _5 = (Parsing.peek_val __caml_parser_env 4 : 'typ) in
    let _7 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _9 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 66 "parser.mly"
                                              ( Ml_letrec(_3,_5, fst _7, fst _9) , (StrSet.union (StrSet.remove _3 (snd _7)) (StrSet.remove _3 (snd _9))) )
# 492 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 69 "parser.mly"
       ( Ml_int _1, StrSet.empty )
# 499 "parser.ml"
               : 'simple_expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'bool) in
    Obj.repr(
# 70 "parser.mly"
        ( Ml_bool _1, StrSet.empty )
# 506 "parser.ml"
               : 'simple_expr))
; (fun __caml_parser_env ->
    let _4 = (Parsing.peek_val __caml_parser_env 0 : 'typ) in
    Obj.repr(
# 71 "parser.mly"
                                         ( Ml_nil _4 , StrSet.empty )
# 513 "parser.ml"
               : 'simple_expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 72 "parser.mly"
         ( Ml_var _1 , StrSet.singleton _1)
# 520 "parser.ml"
               : 'simple_expr))
; (fun __caml_parser_env ->
    Obj.repr(
# 75 "parser.mly"
         ( false )
# 526 "parser.ml"
               : 'bool))
; (fun __caml_parser_env ->
    Obj.repr(
# 76 "parser.mly"
         ( true )
# 532 "parser.ml"
               : 'bool))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : string) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'typ) in
    Obj.repr(
# 79 "parser.mly"
                    ( Ml_pattern_var (_1,_3) , StrSet.singleton _1)
# 540 "parser.ml"
               : 'pattern))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 80 "parser.mly"
         ( Ml_pattern_int _1 , StrSet.empty )
# 547 "parser.ml"
               : 'pattern))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'bool) in
    Obj.repr(
# 81 "parser.mly"
         ( Ml_pattern_bool _1 , StrSet.empty )
# 554 "parser.ml"
               : 'pattern))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 3 : 'pattern) in
    let _4 = (Parsing.peek_val __caml_parser_env 1 : 'pattern) in
    Obj.repr(
# 83 "parser.mly"
   (Ml_pattern_pair(fst _2, fst _4), StrSet.union (snd _2) (snd _4)  )
# 562 "parser.ml"
               : 'pattern))
; (fun __caml_parser_env ->
    let _4 = (Parsing.peek_val __caml_parser_env 0 : 'typ) in
    Obj.repr(
# 84 "parser.mly"
                                        ( Ml_pattern_nil _4 , StrSet.empty )
# 569 "parser.ml"
               : 'pattern))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'pattern) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'pattern) in
    Obj.repr(
# 85 "parser.mly"
                        ( Ml_pattern_cons(fst _1, fst _3), StrSet.union (snd _1) (snd _3) )
# 577 "parser.ml"
               : 'pattern))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 3 : 'pattern) in
    let _3 = (Parsing.peek_val __caml_parser_env 1 : 'expr) in
    let _4 = (Parsing.peek_val __caml_parser_env 0 : 'pattern_expr_list_next) in
    Obj.repr(
# 88 "parser.mly"
                                             ( (fst _1, fst _3) :: fst _4 , StrSet.union (snd _4) (StrSet.diff (snd _3) (snd _1))  )
# 586 "parser.ml"
               : 'pattern_expr_list))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 3 : 'pattern) in
    let _4 = (Parsing.peek_val __caml_parser_env 1 : 'expr) in
    let _5 = (Parsing.peek_val __caml_parser_env 0 : 'pattern_expr_list_next) in
    Obj.repr(
# 91 "parser.mly"
                                                         ( (fst _2, fst _4) :: fst _5, StrSet.union (snd _5) (StrSet.diff (snd _4) (snd _2))  )
# 595 "parser.ml"
               : 'pattern_expr_list_next))
; (fun __caml_parser_env ->
    Obj.repr(
# 92 "parser.mly"
                        ( [] ,  StrSet.empty )
# 601 "parser.ml"
               : 'pattern_expr_list_next))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'simple_expr_or_parenthesized_expr) in
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'simple_expr_or_parenthesized_expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'application_next) in
    Obj.repr(
# 95 "parser.mly"
                                                                                        ( fst _1 :: fst _2 :: fst _3, StrSet.union (snd _1) (StrSet.union (snd _2) (snd _3))  )
# 610 "parser.ml"
               : 'application))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'simple_expr) in
    Obj.repr(
# 98 "parser.mly"
               ( _1 )
# 617 "parser.ml"
               : 'simple_expr_or_parenthesized_expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'expr) in
    Obj.repr(
# 99 "parser.mly"
                               ( _2 )
# 624 "parser.ml"
               : 'simple_expr_or_parenthesized_expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'simple_expr_or_parenthesized_expr) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'application_next) in
    Obj.repr(
# 102 "parser.mly"
                                                      ( fst _1 :: fst _2 , StrSet.union (snd _1) (snd _2) )
# 632 "parser.ml"
               : 'application_next))
; (fun __caml_parser_env ->
    Obj.repr(
# 103 "parser.mly"
   ( [] , StrSet.empty )
# 638 "parser.ml"
               : 'application_next))
; (fun __caml_parser_env ->
    Obj.repr(
# 107 "parser.mly"
        ( Tbool )
# 644 "parser.ml"
               : 'typ))
; (fun __caml_parser_env ->
    Obj.repr(
# 108 "parser.mly"
       ( Tint )
# 650 "parser.ml"
               : 'typ))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'typ) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'typ) in
    Obj.repr(
# 109 "parser.mly"
                ( TFun(_1,_3) )
# 658 "parser.ml"
               : 'typ))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'typ) in
    Obj.repr(
# 110 "parser.mly"
            ( TList _1 )
# 665 "parser.ml"
               : 'typ))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'typ) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'typ) in
    Obj.repr(
# 111 "parser.mly"
               (TPair(_1,_3))
# 673 "parser.ml"
               : 'typ))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'typ) in
    Obj.repr(
# 112 "parser.mly"
                             (_2 )
# 680 "parser.ml"
               : 'typ))
(* Entry main *)
; (fun __caml_parser_env -> raise (Parsing.YYexit (Parsing.peek_val __caml_parser_env 0)))
|]
let yytables =
  { Parsing.actions=yyact;
    Parsing.transl_const=yytransl_const;
    Parsing.transl_block=yytransl_block;
    Parsing.lhs=yylhs;
    Parsing.len=yylen;
    Parsing.defred=yydefred;
    Parsing.dgoto=yydgoto;
    Parsing.sindex=yysindex;
    Parsing.rindex=yyrindex;
    Parsing.gindex=yygindex;
    Parsing.tablesize=yytablesize;
    Parsing.table=yytable;
    Parsing.check=yycheck;
    Parsing.error_function=parse_error;
    Parsing.names_const=yynames_const;
    Parsing.names_block=yynames_block }
let main (lexfun : Lexing.lexbuf -> token) (lexbuf : Lexing.lexbuf) =
   (Parsing.yyparse yytables 1 lexfun lexbuf : Ast.ml_ast * StrSet.t )
