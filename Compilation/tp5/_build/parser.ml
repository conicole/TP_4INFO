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
\003\000\006\000\006\000\007\000\007\000\007\000\007\000\007\000\
\007\000\004\000\008\000\008\000\005\000\009\000\009\000\010\000\
\010\000\000\000"

let yylen = "\002\000\
\001\000\005\000\006\000\002\000\001\000\001\000\003\000\003\000\
\005\000\002\000\002\000\003\000\003\000\003\000\003\000\003\000\
\006\000\002\000\001\000\006\000\007\000\001\000\001\000\002\000\
\001\000\001\000\001\000\001\000\001\000\001\000\005\000\002\000\
\003\000\004\000\005\000\000\000\003\000\001\000\003\000\002\000\
\000\000\002\000"

let yydefred = "\000\000\
\000\000\000\000\005\000\022\000\025\000\027\000\026\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\001\000\042\000\
\000\000\000\000\019\000\023\000\000\000\000\000\000\000\029\000\
\028\000\000\000\000\000\018\000\030\000\000\000\000\000\000\000\
\010\000\011\000\000\000\024\000\000\000\000\000\000\000\000\000\
\000\000\000\000\004\000\000\000\038\000\000\000\000\000\000\000\
\000\000\032\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\013\000\000\000\000\000\000\000\000\000\
\000\000\037\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\039\000\040\000\000\000\002\000\000\000\
\000\000\000\000\034\000\000\000\000\000\000\000\009\000\000\000\
\000\000\003\000\031\000\000\000\000\000\017\000\000\000\000\000\
\000\000\035\000"

let yydgoto = "\002\000\
\016\000\017\000\018\000\028\000\019\000\020\000\030\000\083\000\
\021\000\066\000"

let yysindex = "\009\000\
\001\000\000\000\000\000\000\000\000\000\000\000\000\000\040\255\
\017\255\136\255\136\255\136\255\136\255\249\254\000\000\000\000\
\089\000\000\000\000\000\000\000\070\255\006\255\046\255\000\000\
\000\000\017\255\029\255\000\000\000\000\253\254\049\255\103\000\
\000\000\000\000\110\000\000\000\136\255\136\255\136\255\136\255\
\136\255\136\255\000\000\136\255\000\000\070\255\136\255\043\255\
\246\254\000\000\136\255\017\255\048\255\055\255\136\255\000\000\
\136\255\050\255\050\255\000\000\135\255\135\255\135\255\131\000\
\070\255\000\000\011\000\136\255\017\255\082\000\044\255\136\255\
\056\255\124\000\143\000\000\000\000\000\136\255\000\000\025\000\
\037\255\017\255\000\000\058\000\136\255\136\255\000\000\155\000\
\136\255\000\000\000\000\036\255\070\000\000\000\155\000\136\255\
\082\000\000\000"

let yyrindex = "\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\082\255\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\151\255\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\109\255\
\000\000\172\255\193\255\000\000\204\255\215\255\226\255\000\000\
\151\255\000\000\000\000\000\000\000\000\044\000\032\255\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\255\
\000\000\000\000\000\000\000\000\000\000\000\000\036\000\000\000\
\044\000\000\000"

let yygindex = "\000\000\
\000\000\248\255\235\255\000\000\000\000\254\255\239\255\234\255\
\247\255\014\000"

let yytablesize = 436
let yytable = "\045\000\
\015\000\032\000\033\000\034\000\035\000\051\000\029\000\020\000\
\049\000\001\000\020\000\046\000\020\000\020\000\052\000\069\000\
\036\000\024\000\025\000\006\000\007\000\052\000\020\000\029\000\
\045\000\047\000\020\000\020\000\058\000\059\000\060\000\061\000\
\062\000\063\000\071\000\064\000\065\000\026\000\067\000\027\000\
\033\000\022\000\070\000\045\000\096\000\023\000\074\000\048\000\
\075\000\029\000\053\000\081\000\050\000\033\000\054\000\065\000\
\073\000\033\000\091\000\080\000\052\000\052\000\068\000\084\000\
\092\000\039\000\029\000\072\000\052\000\088\000\004\000\005\000\
\006\000\007\000\098\000\085\000\093\000\094\000\077\000\029\000\
\095\000\000\000\038\000\038\000\038\000\038\000\000\000\097\000\
\006\000\000\000\044\000\006\000\014\000\006\000\006\000\006\000\
\006\000\006\000\006\000\000\000\000\000\006\000\038\000\006\000\
\038\000\000\000\006\000\006\000\006\000\039\000\039\000\039\000\
\039\000\000\000\000\000\007\000\000\000\000\000\007\000\000\000\
\007\000\007\000\007\000\007\000\007\000\007\000\000\000\000\000\
\007\000\039\000\007\000\039\000\000\000\007\000\007\000\007\000\
\004\000\005\000\006\000\007\000\031\000\000\000\000\000\009\000\
\000\000\000\000\010\000\000\000\037\000\038\000\039\000\000\000\
\000\000\011\000\012\000\000\000\013\000\041\000\014\000\042\000\
\041\000\000\000\041\000\041\000\041\000\041\000\041\000\041\000\
\000\000\000\000\041\000\000\000\041\000\000\000\000\000\041\000\
\041\000\041\000\012\000\000\000\000\000\012\000\000\000\012\000\
\012\000\012\000\012\000\000\000\012\000\000\000\000\000\012\000\
\000\000\012\000\000\000\000\000\012\000\012\000\012\000\014\000\
\000\000\000\000\014\000\000\000\014\000\014\000\014\000\014\000\
\000\000\014\000\015\000\000\000\014\000\015\000\014\000\015\000\
\015\000\014\000\014\000\014\000\015\000\016\000\000\000\015\000\
\016\000\015\000\016\000\016\000\000\000\015\000\015\000\016\000\
\008\000\000\000\016\000\008\000\016\000\008\000\008\000\000\000\
\016\000\016\000\008\000\000\000\000\000\008\000\000\000\008\000\
\000\000\000\000\000\000\008\000\008\000\000\000\000\000\000\000\
\003\000\004\000\005\000\006\000\007\000\008\000\000\000\000\000\
\009\000\000\000\000\000\010\000\000\000\000\000\000\000\000\000\
\000\000\078\000\011\000\012\000\000\000\013\000\000\000\014\000\
\037\000\038\000\039\000\040\000\000\000\000\000\041\000\089\000\
\000\000\000\000\000\000\042\000\000\000\079\000\037\000\038\000\
\039\000\040\000\021\000\000\000\041\000\021\000\000\000\021\000\
\021\000\042\000\036\000\090\000\000\000\000\000\000\000\036\000\
\036\000\021\000\000\000\000\000\000\000\021\000\021\000\000\000\
\078\000\036\000\000\000\000\000\000\000\036\000\036\000\037\000\
\038\000\039\000\040\000\000\000\089\000\041\000\000\000\000\000\
\000\000\000\000\042\000\037\000\038\000\039\000\040\000\000\000\
\000\000\041\000\000\000\082\000\000\000\000\000\042\000\037\000\
\038\000\039\000\040\000\000\000\000\000\041\000\037\000\038\000\
\039\000\040\000\042\000\000\000\041\000\000\000\000\000\000\000\
\000\000\042\000\055\000\043\000\037\000\038\000\039\000\040\000\
\000\000\000\000\041\000\037\000\038\000\039\000\040\000\042\000\
\000\000\041\000\000\000\056\000\000\000\000\000\042\000\057\000\
\086\000\037\000\038\000\039\000\040\000\000\000\000\000\041\000\
\037\000\038\000\039\000\040\000\042\000\000\000\041\000\000\000\
\076\000\000\000\000\000\042\000\037\000\038\000\039\000\040\000\
\000\000\000\000\041\000\000\000\087\000\000\000\000\000\042\000\
\037\000\038\000\039\000\040\000\000\000\000\000\041\000\000\000\
\000\000\000\000\000\000\042\000"

let yycheck = "\021\000\
\000\000\010\000\011\000\012\000\013\000\009\001\009\000\007\001\
\026\000\001\000\010\001\021\000\012\001\013\001\025\001\026\001\
\024\001\001\001\002\001\003\001\004\001\025\001\022\001\026\000\
\046\000\020\001\026\001\027\001\037\000\038\000\039\000\040\000\
\041\000\042\000\052\000\044\000\046\000\021\001\047\000\023\001\
\009\001\002\001\051\000\065\000\009\001\006\001\055\000\002\001\
\057\000\052\000\002\001\069\000\024\001\022\001\006\001\065\000\
\002\001\026\001\022\001\068\000\025\001\025\001\020\001\072\000\
\082\000\016\001\069\000\020\001\025\001\078\000\001\001\002\001\
\003\001\004\001\097\000\020\001\085\000\086\000\065\000\082\000\
\089\000\255\255\001\001\002\001\003\001\004\001\255\255\096\000\
\007\001\255\255\021\001\010\001\023\001\012\001\013\001\014\001\
\015\001\016\001\017\001\255\255\255\255\020\001\021\001\022\001\
\023\001\255\255\025\001\026\001\027\001\001\001\002\001\003\001\
\004\001\255\255\255\255\007\001\255\255\255\255\010\001\255\255\
\012\001\013\001\014\001\015\001\016\001\017\001\255\255\255\255\
\020\001\021\001\022\001\023\001\255\255\025\001\026\001\027\001\
\001\001\002\001\003\001\004\001\005\001\255\255\255\255\008\001\
\255\255\255\255\011\001\255\255\014\001\015\001\016\001\255\255\
\255\255\018\001\019\001\255\255\021\001\007\001\023\001\025\001\
\010\001\255\255\012\001\013\001\014\001\015\001\016\001\017\001\
\255\255\255\255\020\001\255\255\022\001\255\255\255\255\025\001\
\026\001\027\001\007\001\255\255\255\255\010\001\255\255\012\001\
\013\001\014\001\015\001\255\255\017\001\255\255\255\255\020\001\
\255\255\022\001\255\255\255\255\025\001\026\001\027\001\007\001\
\255\255\255\255\010\001\255\255\012\001\013\001\014\001\015\001\
\255\255\017\001\007\001\255\255\020\001\010\001\022\001\012\001\
\013\001\025\001\026\001\027\001\017\001\007\001\255\255\020\001\
\010\001\022\001\012\001\013\001\255\255\026\001\027\001\017\001\
\007\001\255\255\020\001\010\001\022\001\012\001\013\001\255\255\
\026\001\027\001\017\001\255\255\255\255\020\001\255\255\022\001\
\255\255\255\255\255\255\026\001\027\001\255\255\255\255\255\255\
\000\001\001\001\002\001\003\001\004\001\005\001\255\255\255\255\
\008\001\255\255\255\255\011\001\255\255\255\255\255\255\255\255\
\255\255\007\001\018\001\019\001\255\255\021\001\255\255\023\001\
\014\001\015\001\016\001\017\001\255\255\255\255\020\001\007\001\
\255\255\255\255\255\255\025\001\255\255\027\001\014\001\015\001\
\016\001\017\001\007\001\255\255\020\001\010\001\255\255\012\001\
\013\001\025\001\007\001\027\001\255\255\255\255\255\255\012\001\
\013\001\022\001\255\255\255\255\255\255\026\001\027\001\255\255\
\007\001\022\001\255\255\255\255\255\255\026\001\027\001\014\001\
\015\001\016\001\017\001\255\255\007\001\020\001\255\255\255\255\
\255\255\255\255\025\001\014\001\015\001\016\001\017\001\255\255\
\255\255\020\001\255\255\010\001\255\255\255\255\025\001\014\001\
\015\001\016\001\017\001\255\255\255\255\020\001\014\001\015\001\
\016\001\017\001\025\001\255\255\020\001\255\255\255\255\255\255\
\255\255\025\001\012\001\027\001\014\001\015\001\016\001\017\001\
\255\255\255\255\020\001\014\001\015\001\016\001\017\001\025\001\
\255\255\020\001\255\255\022\001\255\255\255\255\025\001\026\001\
\013\001\014\001\015\001\016\001\017\001\255\255\255\255\020\001\
\014\001\015\001\016\001\017\001\025\001\255\255\020\001\255\255\
\022\001\255\255\255\255\025\001\014\001\015\001\016\001\017\001\
\255\255\255\255\020\001\255\255\022\001\255\255\255\255\025\001\
\014\001\015\001\016\001\017\001\255\255\255\255\020\001\255\255\
\255\255\255\255\255\255\025\001"

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
# 35 "parser.mly"
       ( Printf.printf "\nbye"; exit 0 )
# 307 "parser.ml"
               : Ast.ml_ast * StrSet.t ))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 3 : string) in
    let _4 = (Parsing.peek_val __caml_parser_env 1 : 'expr) in
    Obj.repr(
# 36 "parser.mly"
                                          ( Ml_definition(_2, fst _4), snd _4 )
# 315 "parser.ml"
               : Ast.ml_ast * StrSet.t ))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 3 : string) in
    let _5 = (Parsing.peek_val __caml_parser_env 1 : 'expr) in
    Obj.repr(
# 37 "parser.mly"
                                              ( Ml_definitionrec(_3, failwith "let rec type expected", fst _5) , (*TODO*) StrSet.empty )
# 323 "parser.ml"
               : Ast.ml_ast * StrSet.t ))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'expr) in
    Obj.repr(
# 38 "parser.mly"
                          ( Ml_expr (fst _1) , (*TODO*) StrSet.empty)
# 330 "parser.ml"
               : Ast.ml_ast * StrSet.t ))
; (fun __caml_parser_env ->
    Obj.repr(
# 39 "parser.mly"
         (
    let bol = (Parsing.symbol_start_pos ()).Lexing.pos_bol in
    failwith ("parsing: line " ^ 
		 (string_of_int ((Parsing.symbol_start_pos ()).Lexing.pos_lnum)) ^ 
		 " between character " ^
		 (string_of_int (Parsing.symbol_start () - bol)) ^
		 " and " ^
		 (string_of_int ((Parsing.symbol_end ()) + 1 - bol)))
 )
# 344 "parser.ml"
               : Ast.ml_ast * StrSet.t ))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'simple_expr) in
    Obj.repr(
# 50 "parser.mly"
               ( _1 )
# 351 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'expr) in
    Obj.repr(
# 51 "parser.mly"
                               ( _2 )
# 358 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 52 "parser.mly"
                  ( Ml_cons(fst _1, fst _3) , (*TODO*) StrSet.empty )
# 366 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 3 : 'expr) in
    let _4 = (Parsing.peek_val __caml_parser_env 1 : 'expr) in
    Obj.repr(
# 53 "parser.mly"
                                          ( Ml_pair(fst _2, fst _4) , (*TODO*) StrSet.empty )
# 374 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 54 "parser.mly"
            ( Ml_unop(Ml_fst, fst _2) , (*TODO*) StrSet.empty )
# 381 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 55 "parser.mly"
            ( Ml_unop(Ml_snd, fst _2) , (*TODO*) StrSet.empty )
# 388 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 56 "parser.mly"
                 ( Ml_binop(Ml_add, fst _1, fst _3) , (*TODO*) StrSet.empty )
# 396 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 57 "parser.mly"
                  ( Ml_binop(Ml_mult, fst _1, fst _3) , (*TODO*) StrSet.empty )
# 404 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 58 "parser.mly"
                 ( Ml_binop(Ml_sub, fst _1, fst _3),  (*TODO*) StrSet.empty )
# 412 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 59 "parser.mly"
                  ( Ml_binop(Ml_less, fst _1, fst _3), (*TODO*) StrSet.empty )
# 420 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 60 "parser.mly"
                   ( Ml_binop(Ml_eq, fst _1, fst _3), (*TODO*) StrSet.empty )
# 428 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 4 : 'expr) in
    let _4 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _6 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 61 "parser.mly"
                               ( Ml_if(fst _2, fst _4, fst _6), (*TODO*) StrSet.empty )
# 437 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'pattern_expr_list) in
    Obj.repr(
# 62 "parser.mly"
                              ( Ml_fun (fst _2) , (*TODO*) StrSet.empty )
# 444 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'application) in
    Obj.repr(
# 63 "parser.mly"
               ( List.fold_left (fun res a -> Ml_app(res, a)) (List.hd (fst _1)) (List.tl (fst _1)) , (*TODO*) StrSet.empty    )
# 451 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 4 : string) in
    let _4 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _6 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 64 "parser.mly"
                                 ( Ml_let(_2, fst _4, fst _6) , (*TODO*) StrSet.empty )
# 460 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 4 : string) in
    let _5 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _7 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 65 "parser.mly"
                                     ( Ml_letrec(_3, failwith "let rec type expected", fst _5, fst _7) , (*TODO*) StrSet.empty )
# 469 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 68 "parser.mly"
       ( Ml_int _1, (*TODO*) StrSet.empty )
# 476 "parser.ml"
               : 'simple_expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'bool) in
    Obj.repr(
# 69 "parser.mly"
        ( Ml_bool _1, (*TODO*) StrSet.empty )
# 483 "parser.ml"
               : 'simple_expr))
; (fun __caml_parser_env ->
    Obj.repr(
# 70 "parser.mly"
                               ( Ml_nil (failwith "[] : type expected"), (*TODO*) StrSet.empty )
# 489 "parser.ml"
               : 'simple_expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 71 "parser.mly"
         ( Ml_var _1 ,(*TODO*) StrSet.empty )
# 496 "parser.ml"
               : 'simple_expr))
; (fun __caml_parser_env ->
    Obj.repr(
# 74 "parser.mly"
         ( false )
# 502 "parser.ml"
               : 'bool))
; (fun __caml_parser_env ->
    Obj.repr(
# 75 "parser.mly"
         ( true )
# 508 "parser.ml"
               : 'bool))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 78 "parser.mly"
         ( Ml_pattern_var (_1,failwith "pattern variable: type expected") , (*TODO*) StrSet.empty)
# 515 "parser.ml"
               : 'pattern))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 79 "parser.mly"
         ( Ml_pattern_int _1 , (*TODO*) StrSet.empty )
# 522 "parser.ml"
               : 'pattern))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'bool) in
    Obj.repr(
# 80 "parser.mly"
         ( Ml_pattern_bool _1 , (*TODO*) StrSet.empty )
# 529 "parser.ml"
               : 'pattern))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 3 : 'pattern) in
    let _4 = (Parsing.peek_val __caml_parser_env 1 : 'pattern) in
    Obj.repr(
# 82 "parser.mly"
   (Ml_pattern_pair(fst _2, fst _4), (*TODO*) StrSet.empty  )
# 537 "parser.ml"
               : 'pattern))
; (fun __caml_parser_env ->
    Obj.repr(
# 83 "parser.mly"
                              ( Ml_pattern_nil (failwith "pattern []: type expected") , (*TODO*) StrSet.empty )
# 543 "parser.ml"
               : 'pattern))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'pattern) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'pattern) in
    Obj.repr(
# 84 "parser.mly"
                        ( Ml_pattern_cons(fst _1, fst _3), (*TODO*) StrSet.empty )
# 551 "parser.ml"
               : 'pattern))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 3 : 'pattern) in
    let _3 = (Parsing.peek_val __caml_parser_env 1 : 'expr) in
    let _4 = (Parsing.peek_val __caml_parser_env 0 : 'pattern_expr_list_next) in
    Obj.repr(
# 87 "parser.mly"
                                             ( (fst _1, fst _3) :: fst _4 , (*TODO*) StrSet.empty)
# 560 "parser.ml"
               : 'pattern_expr_list))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 3 : 'pattern) in
    let _4 = (Parsing.peek_val __caml_parser_env 1 : 'expr) in
    let _5 = (Parsing.peek_val __caml_parser_env 0 : 'pattern_expr_list_next) in
    Obj.repr(
# 90 "parser.mly"
                                                         ( (fst _2, fst _4) :: fst _5, (*TODO*) StrSet.empty )
# 569 "parser.ml"
               : 'pattern_expr_list_next))
; (fun __caml_parser_env ->
    Obj.repr(
# 91 "parser.mly"
                        ( [] , (*TODO*) StrSet.empty )
# 575 "parser.ml"
               : 'pattern_expr_list_next))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'simple_expr_or_parenthesized_expr) in
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'simple_expr_or_parenthesized_expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'application_next) in
    Obj.repr(
# 94 "parser.mly"
                                                                                        ( fst _1 :: fst _2 :: fst _3, (*TODO*) StrSet.empty )
# 584 "parser.ml"
               : 'application))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'simple_expr) in
    Obj.repr(
# 97 "parser.mly"
               ( _1 )
# 591 "parser.ml"
               : 'simple_expr_or_parenthesized_expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'expr) in
    Obj.repr(
# 98 "parser.mly"
                               ( _2 )
# 598 "parser.ml"
               : 'simple_expr_or_parenthesized_expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'simple_expr_or_parenthesized_expr) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'application_next) in
    Obj.repr(
# 101 "parser.mly"
                                                      ( fst _1 :: fst _2 , (*TODO*) StrSet.empty )
# 606 "parser.ml"
               : 'application_next))
; (fun __caml_parser_env ->
    Obj.repr(
# 102 "parser.mly"
   ( [] , (*TODO*) StrSet.empty )
# 612 "parser.ml"
               : 'application_next))
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
