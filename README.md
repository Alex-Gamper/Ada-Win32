## Ada-Win32
### Ada bindings for Win32 - Generated from the following C/C++ Header file

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

These bindings have been generated from the headers describing the Win32 api provided in the
Microsoft Windows 10 SDK *1809 (build 10.0.17763)*

### Prerequisites

You will need a working gcc/gnat **x64** Windows build environment. This release has **NOT** yet been
tested against 32 bit environments. You may need to build gcc/gnat **x64** from source if required.
Details/scripts on how to do this can be found on the mingw64 website, alternatively install using MSYS2.

### Build instructions

  tba

### Examples

  tba

### Feedback

Welcome
