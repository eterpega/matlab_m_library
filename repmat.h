/*
 * MATLAB Compiler: 2.1
 * Date: Thu Sep 26 16:52:20 2002
 * Arguments: "-B" "macro_default" "-O" "all" "-O" "fold_scalar_mxarrays:on"
 * "-O" "fold_non_scalar_mxarrays:on" "-O" "optimize_integer_for_loops:on" "-O"
 * "array_indexing:on" "-O" "optimize_conditionals:on" "-x" "-W" "mex" "-L" "C"
 * "-t" "-T" "link:mexlibrary" "libmatlbmx.mlib" "corrvec" 
 */

#ifndef MLF_V2
#define MLF_V2 1
#endif

#ifndef __repmat_h
#define __repmat_h 1

#ifdef __cplusplus
extern "C" {
#endif

#include "libmatlb.h"

extern void InitializeModule_repmat(void);
extern void TerminateModule_repmat(void);
extern _mexLocalFunctionTable _local_function_table_repmat;

extern mxArray * mlfRepmat(mxArray * A, mxArray * M, mxArray * N);
extern void mlxRepmat(int nlhs, mxArray * plhs[], int nrhs, mxArray * prhs[]);

#ifdef __cplusplus
}
#endif

#endif
