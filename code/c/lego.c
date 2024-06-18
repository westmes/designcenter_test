#include <stdio.h>
#include "lego.h"

void createLego(Lego *lego, const char *color, int numDots) {
    strcpy(lego->color, color);
    lego->numDots = numDots;
}

void printLego(Lego lego) {
    printf("Lego color: %s, Number of dots: %d\n", lego.color, lego.numDots);
}
