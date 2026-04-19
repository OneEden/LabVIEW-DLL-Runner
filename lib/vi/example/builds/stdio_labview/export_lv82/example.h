#include "extcode.h"
#pragma pack(push)
#pragma pack(1)

#ifdef __cplusplus
extern "C" {
#endif

long __cdecl CallWithInput(char Input[], char MessageOut[], long *len);
long __cdecl HelloWorld(char Message[], long *len);
long __cdecl Event(char Message[], long *len);
long __cdecl CallWithOutput(char MessageOut[], char ResultOut[], long *len, 
	long *lenOfResult);
long __cdecl CallWithInputAndOutput(char Input[], char MessageOut[], 
	char ResultOut[], long *len, long *lenOfResult);

long __cdecl LVDLLStatus(char *errStr, int errStrLen, void *module);

#ifdef __cplusplus
} // extern "C"
#endif

#pragma pack(pop)

