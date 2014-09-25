

% QUESTION 1.1

% 1)
plat_de_resistance(X):-viande(X);poisson(X).

% 2) 
repas(H,P,D):-hors_d_oeuvre(H),plat_de_resistance(P),dessert(D).

% 3)
calorique(X):-calories(X,Y),Y<400,Y>200.

% 4)
plus_cal_que_bar(X):-calories(X,Y),calories(bar_aux_algues,Z),Y>Z.

% 5)
valeur_calorique(C,repas(H,P,D)):-repas(H,P,D),calories(H,CH),calories(P,CP),calories(D,CD),C is  CH+CP+CD.

% 6) 
repas_equilibre(H,P,D):-valeur_calorique(C,repas(H,P,D)),C<800.



% QUESTION 2.1


enfant(E,P):-pere(P,E);mere(P,E).


parent(P,E):-enfant(E,P).

grand_pere(G,E):-pere(G,Z), parent(Z,E).

frere(F,E) :-parent(P,E), parent(P,F), homme(F).

oncle(O,N):- parent(Z,N), frere(O,Z).

cousin(C,E):-grand_pere(P,C), grand_pere(P,E).

le_roi_est_mort_vive_le_roi(R1,D,R2):-roi(R1,_a,_b,D),roi(R2,_c,D,_s).

% QUESTION 2.2

ancetre(X,Y):-parent(X,Y); parent(X,Z),ancetre(Z,Y).


