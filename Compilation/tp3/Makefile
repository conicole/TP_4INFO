all: lexer.mll parser.mly arbre.ml main.ml
	ocamlbuild -yaccflag -v main.byte

clean:
	rm -rf _build main.byte
