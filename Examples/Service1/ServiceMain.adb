--------------------------------------------------------------------------------
with Ada.Unchecked_Conversion;
with System;
--------------------------------------------------------------------------------

package body ServiceMain is

    ----------------------------------------------------------------------------
    procedure SvcWorker is
        WaitStatus : DWORD := 0;
    begin
        OutputDebugStringA(Addr("SvcWorker() Enter" & ascii.nul));
        loop
            WaitStatus := WaitForSingleObject(ServiceExitEvent, 1000);
            exit when WaitStatus = 0; -- WAIT_OBJECT_0 
            OutputDebugStringA(Addr("SvcWorker() Looping" & ascii.nul));
        end loop;
        OutputDebugStringA(Addr("SvcWorker() Exit" & ascii.nul));
    end;

    ----------------------------------------------------------------------------
    procedure SvcStatus (dwCurrentState : DWORD; dwWaitHint : DWORD) is
        Ok : BOOL;
    begin
        OutputDebugStringA(Addr("SvcStatus() Enter" & ascii.nul));
        ServiceStatus.dwCurrentState := dwCurrentState;
        ServiceStatus.dwWaitHint := dwWaitHint;

        if dwCurrentState = SERVICE_START_PENDING then
            ServiceStatus.dwControlsAccepted := 0;
        else
            ServiceStatus.dwControlsAccepted := SERVICE_ACCEPT_STOP;
        end if;

        Ok := SetServiceStatus(ServiceStatusHandle, ServiceStatus'access);
        OutputDebugStringA(Addr("SvcStatus() Exit" & ascii.nul));
    end;

    ----------------------------------------------------------------------------
    procedure SvcControl (dwControl : DWORD) is
        Ok : BOOL;
    begin
        OutputDebugStringA(Addr("SvcControl() Enter" & ascii.nul));
        case dwControl is
            when SERVICE_CONTROL_STOP => 
                begin
                    OutputDebugStringA(Addr("SvcControl() received SERVICE_CONTROL_STOP" & ascii.nul));
                    Ok := SetEvent(ServiceExitEvent);
                end;
            when others => null;
        end case;
        OutputDebugStringA(Addr("SvcControl() Exit" & ascii.nul));
    end;

    ----------------------------------------------------------------------------
    procedure SvcMain (argc : DWORD; argv : access LPSTR) is
    begin
        OutputDebugStringA(Addr("SvcMain() Enter" & ascii.nul));

        ServiceStatusHandle := RegisterServiceCtrlHandlerA(Addr(AdaServiceName), SvcControl'access);
        if ServiceStatusHandle /= null then

            SvcStatus(SERVICE_START_PENDING, 3000);

            ServiceExitEvent := CreateEventA(null, 0, 0, null);
            
            if ServiceExitEvent /= null then
                SvcStatus(SERVICE_RUNNING, 0);
                SvcWorker;
                SvcStatus(SERVICE_STOPPED, 0);
            else
                OutputDebugStringA(Addr("    ***CreateEvent() Failed" & ascii.nul));
            end if;

        else
            OutputDebugStringA(Addr("    ***RegisterServiceCtrlHandler() Failed" & ascii.nul));
        end if;

        OutputDebugStringA(Addr("SvcMain() Exit" & ascii.nul));
    end;

    ----------------------------------------------------------------------------
    function Addr (S : String) return LPSTR is
        function To_LPSTR is new Ada.Unchecked_Conversion (System.Address, LPSTR);
    begin
        return To_LPSTR (S (S'First)'Address);
    end;

    ----------------------------------------------------------------------------
    function Addr (S : String) return LPCSTR is
        function To_LPCSTR is new Ada.Unchecked_Conversion (System.Address, LPCSTR);
    begin
        return To_LPCSTR (S (S'First)'Address);
    end;

end ServiceMain;