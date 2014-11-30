/* File parser.mly */

%{
  open Arbre
%}

%token PLUS FLECHE
%token PAROUV PARFERM
%token INF AND
%token <string> IDENT 
%token BEGIN;
%token END;
%token INT;
%token BOOL;
%token EOF
%left AND    
%left INF
%left PLUS
%start inst            /* the entry point */
%type <Arbre.arbre_inst>inst
%%


inst:
    IDENT FLECHE expr  EOF { Node_inst ($1, $3) };


expr:
expr PLUS expr { Node_plus ($1, $3) }
| expr INF expr { Node_inf ($1, $3) }
| expr AND expr { Node_and ($1, $3) }
| PAROUV expr PARFERM { $2 }
| IDENT { Ident $1 }
;



