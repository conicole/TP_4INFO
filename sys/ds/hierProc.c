#include <stdlib.h>
#include <sys/types.h>
#include <unistd.h>
#include <stdio.h>
#include <signal.h>


pid_t pidFils;  
int gen = 0;
int fratrie = 0;

void fork_super(int r){
	if(r <= 0){
		return;
	}
	gen++;
	int i;
	for(i = 0 ; i < r ; i++){
		fratrie++;
		pidFils = fork();
		if( ( gen == 1 ) && ( fratrie == 0) ){
			gen++;
			fork_super(2);
			return;
		}
	}
}

void speak(){
	printf("Je suis %d.%d", gen,fratrie);
	printf("\n");
}

main(){
  fork_super(4);
  speak();
}
