#include <stdio.h>

#include "utils.h"
#include <stdlib.h>

#define BUFSIZE (20 * 1024 * 1024)  /* 20MB */

static char buff[BUFSIZE];

/* . */
void benchmark_cache_line(int step) {
	const int no_iterations = 100 * step;
	int i, k;
	for (k = 1; k <= no_iterations; k++)
		for (i = 0; i < BUFSIZE; i = i + step) {
			buff[i]++;
		}
}

int main (int argc, char** argv) {
	if (argc < 2)
		return -1;

	if (bits_in_char() != 8) {
		fprintf(stderr, "Char on your machine is not 8 bits!\n");
		return -1;
	}

	benchmark_cache_line(atoi(argv[1]));

	return 0;
}
