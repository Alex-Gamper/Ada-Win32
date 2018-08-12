--------------------------------------------------------------------------------
With Win32;                             use Win32;
with Ada.Command_Line;                  use Ada.Command_Line;
with ServiceMain;                       use ServiceMain;
With Interfaces.C;                      use Interfaces.C;
--------------------------------------------------------------------------------
procedure Service1 is

    ----------------------------------------------------------------------------
    procedure Install is
        FileNameLen : DWORD;
        FileName    : String (1..260) := (others => ascii.nul);
        scManager   : SC_HANDLE;
        scHandle    : SC_HANDLE;
        Ok          : BOOL;
    begin
        FileNameLen := GetModuleFileNameA(null, Addr(FileName), 260);
        if FileNameLen > 0 then
            scManager := OpenSCManagerA(null, null, SC_MANAGER_ALL_ACCESS);
            if scManager /= null then

                scHandle := CreateServiceA(scManager,
                    Addr(AdaServiceName & Ascii.nul),
                    Addr(AdaServiceName & Ascii.nul),
                    SERVICE_ALL_ACCESS,
                    SERVICE_WIN32_OWN_PROCESS,
                    SERVICE_DEMAND_START,
                    SERVICE_ERROR_NORMAL,
                    Addr(FileName),
                    null,
                    null,
                    null,
                    null,
                    null);

                if scHandle /= null then
                    Ok := CloseServiceHandle(scHandle);
                end if;

                Ok := CloseServiceHandle(scManager);
            end if;
        end if;
    end;

    ----------------------------------------------------------------------------
    procedure Uninstall is
        scManager   : SC_HANDLE;
        scHandle    : aliased SC_HANDLE;
        Ok          : BOOL;
    begin
        scManager := OpenSCManagerA(null, null, SC_MANAGER_ALL_ACCESS);
        if scManager /= null then
            scHandle := OpenServiceA(scManager, Addr(AdaServiceName & Ascii.nul), DELETE);
            if scHandle /= null then
                Ok := DeleteService(scHandle);
                Ok := CloseServiceHandle(scHandle);
            end if;
            Ok := CloseServiceHandle(scManager);
        end if;
    end;

    ----------------------------------------------------------------------------
    procedure Start is
        DispatchTable   : array (1..2) of aliased SERVICE_TABLE_ENTRY := ((Addr(AdaServiceName & Ascii.nul) , SvcMain'access), (null, null));
        Ok              : BOOL;
    begin
        Ok := StartServiceCtrlDispatcherA(DispatchTable(1)'access);
        if Ok /= 0 then
            OutputDebugStringA(Addr("StartServiceCtrlDispatcher() Ok" & ascii.nul));
        end if;
    end;

begin

    if Argument_Count = 1 then
        if Argument(1) = "Install" then
            Install;
        else
            if Argument(1) = "Uninstall" then
                Uninstall;
            end if;
        end if;
    else
        Start;
    end if;

end;