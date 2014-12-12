/* xmpl7.c
 * program to find prime numbers
 */

#include <stdio.h>
#include <stdbool.h>

int main(void) {
/* Initialise our counter */
int i = 1;

while (i <= 10000) {
    /* Initialise prime flag */
    bool prime_flag = true;
    int j = 2;
    /* Test divisibility of i from [0, i/2] */
    while (j <= i/2) {
	 printf(" i ==> %d j ==> %d\n", i, j);
	if (i % j == 0) {
	    prime_flag = false;
	    printf(" %d is a factor of %d\n", j, i);
	    printf("%d is not prime.\n", i);
	    break;
	}
	j = j + 1;
    }
    /* We found a prime! */
    if (prime_flag)
	printf("Prime ==> %d\n", i);
    /* Increment the counter */
    i += 1;
}
}
