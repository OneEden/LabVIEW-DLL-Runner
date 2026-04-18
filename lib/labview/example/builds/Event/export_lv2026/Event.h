#include "extcode.h"
#ifdef __cplusplus
extern "C" {
#endif

/*!
 * Event
 */
int32_t __cdecl Event(char Message[], int32_t *len);

MgErr __cdecl LVDLLStatus(char *errStr, int errStrLen, void *module);

void __cdecl SetExecuteVIsInPrivateExecutionSystem(Bool32 value);

#ifdef __cplusplus
} // extern "C"
#endif

