%{
  open Ast
%}

%token <int> INT
%token <string> IDENT
%token TWO_TWO_POINTS
%token TRUE FALSE
%token OPEN_BRACKET CLOSE_BRACKET
%token LET
%token EOF END_OF_EXPRESSION
%token LEFT_PAREN RIGHT_PAREN
%token COMMA
%token PLUS
%token MINUS
%token TIME
%token EQUAL
%token LESS
%token PREMS
%left TWO_TWO_POINTS
%left EQUAL
%left LESS
%left PLUS MINUS
%left TIME
%start main
%type <Ast.ml_expr> main
%%

main:
 | EOF { Printf.printf "\nbye"; exit 0 }
 | expr END_OF_EXPRESSION { $1 }
 | error {
    let bol = (Parsing.symbol_start_pos ()).Lexing.pos_bol in
    failwith ("parsing: line " ^ 
		 (string_of_int ((Parsing.symbol_start_pos ()).Lexing.pos_lnum)) ^ 
		 " between character " ^
		 (string_of_int (Parsing.symbol_start () - bol)) ^
		 " and " ^
		 (string_of_int ((Parsing.symbol_end ()) + 1 - bol)))
 }

expr:
| simple_expr { $1 }
| expr PLUS expr { Ml_binop (Ml_add,$1,$3) }
| expr MINUS expr { Ml_binop (Ml_sub,$1,$3) }
| expr TWO_TWO_POINTS expr  { Ml_cons($1,$3) } 
| expr TIME expr {Ml_binop( Ml_mult,$1,$3)}
| expr EQUAL expr {Ml_binop( Ml_eq,$1,$3)}
| expr LESS expr { Ml_binop (Ml_less,$1,$3) } 
| PREMS expr { Ml_unop (Ml_fst,$2)}
| application { List.fold_left (fun res a -> Ml_app(res, a)) (List.hd $1) (List.tl $1) }
/* TO DO */

simple_expr:
| INT { Ml_int $1 }
| TRUE { Ml_bool true }
| FALSE { Ml_bool false }
| OPEN_BRACKET CLOSE_BRACKET {Ml_nil}
/* TO DO */

application:
 | simple_expr_or_parenthesized_expr simple_expr_or_parenthesized_expr application_next { $1 :: $2 :: $3 }

simple_expr_or_parenthesized_expr:
 | simple_expr { $1 }
 | LEFT_PAREN expr COMMA expr RIGHT_PAREN { Ml_pair($2, $4) }
 | LEFT_PAREN expr RIGHT_PAREN { $2 }


application_next:
 | simple_expr_or_parenthesized_expr application_next { $1 :: $2 }
 | { [] }
