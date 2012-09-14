#include "lspsolver_Solver.h"
#include "my_lssolve.h"
#include "./cs/cs.h"


JNIEXPORT jdoubleArray JNICALL 
Java_lspsolver_Solver_solve(JNIEnv *env, jobject obj, jintArray index_a, 
jdoubleArray values_a,  jintArray index_b, jdoubleArray values_b, jint nrlines, 
jint nrcol) 
{            
    cs *A, *AUX, *B;
    double *X, *Y, *R;
    csi i, index_i, index_j, n;
    double value;

    //////////////////////////////
    //creating matrix A
    //getting the indexes of matrix A
    jsize len_index_a = (*env)->GetArrayLength(env, index_a);
    jint *arr_index_a = (*env)->GetIntArrayElements(env, index_a, 0);
  
    //getting the values of matrix A
    jsize len_values_a = (*env)->GetArrayLength(env, values_a);
    jdouble *arr_values_a = (*env)->GetDoubleArrayElements(env, values_a, 0);    
  
    //creating sparse matrix
    AUX = cs_spalloc(nrlines, nrcol, 1, 1, 1);
    
    for (i = 0; i < len_index_a; i += 2) {
        index_i = arr_index_a[i];
        index_j = arr_index_a[i + 1];        
        value = arr_values_a[i / 2];
        cs_entry(AUX, index_i, index_j, value);
    }

    A = cs_compress(AUX); 
    cs_spfree(AUX);
    
  
    //releasing the matrix A
    (*env)->ReleaseIntArrayElements(env, index_a, arr_index_a, 0);
    (*env)->ReleaseDoubleArrayElements(env, values_a, arr_values_a, 0);   
  
    //////////////////////////////
    //creating matrix B
    //getting the indexes of matrix B
    jsize len_index_b = (*env)->GetArrayLength(env, index_b);
    jint *arr_index_b = (*env)->GetIntArrayElements(env, index_b, 0);
  
    //getting the values of matrix B
    jsize len_values_b = (*env)->GetArrayLength(env, values_b);
    jdouble *arr_values_b = (*env)->GetDoubleArrayElements(env, values_b, 0);
  
    //creating sparse matrix
    AUX=cs_spalloc(nrlines, 2, 1, 1, 1);
    
    for (i = 0; i < len_index_b; i += 2) 
    {
        index_i = arr_index_b[i];
        index_j = arr_index_b[i+1];        
        value = arr_values_b[i/2];
        cs_entry(AUX, index_i, index_j, value);
    }
    
    B=cs_compress(AUX);
    cs_spfree(AUX);  
  
    //releasing the matrix B
    (*env)->ReleaseIntArrayElements(env, index_b, arr_index_b, 0);
    (*env)->ReleaseDoubleArrayElements(env, values_b, arr_values_b, 0);
    
    //cs_print(B, 0);

    //////////////////////////////
    //Solving the system  
    n = A->n;
  
    X = (double *) cs_malloc(n, sizeof(double));
    Y = (double *) cs_malloc(n, sizeof(double));
  
    if (X==NULL || Y==NULL) {    
      exit(0);
    }
  
    lssolve(A, B, X, Y);
    
    // TODO: review this!
    R = (double *) cs_malloc(2 * n, sizeof(double));    
    for (i = 0; i < (2 * n); i += 2) {
	R[i] = *(X + (i/2));
//	printf("%d: %f (%p)", i, R[i], &R[i]);  
	R[i + 1] = *(Y + (i/2));
//	printf("%d: %f (%p)", i, R[i + 1], &R[i + 1]);  
   }  
    
    jdoubleArray result = (*env)->NewDoubleArray(env, 2 * n);
    (*env)->SetDoubleArrayRegion(env, result, 0, 2 * n, R);
  
    cs_free(X);
    cs_free(Y);
    cs_free(R);  
    cs_spfree(A);
    cs_spfree(B);  
    
    return result;
}
