#ifndef LSSOLVE_H
#define LSSOLVE_H

#include "cs.h"

int convert(cs *A, float *x, int nRows, int column);
void lssolve(cs *A, cs *B, float *X, float *Y);


#endif //LSSOLVE_H
