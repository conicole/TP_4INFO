/* File parser.mly */

%{
  open Arbre
%}

%token PLUS FLECHE
%token PAROUV PARFERM
%token INF AND 
%token <string> IDENT 
%token BEGIN
%token END
%token PTVIRG VIRG
%token INT
%token BOOL
%token EOF
%left AND    
%left INF
%left PLUS
%start main          /* the entry point */
%type <Arbre.arbre_bloc> main
%%

main:
	bloc EOF { $1 }

bloc:
	BEGIN sdecl PTVIRG sinst END { Node_bloc ($2,$4)  }

sdecl:
	| decl {[$1]}
	| decl VIRG sdecl { $1::$3 }

decl:
	typeuh IDENT {
		match $1 with
			| "int" -> Node_decl_int $2
			| "bool" -> Node_decl_bool $2
			| _ -> failwith "error" }


typeuh:
	| INT { "int" }
	| BOOL { "bool" }


sinst:
	| inst { [$1]}
	| inst PTVIRG sinst { $1::$3 }



inst:
	| bloc { Node_inst_bloc $1 }
    | IDENT FLECHE expr { Node_inst ($1, $3) }


expr:
	| expr PLUS expr { Node_plus ($1, $3) }
	| expr INF expr { Node_inf ($1, $3) }
	| expr AND expr { Node_and ($1, $3) }
	| PAROUV expr PARFERM { $2 }
	| IDENT { Ident $1 }




