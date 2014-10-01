



inclus([Tete|Reste],Y):-membre(Tete,Y),
			inclus(Reste,Y).
inclus([],_).