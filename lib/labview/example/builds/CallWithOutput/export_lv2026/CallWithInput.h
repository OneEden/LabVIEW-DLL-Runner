#include "extcode.h"
#ifdef __cplusplus
extern "C" {
#endif

/*!
 * CallWithOutput
 */
int32_t __cdecl CallWithOutput(char MessageOut[], char ResultOut[], 
	int32_t *len, int32_t *lenOfResult);

MgErr __cdecl LVDLLStatus(char *errStr, int errStrLen, void *module);

void __cdecl SetExecuteVIsInPrivateExecutionSystem(Bool32 value);

#ifdef __cplusplus
} // extern "C"
#endif

