#ifndef LSSOLVE_H
#define LSSOLVE_H

#include "cs.h"

int convert(cs *A, float *x, int nRows, int column);
void lssolve2D(cs *A, cs *B, float *X, float *Y);
void lssolve3D(cs *A, cs *B, float *X, float *Y, float *Z);


#endif //LSSOLVE_H
