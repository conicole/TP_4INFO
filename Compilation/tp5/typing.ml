open Print_ast
open Ast




let rec typ_of_pattern : ml_pattern -> TypEnv.t * Ast.typ = 
 function
 | Ml_pattern_var(s,ty) -> TypEnv.singleton s ty , ty
 | Ml_pattern_bool b -> TypEnv.empty , Tbool
 | Ml_pattern_int i  -> TypEnv.empty , Tint
 | Ml_pattern_pair(p1,p2) ->
   let env1,typ1 = typ_of_pattern p1 in
   let env2,typ2 = typ_of_pattern p2 in
   TypEnv.add_all env1 env2, TPair(typ1,typ2)
 | Ml_pattern_nil typ -> TypEnv.empty, typ
 | Ml_pattern_cons(x,l) -> 
  let envx,typx = typ_of_pattern x in
  let envl,typl = typ_of_pattern l in
  if typl = TList typx then  TypEnv.add_all envx envl, TList typx
  else failwith "incompatibles types in the list"

let rec wt_expr (env:TypEnv.t) = function
 | Ml_int i -> Tint
 | Ml_bool b -> Tbool
 | Ml_nil ty   ->  ty
 | Ml_pair(e1,e2) -> 
  let typ1 = wt_expr env e1 in
  let typ2 = wt_expr env e2 in
  TPair(typ1,typ2)
 | Ml_cons(e1,le1) -> 
  let typee1 = wt_expr env e1 in
  let typele1 = wt_expr env le1 in
  if typele1 = TList typee1 then typele1
  else failwith "typ -> cons "
 | Ml_unop(op,e) -> 
  let tyExp = wt_expr env e in
  (match op, tyExp with 
   | Ml_fst,TPair(x,y) -> x
   | Ml_snd, TPair(x,y) -> y 
   | _ -> failwith "typ -> unop")  
 | Ml_binop(op,e1,e2) ->
   let tyE1 = wt_expr env e1 in
   let tyE2 = wt_expr env e2 in
  (match op,tyE1,tyE2 with 
   | (Ml_add | Ml_sub | Ml_mult),Tint,Tint -> Tint
   | Ml_less, Tint, Tint -> Tbool
   | Ml_eq, x, y -> if x = y then Tbool
                    else failwith "not two same type for equal"
   | _ -> failwith "operation illegal")
| Ml_var x -> TypEnv.find x env 
| Ml_if(e1,e2,e3) -> failwith "todo"
| Ml_fun l -> failwith "TODO"
| Ml_app(e1,e2) ->
  let typE1 = wt_expr env e1 in
  let typE2 = wt_expr env e2 in
  (match typE1 with
    TFun(typEnt,typRes) -> 
      if(typE2 = typEnt) 
      then typRes
      else failwith ("cannot apply")
  | _ -> failwith ("cannot apply, use a function !"))
| Ml_let (x,e1,e2) ->
  let t1 = wt_expr env e1 in
  wt_expr (TypEnv.update x t1 env) e2
| Ml_letrec(x,typ,e1,e2) ->
  let newEnv = TypEnv.update x typ env in
  let newTyp = wt_expr newEnv e1 in
  if newTyp = typ then wt_expr newEnv e2
  else failwith "incompatible types in let rec"

let wt_ast tenv ast = 
  match ast with
  | Ml_expr e -> wt_expr (!tenv) e
  | Ml_definition(s,e) -> 
   let ty' = wt_expr !tenv e in
   tenv := TypEnv.update s ty'  !tenv ;
   ty'
  | Ml_definitionrec (s,ty',e) -> 
   let ty = wt_expr (TypEnv.update s ty' !tenv) e in
   if ty = ty'
   then
    begin
     tenv := TypEnv.update s ty !tenv ;
     ty'
    end
   else failwith (Printf.sprintf "Type error: let rec with incompatible types %s and %s" (string_of_typ ty) (string_of_typ ty'))

 


