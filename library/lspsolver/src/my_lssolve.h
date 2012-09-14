#ifndef LSSOLVE_H
#define LSSOLVE_H

#include "cs/cs.h"

int convert(cs *A, double *x, csi nRows, csi column);
void lssolve(cs *A, cs *B, double *X, double *Y);


#endif //LSSOLVE_H
