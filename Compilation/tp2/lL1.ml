open Grammar
(** Corentin Nicole & Valentin Esmieu are looking for LEGO **)

(*          .-+~~~~+-.          *)
(*         /          \         *)
(*         |'~~~~~~~~`|         *)
(*         ||  o  o  ||         *)
(*         ||  \__/  ||         *)
(*         |`--------'|         *)
(*         >----------<         *)
(*      ,p~V          V~q,      *)
(*     ,Z  /.sdbs. d7 \  N,     *)
(*     Z  | 8(  )8_/P `|  N     *)
(*    d'  | `YbdY'     |  `b    *)
(*   |' ,.|            |., `|   *)
(*   | _ /|            |~   |   *)
(* .p~~TV/             ./*T~\,  *)
(* |( ) \|~~~~~~~~~~~~~V ()#,|  *)
(* `b'\\.|-----+--+-----\/  ~'  *)
(*  `` ``|     |  |     |~+     *)
(*       |     |  |     |       *)
(*       |------`'------|       *)
(*       |      ||      |       *)
(*       |------||------|       *)
(*       |      ||      |       *)
(*       |______||______|       *)



let acc_vn g f =
  fun vn -> if vn_equal((axiom g) vn) 
	    then true
	    else 
					     
   
   




let acc  = fun _ -> failwith "acc : TODO"

let gen  = fun _ -> failwith "gen : TODO"

let null = fun _ -> failwith "null : TODO"

let first = fun _ _ -> failwith "first : TODO"

let follow = fun _ _ _ -> failwith "follow : TODO"

let is_ll1 = fun _ _ _ _ -> failwith "is_ll1 : TODO"

let deriv  = fun _ _ _ _ _ _ -> failwith "deriv : TODO"
