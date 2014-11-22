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

open Parsing;;
# 2 "parser.mly"
  open Ast
# 26 "parser.ml"
let yytransl_const = [|
  259 (* TWO_TWO_POINTS *);
  260 (* TRUE *);
  261 (* FALSE *);
  262 (* OPEN_BRACKET *);
  263 (* CLOSE_BRACKET *);
  264 (* LET *);
    0 (* EOF *);
  265 (* END_OF_EXPRESSION *);
  266 (* LEFT_PAREN *);
  267 (* RIGHT_PAREN *);
  268 (* COMMA *);
  269 (* PLUS *);
  270 (* MINUS *);
  271 (* TIME *);
  272 (* EQUAL *);
  273 (* LESS *);
  274 (* PREMS *);
    0|]

let yytransl_block = [|
  257 (* INT *);
  258 (* IDENT *);
    0|]

let yylhs = "\255\255\
\001\000\001\000\001\000\002\000\002\000\002\000\002\000\002\000\
\002\000\002\000\002\000\002\000\003\000\003\000\003\000\003\000\
\004\000\005\000\005\000\005\000\006\000\006\000\000\000"

let yylen = "\002\000\
\001\000\002\000\001\000\001\000\003\000\003\000\003\000\003\000\
\003\000\003\000\002\000\001\000\001\000\001\000\001\000\002\000\
\003\000\001\000\005\000\003\000\002\000\000\000\002\000"

let yydefred = "\000\000\
\000\000\000\000\003\000\013\000\014\000\015\000\000\000\001\000\
\000\000\000\000\023\000\000\000\000\000\012\000\000\000\016\000\
\000\000\000\000\000\000\002\000\000\000\000\000\000\000\000\000\
\000\000\018\000\000\000\020\000\000\000\000\000\000\000\000\000\
\008\000\000\000\000\000\000\000\017\000\000\000\021\000\019\000"

let yydgoto = "\002\000\
\011\000\012\000\013\000\014\000\015\000\037\000"

let yysindex = "\009\000\
\001\000\000\000\000\000\000\000\000\000\000\000\011\255\000\000\
\032\255\032\255\000\000\103\255\000\000\000\000\003\255\000\000\
\064\255\119\255\032\255\000\000\032\255\032\255\032\255\032\255\
\032\255\000\000\003\255\000\000\032\255\048\255\007\255\007\255\
\000\000\070\255\026\255\003\255\000\000\110\255\000\000\000\000"

let yyrindex = "\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\042\255\000\000\000\000\000\000\
\000\000\250\254\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\057\255\000\000\000\000\138\255\079\255\091\255\
\000\000\008\255\128\255\057\255\000\000\000\000\000\000\000\000"

let yygindex = "\000\000\
\000\000\006\000\241\255\000\000\243\255\246\255"

let yytablesize = 275
let yytable = "\026\000\
\008\000\027\000\011\000\004\000\011\000\011\000\005\000\006\000\
\007\000\001\000\009\000\026\000\009\000\036\000\017\000\018\000\
\009\000\016\000\009\000\009\000\026\000\023\000\036\000\009\000\
\030\000\039\000\031\000\032\000\033\000\034\000\035\000\000\000\
\004\000\000\000\038\000\005\000\006\000\007\000\021\000\022\000\
\023\000\009\000\018\000\000\000\004\000\018\000\018\000\018\000\
\000\000\010\000\004\000\018\000\004\000\004\000\004\000\004\000\
\004\000\004\000\004\000\022\000\021\000\022\000\023\000\024\000\
\025\000\022\000\019\000\022\000\022\000\022\000\022\000\022\000\
\022\000\022\000\028\000\029\000\021\000\022\000\023\000\024\000\
\025\000\005\000\021\000\022\000\023\000\000\000\025\000\005\000\
\000\000\005\000\005\000\005\000\005\000\006\000\005\000\005\000\
\000\000\000\000\000\000\006\000\000\000\006\000\006\000\006\000\
\006\000\019\000\006\000\006\000\000\000\000\000\000\000\020\000\
\019\000\000\000\000\000\021\000\022\000\023\000\024\000\025\000\
\040\000\019\000\021\000\022\000\023\000\024\000\025\000\000\000\
\000\000\000\000\010\000\021\000\022\000\023\000\024\000\025\000\
\010\000\000\000\010\000\010\000\007\000\000\000\000\000\010\000\
\010\000\000\000\007\000\000\000\007\000\007\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\003\000\004\000\000\000\000\000\005\000\006\000\007\000\000\000\
\000\000\000\000\009\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\010\000"

let yycheck = "\015\000\
\000\000\015\000\009\001\001\001\011\001\012\001\004\001\005\001\
\006\001\001\000\003\001\027\000\010\001\027\000\009\000\010\000\
\009\001\007\001\011\001\012\001\036\000\015\001\036\000\016\001\
\019\000\036\000\021\000\022\000\023\000\024\000\025\000\255\255\
\001\001\255\255\029\000\004\001\005\001\006\001\013\001\014\001\
\015\001\010\001\001\001\255\255\003\001\004\001\005\001\006\001\
\255\255\018\001\009\001\010\001\011\001\012\001\013\001\014\001\
\015\001\016\001\017\001\003\001\013\001\014\001\015\001\016\001\
\017\001\009\001\003\001\011\001\012\001\013\001\014\001\015\001\
\016\001\017\001\011\001\012\001\013\001\014\001\015\001\016\001\
\017\001\003\001\013\001\014\001\015\001\255\255\017\001\009\001\
\255\255\011\001\012\001\013\001\014\001\003\001\016\001\017\001\
\255\255\255\255\255\255\009\001\255\255\011\001\012\001\013\001\
\014\001\003\001\016\001\017\001\255\255\255\255\255\255\009\001\
\003\001\255\255\255\255\013\001\014\001\015\001\016\001\017\001\
\011\001\003\001\013\001\014\001\015\001\016\001\017\001\255\255\
\255\255\255\255\003\001\013\001\014\001\015\001\016\001\017\001\
\009\001\255\255\011\001\012\001\003\001\255\255\255\255\016\001\
\017\001\255\255\009\001\255\255\011\001\012\001\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\000\001\001\001\255\255\255\255\004\001\005\001\006\001\255\255\
\255\255\255\255\010\001\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\018\001"

let yynames_const = "\
  TWO_TWO_POINTS\000\
  TRUE\000\
  FALSE\000\
  OPEN_BRACKET\000\
  CLOSE_BRACKET\000\
  LET\000\
  EOF\000\
  END_OF_EXPRESSION\000\
  LEFT_PAREN\000\
  RIGHT_PAREN\000\
  COMMA\000\
  PLUS\000\
  MINUS\000\
  TIME\000\
  EQUAL\000\
  LESS\000\
  PREMS\000\
  "

let yynames_block = "\
  INT\000\
  IDENT\000\
  "

let yyact = [|
  (fun _ -> failwith "parser")
; (fun __caml_parser_env ->
    Obj.repr(
# 30 "parser.mly"
       ( Printf.printf "\nbye"; exit 0 )
# 195 "parser.ml"
               : Ast.ml_expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'expr) in
    Obj.repr(
# 31 "parser.mly"
                          ( _1 )
# 202 "parser.ml"
               : Ast.ml_expr))
; (fun __caml_parser_env ->
    Obj.repr(
# 32 "parser.mly"
         (
    let bol = (Parsing.symbol_start_pos ()).Lexing.pos_bol in
    failwith ("parsing: line " ^ 
		 (string_of_int ((Parsing.symbol_start_pos ()).Lexing.pos_lnum)) ^ 
		 " between character " ^
		 (string_of_int (Parsing.symbol_start () - bol)) ^
		 " and " ^
		 (string_of_int ((Parsing.symbol_end ()) + 1 - bol)))
 )
# 216 "parser.ml"
               : Ast.ml_expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'simple_expr) in
    Obj.repr(
# 43 "parser.mly"
              ( _1 )
# 223 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 44 "parser.mly"
                 ( Ml_binop (Ml_add,_1,_3) )
# 231 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 45 "parser.mly"
                  ( Ml_binop (Ml_sub,_1,_3) )
# 239 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 46 "parser.mly"
                            ( Ml_cons(_1,_3) )
# 247 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 47 "parser.mly"
                 (Ml_binop( Ml_mult,_1,_3))
# 255 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 48 "parser.mly"
                  (Ml_binop( Ml_eq,_1,_3))
# 263 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 49 "parser.mly"
                 ( Ml_binop (Ml_less,_1,_3) )
# 271 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 50 "parser.mly"
             ( Ml_unop (Ml_fst,_2))
# 278 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'application) in
    Obj.repr(
# 51 "parser.mly"
              ( List.fold_left (fun res a -> Ml_app(res, a)) (List.hd _1) (List.tl _1) )
# 285 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 55 "parser.mly"
      ( Ml_int _1 )
# 292 "parser.ml"
               : 'simple_expr))
; (fun __caml_parser_env ->
    Obj.repr(
# 56 "parser.mly"
       ( Ml_bool true )
# 298 "parser.ml"
               : 'simple_expr))
; (fun __caml_parser_env ->
    Obj.repr(
# 57 "parser.mly"
        ( Ml_bool false )
# 304 "parser.ml"
               : 'simple_expr))
; (fun __caml_parser_env ->
    Obj.repr(
# 58 "parser.mly"
                             (Ml_nil)
# 310 "parser.ml"
               : 'simple_expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'simple_expr_or_parenthesized_expr) in
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'simple_expr_or_parenthesized_expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'application_next) in
    Obj.repr(
# 62 "parser.mly"
                                                                                        ( _1 :: _2 :: _3 )
# 319 "parser.ml"
               : 'application))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'simple_expr) in
    Obj.repr(
# 65 "parser.mly"
               ( _1 )
# 326 "parser.ml"
               : 'simple_expr_or_parenthesized_expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 3 : 'expr) in
    let _4 = (Parsing.peek_val __caml_parser_env 1 : 'expr) in
    Obj.repr(
# 66 "parser.mly"
                                          ( Ml_pair(_2, _4) )
# 334 "parser.ml"
               : 'simple_expr_or_parenthesized_expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'expr) in
    Obj.repr(
# 67 "parser.mly"
                               ( _2 )
# 341 "parser.ml"
               : 'simple_expr_or_parenthesized_expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'simple_expr_or_parenthesized_expr) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'application_next) in
    Obj.repr(
# 71 "parser.mly"
                                                      ( _1 :: _2 )
# 349 "parser.ml"
               : 'application_next))
; (fun __caml_parser_env ->
    Obj.repr(
# 72 "parser.mly"
   ( [] )
# 355 "parser.ml"
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
   (Parsing.yyparse yytables 1 lexfun lexbuf : Ast.ml_expr)
