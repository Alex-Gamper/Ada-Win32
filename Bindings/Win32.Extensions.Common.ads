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
with Ada.Unchecked_Conversion;
--------------------------------------------------------------------------------
package Win32.Extensions.Common is

    function Addr (S : Wide_String) return LPWSTR;
    function Addr (S : Wide_String) return LPCWSTR;
    function Addr (S : Wide_String) return LPOLESTR;

	function To_Ada (Value : BSTR) return Wide_String;
	function To_BSTR (Value : Wide_String) return BSTR;

    function From_Variant (Value : VARIANT) return IUnknown_Ptr;
    function To_Variant (Value : IUnknown_Ptr) return VARIANT;

	function From_String (Value : Wide_String) return GUID;
	function To_String (Value : GUID) return Wide_String;

    ----------------------------------------------------------------------------
    type LPVOID_Ptr is access all LPVOID;
    function Convert is new Ada.Unchecked_Conversion(System.Address, LPVOID_Ptr);

end Win32.Extensions.Common;