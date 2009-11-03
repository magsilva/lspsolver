#include "lspsolver_Solver.h"
#include "./cs/my_lssolve.h"
#include "./cs/cs.h"


JNIEXPORT jfloatArray JNICALL 
Java_lspsolver_Solver_solve(JNIEnv *env, jobject obj, jintArray index_a, 
jfloatArray values_a,  jintArray index_b, jfloatArray values_b, jint nrlines, 
jint nrcol) 
{            
    cs *A, *AUX, *B;
    float *X, *Y, *Z, *R;
    int i, index_i, index_j, n;
    float value;

    //////////////////////////////
    //creating matrix A
    //getting the indexes of matrix A
    jsize len_index_a = (*env)->GetArrayLength(env, index_a);
    jint *arr_index_a = (*env)->GetIntArrayElements(env, index_a, 0);
  
    //getting the values of matrix A
    jsize len_values_a = (*env)->GetArrayLength(env, values_a);
    jfloat *arr_values_a = (*env)->GetFloatArrayElements(env, values_a, 0);    
  
    //creating sparse matrix
    AUX=cs_spalloc(nrlines, nrcol, 1, 1, 1);
    
    for (i = 0; i < len_index_a; i += 2) 
    {
        index_i = arr_index_a[i];
        index_j = arr_index_a[i+1];        
        value = arr_values_a[i/2];
        cs_entry(AUX, index_i, index_j, value);
    }

    A=cs_compress(AUX); 
    cs_spfree(AUX);
    
    //cs_print(A, 0);  
  
    //realesing the matrix A
    (*env)->ReleaseIntArrayElements(env, index_a, arr_index_a, 0);
    (*env)->ReleaseFloatArrayElements(env, values_a, arr_values_a, 0);   
  
    //////////////////////////////
    //creating matrix B
    //getting the indexes of matrix B
    jsize len_index_b = (*env)->GetArrayLength(env, index_b);
    jint *arr_index_b = (*env)->GetIntArrayElements(env, index_b, 0);
  
    //getting the values of matrix B
    jsize len_values_b = (*env)->GetArrayLength(env, values_b);
    jfloat *arr_values_b = (*env)->GetFloatArrayElements(env, values_b, 0);  
    
    //defining if it is 2D or 3D
    int reduceto = 0;
    
    for (i = 0; i < len_index_b; i += 1) 
    {
        if(arr_index_b[i] == 1) 
        {
            reduceto = 2;
        }
        else if(arr_index_b[i] == 2) 
        {
            reduceto = 3;
        }
    }    
    
    //creating sparse matrix
    if(reduceto == 2)
    {
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
       (*env)->ReleaseFloatArrayElements(env, values_b, arr_values_b, 0);
       
       //cs_print(B, 0);

       //////////////////////////////
       //Solving the system  
       n=A->n;
  
       X=(float*)cs_malloc(n, sizeof(float));
       Y=(float*)cs_malloc(n, sizeof(float));
      
       if(X==NULL || Y==NULL)
       {    
         exit(0);
       }
  
       lssolve2D(A, B, X, Y);
    
       R=(float*)cs_malloc(2*n, sizeof(float));    
    
       for(i = 0; i < 2*n; i += 2)
       {
         R[i] = *(X+(i/2));
         R[i+1] = *(Y+(i/2));
       }  
    
       jfloatArray result = (*env)->NewFloatArray(env, 2*n);
       (*env)->SetFloatArrayRegion(env, result, 0, 2*n, R);
       
       cs_free(X);
       cs_free(Y);
       cs_free(R);  
       cs_spfree(A); 
       cs_spfree(B);  
    
       return result;
    } 
    else if(reduceto == 3)
    {
       AUX=cs_spalloc(nrlines, 3, 1, 1, 1);
    
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
       (*env)->ReleaseFloatArrayElements(env, values_b, arr_values_b, 0);
       
       //cs_print(B, 0);

       //////////////////////////////
       //Solving the system  
       n=A->n;
  
       X=(float*)cs_malloc(n, sizeof(float));
       Y=(float*)cs_malloc(n, sizeof(float));
       Z=(float*)cs_malloc(n, sizeof(float));
      
       if(X==NULL || Y==NULL)
       {    
         exit(0);
       }
  
       lssolve3D(A, B, X, Y, Z);
    
       R=(float*)cs_malloc(3*n, sizeof(float));    
    
       for(i = 0; i < 3*n; i += 3)
       {
         R[i] = *(X+(i/3));
         R[i+1] = *(Y+(i/3));
         R[i+2] = *(Z+(i/3));
       }  
    
       jfloatArray result = (*env)->NewFloatArray(env, 3*n);
       (*env)->SetFloatArrayRegion(env, result, 0, 3*n, R);
              
       cs_free(X);
       cs_free(Y);
       cs_free(Z);
       cs_free(R);  
       cs_spfree(A); 
       cs_spfree(B);  
    
       return result;
    }
    else 
    {
        exit(0);
    }   
}
