#include "extcode.h"
#ifdef __cplusplus
extern "C" {
#endif

/*!
 * CallWithInput
 */
int32_t __cdecl CallWithInput(char Input[], char MessageOut[], int32_t *len);

MgErr __cdecl LVDLLStatus(char *errStr, int errStrLen, void *module);

void __cdecl SetExecuteVIsInPrivateExecutionSystem(Bool32 value);

#ifdef __cplusplus
} // extern "C"
#endif

