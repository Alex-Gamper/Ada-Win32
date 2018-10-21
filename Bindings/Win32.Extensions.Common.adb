--------------------------------------------------------------------------------
--                                                                            --
--    Copyright(c) 2018 Alexander Gamper, All Rights Reserved.                --
--                                                                            --
--    Ada-NetFramework                                                        --
--    Version   : 1.0.0.0                                                     --
--                                                                            --
-- This program is free software: you can redistribute it and / or modify     --
-- it under the terms of the GNU Lesser General Public License as published by--
-- the Free Software Foundation, either version 3 of the License, or          --
-- (at your option) any later version.                                        --
--                                                                            --
-- This program is distributed in the hope that it will be useful,            --
-- but WITHOUT ANY WARRANTY; without even the implied warranty of             --
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the               --
-- GNU Lesser General Public License for more details.                        --
--                                                                            --
-- You should have received a copy of the GNU Lesser General Public License   --
-- along with this program.If not, see http://www.gnu.org/licenses            --
--                                                                            --
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
with System;
with System.Storage_Elements;       use System.Storage_Elements;
--------------------------------------------------------------------------------
package body Win32.Extensions.Common is

	---------------------------------------------    ----------------------------------------------------------------------------
    function Addr (S : Wide_String) return LPWSTR is
        function To_LPWSTR is new Ada.Unchecked_Conversion (System.Address, LPWSTR);
    begin
        return To_LPWSTR (S (S'First)'Address);
    end;

    ----------------------------------------------------------------------------
    function Addr (S : Wide_String) return LPCWSTR is
        function To_LPCWSTR is new Ada.Unchecked_Conversion (System.Address, LPCWSTR);
    begin
        return To_LPCWSTR (S (S'First)'Address);
    end;

	----------------------------------------------------------------------------
    function Addr (S : Wide_String) return LPOLESTR is
        function To_LPOLESTR is new Ada.Unchecked_Conversion (System.Address, LPOLESTR);
    begin
        return To_LPOLESTR (S (S'First)'Address);
    end;

	----------------------------------------------------------------------------
	function To_BSTR (Value : Wide_String) return BSTR is
		Hr		: Win32.HRESULT := 0;
        Buffer  : LPOLESTR := Addr(Value);
		RetVal	: aliased Win32.BSTR;
	begin
		RetVal := SysAllocStringLen(Buffer, Value'Length);
		return RetVal;
	end;

	----------------------------------------------------------------------------
	function To_Ada (Value : BSTR) return Wide_String is

        function Convert is new Ada.Unchecked_Conversion (BSTR , System.Address);
        function Convert is new Ada.Unchecked_Conversion (System.Address , BSTR);
        
        function Peek(From : System.Address) return Wide_Character is
            Item    : BSTR := Convert(From);
        begin
            return Wide_Character (Item.all);
        end;

	begin
        if Value = null then
            return "";
        end if;

        declare
            Count   : UINT := SysStringLen(Value);
        begin
            if  Count > 0 then
                declare
                    RetVal  : Wide_String (1..Integer(Count));
                begin
                    for i in RetVal'Range loop
                        RetVal(i) := Peek(Convert(Value) + System.Storage_Elements.Storage_Offset((i-1)*2));
                    end loop;
                    return RetVal;
                end;
            else
                return "";
            end if;
        end;
	end;

	----------------------------------------------------------------------------
	function From_String (Value : Wide_String) return GUID is
		Hr		: HRESULT := 0;
		Buffer	: BSTR := To_BSTR(Value);
		RetVal	: aliased GUID;
	begin
		Hr := CLSIDFromString (LPCOLESTR(Buffer), RetVal'unchecked_access);
		SysFreeString(Buffer);
		return RetVal;
	end;

	----------------------------------------------------------------------------
	function To_String (Value : GUID) return Wide_String is
		Hr		: HRESULT := 0;
		RetVal	: Wide_String := "";
	begin
		return RetVal;
	end;

    ----------------------------------------------------------------------------
    function From_Variant (Value : VARIANT) return IUnknown_Ptr is
        Hr          : HRESULT := 0;
        RetVal      : IUnknown_Ptr := null;
    begin
        if Value.field_1.field_1.vt = 13 then
            Hr := Value.Field_1.field_1.field_1.pUnkVal.QueryInterface(IID_IUnknown'access, Convert(RetVal'Address));
        end if;
        return RetVal;
    end;

    ----------------------------------------------------------------------------
    function To_Variant (Value : IUnknown_Ptr) return VARIANT is
        function Convert is new Ada.Unchecked_Conversion (IUnknown_Ptr, LONGLONG);
        Hr          : HRESULT := 0;
        RetVal      : aliased VARIANT;
    begin
        VariantInit(RetVal'access);
        RetVal.field_1.field_1.vt := 13 ;
        RetVal.Field_1.field_1.field_1.llVal := Convert(Value);
        return RetVal;
    end;

end Win32.Extensions.Common;