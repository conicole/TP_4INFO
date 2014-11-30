

CAMLC=ocamlc
CAMLLEX=ocamllex
CAMLYACC=ocamlyacc


main: arbre.cmo parser.cmi parser.cmo lexer.cmo main.cmo
	ocamlc -o main lexer.cmo arbre.cmo parser.cmo 

clean: 
	rm *.cmo *.cmi 

# generic rules :
#################

.SUFFIXES: .mll .mly .mli .ml .cmi .cmo .cmx 

.mll.mli:
	$(CAMLLEX) $<
.mll.ml:
	$(CAMLLEX) $<
.mly.mli:
	$(CAMLYACC) $<
.mly.ml: 
	$(CAMLYACC) $<
.mli.cmi:
	$(CAMLC) -c $(FLAGS) $<
.ml.cmo:
	$(CAMLC) -c $(FLAGS) $<