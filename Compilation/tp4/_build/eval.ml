open Ast
open Value

exception Error of string

let eval_unop op arg = match op with
	| Ml_fst ->  fst arg
	| Ml_snd ->  fst arg
	| _ -> raise (Error "not implemented yet!")

let eval_binop op arg1 arg2 = match op with
	| Ml_add -> ( match arg1,arg2 with
					| Val_int(x),Val_int(y) -> Val_int(x + y)
					| _ -> raise (Error "addition with non-additionable values") )
	| Ml_sub -> ( match arg1,arg2 with
					| Val_int(x),Val_int(y) -> Val_int(x - y)
					| _ -> raise (Error "substraction with non-substractionable values") )
	| Ml_mult -> ( match arg1,arg2 with
					| Val_int(x),Val_int(y) -> Val_int(x * y)
					| _ -> raise (Error "Multiplication with non-Multiplicationable values") )
	| Ml_eq -> ( match arg1,arg2 with
					| Val_int(x),Val_int(y) -> Val_bool(x = y)
					| Val_bool(x),Val_bool(y) -> Val_bool(x = y)
					| _ -> raise (Error "Equalization with non-Equalizationable values") )
	| Ml_less -> ( match arg1,arg2 with
					| Val_int(x),Val_int(y) -> Val_bool(x < y)
					| _ -> raise (Error "Lessation with non-Lessationable values") )


let rec pattern_matching pattern value = raise (Error "not implemented yet!")

let rec tryfind f = function
  | [] -> raise Not_found
  | hd :: tl -> try f hd with _ -> tryfind f tl

let rec eval env = function
  | Ml_int n -> Val_int n
  | Ml_bool b -> Val_bool b
  | Ml_binop (op,arg1,arg2) -> eval_binop op (eval env arg1) (eval env arg2)
  | Ml_unop (op,arg) -> eval_unop op arg
  | Ml_nil -> Val_nil
  | Ml_cons (a,b) -> Val_cons ((eval env a),(eval env b))
  | _ -> raise (Error "eval not implemented yet!")
