## Ada-Win32
Ada bindings for Win32

#include <SDKDDKVer.h>

#if (_MSC_VER >= 1900)

    #ifdef _WIN64
    
        #if _WIN32_WINNT >= _WIN32_WINNT_WINBLUE
        
            #define WIN32_LEAN_AND_MEAN            
            #include <windows.h>            
            #include <shellapi.h>            
            #include <winperf.h>            
            #include <Winsock2.h>            
            #include <winspool.h>
            
            #include <ole2.h>
            
            #include <commdlg.h>
            
            #include <CommCtrl.h>
            
            #include <ComSvcs.h>
            
            #include <roapi.h>
            
            #include <winstring.h>
            
            #include <roerrorapi.h>
            
        #endif
        
    #endif
    
#endif


