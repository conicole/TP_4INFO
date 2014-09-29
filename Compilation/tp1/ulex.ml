(** [token] is the type of the different lexical units. *)
type token = UL_UNIT (* TODO : Replace unit by the relevant type *)
             | UL_EOF 
	     | UL_IDENT of string
	     | UL_ET
	     | UL_EGAL
	     | UL_PAROUV
	     | UL_PARFERM
	     | UL_OU
	     | UL_DIFF
	     | UL_INF
	     | UL_SUP

(** [is_eof] : token  -> bool
    is_eof tk returns true if the lexical unit represents the end_of file.
*)
let is_eof = function
  | UL_EOF -> true
  | _      -> false

(** [print_token] : out_channel -> token -> unit
    print_token o tk prints on the output channel o the textual representation of the token tk *)
let print_token o = function
  | UL_UNIT -> Printf.fprintf o "()" (* TODO : Replace () by the relevant case analysis *)
  | UL_EOF  -> Printf.fprintf o "UL_EOF"
  | UL_IDENT id  -> Printf.fprintf o "UL_IDENT %s" id
  | UL_ET ->    Printf.fprintf o "UL_ET"
  | UL_EGAL ->    Printf.fprintf o "UL_EGAL"
  | UL_PAROUV -> Printf.fprintf o " UL_PAROUV"
  | UL_PARFERM ->  Printf.fprintf o " UL_PARFERM"
  | UL_OU ->  Printf.fprintf o "UL_OU"
  | UL_DIFF ->  Printf.fprintf o "UL_DIFF"
  | UL_INF ->  Printf.fprintf o " UL_INF"
  | UL_SUP ->  Printf.fprintf o "UL_SUP"

