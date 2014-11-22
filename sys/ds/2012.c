/*
 * Ds 2012
 *
 *
 *
 *  1 COURS
 * 
 *  Question 1.1
 

 c. Gain de mémoire & gain de temps d'accés. 
 d. gestion de mémoire difficile.
 e. changer des parties de la mémoire
 f. 
 g. attente active repose sur un test répété d'une condition dans l'espoire qu'elle devienne vrais ou fause
    l'attente passive bloque sur un processus en atendant qu'un autre le débloque.
    -> attente passive
 h. Lorsqu'on fait un exec après un fork ca ecrase un proc avec un autre. 
 i. il faut utiliser les ressources dans le même ordre. ( p() )
 J. l'interuption

 * 2 Signaux

 // P1

 */

 void mainP1(){
 	signal(SIGUSR1,messReceive);
 	signal(SIGALARM,TooLate);
 	alarm(10);
 	kill(pidP2,SIGUSR1);
 	wait(); // ou sigsuspend -> masquer les signaux non voulu. 
 }

 void messReceive(){
 	printf("message recu");
 	alarm(0);
 }

 void TooLate(){
 	printf("trop tard : tulululululu");
 	singal(SIGUSR1,NULL); // MASQUER SIGUSR1 (REDÉF chelou, avoid)
 }

 // 3 Ordonnancementy
/*
FSFC
 P1 |----|4
 P2 | ***-----|9
 P3 |   ******-|10
 P4 |    ******---|13
 P5 |     ********--|15

Round Robin Quantum = 2 unité de tps.
 P1 |--***-|
 P2 | *---*****----****-
 P3 |    *----|  NOT FINNISH
 P4 |        *
 P5 |     ********--|15


 * Q41

 25 + 5/100 * 200 = 35 ns

 
 * Q42
 25 + 100-x / 100 * 200 < 200
 x > 12.5 %

*/
 

// Synchronisation entre processus

 // Q1

 /* P1 */ 

	init(A,2);
	init(C,2);
	init(B,2);

	while(1) {
		p(A);
		p(A);
		printf("A\n");
		v(B);
		v(C);
	}

/* P2 & P3(With C) **/

	while(1){
		p(B);
		p(B);
		prinft("B \n");
		V(A);
	}

// 5.2.

	init(A,4);
	init(B,4);
	init(C,4);

 /* P2 */
	while(1){
		p(B);
		p(B);
		prinft("B \n");
		V(A);
		V(C);
	}

/* 	P3 */
	while(1){
		p(C);
		p(C);
		prinft("C \n");
		V(A);
		V(B);
	}

// 5.2 VERSION 2
    init(muttex,1);
    int a,b,c = 0;
	p(muttex);
		if(abs(a-b)<3&&ab(b-c)<3&&abs(a-c) < 3);
		printf("A");
		a++;
	v(muttex);

// 5.3
 // solution précédente avec nb diff 

// 6. La mangeoire

	init(muttex,3);

	porteexterne
	v(mutex)

	porteint
	p(mutex)
