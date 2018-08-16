--------------------------------------------------------------------------------
with Win32;                             use Win32;
with Interfaces.C;                      use Interfaces.C;
With Ada.Text_IO;                       use Ada.Text_IO;
--------------------------------------------------------------------------------
procedure Vt100 is

    Stdin       : HANDLE := GetStdHandle(STD_INPUT_HANDLE);
    Stdout      : HANDLE := GetStdHandle(STD_OUTPUT_HANDLE);
    StdInMode   : aliased DWORD;
    StdOutMode  : aliased DWORD;
    Result      : BOOL;
    ResultCode  : DWORD;

begin

    Result := GetConsoleMode(StdIn , StdInMode'unchecked_access);
    StdInMode := StdInMode or ENABLE_VIRTUAL_TERMINAL_INPUT;

    Result := GetConsoleMode(StdOut , StdOutMode'unchecked_access);
    StdOutMode := StdOutMode or ENABLE_VIRTUAL_TERMINAL_PROCESSING or DISABLE_NEWLINE_AUTO_RETURN;

    Result := SetConsoleMode (StdIn, StdInMode);
    Result := SetConsoleMode (StdOut, StdOutMode);

    Put_Line(Ascii.ESC & "[93m" & "Howdy!" & Ascii.ESC & "[0m"); 

end;