--------------------------------------------------------------------------------
With Win32;                             use Win32;
With Interfaces.C;                      use Interfaces.C;
--------------------------------------------------------------------------------
package ServiceMain is

    AdaServiceName  : constant String := "AdaNativeService";

    procedure SvcMain (argc : DWORD; argv : access LPSTR);
    
    ----------------------------------------------------------------------------
    function Addr (S : String) return LPSTR;
    function Addr (S : String) return LPCSTR;

private

    ServiceStatusHandle : SERVICE_STATUS_HANDLE := null;
    ServiceStatus       : aliased SERVICE_STATUS := (SERVICE_WIN32_OWN_PROCESS,0,0,0,0,0,0);
    ServiceCheckPoint   : DWORD := 0;
    ServiceExitEvent    : HANDLE := null;

    procedure SvcControl (dwControl : DWORD);

    pragma Convention (C, SvcMain);
    pragma Convention (C, SvcControl);

end ServiceMain;