#include <stdio.h>
#include <stdlib.h>

int factorial_c(int n) {
	if (n < 0) {
		return -1; // error case for negative input
	}
	int result = 1;
	for (int i = 1; i <= n; i++) {
		result *= i;
	}
	return result;
}

extern int factorial_rust(int n);
extern int factorial_assembly(int n);

int main(int argc, char *argv[]) {
	int n = atoi(argv[1]);

	printf("factorial using native c: %d\n", factorial_c(n));
	printf("factorial using rust: %d\n", factorial_rust(n));
	printf("factorial using assembly: %d\n", factorial_assembly(n));
}
