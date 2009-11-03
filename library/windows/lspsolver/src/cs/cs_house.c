#include "cs.h"
/* create a Householder reflection [v,beta,s]=house(x), overwrite x with v,
 * where (I-beta*v*v')*x = s*x.  See Algo 5.1.1, Golub & Van Loan, 3rd ed. */
float cs_house (float *x, float *beta, int n)
{
    float s, sigma = 0 ;
    int i ;
    if (!x || !beta) return (-1) ;	    /* check inputs */
    for (i = 1 ; i < n ; i++) sigma += x [i] * x [i] ;
    if (sigma == 0)
    {
	s = (float)fabs (x [0]) ;		    /* s = |x(0)| */
	(*beta) = (x [0] <= 0) ? 2.0f : 0.0f ;
	x [0] = 1 ;
    }
    else
    {
	s = (float)sqrt (x [0] * x [0] + sigma) ;  /* s = norm (x) */
	x [0] = (x [0] <= 0) ? (x [0] - s) : (-sigma / (x [0] + s)) ;
	(*beta) = -1.0f / (s * x [0]) ;
    }
    return (s) ;
}
