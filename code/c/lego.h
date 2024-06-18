#ifndef LEGO_H
#define LEGO_H

typedef struct {
    char color[20];
    int numDots;
} Lego;

void createLego(Lego *lego, const char *color, int numDots);
void printLego(Lego lego);

#endif
