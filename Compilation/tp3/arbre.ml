(* Construction de l'arbre *)
(* Declaration de types *)

type expr =
| Node_plus of expr * expr
| Node_inf of expr * expr
| Node_and of expr * expr
| Ident of string


type arbre_inst =
| Node_inst of string * expr



