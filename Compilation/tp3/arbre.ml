(* Construction de l'arbre *)
(* Declaration de types *)

type expr =
	| Node_plus of expr * expr
	| Node_inf of expr * expr
	| Node_and of expr * expr
	| Ident of string

type decl =
	| Node_decl_int of string
	| Node_decl_bool of string


type arbre_bloc =
	| Node_bloc of decl list * inst list
	and
	inst =
	| Node_inst of string * expr
	| Node_inst_bloc of arbre_bloc


