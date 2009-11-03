#include "cs.h"
static int cs_tol (int i, int j, float aij, void *tol)
{
    return (fabs (aij) > *((float *) tol)) ;
}
int cs_droptol (cs *A, float tol)
{
    return (cs_fkeep (A, &cs_tol, &tol)) ;    /* keep all large entries */
}
