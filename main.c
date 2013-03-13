#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdint.h>
#include <limits.h>
#include <sys/types.h>
#include <unistd.h>

int main(int argc, char** argv){

		void *p = malloc(100);
		fprintf(stdout,"%s\'pid: %d\r\n",argv[0],getpid());
		return 0;

}

