{
  open Ulex (* Ulex contains the type definition of lexical units *)
}

let lettre = ['a'-'z'] | ['A'-'Z'] |  '\'' 
let chiffre = ['0'-'9']

let suitident = lettre | chiffre
let ident = lettre suitident*
(* let comment = ident | [ ' ' '\t' '\n' ]*)

let commentaire = "/*" ([^'*']| '*'+ [^'/''*']   )* '*'+ '/'




rule token = parse (* TODO *)
   | ['0']   { UL_UNIT}
   | [' ' '\t' '\n']     { token lexbuf }     (* skip blanks *)
   | eof     { UL_EOF }
   | '='     { UL_EGAL }
   | '<'     { UL_INF }
   | '>'     { UL_SUP }
   | "<>"   { UL_DIFF }
   | '('     { UL_PAROUV }
   | ')'     { UL_PARFERM }
   | "et"    { UL_ET }
   | "ou"    { UL_OU }
   | commentaire { token lexbuf }
   | ident as id  { UL_IDENT id }

  
