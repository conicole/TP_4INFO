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

let v_equal vn v  = match v with 
		 | Vt _ -> false
		 | Vn a -> vn_equal vn a


let prodchecker vn prod = match prod with
           |(vLentin,vlist) -> if (List.exists (v_equal vn) vlist)
			       then Some vLentin
			       else None


let acc_vn g f =
  fun vn -> if (vn_equal (axiom g) vn) 
	    then true
(* (fun x y -> not x || y) *)	    else List.exists f (filter_production g (prodchecker vn) ) 
					     


let acc  = fun g -> kleene_fun g (<=) (acc_vn g) false;;



let gen  = fun x b -> false;;

let null = fun _ -> failwith "null : TODO"

let first = fun _ _ -> failwith "first : TODO"

let follow = fun _ _ _ -> failwith "follow : TODO"

let is_ll1 = fun _ _ _ _ -> failwith "is_ll1 : TODO"

let deriv  = fun _ _ _ _ _ _ -> failwith "deriv : TODO"
