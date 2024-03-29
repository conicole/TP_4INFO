/**
TP 8 Traitement Automatique de la Langue (TAL) - Prolog

@author Maud LERAY
@author Corentin NICOLE
@version Annee scolaire 2014/2015
*/

/*
===============================================================================
===============================================================================
 Definition des predicats
===============================================================================
*/
% Afin de simplifier la correction, merci de conserver dans votre grammaire
% l'ordre ci-dessous
 
/*
phrase_simple
gp_nominal 
gp_verbal
gp_prepositionnel
relatif

article
nom_commun
nom_propre
adjectif
prep       
verbe
pronom
  */      
        
/*
===============================================================================
===============================================================================
 Tests
===============================================================================
*/


/*
analyse([le,chien,aboie]).
analyse([les,enfants,jouent]).
analyse([paul,marche,dans,la,rue]).
analyse([la,femme,qui,porte,un,pull,noir,mange,un,steak]).
analyse([les,chien,aboie]).
analyse([la,femme,qui,porte,un,pull,noir,mange,un,chien]).              

%%%%%% Q1.1 %%%%%%%%

phrase_simple : gp_nominal gp_verbal gp_prepositionnel
gp_nominal : article nom_commun adjectif| nom_propre 
| article nom_commun relatif | nom_propre relatif
gp_verbal : verbe | pronom verbe 
gp_prepositionnel : prep gp_nominal | vide
article : LE | LA | LES  | UN | UNE
relatif : pronom
*/

%%%%%%%  Q2.1 %%%%%%
/*

phrase_simple(L,R) :-
	gp_nominal(L,L1),
	relatif(L1,L2),
	gp_verbal(L2,L3),
	gp_nominal(L3,L4),
	gp_prepositionnel(L4,R).

phrase_simple(L,R) :-
	gp_nominal(L,L1),
	relatif(L1,L2),
	gp_verbal(L2,L3),
	gp_prepositionnel(L3,R).


gp_nominal(L,R) :-
	article(L,L1),
	nom_commun(L1,L2),
	adjectif(L2,R).

gp_nominal(L,R) :-
	article(L,L1),
	nom_commun(L1,L2),
	adjectif(L2,R).


gp_nominal(L,R) :-
	nom_propre(L,R).

gp_verbal(L,R) :-
	verbe(L,R).

gp_verbal(L,R) :-
	pronom(L,L1),
	verbe(L1,R).

gp_prepositionnel(L,R) :-
	prep(L,L1),
	gp_nominal(L1,R).

gp_prepositionnel(L,L).

relatif(L,R):-
	pronom(L,L1),
	gp_verbal(L1,L2),
	gp_prepositionnel(L2,R).

relatif(L,R):-
	pronom(L,L1),
	gp_verbal(L1,L2),
	gp_nominal(L2,R).



relatif(L,L).

article([le|L],L).
article([la|L],L).
article([les|L],L).
article([un|L],L).

nom_commun([chien|L],L).
nom_commun([femme|L],L).
nom_commun([enfants|L],L).
nom_commun([steak|L],L).
nom_commun([pull|L],L).
nom_commun([rue|L],L).
nom_commun([parc|L],L).

nom_propre([paul|L],L).

adjectif([noir|L],L).
adjectif(L,L).

prep([dans|L],L).


verbe([mange|L],L).
verbe([porte|L],L).
verbe([aboie|L],L).
verbe([joue|L],L).
verbe([marche|L],L).


pronom([se|L],L).
pronom([qui|L],L).

*/

/* TESTS 

[eclipse 18]: phrase_simple([le,steak,noir,qui,joue,dans,
	le,parc,mange,la,femme,dans,les,enfants],[]).

Yes (0.00s cpu, solution 1, maybe more) 

[eclipse 20]: phrase_simple([le,femme,la,enfants,parc,mange],[]).

No (0.00s cpu)


*/

generer_toutes_les_phrases(R) :-
	phrase_simple(R,[]).


%% %%%%%%%  Q2.2 %%%%%%

%% analyse(L,ArbreS) :-
%% 	phrase_simple(L,[],ArbreS).

%% phrase_simple(L,R,phr(Agn,Ar,Av,An,Ap)) :-
%% 	gp_nominal(L,L1,Agn),
%% 	relatif(L1,L2,Ar),
%% 	gp_verbal(L2,L3,Av),
%% 	gp_nominal(L3,L4,An),
%% 	gp_prepositionnel(L4,R,Ap).

%% phrase_simple(L,R,phr(Agn,Ar,Av,An)) :-
%% 	gp_nominal(L,L1,Agn),
%% 	relatif(L1,L2,Ar),
%% 	gp_verbal(L2,L3,Av),
%% 	gp_nominal(L3,R,An).

%% phrase_simple(L,R,phr(Agn,Av,An,Ap)) :-
%% 	gp_nominal(L,L1,Agn),
%% 	gp_verbal(L1,L2,Av),
%% 	gp_nominal(L2,L3,An),
%% 	gp_prepositionnel(L3,R,Ap).

%% phrase_simple(L,R,phr(Agn,Av,An)) :-
%% 	gp_nominal(L,L1,Agn),
%% 	gp_verbal(L1,L2,Av),
%% 	gp_nominal(L2,R,An).
	
%% phrase_simple(L,R,phr(Agn,Ar,Av,Ap)) :-
%% 	gp_nominal(L,L1,Agn),
%% 	relatif(L1,L2,Ar),
%% 	gp_verbal(L2,L3,Av),
%% 	gp_prepositionnel(L3,R,Ap).

%% phrase_simple(L,R,phr(Agn,Ar,Av)) :-
%% 	gp_nominal(L,L1,Agn),
%% 	relatif(L1,L2,Ar),
%% 	gp_verbal(L2,R,Av).

%% phrase_simple(L,R,phr(Agn,Av,Ap)) :-
%% 	gp_nominal(L,L1,Agn),
%% 	gp_verbal(L1,L2,Av),
%% 	gp_prepositionnel(L2,R,Ap).

%% phrase_simple(L,R,phr(Agn,Av)) :-
%% 	gp_nominal(L,L1,Agn),
%% 	gp_verbal(L1,R,Av).

%% gp_nominal(L,R,gn(Aart,Anc,Aadj)) :-
%% 	article(L,L1,Aart),
%% 	nom_commun(L1,L2,Anc),
%% 	adjectif(L2,R,Aadj).

%% gp_nominal(L,R,gn(Aart,Anc)) :-
%% 	article(L,L1,Aart),
%% 	nom_commun(L1,R,Anc).

%% gp_nominal(L,R,gn(Anp)) :-
%% 	nom_propre(L,R,Anp).

%% gp_verbal(L,R,gv(Av)) :-
%% 	verbe(L,R,Av).

%% gp_verbal(L,R,gv(Ap,Av)) :-
%% 	pronom(L,L1,Ap),
%% 	verbe(L1,R,Av).

%% gp_prepositionnel(L,R,gp(Ap,Agn)) :-
%% 	prep(L,L1,Ap),
%% 	gp_nominal(L1,R,Agn).

%% relatif(L,R,rel(Ap,Agv,Agp)):-
%% 	pronom(L,L1,Ap),
%% 	gp_verbal(L1,L2,Agv),
%% 	gp_prepositionnel(L2,R,Agp).

%% relatif(L,R,rel(Ap,Agv)):-
%% 	pronom(L,L1,Ap),
%% 	gp_verbal(L1,R,Agv).

%% relatif(L,R,rel(Ap,Agv,Agn)):-
%% 	pronom(L,L1,Ap),
%% 	gp_verbal(L1,L2,Agv),
%% 	gp_nominal(L2,R,Agn).

%% article([le|L],L,art(le)).
%% article([la|L],L,art(la)).
%% article([les|L],L,art(les)).
%% article([un|L],L,art(un)).

%% nom_commun([chien|L],L,nom_com(chien)).
%% nom_commun([femme|L],L,nom_com(femme)).
%% nom_commun([enfants|L],L,nom_com(enfants)).
%% nom_commun([steak|L],L,nom_com(steak)).
%% nom_commun([pull|L],L,nom_com(pull)).
%% nom_commun([rue|L],L,nom_com(rue)).
%% nom_commun([parc|L],L,nom_com(parc)).

%% nom_propre([paul|L],L,nom_prop(paul)).

%% adjectif([noir|L],L,adj(noir)).

%% prep([dans|L],L,prep(dans)).

%% verbe([mange|L],L,verb(mange)).
%% verbe([porte|L],L,verb(porte)).
%% verbe([aboie|L],L,verb(aboie)).
%% verbe([jouent|L],L,verb(jouent)).
%% verbe([marche|L],L,verb(marche)).

%% pronom([se|L],L,pronom(se)).
%% pronom([qui|L],L,pronom(qui)).

/* TESTS

[eclipse 31]: analyse([le,chien,aboie],ArbreS).

ArbreS = phr(gn(art(le), nom_com(chien)), gv(verb(aboie)))

[eclipse 32]: analyse([le,chien,aboie,dans,la,rue],ArbreS).

ArbreS = phr(gn(art(le), nom_com(chien)),
	gv(verb(aboie)),
	gp(prep(dans), gn(art(la), nom_com(rue))))

[eclipse 33]: analyse([la,femme,qui,porte,un,pull,noir,mange,un,steak],ArbreS).

ArbreS = phr(gn(art(la), nom_com(femme)),
 rel(pronom(qui),
  gv(verb(porte)),
  gn(art(un), nom_com(pull), adj(noir))),
  gv(verb(mange)), gn(art(un), nom_com(steak)))

*/

%% %%%%%%%  Q2.3 %%%%%%

%% analyse(L,ArbreS) :-
%% 	phrase_simple(L,[],ArbreS).

%% phrase_simple(L,R,phr(Agn,Ar,Av,An,Ap)) :-
%% 	gp_nominal_sg(L,L1,Agn),
%% 	relatif_sg(L1,L2,Ar),
%% 	gp_verbal_sg(L2,L3,Av),
%% 	gp_nominal(L3,L4,An),
%% 	gp_prepositionnel(L4,R,Ap).

%% phrase_simple(L,R,phr(Agn,Ar,Av,An,Ap)) :-
%% 	gp_nominal_pl(L,L1,Agn),
%% 	relatif_pl(L1,L2,Ar),
%% 	gp_verbal_pl(L2,L3,Av),
%% 	gp_nominal(L3,L4,An),
%% 	gp_prepositionnel(L4,R,Ap).

%% phrase_simple(L,R,phr(Agn,Ar,Av,An)) :-
%% 	gp_nominal_sg(L,L1,Agn),
%% 	relatif_sg(L1,L2,Ar),
%% 	gp_verbal_sg(L2,L3,Av),
%% 	gp_nominal(L3,R,An).

%% phrase_simple(L,R,phr(Agn,Ar,Av,An)) :-
%% 	gp_nominal_pl(L,L1,Agn),
%% 	relatif_pl(L1,L2,Ar),
%% 	gp_verbal_pl(L2,L3,Av),
%% 	gp_nominal(L3,R,An).

%% phrase_simple(L,R,phr(Agn,Av,An,Ap)) :-
%% 	gp_nominal_sg(L,L1,Agn),
%% 	gp_verbal_sg(L1,L2,Av),
%% 	gp_nominal(L2,L3,An),
%% 	gp_prepositionnel(L3,R,Ap).

%% phrase_simple(L,R,phr(Agn,Av,An,Ap)) :-
%% 	gp_nominal_pl(L,L1,Agn),
%% 	gp_verbal_pl(L1,L2,Av),
%% 	gp_nominal(L2,L3,An),
%% 	gp_prepositionnel(L3,R,Ap).

%% phrase_simple(L,R,phr(Agn,Av,An)) :-
%% 	gp_nominal_sg(L,L1,Agn),
%% 	gp_verbal_sg(L1,L2,Av),
%% 	gp_nominal(L2,R,An).

%% phrase_simple(L,R,phr(Agn,Av,An)) :-
%% 	gp_nominal_pl(L,L1,Agn),
%% 	gp_verbal_pl(L1,L2,Av),
%% 	gp_nominal(L2,R,An).
	
%% phrase_simple(L,R,phr(Agn,Ar,Av,Ap)) :-
%% 	gp_nominal_sg(L,L1,Agn),
%% 	relatif_sg(L1,L2,Ar),
%% 	gp_verbal(L2,L3,Av),
%% 	gp_prepositionnel(L3,R,Ap).

%% phrase_simple(L,R,phr(Agn,Ar,Av,Ap)) :-
%% 	gp_nominal_pl(L,L1,Agn),
%% 	relatif_pl(L1,L2,Ar),
%% 	gp_verbal(L2,L3,Av),
%% 	gp_prepositionnel(L3,R,Ap).

%% phrase_simple(L,R,phr(Agn,Ar,Av)) :-
%% 	gp_nominal_sg(L,L1,Agn),
%% 	relatif_sg(L1,L2,Ar),
%% 	gp_verbal_sg(L2,R,Av).

%% phrase_simple(L,R,phr(Agn,Ar,Av)) :-
%% 	gp_nominal_pl(L,L1,Agn),
%% 	relatif_pl(L1,L2,Ar),
%% 	gp_verbal_pl(L2,R,Av).

%% phrase_simple(L,R,phr(Agn,Av,Ap)) :-
%% 	gp_nominal_sg(L,L1,Agn),
%% 	gp_verbal_sg(L1,L2,Av),
%% 	gp_prepositionnel(L2,R,Ap).

%% phrase_simple(L,R,phr(Agn,Av,Ap)) :-
%% 	gp_nominal_pl(L,L1,Agn),
%% 	gp_verbal_pl(L1,L2,Av),
%% 	gp_prepositionnel(L2,R,Ap).

%% phrase_simple(L,R,phr(Agn,Av)) :-
%% 	gp_nominal_sg(L,L1,Agn),
%% 	gp_verbal_sg(L1,R,Av).

%% phrase_simple(L,R,phr(Agn,Av)) :-
%% 	gp_nominal_pl(L,L1,Agn),
%% 	gp_verbal_pl(L1,R,Av).

%% gp_nominal_sg(L,R,ArbreS) :-
%% 	gp_nominal_fem(L,R,ArbreS).

%% gp_nominal_sg(L,R,ArbreS) :-
%% 	gp_nominal_masc(L,R,ArbreS).

%% gp_nominal(L,R,ArbreS) :-
%% 	gp_nominal_pl(L,R,ArbreS).
	
%% gp_nominal(L,R,ArbreS) :-
%% 	gp_nominal_sg(L,R,ArbreS).

%% gp_nominal_fem(L,R,gn(Aart,Anc,Aadj)) :-
%% 	article_fem(L,L1,Aart),
%% 	nom_commun_fem(L1,L2,Anc),
%% 	adjectif_fem(L2,R,Aadj).

%% gp_nominal_fem(L,R,gn(Aart,Anc)) :-
%% 	article_fem(L,L1,Aart),
%% 	nom_commun_fem(L1,R,Anc).

%% gp_nominal_fem(L,R,gn(Anp)) :-
%% 	nom_propre_fem(L,R,Anp).

%% gp_nominal_pl(L,R,gn(Aart,Anc,Aadj)) :-
%% 	article_pl(L,L1,Aart),
%% 	nom_commun_pl(L1,L2,Anc),
%% 	adjectif_pl(L2,R,Aadj).

%% gp_nominal_pl(L,R,gn(Aart,Anc)) :-
%% 	article_pl(L,L1,Aart),
%% 	nom_commun_pl(L1,R,Anc).

%% gp_nominal_masc(L,R,gn(Aart,Anc,Aadj)) :-
%% 	article_masc(L,L1,Aart),
%% 	nom_commun_masc(L1,L2,Anc),
%% 	adjectif_masc(L2,R,Aadj).

%% gp_nominal_masc(L,R,gn(Aart,Anc)) :-
%% 	article_masc(L,L1,Aart),
%% 	nom_commun_masc(L1,R,Anc).

%% gp_nominal_masc(L,R,gn(Anp)) :-
%% 	nom_propre_masc(L,R,Anp).

%% gp_verbal(L,R,ArbreS) :-
%% 	gp_verbal_sg(L,R,ArbreS).

%% gp_verbal(L,R,ArbreS) :-
%% 	gp_verbal_pl(L,R,ArbreS).

%% gp_verbal_sg(L,R,gv(Av)) :-
%% 	verbe_sg(L,R,Av).

%% gp_verbal_sg(L,R,gv(Ap,Av)) :-
%% 	pronom(L,L1,Ap),
%% 	verbe_sg(L1,R,Av).

%% gp_verbal_pl(L,R,gv(Av)) :-
%% 	verbe_pl(L,R,Av).

%% gp_verbal_pl(L,R,gv(Ap,Av)) :-
%% 	pronom(L,L1,Ap),
%% 	verbe_pl(L1,R,Av).

%% gp_prepositionnel(L,R,gp(Ap,Agn)) :-
%% 	prep(L,L1,Ap),
%% 	gp_nominal(L1,R,Agn).

%% relatif(L,R,ArbreS) :-
%% 	relatif_sg(L,R,ArbreS).

%% relatif(L,R,ArbreS) :-
%% 	relatif_pl(L,R,ArbreS).

%% relatif_pl(L,R,rel(Ap,Agv,Agn)):-
%% 	pronom_relatif(L,L1,Ap),
%% 	gp_verbal_pl(L1,L2,Agv),
%% 	gp_nominal_pl(L2,R,Agn).

%% relatif_pl(L,R,rel(Ap,Agv,Agp)):-
%% 	pronom_relatif(L,L1,Ap),
%% 	gp_verbal_pl(L1,L2,Agv),
%% 	gp_prepositionnel(L2,R,Agp).

%% relatif_pl(L,R,rel(Ap,Agv)):-
%% 	pronom_relatif(L,L1,Ap),
%% 	gp_verbal_pl(L1,R,Agv).

%% relatif_sg(L,R,rel(Ap,Agv,Agn)):-
%% 	pronom_relatif(L,L1,Ap),
%% 	gp_verbal_sg(L1,L2,Agv),
%% 	gp_nominal_masc(L2,R,Agn).

%% relatif_sg(L,R,rel(Ap,Agv,Agn)):-
%% 	pronom_relatif(L,L1,Ap),
%% 	gp_verbal_sg(L1,L2,Agv),
%% 	gp_nominal_fem(L2,R,Agn).

%% relatif_sg(L,R,rel(Ap,Agv,Agp)):-
%% 	pronom_relatif(L,L1,Ap),
%% 	gp_verbal_sg(L1,L2,Agv),
%% 	gp_prepositionnel(L2,R,Agp).

%% relatif_sg(L,R,rel(Ap,Agv)):-
%% 	pronom_relatif(L,L1,Ap),
%% 	gp_verbal_sg(L1,R,Agv).

%% article_masc([un|L],L,art(un)).
%% article_masc([le|L],L,art(le)).
%% article_fem([la|L],L,art(la)).
%% article_pl([les|L],L,art(les)).

%%  nom_commun_fem([femme|L],L,nom_com(femme)).
%% nom_commun_pl([enfants|L],L,nom_com(enfants)).
%% nom_commun_masc([steak|L],L,nom_com(steak)).
%% % nom_commun_masc([pull|L],L,nom_com(pull)).
%% % nom_commun_masc([rue|L],L,nom_com(rue)).
%% % nom_commun_masc([parc|L],L,nom_com(parc)).
%% nom_commun_masc([chien|L],L,nom_com(chien)).

%% nom_propre_masc([valou|L],L,nom_prop(valou)).
%% nom_propre_fem([maud|L],L,nom_prop(maud)).

%% adjectif_masc([noir|L],L,adj(noir)).
%% adjectif_fem([blanche|L],L,adj(blanche)).
%% adjectif_pl([livides|L],L,adj(livides)).

%% prep([dans|L],L,prep(dans)).

%% verbe_sg([mange|L],L,verb(mange)).
%% % verbe_sg([porte|L],L,verb(porte)).
%% %verbe_sg([aboie|L],L,verb(aboie)).
%% % verbe_sg([marche|L],L,verb(marche)).
%% verbe_pl([jouent|L],L,verb(jouent)).
 
%% pronom([se|L],L,pronom(se)).
%% pronom_relatif([qui|L],L,pronom(qui)).

/* TESTS

| ?- phrase_simple([les,enfants,mange],R,Arbre).

no

| ?- phrase_simple([les,enfants,jouent],R,Arbre).

Arbre = phr(gn(art(les),nom_com(enfants)),gv(verb(jouent)))
R = [] ? 

yes

| ?- phrase_simple([la,femme,noir,mange],R,Arbre).

no

| ?- phrase_simple([la,femme,blanche,mange],R,Arbre).

Arbre = phr(gn(art(la),nom_com(femme),adj(blanche)),gv(verb(mange)))
R = [] ? 

yes

*/


%%% Q 2.4

%%
%% NB: incomplete car solution choisie trop laborieuse


%%%% analyseur %%%%

analyse(L,ArbreS) :-
	phrase_simple(L,[],ArbreS).

%%%% Phrases %%%%%

% phrase simple sg

phrase_simple(L,R,phr(Agn,Ar,Av,An,Ap)) :-
	gp_nominal(L,L1,Agn,sg,_,_),
	relatif(L1,L2,Ar,sg),
	gp_verbal(L2,L3,Av,sg),
	gp_nominal(L3,L4,An,_,_,_),
	gp_prepositionnel(L4,R,Ap).

phrase_simple(L,R,phr(Agn,Ar,Av,An)) :-
	gp_nominal(L,L1,Agn,sg,_,_),
	relatif(L1,L2,Ar,sg),
	gp_verbal(L2,L3,Av,sg,_),
	gp_nominal(L3,R,An,sg,_,_).

phrase_simple(L,R,phr(Agn,Av,An,Ap)) :-
	gp_nominal(L,L1,Agn,sg,_,_),
	gp_verbal(L1,L2,Av,sg,_),
	gp_nominal(L2,L3,An,sg,_,_),
	gp_prepositionnel(L3,R,Ap).

phrase_simple(L,R,phr(Agn,Av,An)) :-
	gp_nominal(L,L1,Agn,sg,_,_),
	gp_verbal(L1,L2,Av,sg,_),
	gp_nominal(L2,R,An,_,_,_).
	
phrase_simple(L,R,phr(Agn,Ar,Av,Ap)) :-
	gp_nominal(L,L1,Agn,sg,_,_),
	relatif(L1,L2,Ar,sg),
	gp_verbal(L2,L3,Av,sg,_),
	gp_prepositionnel(L3,R,Ap).

phrase_simple(L,R,phr(Agn,Ar,Av)) :-
	gp_nominal(L,L1,Agn,sg,_,_),
	relatif(L1,L2,Ar,sg),
	gp_verbal(L2,R,Av,sg,_).

phrase_simple(L,R,phr(Agn,Av,Ap)) :-
	gp_nominal(L,L1,Agn,sg,_,_),
	gp_verbal(L1,L2,Av,sg,_),
	gp_prepositionnel(L2,R,Ap).

phrase_simple(L,R,phr(Agn,Av)) :-
	gp_nominal(L,L1,Agn,sg,_,_),
	gp_verbal(L1,R,Av,sg,_).

% phrases simples pl

phrase_simple(L,R,phr(Agn,Ar,Av,An,Ap)) :-
	gp_nominal(L,L1,Agn,pl,_,_),
	relatif(L1,L2,Ar,pl),
	gp_verbal(L2,L3,Av,pl,_),
	gp_nominal(L3,L4,An,_,_,_),
	gp_prepositionnel(L4,R,Ap).

phrase_simple(L,R,phr(Agn,Ar,Av,An)) :-
	gp_nominal(L,L1,Agn,pl,_,_),
	relatif(L1,L2,Ar,pl),
	gp_verbal(L2,L3,Av,pl,_),
	gp_nominal(L3,R,An,_,_,_).

phrase_simple(L,R,phr(Agn,Av,An,Ap)) :-
	gp_nominal(L,L1,Agn,pl,_,_),
	gp_verbal(L1,L2,Av,pl,_),
	gp_nominal(L2,L3,An,_,_,_),
	gp_prepositionnel(L3,R,Ap).

phrase_simple(L,R,phr(Agn,Av,An)) :-
	gp_nominal(L,L1,Agn,pl,_,_),
	gp_verbal(L1,L2,Av,pl,_,_),
	gp_nominal(L2,R,An,_,_,_).
	
phrase_simple(L,R,phr(Agn,Ar,Av,Ap)) :-
	gp_nominal(L,L1,Agn,pl,_,_),
	relatif(L1,L2,Ar,pl),
	gp_verbal(L2,L3,Av,pl,_),
	gp_prepositionnel(L3,R,Ap).

phrase_simple(L,R,phr(Agn,Ar,Av)) :-
	gp_nominal(L,L1,Agn,pl,_,_),
	relatif(L1,L2,Ar,pl),
	gp_verbal(L2,R,Av,pl).

phrase_simple(L,R,phr(Agn,Av,Ap)) :-
	gp_nominal(L,L1,Agn,pl,_,_),
	gp_verbal(L1,L2,Av,pl),
	gp_prepositionnel(L2,R,Ap).

phrase_simple(L,R,phr(Agn,Av)) :-
	gp_nominal(L,L1,Agn,pl,_,_),
	gp_verbal(L1,R,Av,pl).

%%%% GROUPES NOMINAUX %%%%%

%% Mangeable
% groupes nominaux masculins
gp_nominal(L,R,gn(Aart,Anc,Aadj),sg,masc,notlieu,mangeable) :-
	article(L,L1,Aart,sg,masc),
	nom_commun(L1,L2,Anc,sg,masc,notlieu,mangeable),
	adjectif(L2,R,Aadj,sg,masc).

gp_nominal(L,R,gn(Aart,Anc),sg,masc,notlieu,mangeable) :-
	article(L,L1,Aart,sg,masc),
	nom_commun(L1,R,Anc,sg,masc,notlieu,mangeable).

gp_nominal(L,R,gn(Anp),sg,masc,notlieu,mangeable) :-
	nom_propre(L,R,Anp,masc).

% groupe nominal feminin
gp_nominal(L,R,gn(Aart,Anc,Aadj),sg,fem,notlieu,mangeable) :-
	article(L,L1,Aart,sg,fem),
	nom_commun(L1,L2,Anc,sg,fem,notlieu,mangeable),
	adjectif(L2,R,Aadj,sg,fem).

gp_nominal(L,R,gn(Aart,Anc),sg,fem,notlieu,mangeable) :-
	article(L,L1,Aart,sg,fem),
	nom_commun(L1,R,Anc,sg,fem,notlieu,mangeable).

gp_nominal(L,R,gn(Anp),sg,fem,notlieu,mangeable) :-
	nom_propre(L,R,Anp,fem).

% groupes nominaux masculins pluriel

gp_nominal(L,R,gn(Aart,Anc,Aadj),pl,masc,notlieu,mangeable) :-
	article(L,L1,Aart,pl,masc),
	nom_commun(L1,L2,Anc,pl,masc,notlieu,mangeable),
	adjectif(L2,R,Aadj,pl,masc).

gp_nominal(L,R,gn(Aart,Anc),pl,masc,notlieu,mangeable) :-
	article(L,L1,Aart,pl,masc),
	nom_commun(L1,R,Anc,pl,masc,notlieu,mangeable).

gp_nominal(L,R,gn(Anp),pl,masc,notlieu,mangeable) :-
	nom_propre(L,R,Anp,masc).



%% LIEUX 
% groupes nominaux masculins

gp_nominal(L,R,gn(Aart,Anc,Aadj),sg,masc,lieu,notmangeable) :-
	article(L,L1,Aart,sg,masc),
	nom_commun(L1,L2,Anc,sg,masc,lieu,notmangeable),
	adjectif(L2,R,Aadj,sg,masc).

gp_nominal(L,R,gn(Aart,Anc),sg,masc,lieu,notmangeable) :-
	article(L,L1,Aart,sg,masc),
	nom_commun(L1,R,Anc,sg,masc,lieu,notmangeable).

gp_nominal(L,R,gn(Anp),sg,masc,lieu,notmangeable) :-
	nom_propre(L,R,Anp,masc).

% groupe nominal feminin
gp_nominal(L,R,gn(Aart,Anc,Aadj),sg,fem,lieu,notmangeable) :-
	article(L,L1,Aart,sg,fem),
	nom_commun(L1,L2,Anc,sg,fem,lieu,notmangeable),
	adjectif(L2,R,Aadj,sg,fem).

gp_nominal(L,R,gn(Aart,Anc),sg,fem,lieu,notmangeable) :-
	article(L,L1,Aart,sg,fem),
	nom_commun(L1,R,Anc,sg,fem,lieu,notmangeable).

gp_nominal(L,R,gn(Anp),sg,fem,lieu,notmangeable) :-
	nom_propre(L,R,Anp,fem).

% groupes nominaux masculins pluriel

gp_nominal(L,R,gn(Aart,Anc,Aadj),pl,masc,lieu,notmangeable) :-
	article(L,L1,Aart,pl,masc),
	nom_commun(L1,L2,Anc,pl,masc,lieu,notmangeable),
	adjectif(L2,R,Aadj,pl,masc).

gp_nominal(L,R,gn(Aart,Anc),pl,masc,lieu,notmangeable) :-
	article(L,L1,Aart,pl,sg),
	nom_commun(L1,R,Anc,pl,masc,lieu,notmangeable).

gp_nominal(L,R,gn(Anp),pl,masc,lieu,notmangeable) :-
	nom_propre(L,R,Anp,masc).

%%%%%%%%%%%%%%%%%%%%%%%%%

%%%% GROUPES VERBAUX %%%%%

%%% NON mangeable
% groupe verbaux singuliers

gp_verbal(L,R,gv(Av),sg,notmangeable) :-
	verbe(L,R,Av,sg,notmangeable).

gp_verbal(L,R,gv(Ap,Av),sg,notmangeable) :-
	pronom(L,L1,Ap),
	verbe(L1,R,Av,sg,notmangeable).

% groupe verbaux pluriel

gp_verbal(L,R,gv(Av),pl,notmangeable) :-
	verbe(L,R,Av,pl,notmangeable).

gp_verbal(L,R,gv(Ap,Av),pl,notmangeable) :-
	pronom(L,L1,Ap),
	verbe(L1,R,Av,pl,notmangeable).

%%% mangeable
% groupe verbaux singuliers

gp_verbal(L,R,gv(Av),sg,mangeable) :-
	verbe(L,R,Av,sg,mangeable).

gp_verbal(L,R,gv(Ap,Av),sg,mangeable) :-
	pronom(L,L1,Ap),
	verbe(L1,R,Av,sg,mangeable).

% groupe verbaux pluriel

gp_verbal(L,R,gv(Av),pl,mangeable) :-
	verbe(L,R,Av,pl,mangeable).

gp_verbal(L,R,gv(Ap,Av),pl,mangeable) :-
	pronom(L,L1,Ap),
	verbe(L1,R,Av,pl,mangeable).


%%%% GROUPES RELATIFS %%%%%

% groupe relatifs singuliers

relatif(L,R,rel(Ap,Agv,Agp),sg):-
	pronom(L,L1,Ap),
	gp_verbal(L1,L2,Agv,sg),
	gp_prepositionnel(L2,R,Agp).

relatif(L,R,rel(Ap,Agv),sg):-
	pronom(L,L1,Ap),
	gp_verbal(L1,R,Agv,sg).

relatif(L,R,rel(Ap,Agv,Agn),sg):-
	pronom(L,L1,Ap),
	gp_verbal(L1,L2,Agv,sg),
	gp_nominal(L2,R,Agn,_,_,_).

% groupe relatifs pluriels

relatif(L,R,rel(Ap,Agv,Agp),pl):-
	pronom(L,L1,Ap),
	gp_verbal(L1,L2,Agv,pl),
	gp_prepositionnel(L2,R,Agp).

relatif(L,R,rel(Ap,Agv),pl):-
	pronom(L,L1,Ap),
	gp_verbal(L1,R,Agv,pl).

relatif(L,R,rel(Ap,Agv,Agn),pl):-
	pronom(L,L1,Ap),
	gp_verbal(L1,L2,Agv,pl),
	gp_nominal(L2,R,Agn,_,_,_).

%%%%% GROUPE PREPOSITIONNEL %%%%

gp_prepositionnel(L,R,gp(Ap,Agn)) :-
	prep(L,L1,Ap),
	gp_nominal(L1,R,Agn,_,_,lieu,_).



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%        TERMINAUX        %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

article([le|L],L,art(le),sg,masc).
article([la|L],L,art(la),sg,fem).
article([les|L],L,art(les),pl,_).
article([un|L],L,art(un),sg,masc).

nom_commun([chien|L],L,nom_com(chien),sg,masc).

nom_commun([enfants|L],L,nom_com(enfants),pl,masc,notlieu,notmangeable).
nom_commun([steak|L],L,nom_com(steak),sg,masc,notlieu,mangeable).
nom_commun([pull|L],L,nom_com(pull),sg,masc,notlieu,notmangeable).
nom_commun([parc|L],L,nom_com(parc),sg,masc,lieu,notmangeable).
nom_commun([femme|L],L,nom_com(femme),sg,fem,notlieu,notmangeable).
nom_commun([rue|L],L,nom_com(rue),sg,fem,notlieu,notmangeable).

nom_propre([paul|L],L,nom_prop(paul),masc).

adjectif([noir|L],L,adj(noir),sg,masc).

prep([dans|L],L,prep(dans)).

verbe([mange|L],L,verb(mange),sg,mangeable).
verbe([porte|L],L,verb(porte),sg,notmangeable).
verbe([aboie|L],L,verb(aboie),sg,notmangeable).
verbe([jouent|L],L,verb(jouent),pl,notmangeable).
verbe([marche|L],L,verb(marche),sg,notmangeable).

pronom([se|L],L,pronom(se)).
pronom([qui|L],L,pronom(qui)).