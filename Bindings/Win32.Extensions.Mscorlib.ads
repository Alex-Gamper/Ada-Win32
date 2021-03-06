﻿--------------------------------------------------------------------------------
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
with Interfaces.C;
--------------------------------------------------------------------------------
package Win32.Extensions.Mscorlib is

   -----------------------------------------------------------------------------
   type TypeAttributes is (
      NotPublic,
      Public,
      NestedPublic,
      NestedPrivate,
      NestedFamily,
      NestedAssembly,
      NestedFamANDAssem,
      NestedFamORAssem,
      SequentialLayout,
      ExplicitLayout,
      LayoutMask,
      ClassSemanticsMask,
      Abstract_x,
      Sealed,
      SpecialName,
      RTSpecialName,
      Import,
      Serializable,
      WindowsRuntime,
      UnicodeClass,
      AutoClass,
      StringFormatMask,
      HasSecurity,
      ReservedMask,
      BeforeFieldInit,
      CustomFormatMask
   );
   
   for TypeAttributes use (
      NotPublic => 0,
      Public => 1,
      NestedPublic => 2,
      NestedPrivate => 3,
      NestedFamily => 4,
      NestedAssembly => 5,
      NestedFamANDAssem => 6,
      NestedFamORAssem => 7,
      SequentialLayout => 8,
      ExplicitLayout => 16,
      LayoutMask => 24,
      ClassSemanticsMask => 32,
      Abstract_x => 128,
      Sealed => 256,
      SpecialName => 1024,
      RTSpecialName => 2048,
      Import => 4096,
      Serializable => 8192,
      WindowsRuntime => 16384,
      UnicodeClass => 65536,
      AutoClass => 131072,
      StringFormatMask => 196608,
      HasSecurity => 262144,
      ReservedMask => 264192,
      BeforeFieldInit => 1048576,
      CustomFormatMask => 12582912
   );
   
   for TypeAttributes'Size use 32;
   type TypeAttributes_Ptr is access TypeAttributes;

   -----------------------------------------------------------------------------
   type CallingConventions is (
      Standard_x,
      VarArgs,
      Any,
      HasThis,
      ExplicitThis
   );
   
   for CallingConventions use (
      Standard_x => 1,
      VarArgs => 2,
      Any => 3,
      HasThis => 32,
      ExplicitThis => 64
   );
   
   for CallingConventions'Size use 32;
   type CallingConventions_Ptr is access CallingConventions;
   
   -----------------------------------------------------------------------------
   type BindingFlags is (
      Default,
      IgnoreCase,
      DeclaredOnly,
      Instance,
      Static,
      Public,
      NonPublic,
      FlattenHierarchy,
      InvokeMethod,
      CreateInstance,
      GetField,
      SetField,
      GetProperty,
      SetProperty,
      PutDispProperty,
      PutRefDispProperty,
      ExactBinding,
      SuppressChangeType,
      OptionalParamBinding,
      IgnoreReturn
   );
   
   for BindingFlags use (
      Default => 0,
      IgnoreCase => 1,
      DeclaredOnly => 2,
      Instance => 4,
      Static => 8,
      Public => 16,
      NonPublic => 32,
      FlattenHierarchy => 64,
      InvokeMethod => 256,
      CreateInstance => 512,
      GetField => 1024,
      SetField => 2048,
      GetProperty => 4096,
      SetProperty => 8192,
      PutDispProperty => 16384,
      PutRefDispProperty => 32768,
      ExactBinding => 65536,
      SuppressChangeType => 131072,
      OptionalParamBinding => 262144,
      IgnoreReturn => 16777216
   );
   
   for BindingFlags'Size use 32;
   type BindingFlags_Ptr is access BindingFlags;

   -----------------------------------------------------------------------------
   type AssemblyBuilderAccess is (
      Run,
      Save,
      RunAndSave,
      ReflectionOnly,
      RunAndCollect
   );
   
   for AssemblyBuilderAccess use (
      Run => 1,
      Save => 2,
      RunAndSave => 3,
      ReflectionOnly => 6,
      RunAndCollect => 9
   );
   
   for AssemblyBuilderAccess'Size use 32;   
   type AssemblyBuilderAccess_Ptr is access AssemblyBuilderAccess;

   -----------------------------------------------------------------------------
   type MemberTypes is (
      Constructor,
      Event,
      Field,
      Method,
      Property,
      TypeInfo,
      Custom,
      NestedType,
      All_x
   );
   
   for MemberTypes use (
      Constructor => 1,
      Event => 2,
      Field => 4,
      Method => 8,
      Property => 16,
      TypeInfo => 32,
      Custom => 64,
      NestedType => 128,
      All_x => 191
   );
   
   for MemberTypes'Size use 32;
   type MemberTypes_Ptr is access MemberTypes;

   -----------------------------------------------------------------------------
   type PrincipalPolicy is (
      UnauthenticatedPrincipal,
      NoPrincipal,
      WindowsPrincipal
   );
   
   for PrincipalPolicy use (
      UnauthenticatedPrincipal => 0,
      NoPrincipal => 1,
      WindowsPrincipal => 2
   );
   
   for PrincipalPolicy'Size use 32;
   type PrincipalPolicy_Ptr is access PrincipalPolicy;
   
   -----------------------------------------------------------------------------
   type MethodAttributes is (
      ReuseSlot,
      Private_x,
      FamANDAssem,
      Assembly,
      Family,
      FamORAssem,
      Public,
      MemberAccessMask,
      UnmanagedExport,
      Static,
      Final,
      Virtual,
      HideBySig,
      NewSlot,
      CheckAccessOnOverride,
      Abstract_x,
      SpecialName,
      RTSpecialName,
      PinvokeImpl,
      HasSecurity,
      RequireSecObject,
      ReservedMask
   );
   
   for MethodAttributes use (
      ReuseSlot => 0,
      Private_x => 1,
      FamANDAssem => 2,
      Assembly => 3,
      Family => 4,
      FamORAssem => 5,
      Public => 6,
      MemberAccessMask => 7,
      UnmanagedExport => 8,
      Static => 16,
      Final => 32,
      Virtual => 64,
      HideBySig => 128,
      NewSlot => 256,
      CheckAccessOnOverride => 512,
      Abstract_x => 1024,
      SpecialName => 2048,
      RTSpecialName => 4096,
      PinvokeImpl => 8192,
      HasSecurity => 16384,
      RequireSecObject => 32768,
      ReservedMask => 53248
   );
   
   for MethodAttributes'Size use 32;
   type MethodAttributes_Ptr is access MethodAttributes;

   -----------------------------------------------------------------------------
   type MethodImplAttributes is (
      Managed,
      Native,
      OPTIL,
      Runtime,
      Unmanaged,
      NoInlining,
      ForwardRef,
      Synchronized_x,
      NoOptimization,
      PreserveSig,
      AggressiveInlining,
      InternalCall,
      MaxMethodImplVal
   );
   
   for MethodImplAttributes use (
      Managed => 0,
      Native => 1,
      OPTIL => 2,
      Runtime => 3,
      Unmanaged => 4,
      NoInlining => 8,
      ForwardRef => 16,
      Synchronized_x => 32,
      NoOptimization => 64,
      PreserveSig => 128,
      AggressiveInlining => 256,
      InternalCall => 4096,
      MaxMethodImplVal => 65535
   );
   
   for MethodImplAttributes'Size use 32;   
   type MethodImplAttributes_Ptr is access MethodImplAttributes;

   -----------------------------------------------------------------------------
   type FieldAttributes is (
      PrivateScope,
      Private_x,
      FamANDAssem,
      Assembly,
      Family,
      FamORAssem,
      Public,
      FieldAccessMask,
      Static,
      InitOnly,
      Literal,
      NotSerialized,
      HasFieldRVA,
      SpecialName,
      RTSpecialName,
      HasFieldMarshal,
      PinvokeImpl,
      HasDefault,
      ReservedMask
   );
   
   for FieldAttributes use (
      PrivateScope => 0,
      Private_x => 1,
      FamANDAssem => 2,
      Assembly => 3,
      Family => 4,
      FamORAssem => 5,
      Public => 6,
      FieldAccessMask => 7,
      Static => 16,
      InitOnly => 32,
      Literal => 64,
      NotSerialized => 128,
      HasFieldRVA => 256,
      SpecialName => 512,
      RTSpecialName => 1024,
      HasFieldMarshal => 4096,
      PinvokeImpl => 8192,
      HasDefault => 32768,
      ReservedMask => 38144
   );
   
   for FieldAttributes'Size use 32;
   type FieldAttributes_Ptr is access FieldAttributes;
   
   -----------------------------------------------------------------------------
   type PropertyAttributes is (
      None,
      SpecialName,
      RTSpecialName,
      HasDefault,
      Reserved2,
      Reserved3,
      Reserved4,
      ReservedMask
   );
   
   for PropertyAttributes use (
      None => 0,
      SpecialName => 512,
      RTSpecialName => 1024,
      HasDefault => 4096,
      Reserved2 => 8192,
      Reserved3 => 16384,
      Reserved4 => 32768,
      ReservedMask => 62464
   );
   
   for PropertyAttributes'Size use 32;   
   type PropertyAttributes_Ptr is access PropertyAttributes;

   -----------------------------------------------------------------------------
   type EventAttributes is (
      None,
      SpecialName,
      ReservedMask
   );
   
   for EventAttributes use (
      None => 0,
      SpecialName => 512,
      ReservedMask => 1024
   );
   
   for EventAttributes'Size use 32;   
   type EventAttributes_Ptr is access EventAttributes;
   
   -----------------------------------------------------------------------------
    -- ValueTypes (check)

    type RuntimeTypeHandle is null record;
    type RuntimeMethodHandle is null record;
    type RuntimeFieldHandle is null record;
    type InterfaceMapping is null record;
    type StreamingContext is null record;

   -----------------------------------------------------------------------------
   -- Forward delarations

    type IType;
    type IType_Ptr is access all IType'Class;

    type IBinder;
    type IBinder_Ptr is access all IBinder'Class;
    
    type IMethodBase;
    type IMethodBase_Ptr is access all IMethodBase'Class;

    type IMethodInfo;
    type IMethodInfo_Ptr is access all IMethodInfo'Class;

    type IAssembly;
    type IAssembly_Ptr is access all IAssembly'Class;

    type IModule; 
    type IModule_Ptr is access all IModule'Class;

   -----------------------------------------------------------------------------
    type IEventHandler is interface and IDispatch;
    type IEventHandler_Ptr is access all IEventHandler'Class;

   -----------------------------------------------------------------------------
    type IEvidence is interface and IDispatch;
    type IEvidence_Ptr is access all IEvidence'Class;

   -----------------------------------------------------------------------------
    type IAssemblyLoadEventHandler is interface and IDispatch;
    type IAssemblyLoadEventHandler_Ptr is access all IAssemblyLoadEventHandler'Class;

   -----------------------------------------------------------------------------
    type IResolveEventHandler is interface and IDispatch;
    type IResolveEventHandler_Ptr is access all IResolveEventHandler'Class;

   -----------------------------------------------------------------------------
    type IUnhandledExceptionEventHandler is interface and IDispatch;
    type IUnhandledExceptionEventHandler_Ptr is access all IUnhandledExceptionEventHandler'Class;

   -----------------------------------------------------------------------------
    type IAssemblyName is interface and IDispatch;
    type IAssemblyName_Ptr is access all IAssemblyName'Class;

   -----------------------------------------------------------------------------
    type IAssemblyBuilder is interface and IDispatch;
    type IAssemblyBuilder_Ptr is access all IAssemblyBuilder'Class;

   -----------------------------------------------------------------------------
    type IPermissionSet is interface and IDispatch;
    type IPermissionSet_Ptr is access all IPermissionSet'Class;

   -----------------------------------------------------------------------------
    type IObjRef is interface and IDispatch;
    type IObjRef_Ptr is access all IObjRef'Class;

   -----------------------------------------------------------------------------
    type IPolicyLevel is interface and IDispatch;
    type IPolicyLevel_Ptr is access all IPolicyLevel'Class;

   -----------------------------------------------------------------------------
    type ICultureInfo is interface and IDispatch;
    type ICultureInfo_Ptr is access all ICultureInfo'Class;

   -----------------------------------------------------------------------------
    type IMemberFilter is interface and IDispatch;
    type IMemberFilter_Ptr is access all IMemberFilter'Class;

   -----------------------------------------------------------------------------
    type ITypeFilter is interface and IDispatch;
    type ITypeFilter_Ptr is access all ITypeFilter'Class;

   -----------------------------------------------------------------------------
    type ICrossAppDomainDelegate is interface and IDispatch;
    type ICrossAppDomainDelegate_Ptr is access all ICrossAppDomainDelegate'Class;

   -----------------------------------------------------------------------------
    type ISerializationInfo is interface and IDispatch;
    type ISerializationInfo_Ptr is access all ISerializationInfo'Class;

   -----------------------------------------------------------------------------
    type IVersion is interface and IDispatch;
    type IVersion_Ptr is access all IVersion'Class;

   -----------------------------------------------------------------------------
    type IModuleResolveEventHandler is interface and IDispatch;
    type IModuleResolveEventHandler_Ptr is access all IModuleResolveEventHandler'Class;

   -----------------------------------------------------------------------------
    type IManifestResourceInfo is interface and IDispatch;
    type IManifestResourceInfo_Ptr is access all IManifestResourceInfo'Class;

   -----------------------------------------------------------------------------
    type IStream is interface and IDispatch;
    type IStream_Ptr is access all IStream'Class;

   -----------------------------------------------------------------------------
    type IFileStream is interface and IDispatch;
    type IFileStream_Ptr is access all IFileStream'Class;

   -----------------------------------------------------------------------------
   type IAssembly is interface and IDispatch;
      function get_ToString(
         This : access IAssembly;
         pRetVal : access BSTR
      ) return HRESULT is abstract;
      function Equals(
         This : access IAssembly;
         other : VARIANT;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function GetHashCode(
         This : access IAssembly;
         pRetVal : access Interfaces.C.Long
      ) return HRESULT is abstract;
      function GetType(
         This : access IAssembly;
         pRetVal : access IType_Ptr
      ) return HRESULT is abstract;
      function get_CodeBase(
         This : access IAssembly;
         pRetVal : access BSTR
      ) return HRESULT is abstract;
      function get_EscapedCodeBase(
         This : access IAssembly;
         pRetVal : access BSTR
      ) return HRESULT is abstract;
      function GetName(
         This : access IAssembly;
         pRetVal : access IAssemblyName_Ptr
      ) return HRESULT is abstract;
      function GetName_2(
         This : access IAssembly;
         copiedName : VARIANT_BOOL;
         pRetVal : access IAssemblyName_Ptr
      ) return HRESULT is abstract;
      function get_FullName(
         This : access IAssembly;
         pRetVal : access BSTR
      ) return HRESULT is abstract;
      function get_EntryPoint(
         This : access IAssembly;
         pRetVal : access IMethodInfo_Ptr
      ) return HRESULT is abstract;
      function GetType_2(
         This : access IAssembly;
         name : BSTR;
         pRetVal : access IType_Ptr
      ) return HRESULT is abstract;
      function GetType_3(
         This : access IAssembly;
         name : BSTR;
         throwOnError : VARIANT_BOOL;
         pRetVal : access IType_Ptr
      ) return HRESULT is abstract;
      function GetExportedTypes(
         This : access IAssembly;
         pRetVal : access LPSAFEARRAY
      ) return HRESULT is abstract;
      function GetTypes(
         This : access IAssembly;
         pRetVal : access LPSAFEARRAY
      ) return HRESULT is abstract;
      function GetManifestResourceStream(
         This : access IAssembly;
         type_x : access IType'Class;
         name : BSTR;
         pRetVal : access IStream_Ptr
      ) return HRESULT is abstract;
      function GetManifestResourceStream_2(
         This : access IAssembly;
         name : BSTR;
         pRetVal : access IStream_Ptr
      ) return HRESULT is abstract;
      function GetFile(
         This : access IAssembly;
         name : BSTR;
         pRetVal : access IFileStream_Ptr
      ) return HRESULT is abstract;
      function GetFiles(
         This : access IAssembly;
         pRetVal : access LPSAFEARRAY
      ) return HRESULT is abstract;
      function GetFiles_2(
         This : access IAssembly;
         getResourceModules : VARIANT_BOOL;
         pRetVal : access LPSAFEARRAY
      ) return HRESULT is abstract;
      function GetManifestResourceNames(
         This : access IAssembly;
         pRetVal : access LPSAFEARRAY
      ) return HRESULT is abstract;
      function GetManifestResourceInfo(
         This : access IAssembly;
         resourceName : BSTR;
         pRetVal : access IManifestResourceInfo_Ptr
      ) return HRESULT is abstract;
      function get_Location(
         This : access IAssembly;
         pRetVal : access BSTR
      ) return HRESULT is abstract;
      function get_Evidence(
         This : access IAssembly;
         pRetVal : access IEvidence_Ptr
      ) return HRESULT is abstract;
      function GetCustomAttributes(
         This : access IAssembly;
         attributeType : access IType'Class;
         inherit : VARIANT_BOOL;
         pRetVal : access LPSAFEARRAY
      ) return HRESULT is abstract;
      function GetCustomAttributes_2(
         This : access IAssembly;
         inherit : VARIANT_BOOL;
         pRetVal : access LPSAFEARRAY
      ) return HRESULT is abstract;
      function IsDefined(
         This : access IAssembly;
         attributeType : access IType'Class;
         inherit : VARIANT_BOOL;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function GetObjectData(
         This : access IAssembly;
         info : access ISerializationInfo'Class;
         Context_x : StreamingContext
      ) return HRESULT is abstract;
      function add_ModuleResolve(
         This : access IAssembly;
         value : access IModuleResolveEventHandler'Class
      ) return HRESULT is abstract;
      function remove_ModuleResolve(
         This : access IAssembly;
         value : access IModuleResolveEventHandler'Class
      ) return HRESULT is abstract;
      function GetType_4(
         This : access IAssembly;
         name : BSTR;
         throwOnError : VARIANT_BOOL;
         ignoreCase : VARIANT_BOOL;
         pRetVal : access IType_Ptr
      ) return HRESULT is abstract;
      function GetSatelliteAssembly(
         This : access IAssembly;
         culture : access ICultureInfo'Class;
         pRetVal : access IAssembly_Ptr
      ) return HRESULT is abstract;
      function GetSatelliteAssembly_2(
         This : access IAssembly;
         culture : access ICultureInfo'Class;
         Version : access IVersion'Class;
         pRetVal : access IAssembly_Ptr
      ) return HRESULT is abstract;
      function LoadModule_x(
         This : access IAssembly;
         moduleName : BSTR;
         rawModule : access SAFEARRAY;
         pRetVal : access IModule_Ptr
      ) return HRESULT is abstract;
      function LoadModule_2(
         This : access IAssembly;
         moduleName : BSTR;
         rawModule : access SAFEARRAY;
         rawSymbolStore : access SAFEARRAY;
         pRetVal : access IModule_Ptr
      ) return HRESULT is abstract;
      function CreateInstance(
         This : access IAssembly;
         typeName : BSTR;
         pRetVal : access VARIANT
      ) return HRESULT is abstract;
      function CreateInstance_2(
         This : access IAssembly;
         typeName : BSTR;
         ignoreCase : VARIANT_BOOL;
         pRetVal : access VARIANT
      ) return HRESULT is abstract;
      function CreateInstance_3(
         This : access IAssembly;
         typeName : BSTR;
         ignoreCase : VARIANT_BOOL;
         bindingAttr : BindingFlags;
         Binder : access IBinder'Class;
         args : access SAFEARRAY;
         culture : access ICultureInfo'Class;
         activationAttributes : access SAFEARRAY;
         pRetVal : access VARIANT
      ) return HRESULT is abstract;
      function GetLoadedModules(
         This : access IAssembly;
         pRetVal : access LPSAFEARRAY
      ) return HRESULT is abstract;
      function GetLoadedModules_2(
         This : access IAssembly;
         getResourceModules : VARIANT_BOOL;
         pRetVal : access LPSAFEARRAY
      ) return HRESULT is abstract;
      function GetModules(
         This : access IAssembly;
         pRetVal : access LPSAFEARRAY
      ) return HRESULT is abstract;
      function GetModules_2(
         This : access IAssembly;
         getResourceModules : VARIANT_BOOL;
         pRetVal : access LPSAFEARRAY
      ) return HRESULT is abstract;
      function GetModule(
         This : access IAssembly;
         name : BSTR;
         pRetVal : access IModule_Ptr
      ) return HRESULT is abstract;
      function GetReferencedAssemblies(
         This : access IAssembly;
         pRetVal : access LPSAFEARRAY
      ) return HRESULT is abstract;
      function get_GlobalAssemblyCache(
         This : access IAssembly;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;

   -----------------------------------------------------------------------------
   type IModule is interface and IUnknown;
      function GetTypeInfoCount(
         This : access IModule;
         pcTInfo : access Interfaces.C.unsigned_long
      ) return HRESULT is abstract;
      function GetTypeInfo(
         This : access IModule;
         iTInfo : Interfaces.C.unsigned_long;
         lcid_x : Interfaces.C.unsigned_long;
         ppTInfo : Interfaces.C.Long
      ) return HRESULT is abstract;
      function GetIDsOfNames(
         This : access IModule;
         riid : access GUID;
         rgszNames : Interfaces.C.Long;
         cNames : Interfaces.C.unsigned_long;
         lcid_x : Interfaces.C.unsigned_long;
         rgDispId : Interfaces.C.Long
      ) return HRESULT is abstract;
      function Invoke(
         This : access IModule;
         dispIdMember : Interfaces.C.unsigned_long;
         riid : access GUID;
         lcid_x : Interfaces.C.unsigned_long;
         wFlags : Interfaces.C.Short;
         pDispParams : Interfaces.C.Long;
         pVarResult : Interfaces.C.Long;
         pExcepInfo : Interfaces.C.Long;
         puArgErr : Interfaces.C.Long
      ) return HRESULT is abstract;

   -----------------------------------------------------------------------------
   type IConstructorInfo is interface and IUnknown;
      function GetTypeInfoCount(
         This : access IConstructorInfo;
         pcTInfo : access Interfaces.C.unsigned_long
      ) return HRESULT is abstract;
      function GetTypeInfo(
         This : access IConstructorInfo;
         iTInfo : Interfaces.C.unsigned_long;
         lcid_x : Interfaces.C.unsigned_long;
         ppTInfo : Interfaces.C.Long
      ) return HRESULT is abstract;
      function GetIDsOfNames(
         This : access IConstructorInfo;
         riid : access GUID;
         rgszNames : Interfaces.C.Long;
         cNames : Interfaces.C.unsigned_long;
         lcid_x : Interfaces.C.unsigned_long;
         rgDispId : Interfaces.C.Long
      ) return HRESULT is abstract;
      function Invoke(
         This : access IConstructorInfo;
         dispIdMember : Interfaces.C.unsigned_long;
         riid : access GUID;
         lcid_x : Interfaces.C.unsigned_long;
         wFlags : Interfaces.C.Short;
         pDispParams : Interfaces.C.Long;
         pVarResult : Interfaces.C.Long;
         pExcepInfo : Interfaces.C.Long;
         puArgErr : Interfaces.C.Long
      ) return HRESULT is abstract;
      function get_ToString(
         This : access IConstructorInfo;
         pRetVal : access BSTR
      ) return HRESULT is abstract;
      function Equals(
         This : access IConstructorInfo;
         other : VARIANT;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function GetHashCode(
         This : access IConstructorInfo;
         pRetVal : access Interfaces.C.Long
      ) return HRESULT is abstract;
      function GetType(
         This : access IConstructorInfo;
         pRetVal : access IType_Ptr
      ) return HRESULT is abstract;
      function get_MemberType(
         This : access IConstructorInfo;
         pRetVal : access MemberTypes
      ) return HRESULT is abstract;
      function get_name(
         This : access IConstructorInfo;
         pRetVal : access BSTR
      ) return HRESULT is abstract;
      function get_DeclaringType(
         This : access IConstructorInfo;
         pRetVal : access IType_Ptr
      ) return HRESULT is abstract;
      function get_ReflectedType(
         This : access IConstructorInfo;
         pRetVal : access IType_Ptr
      ) return HRESULT is abstract;
      function GetCustomAttributes(
         This : access IConstructorInfo;
         attributeType : access IType'Class;
         inherit : VARIANT_BOOL;
         pRetVal : access LPSAFEARRAY
      ) return HRESULT is abstract;
      function GetCustomAttributes_2(
         This : access IConstructorInfo;
         inherit : VARIANT_BOOL;
         pRetVal : access LPSAFEARRAY
      ) return HRESULT is abstract;
      function IsDefined(
         This : access IConstructorInfo;
         attributeType : access IType'Class;
         inherit : VARIANT_BOOL;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function GetParameters(
         This : access IConstructorInfo;
         pRetVal : access LPSAFEARRAY
      ) return HRESULT is abstract;
      function GetMethodImplementationFlags(
         This : access IConstructorInfo;
         pRetVal : access MethodImplAttributes
      ) return HRESULT is abstract;
      function get_MethodHandle(
         This : access IConstructorInfo;
         pRetVal : access RuntimeMethodHandle
      ) return HRESULT is abstract;
      function get_Attributes(
         This : access IConstructorInfo;
         pRetVal : access MethodAttributes
      ) return HRESULT is abstract;
      function get_CallingConvention(
         This : access IConstructorInfo;
         pRetVal : access CallingConventions
      ) return HRESULT is abstract;
      function Invoke_2(
         This : access IConstructorInfo;
         obj : VARIANT;
         invokeAttr : BindingFlags;
         Binder : access IBinder'Class;
         parameters : access SAFEARRAY;
         culture : access ICultureInfo'Class;
         pRetVal : access VARIANT
      ) return HRESULT is abstract;
      function get_IsPublic(
         This : access IConstructorInfo;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function get_IsPrivate(
         This : access IConstructorInfo;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function get_IsFamily(
         This : access IConstructorInfo;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function get_IsAssembly(
         This : access IConstructorInfo;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function get_IsFamilyAndAssembly(
         This : access IConstructorInfo;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function get_IsFamilyOrAssembly(
         This : access IConstructorInfo;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function get_IsStatic(
         This : access IConstructorInfo;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function get_IsFinal(
         This : access IConstructorInfo;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function get_IsVirtual(
         This : access IConstructorInfo;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function get_IsHideBySig(
         This : access IConstructorInfo;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function get_IsAbstract(
         This : access IConstructorInfo;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function get_IsSpecialName(
         This : access IConstructorInfo;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function get_IsConstructor(
         This : access IConstructorInfo;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function Invoke_3(
         This : access IConstructorInfo;
         obj : VARIANT;
         parameters : access SAFEARRAY;
         pRetVal : access VARIANT
      ) return HRESULT is abstract;
      function Invoke_4(
         This : access IConstructorInfo;
         invokeAttr : BindingFlags;
         Binder : access IBinder'Class;
         parameters : access SAFEARRAY;
         culture : access ICultureInfo'Class;
         pRetVal : access VARIANT
      ) return HRESULT is abstract;
      function Invoke_5(
         This : access IConstructorInfo;
         parameters : access SAFEARRAY;
         pRetVal : access VARIANT
      ) return HRESULT is abstract;
   type IConstructorInfo_Ptr is access all IConstructorInfo'Class;

   -----------------------------------------------------------------------------
   type IDelegate is interface and IDispatch;
      function get_ToString(
         This : access IDelegate;
         pRetVal : access BSTR
      ) return HRESULT is abstract;
      function Equals(
         This : access IDelegate;
         obj : VARIANT;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function GetHashCode(
         This : access IDelegate;
         pRetVal : access Interfaces.C.Long
      ) return HRESULT is abstract;
      function GetType(
         This : access IDelegate;
         pRetVal : access IType_Ptr
      ) return HRESULT is abstract;
      function GetInvocationList(
         This : access IDelegate;
         pRetVal : access LPSAFEARRAY
      ) return HRESULT is abstract;
      function Clone(
         This : access IDelegate;
         pRetVal : access VARIANT
      ) return HRESULT is abstract;
      function GetObjectData(
         This : access IDelegate;
         info : access ISerializationInfo'Class;
         Context_x : StreamingContext
      ) return HRESULT is abstract;
      function DynamicInvoke(
         This : access IDelegate;
         args : access SAFEARRAY;
         pRetVal : access VARIANT
      ) return HRESULT is abstract;
      function get_Method(
         This : access IDelegate;
         pRetVal : access IMethodInfo_Ptr
      ) return HRESULT is abstract;
      function get_Target(
         This : access IDelegate;
         pRetVal : access VARIANT
      ) return HRESULT is abstract;
   type IDelegate_Ptr is access all IDelegate'Class;

   -----------------------------------------------------------------------------
   type IEventInfo is interface and IUnknown;
      function GetTypeInfoCount(
         This : access IEventInfo;
         pcTInfo : access Interfaces.C.unsigned_long
      ) return HRESULT is abstract;
      function GetTypeInfo(
         This : access IEventInfo;
         iTInfo : Interfaces.C.unsigned_long;
         lcid_x : Interfaces.C.unsigned_long;
         ppTInfo : Interfaces.C.Long
      ) return HRESULT is abstract;
      function GetIDsOfNames(
         This : access IEventInfo;
         riid : access GUID;
         rgszNames : Interfaces.C.Long;
         cNames : Interfaces.C.unsigned_long;
         lcid_x : Interfaces.C.unsigned_long;
         rgDispId : Interfaces.C.Long
      ) return HRESULT is abstract;
      function Invoke(
         This : access IEventInfo;
         dispIdMember : Interfaces.C.unsigned_long;
         riid : access GUID;
         lcid_x : Interfaces.C.unsigned_long;
         wFlags : Interfaces.C.Short;
         pDispParams : Interfaces.C.Long;
         pVarResult : Interfaces.C.Long;
         pExcepInfo : Interfaces.C.Long;
         puArgErr : Interfaces.C.Long
      ) return HRESULT is abstract;
      function get_ToString(
         This : access IEventInfo;
         pRetVal : access BSTR
      ) return HRESULT is abstract;
      function Equals(
         This : access IEventInfo;
         other : VARIANT;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function GetHashCode(
         This : access IEventInfo;
         pRetVal : access Interfaces.C.Long
      ) return HRESULT is abstract;
      function GetType(
         This : access IEventInfo;
         pRetVal : access IType_Ptr
      ) return HRESULT is abstract;
      function get_MemberType(
         This : access IEventInfo;
         pRetVal : access MemberTypes
      ) return HRESULT is abstract;
      function get_name(
         This : access IEventInfo;
         pRetVal : access BSTR
      ) return HRESULT is abstract;
      function get_DeclaringType(
         This : access IEventInfo;
         pRetVal : access IType_Ptr
      ) return HRESULT is abstract;
      function get_ReflectedType(
         This : access IEventInfo;
         pRetVal : access IType_Ptr
      ) return HRESULT is abstract;
      function GetCustomAttributes(
         This : access IEventInfo;
         attributeType : access IType'Class;
         inherit : VARIANT_BOOL;
         pRetVal : access LPSAFEARRAY
      ) return HRESULT is abstract;
      function GetCustomAttributes_2(
         This : access IEventInfo;
         inherit : VARIANT_BOOL;
         pRetVal : access LPSAFEARRAY
      ) return HRESULT is abstract;
      function IsDefined(
         This : access IEventInfo;
         attributeType : access IType'Class;
         inherit : VARIANT_BOOL;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function GetAddMethod(
         This : access IEventInfo;
         nonPublic : VARIANT_BOOL;
         pRetVal : access IMethodInfo_Ptr
      ) return HRESULT is abstract;
      function GetRemoveMethod(
         This : access IEventInfo;
         nonPublic : VARIANT_BOOL;
         pRetVal : access IMethodInfo_Ptr
      ) return HRESULT is abstract;
      function GetRaiseMethod(
         This : access IEventInfo;
         nonPublic : VARIANT_BOOL;
         pRetVal : access IMethodInfo_Ptr
      ) return HRESULT is abstract;
      function get_Attributes(
         This : access IEventInfo;
         pRetVal : access EventAttributes
      ) return HRESULT is abstract;
      function GetAddMethod_2(
         This : access IEventInfo;
         pRetVal : access IMethodInfo_Ptr
      ) return HRESULT is abstract;
      function GetRemoveMethod_2(
         This : access IEventInfo;
         pRetVal : access IMethodInfo_Ptr
      ) return HRESULT is abstract;
      function GetRaiseMethod_2(
         This : access IEventInfo;
         pRetVal : access IMethodInfo_Ptr
      ) return HRESULT is abstract;
      function AddEventHandler(
         This : access IEventInfo;
         Target : VARIANT;
         handler : access IDelegate'Class
      ) return HRESULT is abstract;
      function RemoveEventHandler(
         This : access IEventInfo;
         Target : VARIANT;
         handler : access IDelegate'Class
      ) return HRESULT is abstract;
      function get_EventHandlerType(
         This : access IEventInfo;
         pRetVal : access IType_Ptr
      ) return HRESULT is abstract;
      function get_IsSpecialName(
         This : access IEventInfo;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function get_IsMulticast(
         This : access IEventInfo;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
    type IEventInfo_Ptr is access all IEventInfo'Class;

   -----------------------------------------------------------------------------
   type ICustomAttributeProvider is interface and IDispatch;
      function GetCustomAttributes(
         This : access ICustomAttributeProvider;
         attributeType : access IType'Class;
         inherit : VARIANT_BOOL;
         pRetVal : access LPSAFEARRAY
      ) return HRESULT is abstract;
      function GetCustomAttributes_2(
         This : access ICustomAttributeProvider;
         inherit : VARIANT_BOOL;
         pRetVal : access LPSAFEARRAY
      ) return HRESULT is abstract;
      function IsDefined(
         This : access ICustomAttributeProvider;
         attributeType : access IType'Class;
         inherit : VARIANT_BOOL;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
   type ICustomAttributeProvider_Ptr is access all ICustomAttributeProvider'Class;

   -----------------------------------------------------------------------------
   type IMethodInfo is interface and IUnknown;
      function GetTypeInfoCount(
         This : access IMethodInfo;
         pcTInfo : access Interfaces.C.unsigned_long
      ) return HRESULT is abstract;
      function GetTypeInfo(
         This : access IMethodInfo;
         iTInfo : Interfaces.C.unsigned_long;
         lcid_x : Interfaces.C.unsigned_long;
         ppTInfo : Interfaces.C.Long
      ) return HRESULT is abstract;
      function GetIDsOfNames(
         This : access IMethodInfo;
         riid : access GUID;
         rgszNames : Interfaces.C.Long;
         cNames : Interfaces.C.unsigned_long;
         lcid_x : Interfaces.C.unsigned_long;
         rgDispId : Interfaces.C.Long
      ) return HRESULT is abstract;
      function Invoke(
         This : access IMethodInfo;
         dispIdMember : Interfaces.C.unsigned_long;
         riid : access GUID;
         lcid_x : Interfaces.C.unsigned_long;
         wFlags : Interfaces.C.Short;
         pDispParams : Interfaces.C.Long;
         pVarResult : Interfaces.C.Long;
         pExcepInfo : Interfaces.C.Long;
         puArgErr : Interfaces.C.Long
      ) return HRESULT is abstract;
      function get_ToString(
         This : access IMethodInfo;
         pRetVal : access BSTR
      ) return HRESULT is abstract;
      function Equals(
         This : access IMethodInfo;
         other : VARIANT;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function GetHashCode(
         This : access IMethodInfo;
         pRetVal : access Interfaces.C.Long
      ) return HRESULT is abstract;
      function GetType(
         This : access IMethodInfo;
         pRetVal : access IType_Ptr
      ) return HRESULT is abstract;
      function get_MemberType(
         This : access IMethodInfo;
         pRetVal : access MemberTypes
      ) return HRESULT is abstract;
      function get_name(
         This : access IMethodInfo;
         pRetVal : access BSTR
      ) return HRESULT is abstract;
      function get_DeclaringType(
         This : access IMethodInfo;
         pRetVal : access IType_Ptr
      ) return HRESULT is abstract;
      function get_ReflectedType(
         This : access IMethodInfo;
         pRetVal : access IType_Ptr
      ) return HRESULT is abstract;
      function GetCustomAttributes(
         This : access IMethodInfo;
         attributeType : access IType'Class;
         inherit : VARIANT_BOOL;
         pRetVal : access LPSAFEARRAY
      ) return HRESULT is abstract;
      function GetCustomAttributes_2(
         This : access IMethodInfo;
         inherit : VARIANT_BOOL;
         pRetVal : access LPSAFEARRAY
      ) return HRESULT is abstract;
      function IsDefined(
         This : access IMethodInfo;
         attributeType : access IType'Class;
         inherit : VARIANT_BOOL;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function GetParameters(
         This : access IMethodInfo;
         pRetVal : access LPSAFEARRAY
      ) return HRESULT is abstract;
      function GetMethodImplementationFlags(
         This : access IMethodInfo;
         pRetVal : access MethodImplAttributes
      ) return HRESULT is abstract;
      function get_MethodHandle(
         This : access IMethodInfo;
         pRetVal : access RuntimeMethodHandle
      ) return HRESULT is abstract;
      function get_Attributes(
         This : access IMethodInfo;
         pRetVal : access MethodAttributes
      ) return HRESULT is abstract;
      function get_CallingConvention(
         This : access IMethodInfo;
         pRetVal : access CallingConventions
      ) return HRESULT is abstract;
      function Invoke_2(
         This : access IMethodInfo;
         obj : VARIANT;
         invokeAttr : BindingFlags;
         Binder : access IBinder'Class;
         parameters : access SAFEARRAY;
         culture : access ICultureInfo'Class;
         pRetVal : access VARIANT
      ) return HRESULT is abstract;
      function get_IsPublic(
         This : access IMethodInfo;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function get_IsPrivate(
         This : access IMethodInfo;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function get_IsFamily(
         This : access IMethodInfo;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function get_IsAssembly(
         This : access IMethodInfo;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function get_IsFamilyAndAssembly(
         This : access IMethodInfo;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function get_IsFamilyOrAssembly(
         This : access IMethodInfo;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function get_IsStatic(
         This : access IMethodInfo;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function get_IsFinal(
         This : access IMethodInfo;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function get_IsVirtual(
         This : access IMethodInfo;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function get_IsHideBySig(
         This : access IMethodInfo;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function get_IsAbstract(
         This : access IMethodInfo;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function get_IsSpecialName(
         This : access IMethodInfo;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function get_IsConstructor(
         This : access IMethodInfo;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function Invoke_3(
         This : access IMethodInfo;
         obj : VARIANT;
         parameters : access SAFEARRAY;
         pRetVal : access VARIANT
      ) return HRESULT is abstract;
      function get_returnType(
         This : access IMethodInfo;
         pRetVal : access IType_Ptr
      ) return HRESULT is abstract;
      function get_ReturnTypeCustomAttributes(
         This : access IMethodInfo;
         pRetVal : access ICustomAttributeProvider_Ptr
      ) return HRESULT is abstract;
      function GetBaseDefinition(
         This : access IMethodInfo;
         pRetVal : access IMethodInfo_Ptr
      ) return HRESULT is abstract;

   -----------------------------------------------------------------------------
   type IPropertyInfo is interface and IUnknown;
      function GetTypeInfoCount(
         This : access IPropertyInfo;
         pcTInfo : access Interfaces.C.unsigned_long
      ) return HRESULT is abstract;
      function GetTypeInfo(
         This : access IPropertyInfo;
         iTInfo : Interfaces.C.unsigned_long;
         lcid_x : Interfaces.C.unsigned_long;
         ppTInfo : Interfaces.C.Long
      ) return HRESULT is abstract;
      function GetIDsOfNames(
         This : access IPropertyInfo;
         riid : access GUID;
         rgszNames : Interfaces.C.Long;
         cNames : Interfaces.C.unsigned_long;
         lcid_x : Interfaces.C.unsigned_long;
         rgDispId : Interfaces.C.Long
      ) return HRESULT is abstract;
      function Invoke(
         This : access IPropertyInfo;
         dispIdMember : Interfaces.C.unsigned_long;
         riid : access GUID;
         lcid_x : Interfaces.C.unsigned_long;
         wFlags : Interfaces.C.Short;
         pDispParams : Interfaces.C.Long;
         pVarResult : Interfaces.C.Long;
         pExcepInfo : Interfaces.C.Long;
         puArgErr : Interfaces.C.Long
      ) return HRESULT is abstract;
      function get_ToString(
         This : access IPropertyInfo;
         pRetVal : access BSTR
      ) return HRESULT is abstract;
      function Equals(
         This : access IPropertyInfo;
         other : VARIANT;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function GetHashCode(
         This : access IPropertyInfo;
         pRetVal : access Interfaces.C.Long
      ) return HRESULT is abstract;
      function GetType(
         This : access IPropertyInfo;
         pRetVal : access IType_Ptr
      ) return HRESULT is abstract;
      function get_MemberType(
         This : access IPropertyInfo;
         pRetVal : access MemberTypes
      ) return HRESULT is abstract;
      function get_name(
         This : access IPropertyInfo;
         pRetVal : access BSTR
      ) return HRESULT is abstract;
      function get_DeclaringType(
         This : access IPropertyInfo;
         pRetVal : access IType_Ptr
      ) return HRESULT is abstract;
      function get_ReflectedType(
         This : access IPropertyInfo;
         pRetVal : access IType_Ptr
      ) return HRESULT is abstract;
      function GetCustomAttributes(
         This : access IPropertyInfo;
         attributeType : access IType'Class;
         inherit : VARIANT_BOOL;
         pRetVal : access LPSAFEARRAY
      ) return HRESULT is abstract;
      function GetCustomAttributes_2(
         This : access IPropertyInfo;
         inherit : VARIANT_BOOL;
         pRetVal : access LPSAFEARRAY
      ) return HRESULT is abstract;
      function IsDefined(
         This : access IPropertyInfo;
         attributeType : access IType'Class;
         inherit : VARIANT_BOOL;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function get_PropertyType(
         This : access IPropertyInfo;
         pRetVal : access IType_Ptr
      ) return HRESULT is abstract;
      function GetValue(
         This : access IPropertyInfo;
         obj : VARIANT;
         index : access SAFEARRAY;
         pRetVal : access VARIANT
      ) return HRESULT is abstract;
      function GetValue_2(
         This : access IPropertyInfo;
         obj : VARIANT;
         invokeAttr : BindingFlags;
         Binder : access IBinder'Class;
         index : access SAFEARRAY;
         culture : access ICultureInfo'Class;
         pRetVal : access VARIANT
      ) return HRESULT is abstract;
      function SetValue(
         This : access IPropertyInfo;
         obj : VARIANT;
         value : VARIANT;
         index : access SAFEARRAY
      ) return HRESULT is abstract;
      function SetValue_2(
         This : access IPropertyInfo;
         obj : VARIANT;
         value : VARIANT;
         invokeAttr : BindingFlags;
         Binder : access IBinder'Class;
         index : access SAFEARRAY;
         culture : access ICultureInfo'Class
      ) return HRESULT is abstract;
      function GetAccessors(
         This : access IPropertyInfo;
         nonPublic : VARIANT_BOOL;
         pRetVal : access LPSAFEARRAY
      ) return HRESULT is abstract;
      function GetGetMethod(
         This : access IPropertyInfo;
         nonPublic : VARIANT_BOOL;
         pRetVal : access IMethodInfo_Ptr
      ) return HRESULT is abstract;
      function GetSetMethod(
         This : access IPropertyInfo;
         nonPublic : VARIANT_BOOL;
         pRetVal : access IMethodInfo_Ptr
      ) return HRESULT is abstract;
      function GetIndexParameters(
         This : access IPropertyInfo;
         pRetVal : access LPSAFEARRAY
      ) return HRESULT is abstract;
      function get_Attributes(
         This : access IPropertyInfo;
         pRetVal : access PropertyAttributes
      ) return HRESULT is abstract;
      function get_CanRead(
         This : access IPropertyInfo;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function get_CanWrite(
         This : access IPropertyInfo;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function GetAccessors_2(
         This : access IPropertyInfo;
         pRetVal : access LPSAFEARRAY
      ) return HRESULT is abstract;
      function GetGetMethod_2(
         This : access IPropertyInfo;
         pRetVal : access IMethodInfo_Ptr
      ) return HRESULT is abstract;
      function GetSetMethod_2(
         This : access IPropertyInfo;
         pRetVal : access IMethodInfo_Ptr
      ) return HRESULT is abstract;
      function get_IsSpecialName(
         This : access IPropertyInfo;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
   type IPropertyInfo_Ptr is access all IPropertyInfo'Class;

   -----------------------------------------------------------------------------
   type IFieldInfo is interface and IUnknown;
      function GetTypeInfoCount(
         This : access IFieldInfo;
         pcTInfo : access Interfaces.C.unsigned_long
      ) return HRESULT is abstract;
      function GetTypeInfo(
         This : access IFieldInfo;
         iTInfo : Interfaces.C.unsigned_long;
         lcid_x : Interfaces.C.unsigned_long;
         ppTInfo : Interfaces.C.Long
      ) return HRESULT is abstract;
      function GetIDsOfNames(
         This : access IFieldInfo;
         riid : access GUID;
         rgszNames : Interfaces.C.Long;
         cNames : Interfaces.C.unsigned_long;
         lcid_x : Interfaces.C.unsigned_long;
         rgDispId : Interfaces.C.Long
      ) return HRESULT is abstract;
      function Invoke(
         This : access IFieldInfo;
         dispIdMember : Interfaces.C.unsigned_long;
         riid : access GUID;
         lcid_x : Interfaces.C.unsigned_long;
         wFlags : Interfaces.C.Short;
         pDispParams : Interfaces.C.Long;
         pVarResult : Interfaces.C.Long;
         pExcepInfo : Interfaces.C.Long;
         puArgErr : Interfaces.C.Long
      ) return HRESULT is abstract;
      function get_ToString(
         This : access IFieldInfo;
         pRetVal : access BSTR
      ) return HRESULT is abstract;
      function Equals(
         This : access IFieldInfo;
         other : VARIANT;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function GetHashCode(
         This : access IFieldInfo;
         pRetVal : access Interfaces.C.Long
      ) return HRESULT is abstract;
      function GetType(
         This : access IFieldInfo;
         pRetVal : access IType_Ptr
      ) return HRESULT is abstract;
      function get_MemberType(
         This : access IFieldInfo;
         pRetVal : access MemberTypes
      ) return HRESULT is abstract;
      function get_name(
         This : access IFieldInfo;
         pRetVal : access BSTR
      ) return HRESULT is abstract;
      function get_DeclaringType(
         This : access IFieldInfo;
         pRetVal : access IType_Ptr
      ) return HRESULT is abstract;
      function get_ReflectedType(
         This : access IFieldInfo;
         pRetVal : access IType_Ptr
      ) return HRESULT is abstract;
      function GetCustomAttributes(
         This : access IFieldInfo;
         attributeType : access IType'Class;
         inherit : VARIANT_BOOL;
         pRetVal : access LPSAFEARRAY
      ) return HRESULT is abstract;
      function GetCustomAttributes_2(
         This : access IFieldInfo;
         inherit : VARIANT_BOOL;
         pRetVal : access LPSAFEARRAY
      ) return HRESULT is abstract;
      function IsDefined(
         This : access IFieldInfo;
         attributeType : access IType'Class;
         inherit : VARIANT_BOOL;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function get_FieldType(
         This : access IFieldInfo;
         pRetVal : access IType_Ptr
      ) return HRESULT is abstract;
      function GetValue(
         This : access IFieldInfo;
         obj : VARIANT;
         pRetVal : access VARIANT
      ) return HRESULT is abstract;
      function GetValueDirect(
         This : access IFieldInfo;
         obj : VARIANT;
         pRetVal : access VARIANT
      ) return HRESULT is abstract;
      function SetValue(
         This : access IFieldInfo;
         obj : VARIANT;
         value : VARIANT;
         invokeAttr : BindingFlags;
         Binder : access IBinder'Class;
         culture : access ICultureInfo'Class
      ) return HRESULT is abstract;
      function SetValueDirect(
         This : access IFieldInfo;
         obj : VARIANT;
         value : VARIANT
      ) return HRESULT is abstract;
      function get_FieldHandle(
         This : access IFieldInfo;
         pRetVal : access RuntimeFieldHandle
      ) return HRESULT is abstract;
      function get_Attributes(
         This : access IFieldInfo;
         pRetVal : access FieldAttributes
      ) return HRESULT is abstract;
      function SetValue_2(
         This : access IFieldInfo;
         obj : VARIANT;
         value : VARIANT
      ) return HRESULT is abstract;
      function get_IsPublic(
         This : access IFieldInfo;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function get_IsPrivate(
         This : access IFieldInfo;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function get_IsFamily(
         This : access IFieldInfo;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function get_IsAssembly(
         This : access IFieldInfo;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function get_IsFamilyAndAssembly(
         This : access IFieldInfo;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function get_IsFamilyOrAssembly(
         This : access IFieldInfo;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function get_IsStatic(
         This : access IFieldInfo;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function get_IsInitOnly(
         This : access IFieldInfo;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function get_IsLiteral(
         This : access IFieldInfo;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function get_IsNotSerialized(
         This : access IFieldInfo;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function get_IsSpecialName(
         This : access IFieldInfo;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function get_IsPinvokeImpl(
         This : access IFieldInfo;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
   type IFieldInfo_Ptr is access all IFieldInfo'Class;

   -----------------------------------------------------------------------------
   type IMethodBase is interface and IUnknown;
      function GetTypeInfoCount(
         This : access IMethodBase;
         pcTInfo : access Interfaces.C.unsigned_long
      ) return HRESULT is abstract;
      function GetTypeInfo(
         This : access IMethodBase;
         iTInfo : Interfaces.C.unsigned_long;
         lcid_x : Interfaces.C.unsigned_long;
         ppTInfo : Interfaces.C.Long
      ) return HRESULT is abstract;
      function GetIDsOfNames(
         This : access IMethodBase;
         riid : access GUID;
         rgszNames : Interfaces.C.Long;
         cNames : Interfaces.C.unsigned_long;
         lcid_x : Interfaces.C.unsigned_long;
         rgDispId : Interfaces.C.Long
      ) return HRESULT is abstract;
      function Invoke(
         This : access IMethodBase;
         dispIdMember : Interfaces.C.unsigned_long;
         riid : access GUID;
         lcid_x : Interfaces.C.unsigned_long;
         wFlags : Interfaces.C.Short;
         pDispParams : Interfaces.C.Long;
         pVarResult : Interfaces.C.Long;
         pExcepInfo : Interfaces.C.Long;
         puArgErr : Interfaces.C.Long
      ) return HRESULT is abstract;
      function get_ToString(
         This : access IMethodBase;
         pRetVal : access BSTR
      ) return HRESULT is abstract;
      function Equals(
         This : access IMethodBase;
         other : VARIANT;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function GetHashCode(
         This : access IMethodBase;
         pRetVal : access Interfaces.C.Long
      ) return HRESULT is abstract;
      function GetType(
         This : access IMethodBase;
         pRetVal : access IType_Ptr
      ) return HRESULT is abstract;
      function get_MemberType(
         This : access IMethodBase;
         pRetVal : access MemberTypes
      ) return HRESULT is abstract;
      function get_name(
         This : access IMethodBase;
         pRetVal : access BSTR
      ) return HRESULT is abstract;
      function get_DeclaringType(
         This : access IMethodBase;
         pRetVal : access IType_Ptr
      ) return HRESULT is abstract;
      function get_ReflectedType(
         This : access IMethodBase;
         pRetVal : access IType_Ptr
      ) return HRESULT is abstract;
      function GetCustomAttributes(
         This : access IMethodBase;
         attributeType : access IType'Class;
         inherit : VARIANT_BOOL;
         pRetVal : access LPSAFEARRAY
      ) return HRESULT is abstract;
      function GetCustomAttributes_2(
         This : access IMethodBase;
         inherit : VARIANT_BOOL;
         pRetVal : access LPSAFEARRAY
      ) return HRESULT is abstract;
      function IsDefined(
         This : access IMethodBase;
         attributeType : access IType'Class;
         inherit : VARIANT_BOOL;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function GetParameters(
         This : access IMethodBase;
         pRetVal : access LPSAFEARRAY
      ) return HRESULT is abstract;
      function GetMethodImplementationFlags(
         This : access IMethodBase;
         pRetVal : access MethodImplAttributes
      ) return HRESULT is abstract;
      function get_MethodHandle(
         This : access IMethodBase;
         pRetVal : access RuntimeMethodHandle
      ) return HRESULT is abstract;
      function get_Attributes(
         This : access IMethodBase;
         pRetVal : access MethodAttributes
      ) return HRESULT is abstract;
      function get_CallingConvention(
         This : access IMethodBase;
         pRetVal : access CallingConventions
      ) return HRESULT is abstract;
      function Invoke_2(
         This : access IMethodBase;
         obj : VARIANT;
         invokeAttr : BindingFlags;
         Binder : access IBinder'Class;
         parameters : access SAFEARRAY;
         culture : access ICultureInfo'Class;
         pRetVal : access VARIANT
      ) return HRESULT is abstract;
      function get_IsPublic(
         This : access IMethodBase;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function get_IsPrivate(
         This : access IMethodBase;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function get_IsFamily(
         This : access IMethodBase;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function get_IsAssembly(
         This : access IMethodBase;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function get_IsFamilyAndAssembly(
         This : access IMethodBase;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function get_IsFamilyOrAssembly(
         This : access IMethodBase;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function get_IsStatic(
         This : access IMethodBase;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function get_IsFinal(
         This : access IMethodBase;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function get_IsVirtual(
         This : access IMethodBase;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function get_IsHideBySig(
         This : access IMethodBase;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function get_IsAbstract(
         This : access IMethodBase;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function get_IsSpecialName(
         This : access IMethodBase;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function get_IsConstructor(
         This : access IMethodBase;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function Invoke_3(
         This : access IMethodBase;
         obj : VARIANT;
         parameters : access SAFEARRAY;
         pRetVal : access VARIANT
      ) return HRESULT is abstract;

   -----------------------------------------------------------------------------
   type IIdentity is interface and IDispatch;
      function get_name(
         This : in out IIdentity;
         pRetVal : access BSTR
      ) return HRESULT is abstract;
      function get_AuthenticationType(
         This : in out IIdentity;
         pRetVal : access BSTR
      ) return HRESULT is abstract;
      function get_IsAuthenticated(
         This : in out IIdentity;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
   type IIdentity_Ptr is access all IIdentity'Class;

   -----------------------------------------------------------------------------
   type IPrincipal is interface and IDispatch;
      function get_Identity(
         This : in out IPrincipal;
         pRetVal : access IIdentity_Ptr
      ) return HRESULT is abstract;
      function IsInRole(
         This : in out IPrincipal;
         role : BSTR;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
   type IPrincipal_Ptr is access all IPrincipal'Class;

   -----------------------------------------------------------------------------
    type IObjectHandle is interface and IDispatch;
      function get_ToString(
         This : in out IObjectHandle;
         pRetVal : access BSTR
      ) return HRESULT is abstract;
      function Equals(
         This : in out IObjectHandle;
         obj : VARIANT;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function GetHashCode(
         This : in out IObjectHandle;
         pRetVal : access Interfaces.C.Long
      ) return HRESULT is abstract;
      function GetType(
         This : in out IObjectHandle;
         pRetVal : access IType_Ptr
      ) return HRESULT is abstract;
      function GetLifetimeService(
         This : in out IObjectHandle;
         pRetVal : access VARIANT
      ) return HRESULT is abstract;
      function InitializeLifetimeService(
         This : in out IObjectHandle;
         pRetVal : access VARIANT
      ) return HRESULT is abstract;
      function CreateObjRef(
         This : in out IObjectHandle;
         requestedType : access IType'Class;
         pRetVal : access IObjRef_Ptr
      ) return HRESULT is abstract;
      function Unwrap(
         This : in out IObjectHandle;
         pRetVal : access VARIANT
      ) return HRESULT is abstract;
   type IObjectHandle_Ptr is access all IObjectHandle'Class;

   -----------------------------------------------------------------------------
   type IBinder is interface and IDispatch;
      function get_ToString(
         This : access IBinder;
         pRetVal : access BSTR
      ) return HRESULT is abstract;
      function Equals(
         This : access IBinder;
         obj : VARIANT;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function GetHashCode(
         This : access IBinder;
         pRetVal : access Interfaces.C.Long
      ) return HRESULT is abstract;
      function GetType(
         This : access IBinder;
         pRetVal : access IType_Ptr
      ) return HRESULT is abstract;
      function BindToMethod(
         This : access IBinder;
         bindingAttr : BindingFlags;
         match : access SAFEARRAY;
         args : access LPSAFEARRAY;
         modifiers : access SAFEARRAY;
         culture : access ICultureInfo'Class;
         names : access SAFEARRAY;
         state : access VARIANT;
         pRetVal : access IMethodBase_Ptr
      ) return HRESULT is abstract;
      function BindToField(
         This : access IBinder;
         bindingAttr : BindingFlags;
         match : access SAFEARRAY;
         value : VARIANT;
         culture : access ICultureInfo'Class;
         pRetVal : access IFieldInfo_Ptr
      ) return HRESULT is abstract;
      function SelectMethod(
         This : access IBinder;
         bindingAttr : BindingFlags;
         match : access SAFEARRAY;
         types : access SAFEARRAY;
         modifiers : access SAFEARRAY;
         pRetVal : access IMethodBase_Ptr
      ) return HRESULT is abstract;
      function SelectProperty(
         This : access IBinder;
         bindingAttr : BindingFlags;
         match : access SAFEARRAY;
         returnType : access IType'Class;
         indexes : access SAFEARRAY;
         modifiers : access SAFEARRAY;
         pRetVal : access IPropertyInfo_Ptr
      ) return HRESULT is abstract;
      function ChangeType(
         This : access IBinder;
         value : VARIANT;
         type_x : access IType'Class;
         culture : access ICultureInfo'Class;
         pRetVal : access VARIANT
      ) return HRESULT is abstract;
      function ReorderArgumentArray(
         This : access IBinder;
         args : access LPSAFEARRAY;
         state : VARIANT
      ) return HRESULT is abstract;

   -----------------------------------------------------------------------------
   type IAppDomain is interface and IUnknown;
      function GetTypeInfoCount(
         This : access IAppDomain;
         pcTInfo : access Interfaces.C.unsigned_long
      ) return HRESULT is abstract;
      function GetTypeInfo(
         This : access IAppDomain;
         iTInfo : Interfaces.C.unsigned_long;
         lcid_x : Interfaces.C.unsigned_long;
         ppTInfo : Interfaces.C.Long
      ) return HRESULT is abstract;
      function GetIDsOfNames(
         This : access IAppDomain;
         riid : access GUID;
         rgszNames : Interfaces.C.Long;
         cNames : Interfaces.C.unsigned_long;
         lcid_x : Interfaces.C.unsigned_long;
         rgDispId : Interfaces.C.Long
      ) return HRESULT is abstract;
      function Invoke(
         This : access IAppDomain;
         dispIdMember : Interfaces.C.unsigned_long;
         riid : access GUID;
         lcid_x : Interfaces.C.unsigned_long;
         wFlags : Interfaces.C.Short;
         pDispParams : Interfaces.C.Long;
         pVarResult : Interfaces.C.Long;
         pExcepInfo : Interfaces.C.Long;
         puArgErr : Interfaces.C.Long
      ) return HRESULT is abstract;
      function get_ToString(
         This : access IAppDomain;
         pRetVal : access BSTR
      ) return HRESULT is abstract;
      function Equals(
         This : access IAppDomain;
         other : VARIANT;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function GetHashCode(
         This : access IAppDomain;
         pRetVal : access Interfaces.C.Long
      ) return HRESULT is abstract;
      function GetType(
         This : access IAppDomain;
         pRetVal : access IType_Ptr
      ) return HRESULT is abstract;
      function InitializeLifetimeService(
         This : access IAppDomain;
         pRetVal : access VARIANT
      ) return HRESULT is abstract;
      function GetLifetimeService(
         This : access IAppDomain;
         pRetVal : access VARIANT
      ) return HRESULT is abstract;
      function get_Evidence(
         This : access IAppDomain;
         pRetVal : access IEvidence_Ptr
      ) return HRESULT is abstract;
      function add_DomainUnload(
         This : access IAppDomain;
         value : access IEventHandler'Class
      ) return HRESULT is abstract;
      function remove_DomainUnload(
         This : access IAppDomain;
         value : access IEventHandler'Class
      ) return HRESULT is abstract;
      function add_AssemblyLoad(
         This : access IAppDomain;
         value : access IAssemblyLoadEventHandler'Class
      ) return HRESULT is abstract;
      function remove_AssemblyLoad(
         This : access IAppDomain;
         value : access IAssemblyLoadEventHandler'Class
      ) return HRESULT is abstract;
      function add_ProcessExit(
         This : access IAppDomain;
         value : access IEventHandler'Class
      ) return HRESULT is abstract;
      function remove_ProcessExit(
         This : access IAppDomain;
         value : access IEventHandler'Class
      ) return HRESULT is abstract;
      function add_TypeResolve(
         This : access IAppDomain;
         value : access IResolveEventHandler'Class
      ) return HRESULT is abstract;
      function remove_TypeResolve(
         This : access IAppDomain;
         value : access IResolveEventHandler'Class
      ) return HRESULT is abstract;
      function add_ResourceResolve(
         This : access IAppDomain;
         value : access IResolveEventHandler'Class
      ) return HRESULT is abstract;
      function remove_ResourceResolve(
         This : access IAppDomain;
         value : access IResolveEventHandler'Class
      ) return HRESULT is abstract;
      function add_AssemblyResolve(
         This : access IAppDomain;
         value : access IResolveEventHandler'Class
      ) return HRESULT is abstract;
      function remove_AssemblyResolve(
         This : access IAppDomain;
         value : access IResolveEventHandler'Class
      ) return HRESULT is abstract;
      function add_UnhandledException(
         This : access IAppDomain;
         value : access IUnhandledExceptionEventHandler'Class
      ) return HRESULT is abstract;
      function remove_UnhandledException(
         This : access IAppDomain;
         value : access IUnhandledExceptionEventHandler'Class
      ) return HRESULT is abstract;
      function DefineDynamicAssembly(
         This : access IAppDomain;
         name : access IAssemblyName'Class;
         access_x : AssemblyBuilderAccess;
         pRetVal : access IAssemblyBuilder_Ptr
      ) return HRESULT is abstract;
      function DefineDynamicAssembly_2(
         This : access IAppDomain;
         name : access IAssemblyName'Class;
         access_x : AssemblyBuilderAccess;
         dir : BSTR;
         pRetVal : access IAssemblyBuilder_Ptr
      ) return HRESULT is abstract;
      function DefineDynamicAssembly_3(
         This : access IAppDomain;
         name : access IAssemblyName'Class;
         access_x : AssemblyBuilderAccess;
         Evidence : access IEvidence'Class;
         pRetVal : access IAssemblyBuilder_Ptr
      ) return HRESULT is abstract;
      function DefineDynamicAssembly_4(
         This : access IAppDomain;
         name : access IAssemblyName'Class;
         access_x : AssemblyBuilderAccess;
         requiredPermissions : access IPermissionSet'Class;
         optionalPermissions : access IPermissionSet'Class;
         refusedPermissions : access IPermissionSet'Class;
         pRetVal : access IAssemblyBuilder_Ptr
      ) return HRESULT is abstract;
      function DefineDynamicAssembly_5(
         This : access IAppDomain;
         name : access IAssemblyName'Class;
         access_x : AssemblyBuilderAccess;
         dir : BSTR;
         Evidence : access IEvidence'Class;
         pRetVal : access IAssemblyBuilder_Ptr
      ) return HRESULT is abstract;
      function DefineDynamicAssembly_6(
         This : access IAppDomain;
         name : access IAssemblyName'Class;
         access_x : AssemblyBuilderAccess;
         dir : BSTR;
         requiredPermissions : access IPermissionSet'Class;
         optionalPermissions : access IPermissionSet'Class;
         refusedPermissions : access IPermissionSet'Class;
         pRetVal : access IAssemblyBuilder_Ptr
      ) return HRESULT is abstract;
      function DefineDynamicAssembly_7(
         This : access IAppDomain;
         name : access IAssemblyName'Class;
         access_x : AssemblyBuilderAccess;
         Evidence : access IEvidence'Class;
         requiredPermissions : access IPermissionSet'Class;
         optionalPermissions : access IPermissionSet'Class;
         refusedPermissions : access IPermissionSet'Class;
         pRetVal : access IAssemblyBuilder_Ptr
      ) return HRESULT is abstract;
      function DefineDynamicAssembly_8(
         This : access IAppDomain;
         name : access IAssemblyName'Class;
         access_x : AssemblyBuilderAccess;
         dir : BSTR;
         Evidence : access IEvidence'Class;
         requiredPermissions : access IPermissionSet'Class;
         optionalPermissions : access IPermissionSet'Class;
         refusedPermissions : access IPermissionSet'Class;
         pRetVal : access IAssemblyBuilder_Ptr
      ) return HRESULT is abstract;
      function DefineDynamicAssembly_9(
         This : access IAppDomain;
         name : access IAssemblyName'Class;
         access_x : AssemblyBuilderAccess;
         dir : BSTR;
         Evidence : access IEvidence'Class;
         requiredPermissions : access IPermissionSet'Class;
         optionalPermissions : access IPermissionSet'Class;
         refusedPermissions : access IPermissionSet'Class;
         IsSynchronized : VARIANT_BOOL;
         pRetVal : access IAssemblyBuilder_Ptr
      ) return HRESULT is abstract;
      function CreateInstance(
         This : access IAppDomain;
         AssemblyName : BSTR;
         typeName : BSTR;
         pRetVal : access IObjectHandle_Ptr
      ) return HRESULT is abstract;
      function CreateInstanceFrom(
         This : access IAppDomain;
         assemblyFile : BSTR;
         typeName : BSTR;
         pRetVal : access IObjectHandle_Ptr
      ) return HRESULT is abstract;
      function CreateInstance_2(
         This : access IAppDomain;
         AssemblyName : BSTR;
         typeName : BSTR;
         activationAttributes : access SAFEARRAY;
         pRetVal : access IObjectHandle_Ptr
      ) return HRESULT is abstract;
      function CreateInstanceFrom_2(
         This : access IAppDomain;
         assemblyFile : BSTR;
         typeName : BSTR;
         activationAttributes : access SAFEARRAY;
         pRetVal : access IObjectHandle_Ptr
      ) return HRESULT is abstract;
      function CreateInstance_3(
         This : access IAppDomain;
         AssemblyName : BSTR;
         typeName : BSTR;
         ignoreCase : VARIANT_BOOL;
         bindingAttr : BindingFlags;
         Binder : access IBinder'Class;
         args : access SAFEARRAY;
         culture : access ICultureInfo'Class;
         activationAttributes : access SAFEARRAY;
         securityAttributes : access IEvidence'Class;
         pRetVal : access IObjectHandle_Ptr
      ) return HRESULT is abstract;
      function CreateInstanceFrom_3(
         This : access IAppDomain;
         assemblyFile : BSTR;
         typeName : BSTR;
         ignoreCase : VARIANT_BOOL;
         bindingAttr : BindingFlags;
         Binder : access IBinder'Class;
         args : access SAFEARRAY;
         culture : access ICultureInfo'Class;
         activationAttributes : access SAFEARRAY;
         securityAttributes : access IEvidence'Class;
         pRetVal : access IObjectHandle_Ptr
      ) return HRESULT is abstract;
      function Load(
         This : access IAppDomain;
         assemblyRef : access IAssemblyName'Class;
         pRetVal : access IAssembly_Ptr
      ) return HRESULT is abstract;
      function Load_2(
         This : access IAppDomain;
         assemblyString : BSTR;
         pRetVal : access IAssembly_Ptr
      ) return HRESULT is abstract;
      function Load_3(
         This : access IAppDomain;
         rawAssembly : access SAFEARRAY;
         pRetVal : access IAssembly_Ptr
      ) return HRESULT is abstract;
      function Load_4(
         This : access IAppDomain;
         rawAssembly : access SAFEARRAY;
         rawSymbolStore : access SAFEARRAY;
         pRetVal : access IAssembly_Ptr
      ) return HRESULT is abstract;
      function Load_5(
         This : access IAppDomain;
         rawAssembly : access SAFEARRAY;
         rawSymbolStore : access SAFEARRAY;
         securityEvidence : access IEvidence'Class;
         pRetVal : access IAssembly_Ptr
      ) return HRESULT is abstract;
      function Load_6(
         This : access IAppDomain;
         assemblyRef : access IAssemblyName'Class;
         assemblySecurity : access IEvidence'Class;
         pRetVal : access IAssembly_Ptr
      ) return HRESULT is abstract;
      function Load_7(
         This : access IAppDomain;
         assemblyString : BSTR;
         assemblySecurity : access IEvidence'Class;
         pRetVal : access IAssembly_Ptr
      ) return HRESULT is abstract;
      function ExecuteAssembly(
         This : access IAppDomain;
         assemblyFile : BSTR;
         assemblySecurity : access IEvidence'Class;
         pRetVal : access Interfaces.C.Long
      ) return HRESULT is abstract;
      function ExecuteAssembly_2(
         This : access IAppDomain;
         assemblyFile : BSTR;
         pRetVal : access Interfaces.C.Long
      ) return HRESULT is abstract;
      function ExecuteAssembly_3(
         This : access IAppDomain;
         assemblyFile : BSTR;
         assemblySecurity : access IEvidence'Class;
         args : access SAFEARRAY;
         pRetVal : access Interfaces.C.Long
      ) return HRESULT is abstract;
      function get_FriendlyName(
         This : access IAppDomain;
         pRetVal : access BSTR
      ) return HRESULT is abstract;
      function get_BaseDirectory(
         This : access IAppDomain;
         pRetVal : access BSTR
      ) return HRESULT is abstract;
      function get_RelativeSearchPath(
         This : access IAppDomain;
         pRetVal : access BSTR
      ) return HRESULT is abstract;
      function get_ShadowCopyFiles(
         This : access IAppDomain;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function GetAssemblies(
         This : access IAppDomain;
         pRetVal : access LPSAFEARRAY
      ) return HRESULT is abstract;
      function AppendPrivatePath(
         This : access IAppDomain;
         Path : BSTR
      ) return HRESULT is abstract;
      function ClearPrivatePath(This : access IAppDomain) return HRESULT is abstract;
      function SetShadowCopyPath(
         This : access IAppDomain;
         s : BSTR
      ) return HRESULT is abstract;
      function ClearShadowCopyPath(This : access IAppDomain) return HRESULT is abstract;
      function SetCachePath(
         This : access IAppDomain;
         s : BSTR
      ) return HRESULT is abstract;
      function SetData(
         This : access IAppDomain;
         name : BSTR;
         data : VARIANT
      ) return HRESULT is abstract;
      function GetData(
         This : access IAppDomain;
         name : BSTR;
         pRetVal : access VARIANT
      ) return HRESULT is abstract;
      function SetAppDomainPolicy(
         This : access IAppDomain;
         domainPolicy : access IPolicyLevel'Class
      ) return HRESULT is abstract;
      function SetThreadPrincipal(
         This : access IAppDomain;
         principal : access IPrincipal'Class
      ) return HRESULT is abstract;
      function SetPrincipalPolicy(
         This : access IAppDomain;
         policy : PrincipalPolicy
      ) return HRESULT is abstract;
      function DoCallBack(
         This : access IAppDomain;
         theDelegate : access ICrossAppDomainDelegate'Class
      ) return HRESULT is abstract;
      function get_DynamicDirectory(
         This : access IAppDomain;
         pRetVal : access BSTR
      ) return HRESULT is abstract;
   type IAppDomain_Ptr is access all IAppDomain'Class;

   -----------------------------------------------------------------------------
   type IType is interface and IUnknown;
      function GetTypeInfoCount(
         This : access IType;
         pcTInfo : access Interfaces.C.unsigned_long
      ) return HRESULT is abstract;
      function GetTypeInfo(
         This : access IType;
         iTInfo : Interfaces.C.unsigned_long;
         lcid_x : Interfaces.C.unsigned_long;
         ppTInfo : Interfaces.C.Long
      ) return HRESULT is abstract;
      function GetIDsOfNames(
         This : access IType;
         riid : access GUID;
         rgszNames : Interfaces.C.Long;
         cNames : Interfaces.C.unsigned_long;
         lcid_x : Interfaces.C.unsigned_long;
         rgDispId : Interfaces.C.Long
      ) return HRESULT is abstract;
      function Invoke(
         This : access IType;
         dispIdMember : Interfaces.C.unsigned_long;
         riid : access GUID;
         lcid_x : Interfaces.C.unsigned_long;
         wFlags : Interfaces.C.Short;
         pDispParams : Interfaces.C.Long;
         pVarResult : Interfaces.C.Long;
         pExcepInfo : Interfaces.C.Long;
         puArgErr : Interfaces.C.Long
      ) return HRESULT is abstract;
      function get_ToString(
         This : access IType;
         pRetVal : access BSTR
      ) return HRESULT is abstract;
      function Equals(
         This : access IType;
         other : VARIANT;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function GetHashCode(
         This : access IType;
         pRetVal : access Interfaces.C.Long
      ) return HRESULT is abstract;
      function GetType(
         This : access IType;
         pRetVal : access IType_Ptr
      ) return HRESULT is abstract;
      function get_MemberType(
         This : access IType;
         pRetVal : access MemberTypes
      ) return HRESULT is abstract;
      function get_name(
         This : access IType;
         pRetVal : access BSTR
      ) return HRESULT is abstract;
      function get_DeclaringType(
         This : access IType;
         pRetVal : access IType_Ptr
      ) return HRESULT is abstract;
      function get_ReflectedType(
         This : access IType;
         pRetVal : access IType_Ptr
      ) return HRESULT is abstract;
      function GetCustomAttributes(
         This : access IType;
         attributeType : access IType;
         inherit : VARIANT_BOOL;
         pRetVal : access LPSAFEARRAY
      ) return HRESULT is abstract;
      function GetCustomAttributes_2(
         This : access IType;
         inherit : VARIANT_BOOL;
         pRetVal : access LPSAFEARRAY
      ) return HRESULT is abstract;
      function IsDefined(
         This : access IType;
         attributeType : access IType;
         inherit : VARIANT_BOOL;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function get_Guid(
         This : access IType;
         pRetVal : access GUID
      ) return HRESULT is abstract;
      function get_Module(
         This : access IType;
         pRetVal : access IModule_Ptr
      ) return HRESULT is abstract;
      function get_Assembly(
         This : access IType;
         pRetVal : access IAssembly_Ptr
      ) return HRESULT is abstract;
      function get_TypeHandle(
         This : access IType;
         pRetVal : access RuntimeTypeHandle
      ) return HRESULT is abstract;
      function get_FullName(
         This : access IType;
         pRetVal : access BSTR
      ) return HRESULT is abstract;
      function get_Namespace(
         This : access IType;
         pRetVal : access BSTR
      ) return HRESULT is abstract;
      function get_AssemblyQualifiedName(
         This : access IType;
         pRetVal : access BSTR
      ) return HRESULT is abstract;
      function GetArrayRank(
         This : access IType;
         pRetVal : access Interfaces.C.Long
      ) return HRESULT is abstract;
      function get_BaseType(
         This : access IType;
         pRetVal : access IType_Ptr
      ) return HRESULT is abstract;
      function GetConstructors(
         This : access IType;
         bindingAttr : BindingFlags;
         pRetVal : access LPSAFEARRAY
      ) return HRESULT is abstract;
      function GetInterface(
         This : access IType;
         name : BSTR;
         ignoreCase : VARIANT_BOOL;
         pRetVal : access IType_Ptr
      ) return HRESULT is abstract;
      function GetInterfaces(
         This : access IType;
         pRetVal : access LPSAFEARRAY
      ) return HRESULT is abstract;
      function FindInterfaces(
         This : access IType;
         filter : access ITypeFilter'Class;
         filterCriteria : VARIANT;
         pRetVal : access LPSAFEARRAY
      ) return HRESULT is abstract;
      function GetEvent(
         This : access IType;
         name : BSTR;
         bindingAttr : BindingFlags;
         pRetVal : access IEventInfo_Ptr
      ) return HRESULT is abstract;
      function GetEvents(
         This : access IType;
         pRetVal : access LPSAFEARRAY
      ) return HRESULT is abstract;
      function GetEvents_2(
         This : access IType;
         bindingAttr : BindingFlags;
         pRetVal : access LPSAFEARRAY
      ) return HRESULT is abstract;
      function GetNestedTypes(
         This : access IType;
         bindingAttr : BindingFlags;
         pRetVal : access LPSAFEARRAY
      ) return HRESULT is abstract;
      function GetNestedType(
         This : access IType;
         name : BSTR;
         bindingAttr : BindingFlags;
         pRetVal : access IType_Ptr
      ) return HRESULT is abstract;
      function GetMember(
         This : access IType;
         name : BSTR;
         type_x : MemberTypes;
         bindingAttr : BindingFlags;
         pRetVal : access LPSAFEARRAY
      ) return HRESULT is abstract;
      function GetDefaultMembers(
         This : access IType;
         pRetVal : access LPSAFEARRAY
      ) return HRESULT is abstract;
      function FindMembers(
         This : access IType;
         MemberType : MemberTypes;
         bindingAttr : BindingFlags;
         filter : access IMemberFilter'Class;
         filterCriteria : VARIANT;
         pRetVal : access LPSAFEARRAY
      ) return HRESULT is abstract;
      function GetElementType(
         This : access IType;
         pRetVal : access IType_Ptr
      ) return HRESULT is abstract;
      function IsSubclassOf(
         This : access IType;
         c : access IType;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function IsInstanceOfType(
         This : access IType;
         o : VARIANT;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function IsAssignableFrom(
         This : access IType;
         c : access IType;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function GetInterfaceMap(
         This : access IType;
         interfaceType : access IType;
         pRetVal : access InterfaceMapping
      ) return HRESULT is abstract;
      function GetMethod(
         This : access IType;
         name : BSTR;
         bindingAttr : BindingFlags;
         Binder : access IBinder'Class;
         types : access SAFEARRAY;
         modifiers : access SAFEARRAY;
         pRetVal : access IMethodInfo_Ptr
      ) return HRESULT is abstract;
      function GetMethod_2(
         This : access IType;
         name : BSTR;
         bindingAttr : BindingFlags;
         pRetVal : access IMethodInfo_Ptr
      ) return HRESULT is abstract;
      function GetMethods(
         This : access IType;
         bindingAttr : BindingFlags;
         pRetVal : access LPSAFEARRAY
      ) return HRESULT is abstract;
      function GetField(
         This : access IType;
         name : BSTR;
         bindingAttr : BindingFlags;
         pRetVal : access IFieldInfo_Ptr
      ) return HRESULT is abstract;
      function GetFields(
         This : access IType;
         bindingAttr : BindingFlags;
         pRetVal : access LPSAFEARRAY
      ) return HRESULT is abstract;
      function GetProperty(
         This : access IType;
         name : BSTR;
         bindingAttr : BindingFlags;
         pRetVal : access IPropertyInfo_Ptr
      ) return HRESULT is abstract;
      function GetProperty_2(
         This : access IType;
         name : BSTR;
         bindingAttr : BindingFlags;
         Binder : access IBinder'Class;
         returnType : access IType'Class;
         types : access SAFEARRAY;
         modifiers : access SAFEARRAY;
         pRetVal : access IPropertyInfo_Ptr
      ) return HRESULT is abstract;
      function GetProperties(
         This : access IType;
         bindingAttr : BindingFlags;
         pRetVal : access LPSAFEARRAY
      ) return HRESULT is abstract;
      function GetMember_2(
         This : access IType;
         name : BSTR;
         bindingAttr : BindingFlags;
         pRetVal : access LPSAFEARRAY
      ) return HRESULT is abstract;
      function GetMembers(
         This : access IType;
         bindingAttr : BindingFlags;
         pRetVal : access LPSAFEARRAY
      ) return HRESULT is abstract;
      function InvokeMember(
         This : access IType;
         name : BSTR;
         invokeAttr : BindingFlags;
         Binder : access IBinder'Class;
         Target : VARIANT;
         args : access SAFEARRAY;
         modifiers : access SAFEARRAY;
         culture : access ICultureInfo'Class;
         namedParameters : access SAFEARRAY;
         pRetVal : access VARIANT
      ) return HRESULT is abstract;
      function get_UnderlyingSystemType(
         This : access IType;
         pRetVal : access IType_Ptr
      ) return HRESULT is abstract;
      function InvokeMember_2(
         This : access IType;
         name : BSTR;
         invokeAttr : BindingFlags;
         Binder : access IBinder'Class;
         Target : VARIANT;
         args : access SAFEARRAY;
         culture : access ICultureInfo'Class;
         pRetVal : access VARIANT
      ) return HRESULT is abstract;
      function InvokeMember_3(
         This : access IType;
         name : BSTR;
         invokeAttr : BindingFlags;
         Binder : access IBinder'Class;
         Target : VARIANT;
         args : access SAFEARRAY;
         pRetVal : access VARIANT
      ) return HRESULT is abstract;
      function GetConstructor(
         This : access IType;
         bindingAttr : BindingFlags;
         Binder : access IBinder'Class;
         callConvention : CallingConventions;
         types : access SAFEARRAY;
         modifiers : access SAFEARRAY;
         pRetVal : access IConstructorInfo_Ptr
      ) return HRESULT is abstract;
      function GetConstructor_2(
         This : access IType;
         bindingAttr : BindingFlags;
         Binder : access IBinder'Class;
         types : access SAFEARRAY;
         modifiers : access SAFEARRAY;
         pRetVal : access IConstructorInfo_Ptr
      ) return HRESULT is abstract;
      function GetConstructor_3(
         This : access IType;
         types : access SAFEARRAY;
         pRetVal : access IConstructorInfo_Ptr
      ) return HRESULT is abstract;
      function GetConstructors_2(
         This : access IType;
         pRetVal : access LPSAFEARRAY
      ) return HRESULT is abstract;
      function get_TypeInitializer(
         This : access IType;
         pRetVal : access IConstructorInfo_Ptr
      ) return HRESULT is abstract;
      function GetMethod_3(
         This : access IType;
         name : BSTR;
         bindingAttr : BindingFlags;
         Binder : access IBinder'Class;
         callConvention : CallingConventions;
         types : access SAFEARRAY;
         modifiers : access SAFEARRAY;
         pRetVal : access IMethodInfo_Ptr
      ) return HRESULT is abstract;
      function GetMethod_4(
         This : access IType;
         name : BSTR;
         types : access SAFEARRAY;
         modifiers : access SAFEARRAY;
         pRetVal : access IMethodInfo_Ptr
      ) return HRESULT is abstract;
      function GetMethod_5(
         This : access IType;
         name : BSTR;
         types : access SAFEARRAY;
         pRetVal : access IMethodInfo_Ptr
      ) return HRESULT is abstract;
      function GetMethod_6(
         This : access IType;
         name : BSTR;
         pRetVal : access IMethodInfo_Ptr
      ) return HRESULT is abstract;
      function GetMethods_2(
         This : access IType;
         pRetVal : access LPSAFEARRAY
      ) return HRESULT is abstract;
      function GetField_2(
         This : access IType;
         name : BSTR;
         pRetVal : access IFieldInfo_Ptr
      ) return HRESULT is abstract;
      function GetFields_2(
         This : access IType;
         pRetVal : access LPSAFEARRAY
      ) return HRESULT is abstract;
      function GetInterface_2(
         This : access IType;
         name : BSTR;
         pRetVal : access IType_Ptr
      ) return HRESULT is abstract;
      function GetEvent_2(
         This : access IType;
         name : BSTR;
         pRetVal : access IEventInfo_Ptr
      ) return HRESULT is abstract;
      function GetProperty_3(
         This : access IType;
         name : BSTR;
         returnType : access IType;
         types : access SAFEARRAY;
         modifiers : access SAFEARRAY;
         pRetVal : access IPropertyInfo_Ptr
      ) return HRESULT is abstract;
      function GetProperty_4(
         This : access IType;
         name : BSTR;
         returnType : access IType;
         types : access SAFEARRAY;
         pRetVal : access IPropertyInfo_Ptr
      ) return HRESULT is abstract;
      function GetProperty_5(
         This : access IType;
         name : BSTR;
         types : access SAFEARRAY;
         pRetVal : access IPropertyInfo_Ptr
      ) return HRESULT is abstract;
      function GetProperty_6(
         This : access IType;
         name : BSTR;
         returnType : access IType;
         pRetVal : access IPropertyInfo_Ptr
      ) return HRESULT is abstract;
      function GetProperty_7(
         This : access IType;
         name : BSTR;
         pRetVal : access IPropertyInfo_Ptr
      ) return HRESULT is abstract;
      function GetProperties_2(
         This : access IType;
         pRetVal : access LPSAFEARRAY
      ) return HRESULT is abstract;
      function GetNestedTypes_2(
         This : access IType;
         pRetVal : access LPSAFEARRAY
      ) return HRESULT is abstract;
      function GetNestedType_2(
         This : access IType;
         name : BSTR;
         pRetVal : access IType_Ptr
      ) return HRESULT is abstract;
      function GetMember_3(
         This : access IType;
         name : BSTR;
         pRetVal : access LPSAFEARRAY
      ) return HRESULT is abstract;
      function GetMembers_2(
         This : access IType;
         pRetVal : access LPSAFEARRAY
      ) return HRESULT is abstract;
      function get_Attributes(
         This : access IType;
         pRetVal : access TypeAttributes
      ) return HRESULT is abstract;
      function get_IsNotPublic(
         This : access IType;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function get_IsPublic(
         This : access IType;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function get_IsNestedPublic(
         This : access IType;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function get_IsNestedPrivate(
         This : access IType;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function get_IsNestedFamily(
         This : access IType;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function get_IsNestedAssembly(
         This : access IType;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function get_IsNestedFamANDAssem(
         This : access IType;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function get_IsNestedFamORAssem(
         This : access IType;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function get_IsAutoLayout(
         This : access IType;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function get_IsLayoutSequential(
         This : access IType;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function get_IsExplicitLayout(
         This : access IType;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function get_IsClass(
         This : access IType;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function get_IsInterface(
         This : access IType;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function get_IsValueType(
         This : access IType;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function get_IsAbstract(
         This : access IType;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function get_IsSealed(
         This : access IType;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function get_IsEnum(
         This : access IType;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function get_IsSpecialName(
         This : access IType;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function get_IsImport(
         This : access IType;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function get_IsSerializable(
         This : access IType;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function get_IsAnsiClass(
         This : access IType;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function get_IsUnicodeClass(
         This : access IType;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function get_IsAutoClass(
         This : access IType;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function get_IsArray(
         This : access IType;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function get_IsByRef(
         This : access IType;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function get_IsPointer(
         This : access IType;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function get_IsPrimitive(
         This : access IType;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function get_IsCOMObject(
         This : access IType;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function get_HasElementType(
         This : access IType;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function get_IsContextful(
         This : access IType;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function get_IsMarshalByRef(
         This : access IType;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function Equals_2(
         This : access IType;
         o : access IType;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;

end Win32.Extensions.Mscorlib;