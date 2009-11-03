#include "cs.h"
/* y = A*x+y */
int cs_gaxpy (const cs *A, const float *x, float *y)
{
    int p, j, n, *Ap, *Ai ;
    float *Ax ;
    if (!CS_CSC (A) || !x || !y) return (0) ;	    /* check inputs */
    n = A->n ; Ap = A->p ; Ai = A->i ; Ax = A->x ;
    for (j = 0 ; j < n ; j++)
    {
	for (p = Ap [j] ; p < Ap [j+1] ; p++)
	{
	    y [Ai [p]] += Ax [p] * x [j] ;
	}
    }
    return (1) ;
}