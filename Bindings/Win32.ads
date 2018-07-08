package Win32 is
   
   type Int8  is range -(2**(8  - Integer'(1))) .. +(2**(8  - Integer'(1))) -1;
   type Int16 is range -(2**(16 - Integer'(1))) .. +(2**(16 - Integer'(1))) -1;
   type Int32 is range -(2**(32 - Integer'(1))) .. +(2**(32 - Integer'(1))) -1;
   type Int64 is range -(2**(64 - Integer'(1))) .. +(2**(64 - Integer'(1))) -1;
   
   type Int8_Ptr  is access Int8;
   type Int16_Ptr is access Int16;
   type Int32_Ptr is access Int32;
   type Int64_Ptr is access Int64;
   
   type UInt8  is mod 2 ** 8;
   type UInt16 is mod 2 ** 16;
   type UInt32 is mod 2 ** 32;
   type UInt64 is mod 2 ** 64;
   
   type UInt8_Ptr  is access UInt8;
   type UInt16_Ptr is access UInt16;
   type UInt32_Ptr is access UInt32;
   type UInt64_Ptr is access UInt64;
   
   type Void is null record;
   
   -- C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\VC\Tools\MSVC\14.14.26428\include\vadefs.h
   subtype uintptr_t is UInt32;
   type va_list is access all Character;
   -- C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\VC\Tools\MSVC\14.14.26428\include\vcruntime.h
   subtype size_t is UInt32;
   subtype ptrdiff_t is Int32;
   subtype intptr_t is Int32;
   subtype vcrt_bool is Boolean;
   -- C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\VC\Tools\MSVC\14.14.26428\include\excpt.h
   type EXCEPTION_DISPOSITION is (
      ExceptionContinueExecution,
      ExceptionContinueSearch,
      ExceptionNestedException,
      ExceptionCollidedUnwind
   );
   for EXCEPTION_DISPOSITION use (
      ExceptionContinueExecution => 0,
      ExceptionContinueSearch => 1,
      ExceptionNestedException => 2,
      ExceptionCollidedUnwind => 3
   );
   for EXCEPTION_DISPOSITION'Size use 32;
   
   -- type EXCEPTION_RECORD; -- forward declaration
   -- type CONTEXT; -- forward declaration
   -- C:\Program Files (x86)\Windows Kits\10\include\10.0.16299.0\shared\windef.h
   -- type HWND is access all HWND_x;
   -- type HHOOK is access all HHOOK_x;
   type HGDIOBJ is access all Void;
   -- type HACCEL is access all HACCEL_x;
   -- type HBITMAP is access all HBITMAP_x;
   -- type HBRUSH is access all HBRUSH_x;
   -- type HCOLORSPACE is access all HCOLORSPACE_x;
   -- type HDC is access all HDC_x;
   -- type HGLRC is access all HGLRC_x;
   -- type HDESK is access all HDESK_x;
   -- type HENHMETAFILE is access all HENHMETAFILE_x;
   -- type HFONT is access all HFONT_x;
   -- type HICON is access all HICON_x;
   -- type HMENU is access all HMENU_x;
   -- type HPALETTE is access all HPALETTE_x;
   -- type HPEN is access all HPEN_x;
   -- type HWINEVENTHOOK is access all HWINEVENTHOOK_x;
   -- type HMONITOR is access all HMONITOR_x;
   -- type HUMPD is access all HUMPD_x;
   -- type LPCOLORREF is access all DWORD;
   -- type PRECT is access all tagRECT;
   -- type NPRECT is access all tagRECT;
   -- type LPRECT is access all tagRECT;
   -- type LPCRECT is access all RECT;
   -- type LPRECTL is access all RECTL;
   -- type PRECTL is access all RECTL;
   -- type LPCRECTL is access all RECTL;
   -- type PPOINT is access all tagPOINT;
   -- type NPPOINT is access all tagPOINT;
   -- type LPPOINT is access all tagPOINT;
   -- type PPOINTL is access all POINTL;
   -- type PSIZE is access all tagSIZE;
   -- type LPSIZE is access all tagSIZE;
   -- type PSIZEL is access all SIZE;
   -- type LPSIZEL is access all SIZE;
   -- type PPOINTS is access all tagPOINTS;
   -- type LPPOINTS is access all tagPOINTS;
   -- type DPI_AWARENESS_CONTEXT is access all DPI_AWARENESS_CONTEXT_x;
   type DPI_AWARENESS is (
      DPI_AWARENESS_INVALID,
      DPI_AWARENESS_UNAWARE,
      DPI_AWARENESS_SYSTEM_AWARE,
      DPI_AWARENESS_PER_MONITOR_AWARE
   );
   for DPI_AWARENESS use (
      DPI_AWARENESS_INVALID => -1,
      DPI_AWARENESS_UNAWARE => 0,
      DPI_AWARENESS_SYSTEM_AWARE => 1,
      DPI_AWARENESS_PER_MONITOR_AWARE => 2
   );
   for DPI_AWARENESS'Size use 32;
   
   -- C:\Program Files (x86)\Windows Kits\10\include\10.0.16299.0\shared\minwindef.h
   subtype ULONG is UInt32;
   -- type PULONG is access all ULONG;
   subtype USHORT is UInt16;
   -- type PUSHORT is access all USHORT;
   subtype UCHAR is UInt8;
   -- type PUCHAR is access all UCHAR;
   type PSZ is access all Character;
   subtype DWORD is UInt32;
   subtype BOOL is Int32;
   subtype BYTE is UInt8;
   subtype WORD is UInt16;
   subtype FLOAT is Standard.Float;
   -- type PFLOAT is access all FLOAT;
   -- type PBOOL is access all BOOL;
   -- type LPBOOL is access all BOOL;
   -- type PBYTE is access all BYTE;
   -- type LPBYTE is access all BYTE;
   type PINT is access all Int32;
   type LPINT is access all Int32;
   -- type PWORD is access all WORD;
   -- type LPWORD is access all WORD;
   type LPLONG is access all Int32;
   -- type PDWORD is access all DWORD;
   -- type LPDWORD is access all DWORD;
   type LPVOID is access all Void;
   type LPCVOID is access all Void;
   subtype INT is Int32;
   subtype UINT is UInt32;
   type PUINT is access all UInt32;
   -- type SPHANDLE is access all HANDLE;
   -- type LPHANDLE is access all HANDLE;
   -- type HKEY is access all HKEY_x;
   -- type PHKEY is access all HKEY;
   -- type HMETAFILE is access all HMETAFILE_x;
   -- type HINSTANCE is access all HINSTANCE_x;
   -- type HRGN is access all HRGN_x;
   -- type HRSRC is access all HRSRC_x;
   -- type HSPRITE is access all HSPRITE_x;
   -- type HLSURF is access all HLSURF_x;
   -- type HSTR is access all HSTR_x;
   -- type HTASK is access all HTASK_x;
   -- type HWINSTA is access all HWINSTA_x;
   -- type HKL is access all HKL_x;
   subtype HFILE is Int32;
   -- type PFILETIME is access all FILETIME;
   -- type LPFILETIME is access all FILETIME;
   -- C:\Program Files (x86)\Windows Kits\10\include\10.0.16299.0\um\winnt.h
   subtype POINTER_64_INT is UInt32;
   -- type LPGUID is access all GUID;
   -- type LPCGUID is access all GUID;
   -- type LPIID is access all IID;
   -- type LPCLSID is access all CLSID;
   -- type LPFMTID is access all FMTID;
   type PVOID is access all Void;
   subtype CHAR is Character;
   subtype SHORT is Int16;
   subtype LONG is Int32;
   subtype WCHAR is Wide_Character;
   -- type PWCH is access all WCHAR;
   -- type PWCHAR is access all WCHAR;
   -- type LPWCH is access all WCHAR;
   -- type PCWCH is access all WCHAR;
   -- type LPCWCH is access all WCHAR;
   -- type PWSTR is access all WCHAR;
   -- type LPWSTR is access all WCHAR;
   -- type NWPSTR is access all WCHAR;
   -- type PZPWSTR is access all PWSTR;
   -- type PCZPWSTR is access all PWSTR;
   -- type PUWSTR is access all WCHAR;
   -- type LPUWSTR is access all WCHAR;
   -- type LPCWSTR is access all WCHAR;
   -- type PCWSTR is access all WCHAR;
   -- type PZPCWSTR is access all PCWSTR;
   -- type PCZPCWSTR is access all PCWSTR;
   -- type LPCUWSTR is access all WCHAR;
   -- type PCUWSTR is access all WCHAR;
   -- type PZZWSTR is access all WCHAR;
   -- type PCZZWSTR is access all WCHAR;
   -- type PUZZWSTR is access all WCHAR;
   -- type PCUZZWSTR is access all WCHAR;
   -- type PNZWCH is access all WCHAR;
   -- type PCNZWCH is access all WCHAR;
   -- type PUNZWCH is access all WCHAR;
   -- type PCUNZWCH is access all WCHAR;
   -- type PCWCHAR is access all WCHAR;
   -- type LPCWCHAR is access all WCHAR;
   -- type LPCUWCHAR is access all WCHAR;
   -- type PCUWCHAR is access all WCHAR;
   subtype UCSCHAR is UInt32;
   -- type PUCSCHAR is access all UCSCHAR;
   -- type PCUCSCHAR is access all UCSCHAR;
   -- type PUCSSTR is access all UCSCHAR;
   -- type PUUCSSTR is access all UCSCHAR;
   -- type PCUCSSTR is access all UCSCHAR;
   -- type PCUUCSSTR is access all UCSCHAR;
   -- type PUUCSCHAR is access all UCSCHAR;
   -- type PCUUCSCHAR is access all UCSCHAR;
   -- type PCH is access all CHAR;
   -- type LPCH is access all CHAR;
   -- type PCHAR is access all CHAR;
   -- type PCCH is access all CHAR;
   -- type LPCCH is access all CHAR;
   -- type PSTR is access all CHAR;
   -- type LPSTR is access all CHAR;
   -- type NPSTR is access all CHAR;
   -- type PZPSTR is access all PSTR;
   -- type PCZPSTR is access all PSTR;
   -- type PCSTR is access all CHAR;
   -- type LPCSTR is access all CHAR;
   -- type PZPCSTR is access all PCSTR;
   -- type PCZPCSTR is access all PCSTR;
   -- type PZZSTR is access all CHAR;
   -- type PCZZSTR is access all CHAR;
   -- type PNZCH is access all CHAR;
   -- type PCNZCH is access all CHAR;
   subtype TCHAR is Character;
   type PTCHAR is access all Character;
   subtype TBYTE is UInt8;
   type PTBYTE is access all UInt8;
   -- type PSHORT is access all SHORT;
   -- type PLONG is access all LONG;
   -- type PPROCESSOR_NUMBER is access all PROCESSOR_NUMBER;
   -- type PGROUP_AFFINITY is access all GROUP_AFFINITY;
   type HANDLE is access all Void;
   -- type PHANDLE is access all HANDLE;
   subtype HRESULT is Int32;
   subtype CCHAR is Character;
   type COMPARTMENT_ID is (
      UNSPECIFIED_COMPARTMENT_ID,
      DEFAULT_COMPARTMENT_ID
   );
   for COMPARTMENT_ID use (
      UNSPECIFIED_COMPARTMENT_ID => 0,
      DEFAULT_COMPARTMENT_ID => 1
   );
   for COMPARTMENT_ID'Size use 32;
   
   -- type PCOMPARTMENT_ID is access all COMPARTMENT_ID;
   -- type PFLOAT128 is access all FLOAT128;
   subtype LONGLONG is Int64;
   subtype ULONGLONG is UInt64;
   -- type PLONGLONG is access all LONGLONG;
   -- type PULONGLONG is access all ULONGLONG;
   -- type PLARGE_INTEGER is access all LARGE_INTEGER;
   -- type PULARGE_INTEGER is access all ULARGE_INTEGER;
   -- type PRTL_REFERENCE_COUNT is access all LONG_PTR;
   -- type PRTL_REFERENCE_COUNT32 is access all LONG;
   -- type PLUID is access all LUID;
   -- type PDWORDLONG is access all DWORDLONG;
   -- type PBOOLEAN is access all BOOLEAN;
   -- type PRLIST_ENTRY is access all LIST_ENTRY;
   -- type PLIST_ENTRY is access all LIST_ENTRY;
   -- type PSINGLE_LIST_ENTRY is access all SINGLE_LIST_ENTRY;
   -- type PLIST_ENTRY32 is access all LIST_ENTRY32;
   -- type PLIST_ENTRY64 is access all LIST_ENTRY64;
   -- type PEXCEPTION_ROUTINE is access all EXCEPTION_ROUTINE;
   -- type PKSPIN_LOCK is access all KSPIN_LOCK;
   -- type PM128A is access all M128A;
   -- type PXSAVE_FORMAT is access all XSAVE_FORMAT;
   -- type PXSAVE_AREA_HEADER is access all XSAVE_AREA_HEADER;
   -- type PXSAVE_AREA is access all XSAVE_AREA;
   -- type PXSTATE_CONTEXT is access all XSTATE_CONTEXT;
   -- type PSCOPE_TABLE_AMD64 is access all SCOPE_TABLE_AMD64;
   -- type PSCOPE_TABLE_ARM is access all SCOPE_TABLE_ARM;
   -- type PSCOPE_TABLE_ARM64 is access all SCOPE_TABLE_ARM64;
   -- type PKNONVOLATILE_CONTEXT_POINTERS_ARM64 is access all KNONVOLATILE_CONTEXT_POINTERS_ARM64;
   -- type PFLOATING_SAVE_AREA is access all FLOATING_SAVE_AREA;
   -- type PCONTEXT is access all CONTEXT;
   -- type PLDT_ENTRY is access all LDT_ENTRY;
   -- type PWOW64_FLOATING_SAVE_AREA is access all WOW64_FLOATING_SAVE_AREA;
   -- type PWOW64_CONTEXT is access all WOW64_CONTEXT;
   -- type PWOW64_LDT_ENTRY is access all WOW64_LDT_ENTRY;
   -- type PWOW64_DESCRIPTOR_TABLE_ENTRY is access all WOW64_DESCRIPTOR_TABLE_ENTRY;
   -- type PEXCEPTION_RECORD is access all EXCEPTION_RECORD;
   -- type PEXCEPTION_RECORD32 is access all EXCEPTION_RECORD32;
   -- type PEXCEPTION_RECORD64 is access all EXCEPTION_RECORD64;
   -- type PEXCEPTION_POINTERS is access all EXCEPTION_POINTERS;
   -- type PACCESS_MASK is access all ACCESS_MASK;
   -- type PGENERIC_MAPPING is access all GENERIC_MAPPING;
   -- type PLUID_AND_ATTRIBUTES is access all LUID_AND_ATTRIBUTES;
   -- type PLUID_AND_ATTRIBUTES_ARRAY is access all LUID_AND_ATTRIBUTES_ARRAY;
   -- type PSID_IDENTIFIER_AUTHORITY is access all SID_IDENTIFIER_AUTHORITY;
   -- type PISID is access all SID;
   -- type PSE_SID is access all SE_SID;
   -- type PSID_NAME_USE is access all SID_NAME_USE;
   type SID_NAME_USE is (
      SidTypeUser,
      SidTypeGroup,
      SidTypeDomain,
      SidTypeAlias,
      SidTypeWellKnownGroup,
      SidTypeDeletedAccount,
      SidTypeInvalid,
      SidTypeUnknown,
      SidTypeComputer,
      SidTypeLabel,
      SidTypeLogonSession
   );
   for SID_NAME_USE use (
      SidTypeUser => 1,
      SidTypeGroup => 2,
      SidTypeDomain => 3,
      SidTypeAlias => 4,
      SidTypeWellKnownGroup => 5,
      SidTypeDeletedAccount => 6,
      SidTypeInvalid => 7,
      SidTypeUnknown => 8,
      SidTypeComputer => 9,
      SidTypeLabel => 10,
      SidTypeLogonSession => 11
   );
   for SID_NAME_USE'Size use 32;
   
   -- type PSID_AND_ATTRIBUTES is access all SID_AND_ATTRIBUTES;
   -- type PSID_AND_ATTRIBUTES_ARRAY is access all SID_AND_ATTRIBUTES_ARRAY;
   -- type PSID_HASH_ENTRY is access all ULONG_PTR;
   -- type PSID_AND_ATTRIBUTES_HASH is access all SID_AND_ATTRIBUTES_HASH;
   type WELL_KNOWN_SID_TYPE is (
      WinNullSid,
      WinWorldSid,
      WinLocalSid,
      WinCreatorOwnerSid,
      WinCreatorGroupSid,
      WinCreatorOwnerServerSid,
      WinCreatorGroupServerSid,
      WinNtAuthoritySid,
      WinDialupSid,
      WinNetworkSid,
      WinBatchSid,
      WinInteractiveSid,
      WinServiceSid,
      WinAnonymousSid,
      WinProxySid,
      WinEnterpriseControllersSid,
      WinSelfSid,
      WinAuthenticatedUserSid,
      WinRestrictedCodeSid,
      WinTerminalServerSid,
      WinRemoteLogonIdSid,
      WinLogonIdsSid,
      WinLocalSystemSid,
      WinLocalServiceSid,
      WinNetworkServiceSid,
      WinBuiltinDomainSid,
      WinBuiltinAdministratorsSid,
      WinBuiltinUsersSid,
      WinBuiltinGuestsSid,
      WinBuiltinPowerUsersSid,
      WinBuiltinAccountOperatorsSid,
      WinBuiltinSystemOperatorsSid,
      WinBuiltinPrintOperatorsSid,
      WinBuiltinBackupOperatorsSid,
      WinBuiltinReplicatorSid,
      WinBuiltinPreWindows2000CompatibleAccessSid,
      WinBuiltinRemoteDesktopUsersSid,
      WinBuiltinNetworkConfigurationOperatorsSid,
      WinAccountAdministratorSid,
      WinAccountGuestSid,
      WinAccountKrbtgtSid,
      WinAccountDomainAdminsSid,
      WinAccountDomainUsersSid,
      WinAccountDomainGuestsSid,
      WinAccountComputersSid,
      WinAccountControllersSid,
      WinAccountCertAdminsSid,
      WinAccountSchemaAdminsSid,
      WinAccountEnterpriseAdminsSid,
      WinAccountPolicyAdminsSid,
      WinAccountRasAndIasServersSid,
      WinNTLMAuthenticationSid,
      WinDigestAuthenticationSid,
      WinSChannelAuthenticationSid,
      WinThisOrganizationSid,
      WinOtherOrganizationSid,
      WinBuiltinIncomingForestTrustBuildersSid,
      WinBuiltinPerfMonitoringUsersSid,
      WinBuiltinPerfLoggingUsersSid,
      WinBuiltinAuthorizationAccessSid,
      WinBuiltinTerminalServerLicenseServersSid,
      WinBuiltinDCOMUsersSid,
      WinBuiltinIUsersSid,
      WinIUserSid,
      WinBuiltinCryptoOperatorsSid,
      WinUntrustedLabelSid,
      WinLowLabelSid,
      WinMediumLabelSid,
      WinHighLabelSid,
      WinSystemLabelSid,
      WinWriteRestrictedCodeSid,
      WinCreatorOwnerRightsSid,
      WinCacheablePrincipalsGroupSid,
      WinNonCacheablePrincipalsGroupSid,
      WinEnterpriseReadonlyControllersSid,
      WinAccountReadonlyControllersSid,
      WinBuiltinEventLogReadersGroup,
      WinNewEnterpriseReadonlyControllersSid,
      WinBuiltinCertSvcDComAccessGroup,
      WinMediumPlusLabelSid,
      WinLocalLogonSid,
      WinConsoleLogonSid,
      WinThisOrganizationCertificateSid,
      WinApplicationPackageAuthoritySid,
      WinBuiltinAnyPackageSid,
      WinCapabilityInternetClientSid,
      WinCapabilityInternetClientServerSid,
      WinCapabilityPrivateNetworkClientServerSid,
      WinCapabilityPicturesLibrarySid,
      WinCapabilityVideosLibrarySid,
      WinCapabilityMusicLibrarySid,
      WinCapabilityDocumentsLibrarySid,
      WinCapabilitySharedUserCertificatesSid,
      WinCapabilityEnterpriseAuthenticationSid,
      WinCapabilityRemovableStorageSid,
      WinBuiltinRDSRemoteAccessServersSid,
      WinBuiltinRDSEndpointServersSid,
      WinBuiltinRDSManagementServersSid,
      WinUserModeDriversSid,
      WinBuiltinHyperVAdminsSid,
      WinAccountCloneableControllersSid,
      WinBuiltinAccessControlAssistanceOperatorsSid,
      WinBuiltinRemoteManagementUsersSid,
      WinAuthenticationAuthorityAssertedSid,
      WinAuthenticationServiceAssertedSid,
      WinLocalAccountSid,
      WinLocalAccountAndAdministratorSid,
      WinAccountProtectedUsersSid,
      WinCapabilityAppointmentsSid,
      WinCapabilityContactsSid,
      WinAccountDefaultSystemManagedSid,
      WinBuiltinDefaultSystemManagedGroupSid,
      WinBuiltinStorageReplicaAdminsSid,
      WinAccountKeyAdminsSid,
      WinAccountEnterpriseKeyAdminsSid,
      WinAuthenticationKeyTrustSid,
      WinAuthenticationKeyPropertyMFASid,
      WinAuthenticationKeyPropertyAttestationSid,
      WinAuthenticationFreshKeyAuthSid
   );
   for WELL_KNOWN_SID_TYPE use (
      WinNullSid => 0,
      WinWorldSid => 1,
      WinLocalSid => 2,
      WinCreatorOwnerSid => 3,
      WinCreatorGroupSid => 4,
      WinCreatorOwnerServerSid => 5,
      WinCreatorGroupServerSid => 6,
      WinNtAuthoritySid => 7,
      WinDialupSid => 8,
      WinNetworkSid => 9,
      WinBatchSid => 10,
      WinInteractiveSid => 11,
      WinServiceSid => 12,
      WinAnonymousSid => 13,
      WinProxySid => 14,
      WinEnterpriseControllersSid => 15,
      WinSelfSid => 16,
      WinAuthenticatedUserSid => 17,
      WinRestrictedCodeSid => 18,
      WinTerminalServerSid => 19,
      WinRemoteLogonIdSid => 20,
      WinLogonIdsSid => 21,
      WinLocalSystemSid => 22,
      WinLocalServiceSid => 23,
      WinNetworkServiceSid => 24,
      WinBuiltinDomainSid => 25,
      WinBuiltinAdministratorsSid => 26,
      WinBuiltinUsersSid => 27,
      WinBuiltinGuestsSid => 28,
      WinBuiltinPowerUsersSid => 29,
      WinBuiltinAccountOperatorsSid => 30,
      WinBuiltinSystemOperatorsSid => 31,
      WinBuiltinPrintOperatorsSid => 32,
      WinBuiltinBackupOperatorsSid => 33,
      WinBuiltinReplicatorSid => 34,
      WinBuiltinPreWindows2000CompatibleAccessSid => 35,
      WinBuiltinRemoteDesktopUsersSid => 36,
      WinBuiltinNetworkConfigurationOperatorsSid => 37,
      WinAccountAdministratorSid => 38,
      WinAccountGuestSid => 39,
      WinAccountKrbtgtSid => 40,
      WinAccountDomainAdminsSid => 41,
      WinAccountDomainUsersSid => 42,
      WinAccountDomainGuestsSid => 43,
      WinAccountComputersSid => 44,
      WinAccountControllersSid => 45,
      WinAccountCertAdminsSid => 46,
      WinAccountSchemaAdminsSid => 47,
      WinAccountEnterpriseAdminsSid => 48,
      WinAccountPolicyAdminsSid => 49,
      WinAccountRasAndIasServersSid => 50,
      WinNTLMAuthenticationSid => 51,
      WinDigestAuthenticationSid => 52,
      WinSChannelAuthenticationSid => 53,
      WinThisOrganizationSid => 54,
      WinOtherOrganizationSid => 55,
      WinBuiltinIncomingForestTrustBuildersSid => 56,
      WinBuiltinPerfMonitoringUsersSid => 57,
      WinBuiltinPerfLoggingUsersSid => 58,
      WinBuiltinAuthorizationAccessSid => 59,
      WinBuiltinTerminalServerLicenseServersSid => 60,
      WinBuiltinDCOMUsersSid => 61,
      WinBuiltinIUsersSid => 62,
      WinIUserSid => 63,
      WinBuiltinCryptoOperatorsSid => 64,
      WinUntrustedLabelSid => 65,
      WinLowLabelSid => 66,
      WinMediumLabelSid => 67,
      WinHighLabelSid => 68,
      WinSystemLabelSid => 69,
      WinWriteRestrictedCodeSid => 70,
      WinCreatorOwnerRightsSid => 71,
      WinCacheablePrincipalsGroupSid => 72,
      WinNonCacheablePrincipalsGroupSid => 73,
      WinEnterpriseReadonlyControllersSid => 74,
      WinAccountReadonlyControllersSid => 75,
      WinBuiltinEventLogReadersGroup => 76,
      WinNewEnterpriseReadonlyControllersSid => 77,
      WinBuiltinCertSvcDComAccessGroup => 78,
      WinMediumPlusLabelSid => 79,
      WinLocalLogonSid => 80,
      WinConsoleLogonSid => 81,
      WinThisOrganizationCertificateSid => 82,
      WinApplicationPackageAuthoritySid => 83,
      WinBuiltinAnyPackageSid => 84,
      WinCapabilityInternetClientSid => 85,
      WinCapabilityInternetClientServerSid => 86,
      WinCapabilityPrivateNetworkClientServerSid => 87,
      WinCapabilityPicturesLibrarySid => 88,
      WinCapabilityVideosLibrarySid => 89,
      WinCapabilityMusicLibrarySid => 90,
      WinCapabilityDocumentsLibrarySid => 91,
      WinCapabilitySharedUserCertificatesSid => 92,
      WinCapabilityEnterpriseAuthenticationSid => 93,
      WinCapabilityRemovableStorageSid => 94,
      WinBuiltinRDSRemoteAccessServersSid => 95,
      WinBuiltinRDSEndpointServersSid => 96,
      WinBuiltinRDSManagementServersSid => 97,
      WinUserModeDriversSid => 98,
      WinBuiltinHyperVAdminsSid => 99,
      WinAccountCloneableControllersSid => 100,
      WinBuiltinAccessControlAssistanceOperatorsSid => 101,
      WinBuiltinRemoteManagementUsersSid => 102,
      WinAuthenticationAuthorityAssertedSid => 103,
      WinAuthenticationServiceAssertedSid => 104,
      WinLocalAccountSid => 105,
      WinLocalAccountAndAdministratorSid => 106,
      WinAccountProtectedUsersSid => 107,
      WinCapabilityAppointmentsSid => 108,
      WinCapabilityContactsSid => 109,
      WinAccountDefaultSystemManagedSid => 110,
      WinBuiltinDefaultSystemManagedGroupSid => 111,
      WinBuiltinStorageReplicaAdminsSid => 112,
      WinAccountKeyAdminsSid => 113,
      WinAccountEnterpriseKeyAdminsSid => 114,
      WinAuthenticationKeyTrustSid => 115,
      WinAuthenticationKeyPropertyMFASid => 116,
      WinAuthenticationKeyPropertyAttestationSid => 117,
      WinAuthenticationFreshKeyAuthSid => 118
   );
   for WELL_KNOWN_SID_TYPE'Size use 32;
   
   -- type PACL is access all ACL;
   -- type PACE_HEADER is access all ACE_HEADER;
   -- type PACCESS_ALLOWED_ACE is access all ACCESS_ALLOWED_ACE;
   -- type PACCESS_DENIED_ACE is access all ACCESS_DENIED_ACE;
   -- type PSYSTEM_AUDIT_ACE is access all SYSTEM_AUDIT_ACE;
   -- type PSYSTEM_ALARM_ACE is access all SYSTEM_ALARM_ACE;
   -- type PSYSTEM_RESOURCE_ATTRIBUTE_ACE is access all SYSTEM_RESOURCE_ATTRIBUTE_ACE;
   -- type PSYSTEM_SCOPED_POLICY_ID_ACE is access all SYSTEM_SCOPED_POLICY_ID_ACE;
   -- type PSYSTEM_MANDATORY_LABEL_ACE is access all SYSTEM_MANDATORY_LABEL_ACE;
   -- type PSYSTEM_PROCESS_TRUST_LABEL_ACE is access all SYSTEM_PROCESS_TRUST_LABEL_ACE;
   -- type PSYSTEM_ACCESS_FILTER_ACE is access all SYSTEM_ACCESS_FILTER_ACE;
   -- type PACCESS_ALLOWED_OBJECT_ACE is access all ACCESS_ALLOWED_OBJECT_ACE;
   -- type PACCESS_DENIED_OBJECT_ACE is access all ACCESS_DENIED_OBJECT_ACE;
   -- type PSYSTEM_AUDIT_OBJECT_ACE is access all SYSTEM_AUDIT_OBJECT_ACE;
   -- type PSYSTEM_ALARM_OBJECT_ACE is access all SYSTEM_ALARM_OBJECT_ACE;
   -- type PACCESS_ALLOWED_CALLBACK_ACE is access all ACCESS_ALLOWED_CALLBACK_ACE;
   -- type PACCESS_DENIED_CALLBACK_ACE is access all ACCESS_DENIED_CALLBACK_ACE;
   -- type PSYSTEM_AUDIT_CALLBACK_ACE is access all SYSTEM_AUDIT_CALLBACK_ACE;
   -- type PSYSTEM_ALARM_CALLBACK_ACE is access all SYSTEM_ALARM_CALLBACK_ACE;
   -- type PACCESS_ALLOWED_CALLBACK_OBJECT_ACE is access all ACCESS_ALLOWED_CALLBACK_OBJECT_ACE;
   -- type PACCESS_DENIED_CALLBACK_OBJECT_ACE is access all ACCESS_DENIED_CALLBACK_OBJECT_ACE;
   -- type PSYSTEM_AUDIT_CALLBACK_OBJECT_ACE is access all SYSTEM_AUDIT_CALLBACK_OBJECT_ACE;
   -- type PSYSTEM_ALARM_CALLBACK_OBJECT_ACE is access all SYSTEM_ALARM_CALLBACK_OBJECT_ACE;
   type ACL_INFORMATION_CLASS is (
      AclRevisionInformation,
      AclSizeInformation
   );
   for ACL_INFORMATION_CLASS use (
      AclRevisionInformation => 1,
      AclSizeInformation => 2
   );
   for ACL_INFORMATION_CLASS'Size use 32;
   
   -- type PACL_REVISION_INFORMATION is access all ACL_REVISION_INFORMATION;
   -- type PACL_SIZE_INFORMATION is access all ACL_SIZE_INFORMATION;
   -- type PSECURITY_DESCRIPTOR_CONTROL is access all WORD;
   -- type PISECURITY_DESCRIPTOR_RELATIVE is access all SECURITY_DESCRIPTOR_RELATIVE;
   -- type PISECURITY_DESCRIPTOR is access all SECURITY_DESCRIPTOR;
   -- type PSECURITY_OBJECT_AI_PARAMS is access all SECURITY_OBJECT_AI_PARAMS;
   -- type POBJECT_TYPE_LIST is access all OBJECT_TYPE_LIST;
   -- type PAUDIT_EVENT_TYPE is access all AUDIT_EVENT_TYPE;
   type AUDIT_EVENT_TYPE is (
      AuditEventObjectAccess,
      AuditEventDirectoryServiceAccess
   );
   for AUDIT_EVENT_TYPE use (
      AuditEventObjectAccess => 0,
      AuditEventDirectoryServiceAccess => 1
   );
   for AUDIT_EVENT_TYPE'Size use 32;
   
   -- type PPRIVILEGE_SET is access all PRIVILEGE_SET;
   type ACCESS_REASON_TYPE is (
      AccessReasonNone,
      AccessReasonAllowedAce,
      AccessReasonDeniedAce,
      AccessReasonAllowedParentAce,
      AccessReasonDeniedParentAce,
      AccessReasonNotGrantedByCape,
      AccessReasonNotGrantedByParentCape,
      AccessReasonNotGrantedToAppContainer,
      AccessReasonMissingPrivilege,
      AccessReasonFromPrivilege,
      AccessReasonIntegrityLevel,
      AccessReasonOwnership,
      AccessReasonNullDacl,
      AccessReasonEmptyDacl,
      AccessReasonNoSD,
      AccessReasonNoGrant,
      AccessReasonTrustLabel,
      AccessReasonFilterAce
   );
   for ACCESS_REASON_TYPE use (
      AccessReasonNone => 0,
      AccessReasonAllowedAce => 65536,
      AccessReasonDeniedAce => 131072,
      AccessReasonAllowedParentAce => 196608,
      AccessReasonDeniedParentAce => 262144,
      AccessReasonNotGrantedByCape => 327680,
      AccessReasonNotGrantedByParentCape => 393216,
      AccessReasonNotGrantedToAppContainer => 458752,
      AccessReasonMissingPrivilege => 1048576,
      AccessReasonFromPrivilege => 2097152,
      AccessReasonIntegrityLevel => 3145728,
      AccessReasonOwnership => 4194304,
      AccessReasonNullDacl => 5242880,
      AccessReasonEmptyDacl => 6291456,
      AccessReasonNoSD => 7340032,
      AccessReasonNoGrant => 8388608,
      AccessReasonTrustLabel => 9437184,
      AccessReasonFilterAce => 10485760
   );
   for ACCESS_REASON_TYPE'Size use 32;
   
   -- type PACCESS_REASONS is access all ACCESS_REASONS;
   -- type PSE_SECURITY_DESCRIPTOR is access all SE_SECURITY_DESCRIPTOR;
   -- type PSE_ACCESS_REQUEST is access all SE_ACCESS_REQUEST;
   -- type PSE_ACCESS_REPLY is access all SE_ACCESS_REPLY;
   type SECURITY_IMPERSONATION_LEVEL is (
      SecurityAnonymous,
      SecurityIdentification,
      SecurityImpersonation,
      SecurityDelegation
   );
   for SECURITY_IMPERSONATION_LEVEL use (
      SecurityAnonymous => 0,
      SecurityIdentification => 1,
      SecurityImpersonation => 2,
      SecurityDelegation => 3
   );
   for SECURITY_IMPERSONATION_LEVEL'Size use 32;
   
   -- type PSECURITY_IMPERSONATION_LEVEL is access all SECURITY_IMPERSONATION_LEVEL;
   type TOKEN_TYPE is (
      TokenPrimary,
      TokenImpersonation
   );
   for TOKEN_TYPE use (
      TokenPrimary => 1,
      TokenImpersonation => 2
   );
   for TOKEN_TYPE'Size use 32;
   
   -- type PTOKEN_TYPE is access all TOKEN_TYPE;
   -- type PTOKEN_ELEVATION_TYPE is access all TOKEN_ELEVATION_TYPE;
   type TOKEN_ELEVATION_TYPE is (
      TokenElevationTypeDefault,
      TokenElevationTypeFull,
      TokenElevationTypeLimited
   );
   for TOKEN_ELEVATION_TYPE use (
      TokenElevationTypeDefault => 1,
      TokenElevationTypeFull => 2,
      TokenElevationTypeLimited => 3
   );
   for TOKEN_ELEVATION_TYPE'Size use 32;
   
   -- type PTOKEN_INFORMATION_CLASS is access all TOKEN_INFORMATION_CLASS;
   type TOKEN_INFORMATION_CLASS is (
      TokenUser,
      TokenGroups,
      TokenPrivileges,
      TokenOwner,
      TokenPrimaryGroup,
      TokenDefaultDacl,
      TokenSource,
      TokenType,
      TokenImpersonationLevel,
      TokenStatistics,
      TokenRestrictedSids,
      TokenSessionId,
      TokenGroupsAndPrivileges,
      TokenSessionReference,
      TokenSandBoxInert,
      TokenAuditPolicy,
      TokenOrigin,
      TokenElevationType,
      TokenLinkedToken,
      TokenElevation,
      TokenHasRestrictions,
      TokenAccessInformation,
      TokenVirtualizationAllowed,
      TokenVirtualizationEnabled,
      TokenIntegrityLevel,
      TokenUIAccess,
      TokenMandatoryPolicy,
      TokenLogonSid,
      TokenIsAppContainer,
      TokenCapabilities,
      TokenAppContainerSid,
      TokenAppContainerNumber,
      TokenUserClaimAttributes,
      TokenDeviceClaimAttributes,
      TokenRestrictedUserClaimAttributes,
      TokenRestrictedDeviceClaimAttributes,
      TokenDeviceGroups,
      TokenRestrictedDeviceGroups,
      TokenSecurityAttributes,
      TokenIsRestricted,
      TokenProcessTrustLevel,
      TokenPrivateNameSpace,
      TokenSingletonAttributes,
      TokenBnoIsolation,
      TokenChildProcessFlags,
      MaxTokenInfoClass
   );
   for TOKEN_INFORMATION_CLASS use (
      TokenUser => 1,
      TokenGroups => 2,
      TokenPrivileges => 3,
      TokenOwner => 4,
      TokenPrimaryGroup => 5,
      TokenDefaultDacl => 6,
      TokenSource => 7,
      TokenType => 8,
      TokenImpersonationLevel => 9,
      TokenStatistics => 10,
      TokenRestrictedSids => 11,
      TokenSessionId => 12,
      TokenGroupsAndPrivileges => 13,
      TokenSessionReference => 14,
      TokenSandBoxInert => 15,
      TokenAuditPolicy => 16,
      TokenOrigin => 17,
      TokenElevationType => 18,
      TokenLinkedToken => 19,
      TokenElevation => 20,
      TokenHasRestrictions => 21,
      TokenAccessInformation => 22,
      TokenVirtualizationAllowed => 23,
      TokenVirtualizationEnabled => 24,
      TokenIntegrityLevel => 25,
      TokenUIAccess => 26,
      TokenMandatoryPolicy => 27,
      TokenLogonSid => 28,
      TokenIsAppContainer => 29,
      TokenCapabilities => 30,
      TokenAppContainerSid => 31,
      TokenAppContainerNumber => 32,
      TokenUserClaimAttributes => 33,
      TokenDeviceClaimAttributes => 34,
      TokenRestrictedUserClaimAttributes => 35,
      TokenRestrictedDeviceClaimAttributes => 36,
      TokenDeviceGroups => 37,
      TokenRestrictedDeviceGroups => 38,
      TokenSecurityAttributes => 39,
      TokenIsRestricted => 40,
      TokenProcessTrustLevel => 41,
      TokenPrivateNameSpace => 42,
      TokenSingletonAttributes => 43,
      TokenBnoIsolation => 44,
      TokenChildProcessFlags => 45,
      MaxTokenInfoClass => 46
   );
   for TOKEN_INFORMATION_CLASS'Size use 32;
   
   -- type PTOKEN_USER is access all TOKEN_USER;
   -- type PTOKEN_GROUPS is access all TOKEN_GROUPS;
   -- type PTOKEN_PRIVILEGES is access all TOKEN_PRIVILEGES;
   -- type PTOKEN_OWNER is access all TOKEN_OWNER;
   -- type PTOKEN_PRIMARY_GROUP is access all TOKEN_PRIMARY_GROUP;
   -- type PTOKEN_DEFAULT_DACL is access all TOKEN_DEFAULT_DACL;
   -- type PTOKEN_USER_CLAIMS is access all TOKEN_USER_CLAIMS;
   -- type PTOKEN_DEVICE_CLAIMS is access all TOKEN_DEVICE_CLAIMS;
   -- type PTOKEN_GROUPS_AND_PRIVILEGES is access all TOKEN_GROUPS_AND_PRIVILEGES;
   -- type PTOKEN_LINKED_TOKEN is access all TOKEN_LINKED_TOKEN;
   -- type PTOKEN_ELEVATION is access all TOKEN_ELEVATION;
   -- type PTOKEN_MANDATORY_LABEL is access all TOKEN_MANDATORY_LABEL;
   -- type PTOKEN_MANDATORY_POLICY is access all TOKEN_MANDATORY_POLICY;
   -- type PTOKEN_ACCESS_INFORMATION is access all TOKEN_ACCESS_INFORMATION;
   -- type PTOKEN_AUDIT_POLICY is access all TOKEN_AUDIT_POLICY;
   -- type PTOKEN_SOURCE is access all TOKEN_SOURCE;
   -- type PTOKEN_STATISTICS is access all TOKEN_STATISTICS;
   -- type PTOKEN_CONTROL is access all TOKEN_CONTROL;
   -- type PTOKEN_ORIGIN is access all TOKEN_ORIGIN;
   -- type PMANDATORY_LEVEL is access all MANDATORY_LEVEL;
   type MANDATORY_LEVEL is (
      MandatoryLevelUntrusted,
      MandatoryLevelLow,
      MandatoryLevelMedium,
      MandatoryLevelHigh,
      MandatoryLevelSystem,
      MandatoryLevelSecureProcess,
      MandatoryLevelCount
   );
   for MANDATORY_LEVEL use (
      MandatoryLevelUntrusted => 0,
      MandatoryLevelLow => 1,
      MandatoryLevelMedium => 2,
      MandatoryLevelHigh => 3,
      MandatoryLevelSystem => 4,
      MandatoryLevelSecureProcess => 5,
      MandatoryLevelCount => 6
   );
   for MANDATORY_LEVEL'Size use 32;
   
   -- type PTOKEN_APPCONTAINER_INFORMATION is access all TOKEN_APPCONTAINER_INFORMATION;
   -- type PTOKEN_SID_INFORMATION is access all TOKEN_SID_INFORMATION;
   -- type PTOKEN_BNO_ISOLATION_INFORMATION is access all TOKEN_BNO_ISOLATION_INFORMATION;
   -- type PCLAIM_SECURITY_ATTRIBUTE_FQBN_VALUE is access all CLAIM_SECURITY_ATTRIBUTE_FQBN_VALUE;
   -- type PCLAIM_SECURITY_ATTRIBUTE_OCTET_STRING_VALUE is access all CLAIM_SECURITY_ATTRIBUTE_OCTET_STRING_VALUE;
   -- type PCLAIM_SECURITY_ATTRIBUTE_V1 is access all CLAIM_SECURITY_ATTRIBUTE_V1;
   -- type PCLAIM_SECURITY_ATTRIBUTE_RELATIVE_V1 is access all CLAIM_SECURITY_ATTRIBUTE_RELATIVE_V1;
   -- type PCLAIM_SECURITY_ATTRIBUTES_INFORMATION is access all CLAIM_SECURITY_ATTRIBUTES_INFORMATION;
   -- type PSECURITY_CONTEXT_TRACKING_MODE is access all BOOLEAN;
   -- type PSECURITY_QUALITY_OF_SERVICE is access all SECURITY_QUALITY_OF_SERVICE;
   -- type PSE_IMPERSONATION_STATE is access all SE_IMPERSONATION_STATE;
   -- type PSECURITY_INFORMATION is access all DWORD;
   -- type PSE_SIGNING_LEVEL is access all BYTE;
   -- type PSE_IMAGE_SIGNATURE_TYPE is access all SE_IMAGE_SIGNATURE_TYPE;
   type SE_IMAGE_SIGNATURE_TYPE is (
      SeImageSignatureNone,
      SeImageSignatureEmbedded,
      SeImageSignatureCache,
      SeImageSignatureCatalogCached,
      SeImageSignatureCatalogNotCached,
      SeImageSignatureCatalogHint,
      SeImageSignaturePackageCatalog
   );
   for SE_IMAGE_SIGNATURE_TYPE use (
      SeImageSignatureNone => 0,
      SeImageSignatureEmbedded => 1,
      SeImageSignatureCache => 2,
      SeImageSignatureCatalogCached => 3,
      SeImageSignatureCatalogNotCached => 4,
      SeImageSignatureCatalogHint => 5,
      SeImageSignaturePackageCatalog => 6
   );
   for SE_IMAGE_SIGNATURE_TYPE'Size use 32;
   
   type SE_LEARNING_MODE_DATA_TYPE is (
      SeLearningModeInvalidType,
      SeLearningModeSettings,
      SeLearningModeMax
   );
   for SE_LEARNING_MODE_DATA_TYPE use (
      SeLearningModeInvalidType => 0,
      SeLearningModeSettings => 1,
      SeLearningModeMax => 2
   );
   for SE_LEARNING_MODE_DATA_TYPE'Size use 32;
   
   -- type PSECURITY_CAPABILITIES is access all SECURITY_CAPABILITIES;
   -- type LPSECURITY_CAPABILITIES is access all SECURITY_CAPABILITIES;
   -- type PJOB_SET_ARRAY is access all JOB_SET_ARRAY;
   -- type PEXCEPTION_REGISTRATION_RECORD is access all EXCEPTION_REGISTRATION_RECORD;
   -- type PNT_TIB is access all NT_TIB;
   -- type PNT_TIB32 is access all NT_TIB32;
   -- type PNT_TIB64 is access all NT_TIB64;
   -- type PUMS_CREATE_THREAD_ATTRIBUTES is access all UMS_CREATE_THREAD_ATTRIBUTES;
   -- type PQUOTA_LIMITS is access all QUOTA_LIMITS;
   -- type PRATE_QUOTA_LIMIT is access all RATE_QUOTA_LIMIT;
   -- type PQUOTA_LIMITS_EX is access all QUOTA_LIMITS_EX;
   -- type PIO_COUNTERS is access all IO_COUNTERS;
   -- type PHARDWARE_COUNTER_TYPE is access all HARDWARE_COUNTER_TYPE;
   type HARDWARE_COUNTER_TYPE is (
      PMCCounter,
      MaxHardwareCounterType
   );
   for HARDWARE_COUNTER_TYPE use (
      PMCCounter => 0,
      MaxHardwareCounterType => 1
   );
   for HARDWARE_COUNTER_TYPE'Size use 32;
   
   -- type PPROCESS_MITIGATION_POLICY is access all PROCESS_MITIGATION_POLICY;
   type PROCESS_MITIGATION_POLICY is (
      ProcessDEPPolicy,
      ProcessASLRPolicy,
      ProcessDynamicCodePolicy,
      ProcessStrictHandleCheckPolicy,
      ProcessSystemCallDisablePolicy,
      ProcessMitigationOptionsMask,
      ProcessExtensionPointDisablePolicy,
      ProcessControlFlowGuardPolicy,
      ProcessSignaturePolicy,
      ProcessFontDisablePolicy,
      ProcessImageLoadPolicy,
      ProcessSystemCallFilterPolicy,
      ProcessPayloadRestrictionPolicy,
      ProcessChildProcessPolicy,
      MaxProcessMitigationPolicy
   );
   for PROCESS_MITIGATION_POLICY use (
      ProcessDEPPolicy => 0,
      ProcessASLRPolicy => 1,
      ProcessDynamicCodePolicy => 2,
      ProcessStrictHandleCheckPolicy => 3,
      ProcessSystemCallDisablePolicy => 4,
      ProcessMitigationOptionsMask => 5,
      ProcessExtensionPointDisablePolicy => 6,
      ProcessControlFlowGuardPolicy => 7,
      ProcessSignaturePolicy => 8,
      ProcessFontDisablePolicy => 9,
      ProcessImageLoadPolicy => 10,
      ProcessSystemCallFilterPolicy => 11,
      ProcessPayloadRestrictionPolicy => 12,
      ProcessChildProcessPolicy => 13,
      MaxProcessMitigationPolicy => 14
   );
   for PROCESS_MITIGATION_POLICY'Size use 32;
   
   -- type PPROCESS_MITIGATION_ASLR_POLICY is access all PROCESS_MITIGATION_ASLR_POLICY;
   -- type PPROCESS_MITIGATION_DEP_POLICY is access all PROCESS_MITIGATION_DEP_POLICY;
   -- type PPROCESS_MITIGATION_STRICT_HANDLE_CHECK_POLICY is access all PROCESS_MITIGATION_STRICT_HANDLE_CHECK_POLICY;
   -- type PPROCESS_MITIGATION_SYSTEM_CALL_DISABLE_POLICY is access all PROCESS_MITIGATION_SYSTEM_CALL_DISABLE_POLICY;
   -- type PPROCESS_MITIGATION_EXTENSION_POINT_DISABLE_POLICY is access all PROCESS_MITIGATION_EXTENSION_POINT_DISABLE_POLICY;
   -- type PPROCESS_MITIGATION_DYNAMIC_CODE_POLICY is access all PROCESS_MITIGATION_DYNAMIC_CODE_POLICY;
   -- type PPROCESS_MITIGATION_CONTROL_FLOW_GUARD_POLICY is access all PROCESS_MITIGATION_CONTROL_FLOW_GUARD_POLICY;
   -- type PPROCESS_MITIGATION_BINARY_SIGNATURE_POLICY is access all PROCESS_MITIGATION_BINARY_SIGNATURE_POLICY;
   -- type PPROCESS_MITIGATION_FONT_DISABLE_POLICY is access all PROCESS_MITIGATION_FONT_DISABLE_POLICY;
   -- type PPROCESS_MITIGATION_IMAGE_LOAD_POLICY is access all PROCESS_MITIGATION_IMAGE_LOAD_POLICY;
   -- type PPROCESS_MITIGATION_SYSTEM_CALL_FILTER_POLICY is access all PROCESS_MITIGATION_SYSTEM_CALL_FILTER_POLICY;
   -- type PPROCESS_MITIGATION_PAYLOAD_RESTRICTION_POLICY is access all PROCESS_MITIGATION_PAYLOAD_RESTRICTION_POLICY;
   -- type PPROCESS_MITIGATION_CHILD_PROCESS_POLICY is access all PROCESS_MITIGATION_CHILD_PROCESS_POLICY;
   -- type PJOBOBJECT_BASIC_ACCOUNTING_INFORMATION is access all JOBOBJECT_BASIC_ACCOUNTING_INFORMATION;
   -- type PJOBOBJECT_BASIC_LIMIT_INFORMATION is access all JOBOBJECT_BASIC_LIMIT_INFORMATION;
   -- type PJOBOBJECT_EXTENDED_LIMIT_INFORMATION is access all JOBOBJECT_EXTENDED_LIMIT_INFORMATION;
   -- type PJOBOBJECT_BASIC_PROCESS_ID_LIST is access all JOBOBJECT_BASIC_PROCESS_ID_LIST;
   -- type PJOBOBJECT_BASIC_UI_RESTRICTIONS is access all JOBOBJECT_BASIC_UI_RESTRICTIONS;
   -- type PJOBOBJECT_SECURITY_LIMIT_INFORMATION is access all JOBOBJECT_SECURITY_LIMIT_INFORMATION;
   -- type PJOBOBJECT_END_OF_JOB_TIME_INFORMATION is access all JOBOBJECT_END_OF_JOB_TIME_INFORMATION;
   -- type PJOBOBJECT_ASSOCIATE_COMPLETION_PORT is access all JOBOBJECT_ASSOCIATE_COMPLETION_PORT;
   -- type PJOBOBJECT_BASIC_AND_IO_ACCOUNTING_INFORMATION is access all JOBOBJECT_BASIC_AND_IO_ACCOUNTING_INFORMATION;
   -- type PJOBOBJECT_JOBSET_INFORMATION is access all JOBOBJECT_JOBSET_INFORMATION;
   type JOBOBJECT_RATE_CONTROL_TOLERANCE is (
      ToleranceLow,
      ToleranceMedium,
      ToleranceHigh
   );
   for JOBOBJECT_RATE_CONTROL_TOLERANCE use (
      ToleranceLow => 1,
      ToleranceMedium => 2,
      ToleranceHigh => 3
   );
   for JOBOBJECT_RATE_CONTROL_TOLERANCE'Size use 32;
   
   -- type PJOBOBJECT_RATE_CONTROL_TOLERANCE is access all JOBOBJECT_RATE_CONTROL_TOLERANCE;
   type JOBOBJECT_RATE_CONTROL_TOLERANCE_INTERVAL is (
      ToleranceIntervalShort,
      ToleranceIntervalMedium,
      ToleranceIntervalLong
   );
   for JOBOBJECT_RATE_CONTROL_TOLERANCE_INTERVAL use (
      ToleranceIntervalShort => 1,
      ToleranceIntervalMedium => 2,
      ToleranceIntervalLong => 3
   );
   for JOBOBJECT_RATE_CONTROL_TOLERANCE_INTERVAL'Size use 32;
   
   -- type PJOBOBJECT_RATE_CONTROL_TOLERANCE_INTERVAL is access all JOBOBJECT_RATE_CONTROL_TOLERANCE_INTERVAL;
   -- type PJOBOBJECT_NOTIFICATION_LIMIT_INFORMATION is access all JOBOBJECT_NOTIFICATION_LIMIT_INFORMATION;
   -- type PJOBOBJECT_LIMIT_VIOLATION_INFORMATION is access all JOBOBJECT_LIMIT_VIOLATION_INFORMATION;
   -- type PJOBOBJECT_CPU_RATE_CONTROL_INFORMATION is access all JOBOBJECT_CPU_RATE_CONTROL_INFORMATION;
   type JOB_OBJECT_NET_RATE_CONTROL_FLAGS is (
      JOB_OBJECT_NET_RATE_CONTROL_ENABLE,
      JOB_OBJECT_NET_RATE_CONTROL_MAX_BANDWIDTH,
      JOB_OBJECT_NET_RATE_CONTROL_DSCP_TAG,
      JOB_OBJECT_NET_RATE_CONTROL_VALID_FLAGS
   );
   for JOB_OBJECT_NET_RATE_CONTROL_FLAGS use (
      JOB_OBJECT_NET_RATE_CONTROL_ENABLE => 1,
      JOB_OBJECT_NET_RATE_CONTROL_MAX_BANDWIDTH => 2,
      JOB_OBJECT_NET_RATE_CONTROL_DSCP_TAG => 4,
      JOB_OBJECT_NET_RATE_CONTROL_VALID_FLAGS => 7
   );
   for JOB_OBJECT_NET_RATE_CONTROL_FLAGS'Size use 32;
   
   type JOB_OBJECT_IO_RATE_CONTROL_FLAGS is (
      JOB_OBJECT_IO_RATE_CONTROL_ENABLE,
      JOB_OBJECT_IO_RATE_CONTROL_STANDALONE_VOLUME,
      JOB_OBJECT_IO_RATE_CONTROL_VALID_FLAGS
   );
   for JOB_OBJECT_IO_RATE_CONTROL_FLAGS use (
      JOB_OBJECT_IO_RATE_CONTROL_ENABLE => 1,
      JOB_OBJECT_IO_RATE_CONTROL_STANDALONE_VOLUME => 2,
      JOB_OBJECT_IO_RATE_CONTROL_VALID_FLAGS => 3
   );
   for JOB_OBJECT_IO_RATE_CONTROL_FLAGS'Size use 32;
   
   type JOBOBJECT_IO_ATTRIBUTION_CONTROL_FLAGS is (
      JOBOBJECT_IO_ATTRIBUTION_CONTROL_ENABLE,
      JOBOBJECT_IO_ATTRIBUTION_CONTROL_DISABLE,
      JOBOBJECT_IO_ATTRIBUTION_CONTROL_VALID_FLAGS
   );
   for JOBOBJECT_IO_ATTRIBUTION_CONTROL_FLAGS use (
      JOBOBJECT_IO_ATTRIBUTION_CONTROL_ENABLE => 1,
      JOBOBJECT_IO_ATTRIBUTION_CONTROL_DISABLE => 2,
      JOBOBJECT_IO_ATTRIBUTION_CONTROL_VALID_FLAGS => 3
   );
   for JOBOBJECT_IO_ATTRIBUTION_CONTROL_FLAGS'Size use 32;
   
   -- type PJOBOBJECT_IO_ATTRIBUTION_STATS is access all JOBOBJECT_IO_ATTRIBUTION_STATS;
   -- type PJOBOBJECT_IO_ATTRIBUTION_INFORMATION is access all JOBOBJECT_IO_ATTRIBUTION_INFORMATION;
   type JOBOBJECTINFOCLASS is (
      JobObjectBasicAccountingInformation,
      JobObjectBasicLimitInformation,
      JobObjectBasicProcessIdList,
      JobObjectBasicUIRestrictions,
      JobObjectSecurityLimitInformation,
      JobObjectEndOfJobTimeInformation,
      JobObjectAssociateCompletionPortInformation,
      JobObjectBasicAndIoAccountingInformation,
      JobObjectExtendedLimitInformation,
      JobObjectJobSetInformation,
      JobObjectGroupInformation,
      JobObjectNotificationLimitInformation,
      JobObjectLimitViolationInformation,
      JobObjectGroupInformationEx,
      JobObjectCpuRateControlInformation,
      JobObjectCompletionFilter,
      JobObjectCompletionCounter,
      JobObjectReserved1Information,
      JobObjectReserved2Information,
      JobObjectReserved3Information,
      JobObjectReserved4Information,
      JobObjectReserved5Information,
      JobObjectReserved6Information,
      JobObjectReserved7Information,
      JobObjectReserved8Information,
      JobObjectReserved9Information,
      JobObjectReserved10Information,
      JobObjectReserved11Information,
      JobObjectReserved12Information,
      JobObjectReserved13Information,
      JobObjectReserved14Information,
      JobObjectNetRateControlInformation,
      JobObjectNotificationLimitInformation2,
      JobObjectLimitViolationInformation2,
      JobObjectCreateSilo,
      JobObjectSiloBasicInformation,
      JobObjectReserved15Information,
      JobObjectReserved16Information,
      JobObjectReserved17Information,
      JobObjectReserved18Information,
      JobObjectReserved19Information,
      JobObjectReserved20Information,
      JobObjectReserved21Information,
      JobObjectReserved22Information,
      JobObjectReserved23Information,
      JobObjectReserved24Information,
      JobObjectReserved25Information,
      MaxJobObjectInfoClass
   );
   for JOBOBJECTINFOCLASS use (
      JobObjectBasicAccountingInformation => 1,
      JobObjectBasicLimitInformation => 2,
      JobObjectBasicProcessIdList => 3,
      JobObjectBasicUIRestrictions => 4,
      JobObjectSecurityLimitInformation => 5,
      JobObjectEndOfJobTimeInformation => 6,
      JobObjectAssociateCompletionPortInformation => 7,
      JobObjectBasicAndIoAccountingInformation => 8,
      JobObjectExtendedLimitInformation => 9,
      JobObjectJobSetInformation => 10,
      JobObjectGroupInformation => 11,
      JobObjectNotificationLimitInformation => 12,
      JobObjectLimitViolationInformation => 13,
      JobObjectGroupInformationEx => 14,
      JobObjectCpuRateControlInformation => 15,
      JobObjectCompletionFilter => 16,
      JobObjectCompletionCounter => 17,
      JobObjectReserved1Information => 18,
      JobObjectReserved2Information => 19,
      JobObjectReserved3Information => 20,
      JobObjectReserved4Information => 21,
      JobObjectReserved5Information => 22,
      JobObjectReserved6Information => 23,
      JobObjectReserved7Information => 24,
      JobObjectReserved8Information => 25,
      JobObjectReserved9Information => 26,
      JobObjectReserved10Information => 27,
      JobObjectReserved11Information => 28,
      JobObjectReserved12Information => 29,
      JobObjectReserved13Information => 30,
      JobObjectReserved14Information => 31,
      JobObjectNetRateControlInformation => 32,
      JobObjectNotificationLimitInformation2 => 33,
      JobObjectLimitViolationInformation2 => 34,
      JobObjectCreateSilo => 35,
      JobObjectSiloBasicInformation => 36,
      JobObjectReserved15Information => 37,
      JobObjectReserved16Information => 38,
      JobObjectReserved17Information => 39,
      JobObjectReserved18Information => 40,
      JobObjectReserved19Information => 41,
      JobObjectReserved20Information => 42,
      JobObjectReserved21Information => 43,
      JobObjectReserved22Information => 44,
      JobObjectReserved23Information => 45,
      JobObjectReserved24Information => 46,
      JobObjectReserved25Information => 47,
      MaxJobObjectInfoClass => 48
   );
   for JOBOBJECTINFOCLASS'Size use 32;
   
   -- type PSILOOBJECT_BASIC_INFORMATION is access all SILOOBJECT_BASIC_INFORMATION;
   type SERVERSILO_STATE is (
      SERVERSILO_INITING,
      SERVERSILO_STARTED,
      SERVERSILO_SHUTTING_DOWN,
      SERVERSILO_TERMINATING,
      SERVERSILO_TERMINATED
   );
   for SERVERSILO_STATE use (
      SERVERSILO_INITING => 0,
      SERVERSILO_STARTED => 1,
      SERVERSILO_SHUTTING_DOWN => 2,
      SERVERSILO_TERMINATING => 3,
      SERVERSILO_TERMINATED => 4
   );
   for SERVERSILO_STATE'Size use 32;
   
   -- type PSERVERSILO_STATE is access all SERVERSILO_STATE;
   -- type PSERVERSILO_BASIC_INFORMATION is access all SERVERSILO_BASIC_INFORMATION;
   -- type PFIRMWARE_TYPE is access all FIRMWARE_TYPE;
   type FIRMWARE_TYPE is (
      FirmwareTypeUnknown,
      FirmwareTypeBios,
      FirmwareTypeUefi,
      FirmwareTypeMax
   );
   for FIRMWARE_TYPE use (
      FirmwareTypeUnknown => 0,
      FirmwareTypeBios => 1,
      FirmwareTypeUefi => 2,
      FirmwareTypeMax => 3
   );
   for FIRMWARE_TYPE'Size use 32;
   
   type LOGICAL_PROCESSOR_RELATIONSHIP is (
      RelationProcessorCore,
      RelationNumaNode,
      RelationCache,
      RelationProcessorPackage,
      RelationGroup,
      RelationAll
   );
   for LOGICAL_PROCESSOR_RELATIONSHIP use (
      RelationProcessorCore => 0,
      RelationNumaNode => 1,
      RelationCache => 2,
      RelationProcessorPackage => 3,
      RelationGroup => 4,
      RelationAll => 65535
   );
   for LOGICAL_PROCESSOR_RELATIONSHIP'Size use 32;
   
   type PROCESSOR_CACHE_TYPE is (
      CacheUnified,
      CacheInstruction,
      CacheData,
      CacheTrace
   );
   for PROCESSOR_CACHE_TYPE use (
      CacheUnified => 0,
      CacheInstruction => 1,
      CacheData => 2,
      CacheTrace => 3
   );
   for PROCESSOR_CACHE_TYPE'Size use 32;
   
   -- type PCACHE_DESCRIPTOR is access all CACHE_DESCRIPTOR;
   -- type PSYSTEM_LOGICAL_PROCESSOR_INFORMATION is access all SYSTEM_LOGICAL_PROCESSOR_INFORMATION;
   -- type PPROCESSOR_RELATIONSHIP is access all PROCESSOR_RELATIONSHIP;
   -- type PNUMA_NODE_RELATIONSHIP is access all NUMA_NODE_RELATIONSHIP;
   -- type PCACHE_RELATIONSHIP is access all CACHE_RELATIONSHIP;
   -- type PPROCESSOR_GROUP_INFO is access all PROCESSOR_GROUP_INFO;
   -- type PGROUP_RELATIONSHIP is access all GROUP_RELATIONSHIP;
   -- type PSYSTEM_LOGICAL_PROCESSOR_INFORMATION_EX is access all SYSTEM_LOGICAL_PROCESSOR_INFORMATION_EX;
   -- type PCPU_SET_INFORMATION_TYPE is access all CPU_SET_INFORMATION_TYPE;
   type CPU_SET_INFORMATION_TYPE is (
      CpuSetInformation
   );
   for CPU_SET_INFORMATION_TYPE use (
      CpuSetInformation => 0
   );
   for CPU_SET_INFORMATION_TYPE'Size use 32;
   
   -- type PSYSTEM_CPU_SET_INFORMATION is access all SYSTEM_CPU_SET_INFORMATION;
   -- type PSYSTEM_PROCESSOR_CYCLE_TIME_INFORMATION is access all SYSTEM_PROCESSOR_CYCLE_TIME_INFORMATION;
   -- type PXSTATE_FEATURE is access all XSTATE_FEATURE;
   -- type PXSTATE_CONFIGURATION is access all XSTATE_CONFIGURATION;
   -- type PMEMORY_BASIC_INFORMATION is access all MEMORY_BASIC_INFORMATION;
   -- type PMEMORY_BASIC_INFORMATION32 is access all MEMORY_BASIC_INFORMATION32;
   -- type PMEMORY_BASIC_INFORMATION64 is access all MEMORY_BASIC_INFORMATION64;
   -- type PCFG_CALL_TARGET_INFO is access all CFG_CALL_TARGET_INFO;
   -- type PENCLAVE_CREATE_INFO_SGX is access all ENCLAVE_CREATE_INFO_SGX;
   -- type PENCLAVE_INIT_INFO_SGX is access all ENCLAVE_INIT_INFO_SGX;
   -- type PENCLAVE_CREATE_INFO_VBS is access all ENCLAVE_CREATE_INFO_VBS;
   -- type PENCLAVE_INIT_INFO_VBS is access all ENCLAVE_INIT_INFO_VBS;
   -- type PENCLAVE_TARGET_FUNCTION is access all ENCLAVE_TARGET_FUNCTION;
   -- type PFILE_ID_128 is access all FILE_ID_128;
   -- type PFILE_NOTIFY_INFORMATION is access all FILE_NOTIFY_INFORMATION;
   -- type PFILE_NOTIFY_EXTENDED_INFORMATION is access all FILE_NOTIFY_EXTENDED_INFORMATION;
   -- type PFILE_SEGMENT_ELEMENT is access all FILE_SEGMENT_ELEMENT;
   -- type PREPARSE_GUID_DATA_BUFFER is access all REPARSE_GUID_DATA_BUFFER;
   -- type PSCRUB_DATA_INPUT is access all SCRUB_DATA_INPUT;
   -- type PSCRUB_PARITY_EXTENT is access all SCRUB_PARITY_EXTENT;
   -- type PSCRUB_PARITY_EXTENT_DATA is access all SCRUB_PARITY_EXTENT_DATA;
   -- type PSCRUB_DATA_OUTPUT is access all SCRUB_DATA_OUTPUT;
   type SharedVirtualDiskSupportType is (
      SharedVirtualDisksUnsupported,
      SharedVirtualDisksSupported,
      SharedVirtualDiskSnapshotsSupported,
      SharedVirtualDiskCDPSnapshotsSupported
   );
   for SharedVirtualDiskSupportType use (
      SharedVirtualDisksUnsupported => 0,
      SharedVirtualDisksSupported => 1,
      SharedVirtualDiskSnapshotsSupported => 3,
      SharedVirtualDiskCDPSnapshotsSupported => 7
   );
   for SharedVirtualDiskSupportType'Size use 32;
   
   type SharedVirtualDiskHandleState is (
      SharedVirtualDiskHandleStateNone,
      SharedVirtualDiskHandleStateFileShared,
      SharedVirtualDiskHandleStateHandleShared
   );
   for SharedVirtualDiskHandleState use (
      SharedVirtualDiskHandleStateNone => 0,
      SharedVirtualDiskHandleStateFileShared => 1,
      SharedVirtualDiskHandleStateHandleShared => 3
   );
   for SharedVirtualDiskHandleState'Size use 32;
   
   -- type PSHARED_VIRTUAL_DISK_SUPPORT is access all SHARED_VIRTUAL_DISK_SUPPORT;
   -- type PNETWORK_APP_INSTANCE_EA is access all NETWORK_APP_INSTANCE_EA;
   type SYSTEM_POWER_STATE is (
      PowerSystemUnspecified,
      PowerSystemWorking,
      PowerSystemSleeping1,
      PowerSystemSleeping2,
      PowerSystemSleeping3,
      PowerSystemHibernate,
      PowerSystemShutdown,
      PowerSystemMaximum
   );
   for SYSTEM_POWER_STATE use (
      PowerSystemUnspecified => 0,
      PowerSystemWorking => 1,
      PowerSystemSleeping1 => 2,
      PowerSystemSleeping2 => 3,
      PowerSystemSleeping3 => 4,
      PowerSystemHibernate => 5,
      PowerSystemShutdown => 6,
      PowerSystemMaximum => 7
   );
   for SYSTEM_POWER_STATE'Size use 32;
   
   -- type PSYSTEM_POWER_STATE is access all SYSTEM_POWER_STATE;
   -- type PPOWER_ACTION is access all POWER_ACTION;
   type POWER_ACTION is (
      PowerActionNone,
      PowerActionReserved,
      PowerActionSleep,
      PowerActionHibernate,
      PowerActionShutdown,
      PowerActionShutdownReset,
      PowerActionShutdownOff,
      PowerActionWarmEject,
      PowerActionDisplayOff
   );
   for POWER_ACTION use (
      PowerActionNone => 0,
      PowerActionReserved => 1,
      PowerActionSleep => 2,
      PowerActionHibernate => 3,
      PowerActionShutdown => 4,
      PowerActionShutdownReset => 5,
      PowerActionShutdownOff => 6,
      PowerActionWarmEject => 7,
      PowerActionDisplayOff => 8
   );
   for POWER_ACTION'Size use 32;
   
   -- type PDEVICE_POWER_STATE is access all DEVICE_POWER_STATE;
   type DEVICE_POWER_STATE is (
      PowerDeviceUnspecified,
      PowerDeviceD0,
      PowerDeviceD1,
      PowerDeviceD2,
      PowerDeviceD3,
      PowerDeviceMaximum
   );
   for DEVICE_POWER_STATE use (
      PowerDeviceUnspecified => 0,
      PowerDeviceD0 => 1,
      PowerDeviceD1 => 2,
      PowerDeviceD2 => 3,
      PowerDeviceD3 => 4,
      PowerDeviceMaximum => 5
   );
   for DEVICE_POWER_STATE'Size use 32;
   
   -- type PMONITOR_DISPLAY_STATE is access all MONITOR_DISPLAY_STATE;
   type MONITOR_DISPLAY_STATE is (
      PowerMonitorOff,
      PowerMonitorOn,
      PowerMonitorDim
   );
   for MONITOR_DISPLAY_STATE use (
      PowerMonitorOff => 0,
      PowerMonitorOn => 1,
      PowerMonitorDim => 2
   );
   for MONITOR_DISPLAY_STATE'Size use 32;
   
   type USER_ACTIVITY_PRESENCE is (
      PowerUserPresent,
      PowerUserNotPresent,
      PowerUserInactive,
      PowerUserMaximum
   );
   for USER_ACTIVITY_PRESENCE use (
      PowerUserPresent => 0,
      PowerUserNotPresent => 1,
      PowerUserInactive => 2,
      PowerUserMaximum => 3
   );
   for USER_ACTIVITY_PRESENCE'Size use 32;
   
   -- type PUSER_ACTIVITY_PRESENCE is access all USER_ACTIVITY_PRESENCE;
   -- type PEXECUTION_STATE is access all DWORD;
   type LATENCY_TIME is (
      LT_DONT_CARE,
      LT_LOWEST_LATENCY
   );
   for LATENCY_TIME use (
      LT_DONT_CARE => 0,
      LT_LOWEST_LATENCY => 1
   );
   for LATENCY_TIME'Size use 32;
   
   type POWER_REQUEST_TYPE is (
      PowerRequestDisplayRequired,
      PowerRequestSystemRequired,
      PowerRequestAwayModeRequired,
      PowerRequestExecutionRequired
   );
   for POWER_REQUEST_TYPE use (
      PowerRequestDisplayRequired => 0,
      PowerRequestSystemRequired => 1,
      PowerRequestAwayModeRequired => 2,
      PowerRequestExecutionRequired => 3
   );
   for POWER_REQUEST_TYPE'Size use 32;
   
   -- type PPOWER_REQUEST_TYPE is access all POWER_REQUEST_TYPE;
   -- type PCM_POWER_DATA is access all CM_Power_Data_s;
   type POWER_INFORMATION_LEVEL is (
      SystemPowerPolicyAc,
      SystemPowerPolicyDc,
      VerifySystemPolicyAc,
      VerifySystemPolicyDc,
      SystemPowerCapabilities,
      SystemBatteryState,
      SystemPowerStateHandler,
      ProcessorStateHandler,
      SystemPowerPolicyCurrent,
      AdministratorPowerPolicy,
      SystemReserveHiberFile,
      ProcessorInformation,
      SystemPowerInformation,
      ProcessorStateHandler2,
      LastWakeTime,
      LastSleepTime,
      SystemExecutionState,
      SystemPowerStateNotifyHandler,
      ProcessorPowerPolicyAc,
      ProcessorPowerPolicyDc,
      VerifyProcessorPowerPolicyAc,
      VerifyProcessorPowerPolicyDc,
      ProcessorPowerPolicyCurrent,
      SystemPowerStateLogging,
      SystemPowerLoggingEntry,
      SetPowerSettingValue,
      NotifyUserPowerSetting,
      PowerInformationLevelUnused0,
      SystemMonitorHiberBootPowerOff,
      SystemVideoState,
      TraceApplicationPowerMessage,
      TraceApplicationPowerMessageEnd,
      ProcessorPerfStates,
      ProcessorIdleStates,
      ProcessorCap,
      SystemWakeSource,
      SystemHiberFileInformation,
      TraceServicePowerMessage,
      ProcessorLoad,
      PowerShutdownNotification,
      MonitorCapabilities,
      SessionPowerInit,
      SessionDisplayState,
      PowerRequestCreate,
      PowerRequestAction,
      GetPowerRequestList,
      ProcessorInformationEx,
      NotifyUserModeLegacyPowerEvent,
      GroupPark,
      ProcessorIdleDomains,
      WakeTimerList,
      SystemHiberFileSize,
      ProcessorIdleStatesHv,
      ProcessorPerfStatesHv,
      ProcessorPerfCapHv,
      ProcessorSetIdle,
      LogicalProcessorIdling,
      UserPresence,
      PowerSettingNotificationName,
      GetPowerSettingValue,
      IdleResiliency,
      SessionRITState,
      SessionConnectNotification,
      SessionPowerCleanup,
      SessionLockState,
      SystemHiberbootState,
      PlatformInformation,
      PdcInvocation,
      MonitorInvocation,
      FirmwareTableInformationRegistered,
      SetShutdownSelectedTime,
      SuspendResumeInvocation,
      PlmPowerRequestCreate,
      ScreenOff,
      CsDeviceNotification,
      PlatformRole,
      LastResumePerformance,
      DisplayBurst,
      ExitLatencySamplingPercentage,
      RegisterSpmPowerSettings,
      PlatformIdleStates,
      ProcessorIdleVeto,
      PlatformIdleVeto,
      SystemBatteryStatePrecise,
      ThermalEvent,
      PowerRequestActionInternal,
      BatteryDeviceState,
      PowerInformationInternal,
      ThermalStandby,
      SystemHiberFileType,
      PhysicalPowerButtonPress,
      QueryPotentialDripsConstraint,
      EnergyTrackerCreate,
      EnergyTrackerQuery,
      UpdateBlackBoxRecorder,
      PowerInformationLevelMaximum
   );
   for POWER_INFORMATION_LEVEL use (
      SystemPowerPolicyAc => 0,
      SystemPowerPolicyDc => 1,
      VerifySystemPolicyAc => 2,
      VerifySystemPolicyDc => 3,
      SystemPowerCapabilities => 4,
      SystemBatteryState => 5,
      SystemPowerStateHandler => 6,
      ProcessorStateHandler => 7,
      SystemPowerPolicyCurrent => 8,
      AdministratorPowerPolicy => 9,
      SystemReserveHiberFile => 10,
      ProcessorInformation => 11,
      SystemPowerInformation => 12,
      ProcessorStateHandler2 => 13,
      LastWakeTime => 14,
      LastSleepTime => 15,
      SystemExecutionState => 16,
      SystemPowerStateNotifyHandler => 17,
      ProcessorPowerPolicyAc => 18,
      ProcessorPowerPolicyDc => 19,
      VerifyProcessorPowerPolicyAc => 20,
      VerifyProcessorPowerPolicyDc => 21,
      ProcessorPowerPolicyCurrent => 22,
      SystemPowerStateLogging => 23,
      SystemPowerLoggingEntry => 24,
      SetPowerSettingValue => 25,
      NotifyUserPowerSetting => 26,
      PowerInformationLevelUnused0 => 27,
      SystemMonitorHiberBootPowerOff => 28,
      SystemVideoState => 29,
      TraceApplicationPowerMessage => 30,
      TraceApplicationPowerMessageEnd => 31,
      ProcessorPerfStates => 32,
      ProcessorIdleStates => 33,
      ProcessorCap => 34,
      SystemWakeSource => 35,
      SystemHiberFileInformation => 36,
      TraceServicePowerMessage => 37,
      ProcessorLoad => 38,
      PowerShutdownNotification => 39,
      MonitorCapabilities => 40,
      SessionPowerInit => 41,
      SessionDisplayState => 42,
      PowerRequestCreate => 43,
      PowerRequestAction => 44,
      GetPowerRequestList => 45,
      ProcessorInformationEx => 46,
      NotifyUserModeLegacyPowerEvent => 47,
      GroupPark => 48,
      ProcessorIdleDomains => 49,
      WakeTimerList => 50,
      SystemHiberFileSize => 51,
      ProcessorIdleStatesHv => 52,
      ProcessorPerfStatesHv => 53,
      ProcessorPerfCapHv => 54,
      ProcessorSetIdle => 55,
      LogicalProcessorIdling => 56,
      UserPresence => 57,
      PowerSettingNotificationName => 58,
      GetPowerSettingValue => 59,
      IdleResiliency => 60,
      SessionRITState => 61,
      SessionConnectNotification => 62,
      SessionPowerCleanup => 63,
      SessionLockState => 64,
      SystemHiberbootState => 65,
      PlatformInformation => 66,
      PdcInvocation => 67,
      MonitorInvocation => 68,
      FirmwareTableInformationRegistered => 69,
      SetShutdownSelectedTime => 70,
      SuspendResumeInvocation => 71,
      PlmPowerRequestCreate => 72,
      ScreenOff => 73,
      CsDeviceNotification => 74,
      PlatformRole => 75,
      LastResumePerformance => 76,
      DisplayBurst => 77,
      ExitLatencySamplingPercentage => 78,
      RegisterSpmPowerSettings => 79,
      PlatformIdleStates => 80,
      ProcessorIdleVeto => 81,
      PlatformIdleVeto => 82,
      SystemBatteryStatePrecise => 83,
      ThermalEvent => 84,
      PowerRequestActionInternal => 85,
      BatteryDeviceState => 86,
      PowerInformationInternal => 87,
      ThermalStandby => 88,
      SystemHiberFileType => 89,
      PhysicalPowerButtonPress => 90,
      QueryPotentialDripsConstraint => 91,
      EnergyTrackerCreate => 92,
      EnergyTrackerQuery => 93,
      UpdateBlackBoxRecorder => 94,
      PowerInformationLevelMaximum => 95
   );
   for POWER_INFORMATION_LEVEL'Size use 32;
   
   -- type PPOWER_USER_PRESENCE_TYPE is access all POWER_USER_PRESENCE_TYPE;
   type POWER_USER_PRESENCE_TYPE is (
      UserNotPresent,
      UserPresent,
      UserUnknown
   );
   for POWER_USER_PRESENCE_TYPE use (
      UserNotPresent => 0,
      UserPresent => 1,
      UserUnknown => 255
   );
   for POWER_USER_PRESENCE_TYPE'Size use 32;
   
   -- type PPOWER_USER_PRESENCE is access all POWER_USER_PRESENCE;
   -- type PPOWER_SESSION_CONNECT is access all POWER_SESSION_CONNECT;
   -- type PPOWER_SESSION_TIMEOUTS is access all POWER_SESSION_TIMEOUTS;
   -- type PPOWER_SESSION_RIT_STATE is access all POWER_SESSION_RIT_STATE;
   -- type PPOWER_SESSION_WINLOGON is access all POWER_SESSION_WINLOGON;
   -- type PPOWER_IDLE_RESILIENCY is access all POWER_IDLE_RESILIENCY;
   type POWER_MONITOR_REQUEST_REASON is (
      MonitorRequestReasonUnknown,
      MonitorRequestReasonPowerButton,
      MonitorRequestReasonRemoteConnection,
      MonitorRequestReasonScMonitorpower,
      MonitorRequestReasonUserInput,
      MonitorRequestReasonAcDcDisplayBurst,
      MonitorRequestReasonUserDisplayBurst,
      MonitorRequestReasonPoSetSystemState,
      MonitorRequestReasonSetThreadExecutionState,
      MonitorRequestReasonFullWake,
      MonitorRequestReasonSessionUnlock,
      MonitorRequestReasonScreenOffRequest,
      MonitorRequestReasonIdleTimeout,
      MonitorRequestReasonPolicyChange,
      MonitorRequestReasonSleepButton,
      MonitorRequestReasonLid,
      MonitorRequestReasonBatteryCountChange,
      MonitorRequestReasonGracePeriod,
      MonitorRequestReasonPnP,
      MonitorRequestReasonDP,
      MonitorRequestReasonSxTransition,
      MonitorRequestReasonSystemIdle,
      MonitorRequestReasonNearProximity,
      MonitorRequestReasonThermalStandby,
      MonitorRequestReasonResumePdc,
      MonitorRequestReasonResumeS4,
      MonitorRequestReasonTerminal,
      MonitorRequestReasonPdcSignal,
      MonitorRequestReasonAcDcDisplayBurstSuppressed,
      MonitorRequestReasonSystemStateEntered,
      MonitorRequestReasonWinrt,
      MonitorRequestReasonUserInputKeyboard,
      MonitorRequestReasonUserInputMouse,
      MonitorRequestReasonUserInputTouch,
      MonitorRequestReasonUserInputPen,
      MonitorRequestReasonUserInputAccelerometer,
      MonitorRequestReasonUserInputHid,
      MonitorRequestReasonUserInputPoUserPresent,
      MonitorRequestReasonUserInputSessionSwitch,
      MonitorRequestReasonUserInputInitialization,
      MonitorRequestReasonPdcSignalWindowsMobilePwrNotif,
      MonitorRequestReasonPdcSignalWindowsMobileShell,
      MonitorRequestReasonPdcSignalHeyCortana,
      MonitorRequestReasonPdcSignalHolographicShell,
      MonitorRequestReasonMax
   );
   for POWER_MONITOR_REQUEST_REASON use (
      MonitorRequestReasonUnknown => 0,
      MonitorRequestReasonPowerButton => 1,
      MonitorRequestReasonRemoteConnection => 2,
      MonitorRequestReasonScMonitorpower => 3,
      MonitorRequestReasonUserInput => 4,
      MonitorRequestReasonAcDcDisplayBurst => 5,
      MonitorRequestReasonUserDisplayBurst => 6,
      MonitorRequestReasonPoSetSystemState => 7,
      MonitorRequestReasonSetThreadExecutionState => 8,
      MonitorRequestReasonFullWake => 9,
      MonitorRequestReasonSessionUnlock => 10,
      MonitorRequestReasonScreenOffRequest => 11,
      MonitorRequestReasonIdleTimeout => 12,
      MonitorRequestReasonPolicyChange => 13,
      MonitorRequestReasonSleepButton => 14,
      MonitorRequestReasonLid => 15,
      MonitorRequestReasonBatteryCountChange => 16,
      MonitorRequestReasonGracePeriod => 17,
      MonitorRequestReasonPnP => 18,
      MonitorRequestReasonDP => 19,
      MonitorRequestReasonSxTransition => 20,
      MonitorRequestReasonSystemIdle => 21,
      MonitorRequestReasonNearProximity => 22,
      MonitorRequestReasonThermalStandby => 23,
      MonitorRequestReasonResumePdc => 24,
      MonitorRequestReasonResumeS4 => 25,
      MonitorRequestReasonTerminal => 26,
      MonitorRequestReasonPdcSignal => 27,
      MonitorRequestReasonAcDcDisplayBurstSuppressed => 28,
      MonitorRequestReasonSystemStateEntered => 29,
      MonitorRequestReasonWinrt => 30,
      MonitorRequestReasonUserInputKeyboard => 31,
      MonitorRequestReasonUserInputMouse => 32,
      MonitorRequestReasonUserInputTouch => 33,
      MonitorRequestReasonUserInputPen => 34,
      MonitorRequestReasonUserInputAccelerometer => 35,
      MonitorRequestReasonUserInputHid => 36,
      MonitorRequestReasonUserInputPoUserPresent => 37,
      MonitorRequestReasonUserInputSessionSwitch => 38,
      MonitorRequestReasonUserInputInitialization => 39,
      MonitorRequestReasonPdcSignalWindowsMobilePwrNotif => 40,
      MonitorRequestReasonPdcSignalWindowsMobileShell => 41,
      MonitorRequestReasonPdcSignalHeyCortana => 42,
      MonitorRequestReasonPdcSignalHolographicShell => 43,
      MonitorRequestReasonMax => 44
   );
   for POWER_MONITOR_REQUEST_REASON'Size use 32;
   
   type POWER_MONITOR_REQUEST_TYPE is (
      MonitorRequestTypeOff,
      MonitorRequestTypeOnAndPresent,
      MonitorRequestTypeToggleOn
   );
   for POWER_MONITOR_REQUEST_TYPE use (
      MonitorRequestTypeOff => 0,
      MonitorRequestTypeOnAndPresent => 1,
      MonitorRequestTypeToggleOn => 2
   );
   for POWER_MONITOR_REQUEST_TYPE'Size use 32;
   
   -- type PPOWER_MONITOR_INVOCATION is access all POWER_MONITOR_INVOCATION;
   -- type PRESUME_PERFORMANCE is access all RESUME_PERFORMANCE;
   type SYSTEM_POWER_CONDITION is (
      PoAc,
      PoDc,
      PoHot,
      PoConditionMaximum
   );
   for SYSTEM_POWER_CONDITION use (
      PoAc => 0,
      PoDc => 1,
      PoHot => 2,
      PoConditionMaximum => 3
   );
   for SYSTEM_POWER_CONDITION'Size use 32;
   
   -- type PSET_POWER_SETTING_VALUE is access all SET_POWER_SETTING_VALUE;
   -- type PNOTIFY_USER_POWER_SETTING is access all NOTIFY_USER_POWER_SETTING;
   -- type PAPPLICATIONLAUNCH_SETTING_VALUE is access all APPLICATIONLAUNCH_SETTING_VALUE;
   type POWER_PLATFORM_ROLE is (
      PlatformRoleUnspecified,
      PlatformRoleDesktop,
      PlatformRoleMobile,
      PlatformRoleWorkstation,
      PlatformRoleEnterpriseServer,
      PlatformRoleSOHOServer,
      PlatformRoleAppliancePC,
      PlatformRolePerformanceServer,
      PlatformRoleSlate,
      PlatformRoleMaximum
   );
   for POWER_PLATFORM_ROLE use (
      PlatformRoleUnspecified => 0,
      PlatformRoleDesktop => 1,
      PlatformRoleMobile => 2,
      PlatformRoleWorkstation => 3,
      PlatformRoleEnterpriseServer => 4,
      PlatformRoleSOHOServer => 5,
      PlatformRoleAppliancePC => 6,
      PlatformRolePerformanceServer => 7,
      PlatformRoleSlate => 8,
      PlatformRoleMaximum => 9
   );
   for POWER_PLATFORM_ROLE'Size use 32;
   
   -- type PPOWER_PLATFORM_ROLE is access all POWER_PLATFORM_ROLE;
   -- type PPOWER_PLATFORM_INFORMATION is access all POWER_PLATFORM_INFORMATION;
   -- type PBATTERY_REPORTING_SCALE is access all BATTERY_REPORTING_SCALE;
   -- type PPPM_WMI_LEGACY_PERFSTATE is access all PPM_WMI_LEGACY_PERFSTATE;
   -- type PPPM_WMI_IDLE_STATE is access all PPM_WMI_IDLE_STATE;
   -- type PPPM_WMI_IDLE_STATES is access all PPM_WMI_IDLE_STATES;
   -- type PPPM_WMI_IDLE_STATES_EX is access all PPM_WMI_IDLE_STATES_EX;
   -- type PPPM_WMI_PERF_STATE is access all PPM_WMI_PERF_STATE;
   -- type PPPM_WMI_PERF_STATES is access all PPM_WMI_PERF_STATES;
   -- type PPPM_WMI_PERF_STATES_EX is access all PPM_WMI_PERF_STATES_EX;
   -- type PPPM_IDLE_STATE_ACCOUNTING is access all PPM_IDLE_STATE_ACCOUNTING;
   -- type PPPM_IDLE_ACCOUNTING is access all PPM_IDLE_ACCOUNTING;
   -- type PPPM_IDLE_STATE_BUCKET_EX is access all PPM_IDLE_STATE_BUCKET_EX;
   -- type PPPM_IDLE_STATE_ACCOUNTING_EX is access all PPM_IDLE_STATE_ACCOUNTING_EX;
   -- type PPPM_IDLE_ACCOUNTING_EX is access all PPM_IDLE_ACCOUNTING_EX;
   -- type PPPM_PERFSTATE_EVENT is access all PPM_PERFSTATE_EVENT;
   -- type PPPM_PERFSTATE_DOMAIN_EVENT is access all PPM_PERFSTATE_DOMAIN_EVENT;
   -- type PPPM_IDLESTATE_EVENT is access all PPM_IDLESTATE_EVENT;
   -- type PPPM_THERMALCHANGE_EVENT is access all PPM_THERMALCHANGE_EVENT;
   -- type PPPM_THERMAL_POLICY_EVENT is access all PPM_THERMAL_POLICY_EVENT;
   -- type PPOWER_ACTION_POLICY is access all POWER_ACTION_POLICY;
   -- type PSYSTEM_POWER_LEVEL is access all SYSTEM_POWER_LEVEL;
   -- type PSYSTEM_POWER_POLICY is access all SYSTEM_POWER_POLICY;
   -- type PPROCESSOR_IDLESTATE_INFO is access all PROCESSOR_IDLESTATE_INFO;
   -- type PPROCESSOR_IDLESTATE_POLICY is access all PROCESSOR_IDLESTATE_POLICY;
   -- type PPROCESSOR_POWER_POLICY_INFO is access all PROCESSOR_POWER_POLICY_INFO;
   -- type PPROCESSOR_POWER_POLICY is access all PROCESSOR_POWER_POLICY;
   -- type PPROCESSOR_PERFSTATE_POLICY is access all PROCESSOR_PERFSTATE_POLICY;
   -- type PADMINISTRATOR_POWER_POLICY is access all ADMINISTRATOR_POWER_POLICY;
   type HIBERFILE_BUCKET_SIZE is (
      HiberFileBucket1GB,
      HiberFileBucket2GB,
      HiberFileBucket4GB,
      HiberFileBucket8GB,
      HiberFileBucket16GB,
      HiberFileBucket32GB,
      HiberFileBucketUnlimited,
      HiberFileBucketMax
   );
   for HIBERFILE_BUCKET_SIZE use (
      HiberFileBucket1GB => 0,
      HiberFileBucket2GB => 1,
      HiberFileBucket4GB => 2,
      HiberFileBucket8GB => 3,
      HiberFileBucket16GB => 4,
      HiberFileBucket32GB => 5,
      HiberFileBucketUnlimited => 6,
      HiberFileBucketMax => 7
   );
   for HIBERFILE_BUCKET_SIZE'Size use 32;
   
   -- type PHIBERFILE_BUCKET_SIZE is access all HIBERFILE_BUCKET_SIZE;
   -- type PHIBERFILE_BUCKET is access all HIBERFILE_BUCKET;
   -- type PSYSTEM_POWER_CAPABILITIES is access all SYSTEM_POWER_CAPABILITIES;
   -- type PSYSTEM_BATTERY_STATE is access all SYSTEM_BATTERY_STATE;
   -- type PIMAGE_DOS_HEADER is access all IMAGE_DOS_HEADER;
   -- type PIMAGE_OS2_HEADER is access all IMAGE_OS2_HEADER;
   -- type PIMAGE_VXD_HEADER is access all IMAGE_VXD_HEADER;
   -- type PIMAGE_FILE_HEADER is access all IMAGE_FILE_HEADER;
   -- type PIMAGE_DATA_DIRECTORY is access all IMAGE_DATA_DIRECTORY;
   -- type PIMAGE_OPTIONAL_HEADER32 is access all IMAGE_OPTIONAL_HEADER;
   -- type PIMAGE_ROM_OPTIONAL_HEADER is access all IMAGE_ROM_OPTIONAL_HEADER;
   -- type PIMAGE_OPTIONAL_HEADER64 is access all IMAGE_OPTIONAL_HEADER64;
   -- type PIMAGE_NT_HEADERS64 is access all IMAGE_NT_HEADERS64;
   -- type PIMAGE_NT_HEADERS32 is access all IMAGE_NT_HEADERS;
   -- type PIMAGE_ROM_HEADERS is access all IMAGE_ROM_HEADERS;
   -- type PIMAGE_SECTION_HEADER is access all IMAGE_SECTION_HEADER;
   -- type PIMAGE_SYMBOL is access all IMAGE_SYMBOL;
   -- type PIMAGE_SYMBOL_EX is access all IMAGE_SYMBOL_EX;
   -- type PIMAGE_AUX_SYMBOL_TOKEN_DEF is access all IMAGE_AUX_SYMBOL_TOKEN_DEF;
   -- type PIMAGE_AUX_SYMBOL is access all IMAGE_AUX_SYMBOL;
   -- type PIMAGE_AUX_SYMBOL_EX is access all IMAGE_AUX_SYMBOL_EX;
   type IMAGE_AUX_SYMBOL_TYPE is (
      IMAGE_AUX_SYMBOL_TYPE_TOKEN_DEF
   );
   for IMAGE_AUX_SYMBOL_TYPE use (
      IMAGE_AUX_SYMBOL_TYPE_TOKEN_DEF => 1
   );
   for IMAGE_AUX_SYMBOL_TYPE'Size use 32;
   
   -- type PIMAGE_RELOCATION is access all IMAGE_RELOCATION;
   -- type PIMAGE_LINENUMBER is access all IMAGE_LINENUMBER;
   -- type PIMAGE_BASE_RELOCATION is access all IMAGE_BASE_RELOCATION;
   -- type PIMAGE_ARCHIVE_MEMBER_HEADER is access all IMAGE_ARCHIVE_MEMBER_HEADER;
   -- type PIMAGE_EXPORT_DIRECTORY is access all IMAGE_EXPORT_DIRECTORY;
   -- type PIMAGE_IMPORT_BY_NAME is access all IMAGE_IMPORT_BY_NAME;
   -- type PIMAGE_THUNK_DATA64 is access all IMAGE_THUNK_DATA64;
   -- type PIMAGE_THUNK_DATA32 is access all IMAGE_THUNK_DATA32;
   -- type PIMAGE_TLS_DIRECTORY64 is access all IMAGE_TLS_DIRECTORY64;
   -- type PIMAGE_TLS_DIRECTORY32 is access all IMAGE_TLS_DIRECTORY32;
   -- type PIMAGE_IMPORT_DESCRIPTOR is access all IMAGE_IMPORT_DESCRIPTOR;
   -- type PIMAGE_BOUND_IMPORT_DESCRIPTOR is access all IMAGE_BOUND_IMPORT_DESCRIPTOR;
   -- type PIMAGE_BOUND_FORWARDER_REF is access all IMAGE_BOUND_FORWARDER_REF;
   -- type PIMAGE_DELAYLOAD_DESCRIPTOR is access all IMAGE_DELAYLOAD_DESCRIPTOR;
   -- type PCIMAGE_DELAYLOAD_DESCRIPTOR is access all IMAGE_DELAYLOAD_DESCRIPTOR;
   -- type PIMAGE_RESOURCE_DIRECTORY is access all IMAGE_RESOURCE_DIRECTORY;
   -- type PIMAGE_RESOURCE_DIRECTORY_ENTRY is access all IMAGE_RESOURCE_DIRECTORY_ENTRY;
   -- type PIMAGE_RESOURCE_DIRECTORY_STRING is access all IMAGE_RESOURCE_DIRECTORY_STRING;
   -- type PIMAGE_RESOURCE_DIR_STRING_U is access all IMAGE_RESOURCE_DIR_STRING_U;
   -- type PIMAGE_RESOURCE_DATA_ENTRY is access all IMAGE_RESOURCE_DATA_ENTRY;
   -- type PIMAGE_LOAD_CONFIG_CODE_INTEGRITY is access all IMAGE_LOAD_CONFIG_CODE_INTEGRITY;
   -- type PIMAGE_DYNAMIC_RELOCATION_TABLE is access all IMAGE_DYNAMIC_RELOCATION_TABLE;
   -- type PIMAGE_DYNAMIC_RELOCATION32 is access all IMAGE_DYNAMIC_RELOCATION32;
   -- type PIMAGE_DYNAMIC_RELOCATION64 is access all IMAGE_DYNAMIC_RELOCATION64;
   -- type PIMAGE_DYNAMIC_RELOCATION32_V2 is access all IMAGE_DYNAMIC_RELOCATION32_V2;
   -- type PIMAGE_DYNAMIC_RELOCATION64_V2 is access all IMAGE_DYNAMIC_RELOCATION64_V2;
   -- type PIMAGE_PROLOGUE_DYNAMIC_RELOCATION_HEADER is access all IMAGE_PROLOGUE_DYNAMIC_RELOCATION_HEADER;
   -- type PIMAGE_EPILOGUE_DYNAMIC_RELOCATION_HEADER is access all IMAGE_EPILOGUE_DYNAMIC_RELOCATION_HEADER;
   -- type PIMAGE_LOAD_CONFIG_DIRECTORY32 is access all IMAGE_LOAD_CONFIG_DIRECTORY32;
   -- type PIMAGE_LOAD_CONFIG_DIRECTORY64 is access all IMAGE_LOAD_CONFIG_DIRECTORY64;
   -- type PIMAGE_HOT_PATCH_INFO is access all IMAGE_HOT_PATCH_INFO;
   -- type PIMAGE_HOT_PATCH_BASE is access all IMAGE_HOT_PATCH_BASE;
   -- type PIMAGE_HOT_PATCH_HASHES is access all IMAGE_HOT_PATCH_HASHES;
   -- type PIMAGE_CE_RUNTIME_FUNCTION_ENTRY is access all IMAGE_CE_RUNTIME_FUNCTION_ENTRY;
   -- type PIMAGE_ARM_RUNTIME_FUNCTION_ENTRY is access all IMAGE_ARM_RUNTIME_FUNCTION_ENTRY;
   -- type PIMAGE_ARM64_RUNTIME_FUNCTION_ENTRY is access all IMAGE_ARM64_RUNTIME_FUNCTION_ENTRY;
   -- type PIMAGE_ALPHA64_RUNTIME_FUNCTION_ENTRY is access all IMAGE_ALPHA64_RUNTIME_FUNCTION_ENTRY;
   -- type PIMAGE_ALPHA_RUNTIME_FUNCTION_ENTRY is access all IMAGE_ALPHA_RUNTIME_FUNCTION_ENTRY;
   -- type PIMAGE_RUNTIME_FUNCTION_ENTRY is access all IMAGE_RUNTIME_FUNCTION_ENTRY;
   -- type PIMAGE_ENCLAVE_CONFIG32 is access all IMAGE_ENCLAVE_CONFIG32;
   -- type PIMAGE_ENCLAVE_CONFIG64 is access all IMAGE_ENCLAVE_CONFIG64;
   -- type PIMAGE_ENCLAVE_IMPORT is access all IMAGE_ENCLAVE_IMPORT;
   -- type PIMAGE_DEBUG_DIRECTORY is access all IMAGE_DEBUG_DIRECTORY;
   -- type PIMAGE_COFF_SYMBOLS_HEADER is access all IMAGE_COFF_SYMBOLS_HEADER;
   -- type PFPO_DATA is access all FPO_DATA;
   -- type PIMAGE_DEBUG_MISC is access all IMAGE_DEBUG_MISC;
   -- type PIMAGE_FUNCTION_ENTRY is access all IMAGE_FUNCTION_ENTRY;
   -- type PIMAGE_FUNCTION_ENTRY64 is access all IMAGE_FUNCTION_ENTRY64;
   -- type PIMAGE_SEPARATE_DEBUG_HEADER is access all IMAGE_SEPARATE_DEBUG_HEADER;
   -- type PNON_PAGED_DEBUG_INFO is access all NON_PAGED_DEBUG_INFO;
   -- type PIMAGE_ARCHITECTURE_HEADER is access all ImageArchitectureHeader;
   -- type PIMAGE_ARCHITECTURE_ENTRY is access all ImageArchitectureEntry;
   type IMPORT_OBJECT_TYPE is (
      IMPORT_OBJECT_CODE,
      IMPORT_OBJECT_DATA,
      IMPORT_OBJECT_CONST
   );
   for IMPORT_OBJECT_TYPE use (
      IMPORT_OBJECT_CODE => 0,
      IMPORT_OBJECT_DATA => 1,
      IMPORT_OBJECT_CONST => 2
   );
   for IMPORT_OBJECT_TYPE'Size use 32;
   
   type IMPORT_OBJECT_NAME_TYPE is (
      IMPORT_OBJECT_ORDINAL,
      IMPORT_OBJECT_NAME,
      IMPORT_OBJECT_NAME_NO_PREFIX,
      IMPORT_OBJECT_NAME_UNDECORATE,
      IMPORT_OBJECT_NAME_EXPORTAS
   );
   for IMPORT_OBJECT_NAME_TYPE use (
      IMPORT_OBJECT_ORDINAL => 0,
      IMPORT_OBJECT_NAME => 1,
      IMPORT_OBJECT_NAME_NO_PREFIX => 2,
      IMPORT_OBJECT_NAME_UNDECORATE => 3,
      IMPORT_OBJECT_NAME_EXPORTAS => 4
   );
   for IMPORT_OBJECT_NAME_TYPE'Size use 32;
   
   type ReplacesCorHdrNumericDefines is (
      COMIMAGE_FLAGS_ILONLY,
      COR_VERSION_MAJOR_V2,
      COMIMAGE_FLAGS_IL_LIBRARY,
      COR_VERSION_MINOR,
      COR_VTABLE_FROM_UNMANAGED_RETAIN_APPDOMAIN,
      COR_VTABLE_CALL_MOST_DERIVED,
      IMAGE_COR_EATJ_THUNK_SIZE,
      COR_ILMETHOD_SECT_SMALL_MAX_DATASIZE,
      MAX_CLASS_NAME,
      COMIMAGE_FLAGS_TRACKDEBUGDATA,
      COMIMAGE_FLAGS_32BITPREFERRED
   );
   for ReplacesCorHdrNumericDefines use (
      COMIMAGE_FLAGS_ILONLY => 1,
      COR_VERSION_MAJOR_V2 => 2,
      COMIMAGE_FLAGS_IL_LIBRARY => 4,
      COR_VERSION_MINOR => 5,
      COR_VTABLE_FROM_UNMANAGED_RETAIN_APPDOMAIN => 8,
      COR_VTABLE_CALL_MOST_DERIVED => 16,
      IMAGE_COR_EATJ_THUNK_SIZE => 32,
      COR_ILMETHOD_SECT_SMALL_MAX_DATASIZE => 255,
      MAX_CLASS_NAME => 1024,
      COMIMAGE_FLAGS_TRACKDEBUGDATA => 65536,
      COMIMAGE_FLAGS_32BITPREFERRED => 131072
   );
   for ReplacesCorHdrNumericDefines'Size use 32;
   
   -- type PIMAGE_COR20_HEADER is access all IMAGE_COR20_HEADER;
   -- type PSLIST_ENTRY is access all SINGLE_LIST_ENTRY;
   -- type PSLIST_HEADER is access all SLIST_HEADER;
   -- type PRTL_RUN_ONCE is access all RTL_RUN_ONCE;
   -- type PRTL_BARRIER is access all RTL_BARRIER;
   -- type PMESSAGE_RESOURCE_ENTRY is access all MESSAGE_RESOURCE_ENTRY;
   -- type PMESSAGE_RESOURCE_BLOCK is access all MESSAGE_RESOURCE_BLOCK;
   -- type PMESSAGE_RESOURCE_DATA is access all MESSAGE_RESOURCE_DATA;
   -- type POSVERSIONINFOA is access all OSVERSIONINFOA;
   -- type LPOSVERSIONINFOA is access all OSVERSIONINFOA;
   -- type POSVERSIONINFOW is access all OSVERSIONINFOW;
   -- type LPOSVERSIONINFOW is access all OSVERSIONINFOW;
   -- type PRTL_OSVERSIONINFOW is access all OSVERSIONINFOW;
   -- type POSVERSIONINFOEXA is access all OSVERSIONINFOEXA;
   -- type LPOSVERSIONINFOEXA is access all OSVERSIONINFOEXA;
   -- type LPOSVERSIONINFOEXW is access all OSVERSIONINFOEXW;
   -- type POSVERSIONINFOEXW is access all OSVERSIONINFOEXW;
   -- type PRTL_OSVERSIONINFOEXW is access all OSVERSIONINFOEXW;
   -- type PRTL_UMS_THREAD_INFO_CLASS is access all RTL_UMS_THREAD_INFO_CLASS;
   type RTL_UMS_THREAD_INFO_CLASS is (
      UmsThreadInvalidInfoClass,
      UmsThreadUserContext,
      UmsThreadPriority,
      UmsThreadAffinity,
      UmsThreadTeb,
      UmsThreadIsSuspended,
      UmsThreadIsTerminated,
      UmsThreadMaxInfoClass
   );
   for RTL_UMS_THREAD_INFO_CLASS use (
      UmsThreadInvalidInfoClass => 0,
      UmsThreadUserContext => 1,
      UmsThreadPriority => 2,
      UmsThreadAffinity => 3,
      UmsThreadTeb => 4,
      UmsThreadIsSuspended => 5,
      UmsThreadIsTerminated => 6,
      UmsThreadMaxInfoClass => 7
   );
   for RTL_UMS_THREAD_INFO_CLASS'Size use 32;
   
   -- type PRTL_UMS_SCHEDULER_REASON is access all RTL_UMS_SCHEDULER_REASON;
   type RTL_UMS_SCHEDULER_REASON is (
      UmsSchedulerStartup,
      UmsSchedulerThreadBlocked,
      UmsSchedulerThreadYield
   );
   for RTL_UMS_SCHEDULER_REASON use (
      UmsSchedulerStartup => 0,
      UmsSchedulerThreadBlocked => 1,
      UmsSchedulerThreadYield => 2
   );
   for RTL_UMS_SCHEDULER_REASON'Size use 32;
   
   -- type PRTL_UMS_SCHEDULER_ENTRY_POINT is access all RTL_UMS_SCHEDULER_ENTRY_POINT;
   type OS_DEPLOYEMENT_STATE_VALUES is (
      OS_DEPLOYMENT_STANDARD,
      OS_DEPLOYMENT_COMPACT
   );
   for OS_DEPLOYEMENT_STATE_VALUES use (
      OS_DEPLOYMENT_STANDARD => 1,
      OS_DEPLOYMENT_COMPACT => 2
   );
   for OS_DEPLOYEMENT_STATE_VALUES'Size use 32;
   
   -- type PCORRELATION_VECTOR is access all CORRELATION_VECTOR;
   type IMAGE_POLICY_ENTRY_TYPE is (
      ImagePolicyEntryTypeNone,
      ImagePolicyEntryTypeBool,
      ImagePolicyEntryTypeInt8,
      ImagePolicyEntryTypeUInt8,
      ImagePolicyEntryTypeInt16,
      ImagePolicyEntryTypeUInt16,
      ImagePolicyEntryTypeInt32,
      ImagePolicyEntryTypeUInt32,
      ImagePolicyEntryTypeInt64,
      ImagePolicyEntryTypeUInt64,
      ImagePolicyEntryTypeAnsiString,
      ImagePolicyEntryTypeUnicodeString,
      ImagePolicyEntryTypeMaximum
   );
   for IMAGE_POLICY_ENTRY_TYPE use (
      ImagePolicyEntryTypeNone => 0,
      ImagePolicyEntryTypeBool => 1,
      ImagePolicyEntryTypeInt8 => 2,
      ImagePolicyEntryTypeUInt8 => 3,
      ImagePolicyEntryTypeInt16 => 4,
      ImagePolicyEntryTypeUInt16 => 5,
      ImagePolicyEntryTypeInt32 => 6,
      ImagePolicyEntryTypeUInt32 => 7,
      ImagePolicyEntryTypeInt64 => 8,
      ImagePolicyEntryTypeUInt64 => 9,
      ImagePolicyEntryTypeAnsiString => 10,
      ImagePolicyEntryTypeUnicodeString => 11,
      ImagePolicyEntryTypeMaximum => 12
   );
   for IMAGE_POLICY_ENTRY_TYPE'Size use 32;
   
   type IMAGE_POLICY_ID is (
      ImagePolicyIdNone,
      ImagePolicyIdEtw,
      ImagePolicyIdDebug,
      ImagePolicyIdCrashDump,
      ImagePolicyIdCrashDumpKey,
      ImagePolicyIdCrashDumpKeyGuid,
      ImagePolicyIdParentSd,
      ImagePolicyIdParentSdRev,
      ImagePolicyIdSvn,
      ImagePolicyIdDeviceId,
      ImagePolicyIdCapability,
      ImagePolicyIdScenarioId,
      ImagePolicyIdMaximum
   );
   for IMAGE_POLICY_ID use (
      ImagePolicyIdNone => 0,
      ImagePolicyIdEtw => 1,
      ImagePolicyIdDebug => 2,
      ImagePolicyIdCrashDump => 3,
      ImagePolicyIdCrashDumpKey => 4,
      ImagePolicyIdCrashDumpKeyGuid => 5,
      ImagePolicyIdParentSd => 6,
      ImagePolicyIdParentSdRev => 7,
      ImagePolicyIdSvn => 8,
      ImagePolicyIdDeviceId => 9,
      ImagePolicyIdCapability => 10,
      ImagePolicyIdScenarioId => 11,
      ImagePolicyIdMaximum => 12
   );
   for IMAGE_POLICY_ID'Size use 32;
   
   -- type PCIMAGE_POLICY_ENTRY is access all IMAGE_POLICY_ENTRY;
   -- type PCIMAGE_POLICY_METADATA is access all IMAGE_POLICY_METADATA;
   -- type PRTL_RESOURCE_DEBUG is access all RTL_CRITICAL_SECTION_DEBUG;
   -- type PRTL_CRITICAL_SECTION_DEBUG is access all RTL_CRITICAL_SECTION_DEBUG;
   -- type RTL_CRITICAL_SECTION; -- forward declaration
   -- type PRTL_CRITICAL_SECTION is access all RTL_CRITICAL_SECTION;
   -- type PRTL_SRWLOCK is access all RTL_SRWLOCK;
   -- type PRTL_CONDITION_VARIABLE is access all RTL_CONDITION_VARIABLE;
   type HEAP_INFORMATION_CLASS is (
      HeapCompatibilityInformation,
      HeapEnableTerminationOnCorruption,
      HeapOptimizeResources
   );
   for HEAP_INFORMATION_CLASS use (
      HeapCompatibilityInformation => 0,
      HeapEnableTerminationOnCorruption => 1,
      HeapOptimizeResources => 3
   );
   for HEAP_INFORMATION_CLASS'Size use 32;
   
   -- type PHEAP_OPTIMIZE_RESOURCES_INFORMATION is access all HEAP_OPTIMIZE_RESOURCES_INFORMATION;
   type ACTIVATION_CONTEXT_INFO_CLASS is (
      ActivationContextBasicInformation,
      ActivationContextDetailedInformation,
      AssemblyDetailedInformationInActivationContext,
      FileInformationInAssemblyOfAssemblyInActivationContext,
      RunlevelInformationInActivationContext,
      CompatibilityInformationInActivationContext,
      ActivationContextManifestResourceName,
      MaxActivationContextInfoClass
   );
   for ACTIVATION_CONTEXT_INFO_CLASS use (
      ActivationContextBasicInformation => 1,
      ActivationContextDetailedInformation => 2,
      AssemblyDetailedInformationInActivationContext => 3,
      FileInformationInAssemblyOfAssemblyInActivationContext => 4,
      RunlevelInformationInActivationContext => 5,
      CompatibilityInformationInActivationContext => 6,
      ActivationContextManifestResourceName => 7,
      MaxActivationContextInfoClass => 8
   );
   for ACTIVATION_CONTEXT_INFO_CLASS'Size use 32;
   
   -- type PACTIVATION_CONTEXT_QUERY_INDEX is access all ACTIVATION_CONTEXT_QUERY_INDEX;
   -- type PCACTIVATION_CONTEXT_QUERY_INDEX is access all ACTIVATION_CONTEXT_QUERY_INDEX;
   -- type PASSEMBLY_FILE_DETAILED_INFORMATION is access all ASSEMBLY_FILE_DETAILED_INFORMATION;
   -- type PCASSEMBLY_FILE_DETAILED_INFORMATION is access all ASSEMBLY_FILE_DETAILED_INFORMATION;
   -- type PACTIVATION_CONTEXT_ASSEMBLY_DETAILED_INFORMATION is access all ACTIVATION_CONTEXT_ASSEMBLY_DETAILED_INFORMATION;
   -- type PCACTIVATION_CONTEXT_ASSEMBLY_DETAILED_INFORMATION is access all ACTIVATION_CONTEXT_ASSEMBLY_DETAILED_INFORMATION;
   type ACTCTX_REQUESTED_RUN_LEVEL is (
      ACTCTX_RUN_LEVEL_UNSPECIFIED,
      ACTCTX_RUN_LEVEL_AS_INVOKER,
      ACTCTX_RUN_LEVEL_HIGHEST_AVAILABLE,
      ACTCTX_RUN_LEVEL_REQUIRE_ADMIN,
      ACTCTX_RUN_LEVEL_NUMBERS
   );
   for ACTCTX_REQUESTED_RUN_LEVEL use (
      ACTCTX_RUN_LEVEL_UNSPECIFIED => 0,
      ACTCTX_RUN_LEVEL_AS_INVOKER => 1,
      ACTCTX_RUN_LEVEL_HIGHEST_AVAILABLE => 2,
      ACTCTX_RUN_LEVEL_REQUIRE_ADMIN => 3,
      ACTCTX_RUN_LEVEL_NUMBERS => 4
   );
   for ACTCTX_REQUESTED_RUN_LEVEL'Size use 32;
   
   -- type PACTIVATION_CONTEXT_RUN_LEVEL_INFORMATION is access all ACTIVATION_CONTEXT_RUN_LEVEL_INFORMATION;
   -- type PCACTIVATION_CONTEXT_RUN_LEVEL_INFORMATION is access all ACTIVATION_CONTEXT_RUN_LEVEL_INFORMATION;
   type ACTCTX_COMPATIBILITY_ELEMENT_TYPE is (
      ACTCTX_COMPATIBILITY_ELEMENT_TYPE_UNKNOWN,
      ACTCTX_COMPATIBILITY_ELEMENT_TYPE_OS,
      ACTCTX_COMPATIBILITY_ELEMENT_TYPE_MITIGATION
   );
   for ACTCTX_COMPATIBILITY_ELEMENT_TYPE use (
      ACTCTX_COMPATIBILITY_ELEMENT_TYPE_UNKNOWN => 0,
      ACTCTX_COMPATIBILITY_ELEMENT_TYPE_OS => 1,
      ACTCTX_COMPATIBILITY_ELEMENT_TYPE_MITIGATION => 2
   );
   for ACTCTX_COMPATIBILITY_ELEMENT_TYPE'Size use 32;
   
   -- type PCOMPATIBILITY_CONTEXT_ELEMENT is access all COMPATIBILITY_CONTEXT_ELEMENT;
   -- type PCCOMPATIBILITY_CONTEXT_ELEMENT is access all COMPATIBILITY_CONTEXT_ELEMENT;
   -- type PACTIVATION_CONTEXT_COMPATIBILITY_INFORMATION is access all ACTIVATION_CONTEXT_COMPATIBILITY_INFORMATION;
   -- type PCACTIVATION_CONTEXT_COMPATIBILITY_INFORMATION is access all ACTIVATION_CONTEXT_COMPATIBILITY_INFORMATION;
   -- type PSUPPORTED_OS_INFO is access all SUPPORTED_OS_INFO;
   -- type PACTIVATION_CONTEXT_DETAILED_INFORMATION is access all ACTIVATION_CONTEXT_DETAILED_INFORMATION;
   -- type PCACTIVATION_CONTEXT_DETAILED_INFORMATION is access all ACTIVATION_CONTEXT_DETAILED_INFORMATION;
   -- type PHARDWARE_COUNTER_DATA is access all HARDWARE_COUNTER_DATA;
   -- type PPERFORMANCE_DATA is access all PERFORMANCE_DATA;
   -- type PEVENTLOGRECORD is access all EVENTLOGRECORD;
   -- type EVENTSFORLOGFILE; -- forward declaration
   -- type PEVENTSFORLOGFILE is access all EVENTSFORLOGFILE;
   -- type PACKEDEVENTINFO; -- forward declaration
   -- type PPACKEDEVENTINFO is access all PACKEDEVENTINFO;
   type CM_SERVICE_NODE_TYPE is (
      DriverType,
      FileSystemType,
      AdapterType,
      RecognizerType,
      Win32ServiceOwnProcess,
      Win32ServiceShareProcess
   );
   for CM_SERVICE_NODE_TYPE use (
      DriverType => 1,
      FileSystemType => 2,
      AdapterType => 4,
      RecognizerType => 8,
      Win32ServiceOwnProcess => 16,
      Win32ServiceShareProcess => 32
   );
   for CM_SERVICE_NODE_TYPE'Size use 32;
   
   type CM_SERVICE_LOAD_TYPE is (
      BootLoad,
      SystemLoad,
      AutoLoad,
      DemandLoad,
      DisableLoad
   );
   for CM_SERVICE_LOAD_TYPE use (
      BootLoad => 0,
      SystemLoad => 1,
      AutoLoad => 2,
      DemandLoad => 3,
      DisableLoad => 4
   );
   for CM_SERVICE_LOAD_TYPE'Size use 32;
   
   type CM_ERROR_CONTROL_TYPE is (
      IgnoreError,
      NormalError,
      SevereError,
      CriticalError
   );
   for CM_ERROR_CONTROL_TYPE use (
      IgnoreError => 0,
      NormalError => 1,
      SevereError => 2,
      CriticalError => 3
   );
   for CM_ERROR_CONTROL_TYPE'Size use 32;
   
   -- type PTAPE_ERASE is access all TAPE_ERASE;
   -- type PTAPE_PREPARE is access all TAPE_PREPARE;
   -- type PTAPE_WRITE_MARKS is access all TAPE_WRITE_MARKS;
   -- type PTAPE_GET_POSITION is access all TAPE_GET_POSITION;
   -- type PTAPE_SET_POSITION is access all TAPE_SET_POSITION;
   -- type PTAPE_GET_DRIVE_PARAMETERS is access all TAPE_GET_DRIVE_PARAMETERS;
   -- type PTAPE_SET_DRIVE_PARAMETERS is access all TAPE_SET_DRIVE_PARAMETERS;
   -- type PTAPE_GET_MEDIA_PARAMETERS is access all TAPE_GET_MEDIA_PARAMETERS;
   -- type PTAPE_SET_MEDIA_PARAMETERS is access all TAPE_SET_MEDIA_PARAMETERS;
   -- type PTAPE_CREATE_PARTITION is access all TAPE_CREATE_PARTITION;
   -- type PTAPE_WMI_OPERATIONS is access all TAPE_WMI_OPERATIONS;
   type TAPE_DRIVE_PROBLEM_TYPE is (
      TapeDriveProblemNone,
      TapeDriveReadWriteWarning,
      TapeDriveReadWriteError,
      TapeDriveReadWarning,
      TapeDriveWriteWarning,
      TapeDriveReadError,
      TapeDriveWriteError,
      TapeDriveHardwareError,
      TapeDriveUnsupportedMedia,
      TapeDriveScsiConnectionError,
      TapeDriveTimetoClean,
      TapeDriveCleanDriveNow,
      TapeDriveMediaLifeExpired,
      TapeDriveSnappedTape
   );
   for TAPE_DRIVE_PROBLEM_TYPE use (
      TapeDriveProblemNone => 0,
      TapeDriveReadWriteWarning => 1,
      TapeDriveReadWriteError => 2,
      TapeDriveReadWarning => 3,
      TapeDriveWriteWarning => 4,
      TapeDriveReadError => 5,
      TapeDriveWriteError => 6,
      TapeDriveHardwareError => 7,
      TapeDriveUnsupportedMedia => 8,
      TapeDriveScsiConnectionError => 9,
      TapeDriveTimetoClean => 10,
      TapeDriveCleanDriveNow => 11,
      TapeDriveMediaLifeExpired => 12,
      TapeDriveSnappedTape => 13
   );
   for TAPE_DRIVE_PROBLEM_TYPE'Size use 32;
   
   type TRANSACTION_OUTCOME is (
      TransactionOutcomeUndetermined,
      TransactionOutcomeCommitted,
      TransactionOutcomeAborted
   );
   for TRANSACTION_OUTCOME use (
      TransactionOutcomeUndetermined => 1,
      TransactionOutcomeCommitted => 2,
      TransactionOutcomeAborted => 3
   );
   for TRANSACTION_OUTCOME'Size use 32;
   
   type TRANSACTION_STATE is (
      TransactionStateNormal,
      TransactionStateIndoubt,
      TransactionStateCommittedNotify
   );
   for TRANSACTION_STATE use (
      TransactionStateNormal => 1,
      TransactionStateIndoubt => 2,
      TransactionStateCommittedNotify => 3
   );
   for TRANSACTION_STATE'Size use 32;
   
   -- type PTRANSACTION_BASIC_INFORMATION is access all TRANSACTION_BASIC_INFORMATION;
   -- type PTRANSACTIONMANAGER_BASIC_INFORMATION is access all TRANSACTIONMANAGER_BASIC_INFORMATION;
   -- type PTRANSACTIONMANAGER_LOG_INFORMATION is access all TRANSACTIONMANAGER_LOG_INFORMATION;
   -- type PTRANSACTIONMANAGER_LOGPATH_INFORMATION is access all TRANSACTIONMANAGER_LOGPATH_INFORMATION;
   -- type PTRANSACTIONMANAGER_RECOVERY_INFORMATION is access all TRANSACTIONMANAGER_RECOVERY_INFORMATION;
   -- type PTRANSACTIONMANAGER_OLDEST_INFORMATION is access all TRANSACTIONMANAGER_OLDEST_INFORMATION;
   -- type PTRANSACTION_PROPERTIES_INFORMATION is access all TRANSACTION_PROPERTIES_INFORMATION;
   -- type PTRANSACTION_BIND_INFORMATION is access all TRANSACTION_BIND_INFORMATION;
   -- type PTRANSACTION_ENLISTMENT_PAIR is access all TRANSACTION_ENLISTMENT_PAIR;
   -- type PTRANSACTION_ENLISTMENTS_INFORMATION is access all TRANSACTION_ENLISTMENTS_INFORMATION;
   -- type PTRANSACTION_SUPERIOR_ENLISTMENT_INFORMATION is access all TRANSACTION_SUPERIOR_ENLISTMENT_INFORMATION;
   -- type PRESOURCEMANAGER_BASIC_INFORMATION is access all RESOURCEMANAGER_BASIC_INFORMATION;
   -- type PRESOURCEMANAGER_COMPLETION_INFORMATION is access all RESOURCEMANAGER_COMPLETION_INFORMATION;
   type TRANSACTION_INFORMATION_CLASS is (
      TransactionBasicInformation,
      TransactionPropertiesInformation,
      TransactionEnlistmentInformation,
      TransactionSuperiorEnlistmentInformation,
      TransactionBindInformation,
      TransactionDTCPrivateInformation
   );
   for TRANSACTION_INFORMATION_CLASS use (
      TransactionBasicInformation => 0,
      TransactionPropertiesInformation => 1,
      TransactionEnlistmentInformation => 2,
      TransactionSuperiorEnlistmentInformation => 3,
      TransactionBindInformation => 4,
      TransactionDTCPrivateInformation => 5
   );
   for TRANSACTION_INFORMATION_CLASS'Size use 32;
   
   type TRANSACTIONMANAGER_INFORMATION_CLASS is (
      TransactionManagerBasicInformation,
      TransactionManagerLogInformation,
      TransactionManagerLogPathInformation,
      TransactionManagerOnlineProbeInformation,
      TransactionManagerRecoveryInformation,
      TransactionManagerOldestTransactionInformation
   );
   for TRANSACTIONMANAGER_INFORMATION_CLASS use (
      TransactionManagerBasicInformation => 0,
      TransactionManagerLogInformation => 1,
      TransactionManagerLogPathInformation => 2,
      TransactionManagerOnlineProbeInformation => 3,
      TransactionManagerRecoveryInformation => 4,
      TransactionManagerOldestTransactionInformation => 5
   );
   for TRANSACTIONMANAGER_INFORMATION_CLASS'Size use 32;
   
   type RESOURCEMANAGER_INFORMATION_CLASS is (
      ResourceManagerBasicInformation,
      ResourceManagerCompletionInformation
   );
   for RESOURCEMANAGER_INFORMATION_CLASS use (
      ResourceManagerBasicInformation => 0,
      ResourceManagerCompletionInformation => 1
   );
   for RESOURCEMANAGER_INFORMATION_CLASS'Size use 32;
   
   -- type PENLISTMENT_BASIC_INFORMATION is access all ENLISTMENT_BASIC_INFORMATION;
   -- type PENLISTMENT_CRM_INFORMATION is access all ENLISTMENT_CRM_INFORMATION;
   type ENLISTMENT_INFORMATION_CLASS is (
      EnlistmentBasicInformation,
      EnlistmentRecoveryInformation,
      EnlistmentCrmInformation
   );
   for ENLISTMENT_INFORMATION_CLASS use (
      EnlistmentBasicInformation => 0,
      EnlistmentRecoveryInformation => 1,
      EnlistmentCrmInformation => 2
   );
   for ENLISTMENT_INFORMATION_CLASS'Size use 32;
   
   -- type PTRANSACTION_LIST_ENTRY is access all TRANSACTION_LIST_ENTRY;
   -- type PTRANSACTION_LIST_INFORMATION is access all TRANSACTION_LIST_INFORMATION;
   type KTMOBJECT_TYPE is (
      KTMOBJECT_TRANSACTION,
      KTMOBJECT_TRANSACTION_MANAGER,
      KTMOBJECT_RESOURCE_MANAGER,
      KTMOBJECT_ENLISTMENT,
      KTMOBJECT_INVALID
   );
   for KTMOBJECT_TYPE use (
      KTMOBJECT_TRANSACTION => 0,
      KTMOBJECT_TRANSACTION_MANAGER => 1,
      KTMOBJECT_RESOURCE_MANAGER => 2,
      KTMOBJECT_ENLISTMENT => 3,
      KTMOBJECT_INVALID => 4
   );
   for KTMOBJECT_TYPE'Size use 32;
   
   -- type PKTMOBJECT_TYPE is access all KTMOBJECT_TYPE;
   -- type PKTMOBJECT_CURSOR is access all KTMOBJECT_CURSOR;
   -- type PTP_VERSION is access all DWORD;
   type TP_CALLBACK_INSTANCE is null record; -- Incomplete/Opaque Type
   type PTP_CALLBACK_INSTANCE is access all TP_CALLBACK_INSTANCE;
   type TP_POOL is null record; -- Incomplete/Opaque Type
   type PTP_POOL is access all TP_POOL;
   type TP_CALLBACK_PRIORITY is (
      TP_CALLBACK_PRIORITY_HIGH,
      TP_CALLBACK_PRIORITY_NORMAL,
      TP_CALLBACK_PRIORITY_LOW,
      TP_CALLBACK_PRIORITY_INVALID
   );
   for TP_CALLBACK_PRIORITY use (
      TP_CALLBACK_PRIORITY_HIGH => 0,
      TP_CALLBACK_PRIORITY_NORMAL => 1,
      TP_CALLBACK_PRIORITY_LOW => 2,
      TP_CALLBACK_PRIORITY_INVALID => 3
   );
   for TP_CALLBACK_PRIORITY'Size use 32;
   
   -- type PTP_POOL_STACK_INFORMATION is access all TP_POOL_STACK_INFORMATION;
   -- type PTP_CLEANUP_GROUP is access all TP_CLEANUP_GROUP;
   type TP_CLEANUP_GROUP is null record; -- Incomplete/Opaque Type
   type ACTIVATION_CONTEXT is null record; -- Incomplete/Opaque Type
   -- type PTP_CALLBACK_ENVIRON is access all TP_CALLBACK_ENVIRON_V3;
   type TP_WORK is null record; -- Incomplete/Opaque Type
   type PTP_WORK is access all TP_WORK;
   type TP_TIMER is null record; -- Incomplete/Opaque Type
   type PTP_TIMER is access all TP_TIMER;
   -- type PTP_WAIT is access all TP_WAIT;
   type TP_WAIT is null record; -- Incomplete/Opaque Type
   type TP_IO is null record; -- Incomplete/Opaque Type
   type PTP_IO is access all TP_IO;
   type TEB is null record; -- Incomplete/Opaque Type
   -- C:\Program Files (x86)\Windows Kits\10\include\10.0.16299.0\ucrt\corecrt.h
   subtype crt_bool is Boolean;
   subtype errno_t is Int32;
   subtype wint_t is UInt16;
   subtype wctype_t is UInt16;
   subtype time32_t is Int32;
   subtype time64_t is Int64;
   type crt_locale_data is null record; -- Incomplete/Opaque Type
   type crt_multibyte_data is null record; -- Incomplete/Opaque Type
   -- type locale_t is access all crt_locale_pointers;
   -- C:\Program Files (x86)\Windows Kits\10\include\10.0.16299.0\ucrt\corecrt_wctype.h
   -- C:\Program Files (x86)\Windows Kits\10\include\10.0.16299.0\ucrt\ctype.h
   -- C:\Program Files (x86)\Windows Kits\10\include\10.0.16299.0\shared\basetsd.h
   type PINT8 is access all Int8;
   type PINT16 is access all Int16;
   type PINT32 is access all Int32;
   type PINT64 is access all Int64;
   type PUINT8 is access all UInt8;
   type PUINT16 is access all UInt16;
   type PUINT32 is access all UInt32;
   type PUINT64 is access all UInt64;
   type PLONG32 is access all Int32;
   subtype LONG32 is Int32;
   subtype ULONG32 is UInt32;
   type PULONG32 is access all UInt32;
   subtype DWORD32 is UInt32;
   type PDWORD32 is access all UInt32;
   subtype INT_PTR is Int32;
   type PINT_PTR is access all Int32;
   subtype UINT_PTR is UInt32;
   type PUINT_PTR is access all UInt32;
   subtype LONG_PTR is Int32;
   type PLONG_PTR is access all Int32;
   subtype ULONG_PTR is UInt32;
   type PULONG_PTR is access all UInt32;
   subtype UHALF_PTR is UInt16;
   type PUHALF_PTR is access all UInt16;
   type PHALF_PTR is access all Int16;
   subtype HALF_PTR is Int16;
   subtype SHANDLE_PTR is Int32;
   subtype HANDLE_PTR is UInt32;
   -- type PSIZE_T is access all ULONG_PTR;
   -- type PSSIZE_T is access all LONG_PTR;
   -- type PDWORD_PTR is access all ULONG_PTR;
   subtype LONG64 is Int64;
   type PLONG64 is access all Int64;
   subtype ULONG64 is UInt64;
   type PULONG64 is access all UInt64;
   subtype DWORD64 is UInt64;
   type PDWORD64 is access all UInt64;
   -- type PKAFFINITY is access all KAFFINITY;
   -- C:\Program Files (x86)\Windows Kits\10\include\10.0.16299.0\ucrt\errno.h
   -- C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\VC\Tools\MSVC\14.14.26428\include\vcruntime_string.h
   -- C:\Program Files (x86)\Windows Kits\10\include\10.0.16299.0\ucrt\corecrt_memcpy_s.h
   -- C:\Program Files (x86)\Windows Kits\10\include\10.0.16299.0\ucrt\corecrt_memory.h
   -- C:\Program Files (x86)\Windows Kits\10\include\10.0.16299.0\ucrt\corecrt_wstring.h
   -- C:\Program Files (x86)\Windows Kits\10\include\10.0.16299.0\ucrt\string.h
   -- C:\Program Files (x86)\Windows Kits\10\include\10.0.16299.0\shared\ktmtypes.h
   -- type PUOW is access all GUID;
   -- type PCRM_PROTOCOL_ID is access all GUID;
   -- type PTRANSACTION_NOTIFICATION is access all TRANSACTION_NOTIFICATION;
   -- type PTRANSACTION_NOTIFICATION_RECOVERY_ARGUMENT is access all TRANSACTION_NOTIFICATION_RECOVERY_ARGUMENT;
   -- type PTRANSACTION_NOTIFICATION_TM_ONLINE_ARGUMENT is access all TRANSACTION_NOTIFICATION_TM_ONLINE_ARGUMENT;
   -- type PSAVEPOINT_ID is access all ULONG;
   -- type PTRANSACTION_NOTIFICATION_SAVEPOINT_ARGUMENT is access all TRANSACTION_NOTIFICATION_SAVEPOINT_ARGUMENT;
   -- type PTRANSACTION_NOTIFICATION_PROPAGATE_ARGUMENT is access all TRANSACTION_NOTIFICATION_PROPAGATE_ARGUMENT;
   -- type PTRANSACTION_NOTIFICATION_MARSHAL_ARGUMENT is access all TRANSACTION_NOTIFICATION_MARSHAL_ARGUMENT;
   -- type PTRANSACTION_NOTIFICATION_PROMOTE_ARGUMENT is access all TRANSACTION_NOTIFICATION_PROPAGATE_ARGUMENT;
   -- type PKCRM_MARSHAL_HEADER is access all KCRM_MARSHAL_HEADER;
   -- type PRKCRM_MARSHAL_HEADER is access all KCRM_MARSHAL_HEADER;
   -- type PKCRM_TRANSACTION_BLOB is access all KCRM_TRANSACTION_BLOB;
   -- type PRKCRM_TRANSACTION_BLOB is access all KCRM_TRANSACTION_BLOB;
   -- type PKCRM_PROTOCOL_BLOB is access all KCRM_PROTOCOL_BLOB;
   -- type PRKCRM_PROTOCOL_BLOB is access all KCRM_PROTOCOL_BLOB;
   -- C:\Program Files (x86)\Windows Kits\10\include\10.0.16299.0\um\winbase.h
   -- type LPCOMMPROP is access all COMMPROP;
   -- type LPCOMSTAT is access all COMSTAT;
   -- type LPDCB is access all DCB;
   -- type LPCOMMTIMEOUTS is access all COMMTIMEOUTS;
   -- type LPCOMMCONFIG is access all COMMCONFIG;
   -- type LPMEMORYSTATUS is access all MEMORYSTATUS;
   -- type LPJIT_DEBUG_INFO is access all JIT_DEBUG_INFO;
   -- type LPJIT_DEBUG_INFO32 is access all JIT_DEBUG_INFO;
   -- type LPJIT_DEBUG_INFO64 is access all JIT_DEBUG_INFO;
   -- type POFSTRUCT is access all OFSTRUCT;
   -- type LPOFSTRUCT is access all OFSTRUCT;
   type PUMS_CONTEXT is access all Void;
   type PUMS_COMPLETION_LIST is access all Void;
   -- type PUMS_THREAD_INFO_CLASS is access all RTL_UMS_THREAD_INFO_CLASS;
   -- type PUMS_SCHEDULER_STARTUP_INFO is access all UMS_SCHEDULER_STARTUP_INFO;
   -- type PUMS_SYSTEM_THREAD_INFORMATION is access all UMS_SYSTEM_THREAD_INFORMATION;
   -- type LPPOWER_REQUEST_CONTEXT is access all REASON_CONTEXT;
   -- type PPOWER_REQUEST_CONTEXT is access all REASON_CONTEXT;
   type DEP_SYSTEM_POLICY_TYPE is (
      DEPPolicyAlwaysOff,
      DEPPolicyAlwaysOn,
      DEPPolicyOptIn,
      DEPPolicyOptOut,
      DEPTotalPolicyCount
   );
   for DEP_SYSTEM_POLICY_TYPE use (
      DEPPolicyAlwaysOff => 0,
      DEPPolicyAlwaysOn => 1,
      DEPPolicyOptIn => 2,
      DEPPolicyOptOut => 3,
      DEPTotalPolicyCount => 4
   );
   for DEP_SYSTEM_POLICY_TYPE'Size use 32;
   
   -- type LPWIN32_STREAM_ID is access all WIN32_STREAM_ID;
   -- type LPSTARTUPINFOEXA is access all STARTUPINFOEXA;
   -- type LPSTARTUPINFOEXW is access all STARTUPINFOEXW;
   type PROC_THREAD_ATTRIBUTE_NUM is (
      ProcThreadAttributeParentProcess,
      ProcThreadAttributeHandleList,
      ProcThreadAttributeGroupAffinity,
      ProcThreadAttributePreferredNode,
      ProcThreadAttributeIdealProcessor,
      ProcThreadAttributeUmsThread,
      ProcThreadAttributeMitigationPolicy,
      ProcThreadAttributeSecurityCapabilities,
      ProcThreadAttributeProtectionLevel,
      ProcThreadAttributeJobList,
      ProcThreadAttributeChildProcessPolicy,
      ProcThreadAttributeAllApplicationPackagesPolicy,
      ProcThreadAttributeWin32kFilter,
      ProcThreadAttributeSafeOpenPromptOriginClaim,
      ProcThreadAttributeDesktopAppPolicy
   );
   for PROC_THREAD_ATTRIBUTE_NUM use (
      ProcThreadAttributeParentProcess => 0,
      ProcThreadAttributeHandleList => 2,
      ProcThreadAttributeGroupAffinity => 3,
      ProcThreadAttributePreferredNode => 4,
      ProcThreadAttributeIdealProcessor => 5,
      ProcThreadAttributeUmsThread => 6,
      ProcThreadAttributeMitigationPolicy => 7,
      ProcThreadAttributeSecurityCapabilities => 9,
      ProcThreadAttributeProtectionLevel => 11,
      ProcThreadAttributeJobList => 13,
      ProcThreadAttributeChildProcessPolicy => 14,
      ProcThreadAttributeAllApplicationPackagesPolicy => 15,
      ProcThreadAttributeWin32kFilter => 16,
      ProcThreadAttributeSafeOpenPromptOriginClaim => 17,
      ProcThreadAttributeDesktopAppPolicy => 18
   );
   for PROC_THREAD_ATTRIBUTE_NUM'Size use 32;
   
   type COPYFILE2_MESSAGE_TYPE is (
      COPYFILE2_CALLBACK_NONE,
      COPYFILE2_CALLBACK_CHUNK_STARTED,
      COPYFILE2_CALLBACK_CHUNK_FINISHED,
      COPYFILE2_CALLBACK_STREAM_STARTED,
      COPYFILE2_CALLBACK_STREAM_FINISHED,
      COPYFILE2_CALLBACK_POLL_CONTINUE,
      COPYFILE2_CALLBACK_ERROR,
      COPYFILE2_CALLBACK_MAX
   );
   for COPYFILE2_MESSAGE_TYPE use (
      COPYFILE2_CALLBACK_NONE => 0,
      COPYFILE2_CALLBACK_CHUNK_STARTED => 1,
      COPYFILE2_CALLBACK_CHUNK_FINISHED => 2,
      COPYFILE2_CALLBACK_STREAM_STARTED => 3,
      COPYFILE2_CALLBACK_STREAM_FINISHED => 4,
      COPYFILE2_CALLBACK_POLL_CONTINUE => 5,
      COPYFILE2_CALLBACK_ERROR => 6,
      COPYFILE2_CALLBACK_MAX => 7
   );
   for COPYFILE2_MESSAGE_TYPE'Size use 32;
   
   type COPYFILE2_MESSAGE_ACTION is (
      COPYFILE2_PROGRESS_CONTINUE,
      COPYFILE2_PROGRESS_CANCEL,
      COPYFILE2_PROGRESS_STOP,
      COPYFILE2_PROGRESS_QUIET,
      COPYFILE2_PROGRESS_PAUSE
   );
   for COPYFILE2_MESSAGE_ACTION use (
      COPYFILE2_PROGRESS_CONTINUE => 0,
      COPYFILE2_PROGRESS_CANCEL => 1,
      COPYFILE2_PROGRESS_STOP => 2,
      COPYFILE2_PROGRESS_QUIET => 3,
      COPYFILE2_PROGRESS_PAUSE => 4
   );
   for COPYFILE2_MESSAGE_ACTION'Size use 32;
   
   type COPYFILE2_COPY_PHASE is (
      COPYFILE2_PHASE_NONE,
      COPYFILE2_PHASE_PREPARE_SOURCE,
      COPYFILE2_PHASE_PREPARE_DEST,
      COPYFILE2_PHASE_READ_SOURCE,
      COPYFILE2_PHASE_WRITE_DESTINATION,
      COPYFILE2_PHASE_SERVER_COPY,
      COPYFILE2_PHASE_NAMEGRAFT_COPY,
      COPYFILE2_PHASE_MAX
   );
   for COPYFILE2_COPY_PHASE use (
      COPYFILE2_PHASE_NONE => 0,
      COPYFILE2_PHASE_PREPARE_SOURCE => 1,
      COPYFILE2_PHASE_PREPARE_DEST => 2,
      COPYFILE2_PHASE_READ_SOURCE => 3,
      COPYFILE2_PHASE_WRITE_DESTINATION => 4,
      COPYFILE2_PHASE_SERVER_COPY => 5,
      COPYFILE2_PHASE_NAMEGRAFT_COPY => 6,
      COPYFILE2_PHASE_MAX => 7
   );
   for COPYFILE2_COPY_PHASE'Size use 32;
   
   -- type LPEVENTLOG_FULL_INFORMATION is access all EVENTLOG_FULL_INFORMATION;
   -- type POPERATION_START_PARAMETERS is access all OPERATION_START_PARAMETERS;
   -- type POPERATION_END_PARAMETERS is access all OPERATION_END_PARAMETERS;
   -- type LPHW_PROFILE_INFOA is access all tagHW_PROFILE_INFOA;
   -- type LPHW_PROFILE_INFOW is access all tagHW_PROFILE_INFOW;
   -- type LPSYSTEM_POWER_STATUS is access all SYSTEM_POWER_STATUS;
   -- type PACTCTXA is access all tagACTCTXA;
   -- type PACTCTXW is access all tagACTCTXW;
   -- type PCACTCTXA is access all ACTCTXA;
   -- type PCACTCTXW is access all ACTCTXW;
   -- type PACTCTX_SECTION_KEYED_DATA_2600 is access all tagACTCTX_SECTION_KEYED_DATA_2600;
   -- type PCACTCTX_SECTION_KEYED_DATA_2600 is access all ACTCTX_SECTION_KEYED_DATA_2600;
   -- type PACTCTX_SECTION_KEYED_DATA_ASSEMBLY_METADATA is access all tagACTCTX_SECTION_KEYED_DATA_ASSEMBLY_METADATA;
   -- type PCACTCTX_SECTION_KEYED_DATA_ASSEMBLY_METADATA is access all ACTCTX_SECTION_KEYED_DATA_ASSEMBLY_METADATA;
   -- type PACTCTX_SECTION_KEYED_DATA is access all tagACTCTX_SECTION_KEYED_DATA;
   -- type PCACTCTX_SECTION_KEYED_DATA is access all ACTCTX_SECTION_KEYED_DATA;
   -- type PACTIVATION_CONTEXT_BASIC_INFORMATION is access all ACTIVATION_CONTEXT_BASIC_INFORMATION;
   -- type PCACTIVATION_CONTEXT_BASIC_INFORMATION is access all ACTIVATION_CONTEXT_BASIC_INFORMATION;
   -- type PFILE_BASIC_INFO is access all FILE_BASIC_INFO;
   -- type PFILE_STANDARD_INFO is access all FILE_STANDARD_INFO;
   -- type PFILE_NAME_INFO is access all FILE_NAME_INFO;
   -- type PFILE_RENAME_INFO is access all FILE_RENAME_INFO;
   -- type PFILE_ALLOCATION_INFO is access all FILE_ALLOCATION_INFO;
   -- type PFILE_END_OF_FILE_INFO is access all FILE_END_OF_FILE_INFO;
   -- type PFILE_STREAM_INFO is access all FILE_STREAM_INFO;
   -- type PFILE_COMPRESSION_INFO is access all FILE_COMPRESSION_INFO;
   -- type PFILE_ATTRIBUTE_TAG_INFO is access all FILE_ATTRIBUTE_TAG_INFO;
   -- type PFILE_DISPOSITION_INFO is access all FILE_DISPOSITION_INFO;
   -- type PFILE_DISPOSITION_INFO_EX is access all FILE_DISPOSITION_INFO_EX;
   -- type PFILE_ID_BOTH_DIR_INFO is access all FILE_ID_BOTH_DIR_INFO;
   -- type PFILE_FULL_DIR_INFO is access all FILE_FULL_DIR_INFO;
   type PRIORITY_HINT is (
      IoPriorityHintVeryLow,
      IoPriorityHintLow,
      IoPriorityHintNormal,
      MaximumIoPriorityHintType
   );
   for PRIORITY_HINT use (
      IoPriorityHintVeryLow => 0,
      IoPriorityHintLow => 1,
      IoPriorityHintNormal => 2,
      MaximumIoPriorityHintType => 3
   );
   for PRIORITY_HINT'Size use 32;
   
   -- type PFILE_IO_PRIORITY_HINT_INFO is access all FILE_IO_PRIORITY_HINT_INFO;
   -- type PFILE_ALIGNMENT_INFO is access all FILE_ALIGNMENT_INFO;
   -- type PFILE_STORAGE_INFO is access all FILE_STORAGE_INFO;
   -- type PFILE_ID_INFO is access all FILE_ID_INFO;
   -- type PFILE_ID_EXTD_DIR_INFO is access all FILE_ID_EXTD_DIR_INFO;
   -- type PFILE_REMOTE_PROTOCOL_INFO is access all FILE_REMOTE_PROTOCOL_INFO;
   -- type PFILE_ID_TYPE is access all FILE_ID_TYPE;
   type FILE_ID_TYPE is (
      FileIdType,
      ObjectIdType,
      ExtendedFileIdType,
      MaximumFileIdType
   );
   for FILE_ID_TYPE use (
      FileIdType => 0,
      ObjectIdType => 1,
      ExtendedFileIdType => 2,
      MaximumFileIdType => 3
   );
   for FILE_ID_TYPE'Size use 32;
   
   -- type LPFILE_ID_DESCRIPTOR is access all FILE_ID_DESCRIPTOR;
   -- C:\Program Files (x86)\Windows Kits\10\include\10.0.16299.0\um\minwinbase.h
   -- type LPSECURITY_ATTRIBUTES is access all SECURITY_ATTRIBUTES;
   -- type PSECURITY_ATTRIBUTES is access all SECURITY_ATTRIBUTES;
   -- type LPOVERLAPPED is access all OVERLAPPED;
   -- type LPOVERLAPPED_ENTRY is access all OVERLAPPED_ENTRY;
   -- type PSYSTEMTIME is access all SYSTEMTIME;
   -- type LPSYSTEMTIME is access all SYSTEMTIME;
   -- type PWIN32_FIND_DATAA is access all WIN32_FIND_DATAA;
   -- type LPWIN32_FIND_DATAA is access all WIN32_FIND_DATAA;
   -- type PWIN32_FIND_DATAW is access all WIN32_FIND_DATAW;
   -- type LPWIN32_FIND_DATAW is access all WIN32_FIND_DATAW;
   type FINDEX_INFO_LEVELS is (
      FindExInfoStandard,
      FindExInfoBasic,
      FindExInfoMaxInfoLevel
   );
   for FINDEX_INFO_LEVELS use (
      FindExInfoStandard => 0,
      FindExInfoBasic => 1,
      FindExInfoMaxInfoLevel => 2
   );
   for FINDEX_INFO_LEVELS'Size use 32;
   
   type FINDEX_SEARCH_OPS is (
      FindExSearchNameMatch,
      FindExSearchLimitToDirectories,
      FindExSearchLimitToDevices,
      FindExSearchMaxSearchOp
   );
   for FINDEX_SEARCH_OPS use (
      FindExSearchNameMatch => 0,
      FindExSearchLimitToDirectories => 1,
      FindExSearchLimitToDevices => 2,
      FindExSearchMaxSearchOp => 3
   );
   for FINDEX_SEARCH_OPS'Size use 32;
   
   type READ_DIRECTORY_NOTIFY_INFORMATION_CLASS is (
      ReadDirectoryNotifyInformation,
      ReadDirectoryNotifyExtendedInformation
   );
   for READ_DIRECTORY_NOTIFY_INFORMATION_CLASS use (
      ReadDirectoryNotifyInformation => 1,
      ReadDirectoryNotifyExtendedInformation => 2
   );
   for READ_DIRECTORY_NOTIFY_INFORMATION_CLASS'Size use 32;
   
   -- type PREAD_DIRECTORY_NOTIFY_INFORMATION_CLASS is access all READ_DIRECTORY_NOTIFY_INFORMATION_CLASS;
   type GET_FILEEX_INFO_LEVELS is (
      GetFileExInfoStandard,
      GetFileExMaxInfoLevel
   );
   for GET_FILEEX_INFO_LEVELS use (
      GetFileExInfoStandard => 0,
      GetFileExMaxInfoLevel => 1
   );
   for GET_FILEEX_INFO_LEVELS'Size use 32;
   
   -- type PFILE_INFO_BY_HANDLE_CLASS is access all FILE_INFO_BY_HANDLE_CLASS;
   type FILE_INFO_BY_HANDLE_CLASS is (
      FileBasicInfo,
      FileStandardInfo,
      FileNameInfo,
      FileRenameInfo,
      FileDispositionInfo,
      FileAllocationInfo,
      FileEndOfFileInfo,
      FileStreamInfo,
      FileCompressionInfo,
      FileAttributeTagInfo,
      FileIdBothDirectoryInfo,
      FileIdBothDirectoryRestartInfo,
      FileIoPriorityHintInfo,
      FileRemoteProtocolInfo,
      FileFullDirectoryInfo,
      FileFullDirectoryRestartInfo,
      FileStorageInfo,
      FileAlignmentInfo,
      FileIdInfo,
      FileIdExtdDirectoryInfo,
      FileIdExtdDirectoryRestartInfo,
      FileDispositionInfoEx,
      FileRenameInfoEx,
      MaximumFileInfoByHandleClass
   );
   for FILE_INFO_BY_HANDLE_CLASS use (
      FileBasicInfo => 0,
      FileStandardInfo => 1,
      FileNameInfo => 2,
      FileRenameInfo => 3,
      FileDispositionInfo => 4,
      FileAllocationInfo => 5,
      FileEndOfFileInfo => 6,
      FileStreamInfo => 7,
      FileCompressionInfo => 8,
      FileAttributeTagInfo => 9,
      FileIdBothDirectoryInfo => 10,
      FileIdBothDirectoryRestartInfo => 11,
      FileIoPriorityHintInfo => 12,
      FileRemoteProtocolInfo => 13,
      FileFullDirectoryInfo => 14,
      FileFullDirectoryRestartInfo => 15,
      FileStorageInfo => 16,
      FileAlignmentInfo => 17,
      FileIdInfo => 18,
      FileIdExtdDirectoryInfo => 19,
      FileIdExtdDirectoryRestartInfo => 20,
      FileDispositionInfoEx => 21,
      FileRenameInfoEx => 22,
      MaximumFileInfoByHandleClass => 23
   );
   for FILE_INFO_BY_HANDLE_CLASS'Size use 32;
   
   -- type PPROCESS_HEAP_ENTRY is access all PROCESS_HEAP_ENTRY;
   -- type LPPROCESS_HEAP_ENTRY is access all PROCESS_HEAP_ENTRY;
   -- type PREASON_CONTEXT is access all REASON_CONTEXT;
   -- type LPEXCEPTION_DEBUG_INFO is access all EXCEPTION_DEBUG_INFO;
   -- type LPCREATE_THREAD_DEBUG_INFO is access all CREATE_THREAD_DEBUG_INFO;
   -- type LPCREATE_PROCESS_DEBUG_INFO is access all CREATE_PROCESS_DEBUG_INFO;
   -- type LPEXIT_THREAD_DEBUG_INFO is access all EXIT_THREAD_DEBUG_INFO;
   -- type LPEXIT_PROCESS_DEBUG_INFO is access all EXIT_PROCESS_DEBUG_INFO;
   -- type LPLOAD_DLL_DEBUG_INFO is access all LOAD_DLL_DEBUG_INFO;
   -- type LPUNLOAD_DLL_DEBUG_INFO is access all UNLOAD_DLL_DEBUG_INFO;
   -- type LPOUTPUT_DEBUG_STRING_INFO is access all OUTPUT_DEBUG_STRING_INFO;
   -- type LPRIP_INFO is access all RIP_INFO;
   -- type LPDEBUG_EVENT is access all DEBUG_EVENT;
   -- C:\Program Files (x86)\Windows Kits\10\include\10.0.16299.0\um\processenv.h
   -- C:\Program Files (x86)\Windows Kits\10\include\10.0.16299.0\um\fileapi.h
   -- type LPWIN32_FILE_ATTRIBUTE_DATA is access all WIN32_FILE_ATTRIBUTE_DATA;
   -- type LPBY_HANDLE_FILE_INFORMATION is access all BY_HANDLE_FILE_INFORMATION;
   -- type PBY_HANDLE_FILE_INFORMATION is access all BY_HANDLE_FILE_INFORMATION;
   -- type LPCREATEFILE2_EXTENDED_PARAMETERS is access all CREATEFILE2_EXTENDED_PARAMETERS;
   -- type PCREATEFILE2_EXTENDED_PARAMETERS is access all CREATEFILE2_EXTENDED_PARAMETERS;
   type STREAM_INFO_LEVELS is (
      FindStreamInfoStandard,
      FindStreamInfoMaxInfoLevel
   );
   for STREAM_INFO_LEVELS use (
      FindStreamInfoStandard => 0,
      FindStreamInfoMaxInfoLevel => 1
   );
   for STREAM_INFO_LEVELS'Size use 32;
   
   -- type PWIN32_FIND_STREAM_DATA is access all WIN32_FIND_STREAM_DATA;
   -- C:\Program Files (x86)\Windows Kits\10\include\10.0.16299.0\um\debugapi.h
   -- C:\Program Files (x86)\Windows Kits\10\include\10.0.16299.0\um\utilapiset.h
   -- C:\Program Files (x86)\Windows Kits\10\include\10.0.16299.0\um\handleapi.h
   -- C:\Program Files (x86)\Windows Kits\10\include\10.0.16299.0\um\errhandlingapi.h
   -- C:\Program Files (x86)\Windows Kits\10\include\10.0.16299.0\um\fibersapi.h
   -- C:\Program Files (x86)\Windows Kits\10\include\10.0.16299.0\um\namedpipeapi.h
   -- C:\Program Files (x86)\Windows Kits\10\include\10.0.16299.0\um\profileapi.h
   -- C:\Program Files (x86)\Windows Kits\10\include\10.0.16299.0\um\heapapi.h
   -- type PHEAP_SUMMARY is access all HEAP_SUMMARY;
   -- C:\Program Files (x86)\Windows Kits\10\include\10.0.16299.0\um\ioapiset.h
   -- C:\Program Files (x86)\Windows Kits\10\include\10.0.16299.0\um\synchapi.h
   -- type PSRWLOCK is access all RTL_SRWLOCK;
   -- type PCONDITION_VARIABLE is access all RTL_CONDITION_VARIABLE;
   -- C:\Program Files (x86)\Windows Kits\10\include\10.0.16299.0\um\interlockedapi.h
   -- C:\Program Files (x86)\Windows Kits\10\include\10.0.16299.0\um\processthreadsapi.h
   -- type PPROCESS_INFORMATION is access all PROCESS_INFORMATION;
   -- type LPPROCESS_INFORMATION is access all PROCESS_INFORMATION;
   -- type LPSTARTUPINFOA is access all STARTUPINFOA;
   -- type LPSTARTUPINFOW is access all STARTUPINFOW;
   type PROC_THREAD_ATTRIBUTE_LIST is null record; -- Incomplete/Opaque Type
   type PPROC_THREAD_ATTRIBUTE_LIST is access all PROC_THREAD_ATTRIBUTE_LIST;
   type LPPROC_THREAD_ATTRIBUTE_LIST is access all PROC_THREAD_ATTRIBUTE_LIST;
   type THREAD_INFORMATION_CLASS is (
      ThreadMemoryPriority,
      ThreadAbsoluteCpuPriority,
      ThreadDynamicCodePolicy,
      ThreadPowerThrottling,
      ThreadInformationClassMax
   );
   for THREAD_INFORMATION_CLASS use (
      ThreadMemoryPriority => 0,
      ThreadAbsoluteCpuPriority => 1,
      ThreadDynamicCodePolicy => 2,
      ThreadPowerThrottling => 3,
      ThreadInformationClassMax => 4
   );
   for THREAD_INFORMATION_CLASS'Size use 32;
   
   -- type PMEMORY_PRIORITY_INFORMATION is access all MEMORY_PRIORITY_INFORMATION;
   type PROCESS_INFORMATION_CLASS is (
      ProcessMemoryPriority,
      ProcessMemoryExhaustionInfo,
      ProcessAppMemoryInfo,
      ProcessInPrivateInfo,
      ProcessPowerThrottling,
      ProcessReservedValue1,
      ProcessTelemetryCoverageInfo,
      ProcessProtectionLevelInfo,
      ProcessInformationClassMax
   );
   for PROCESS_INFORMATION_CLASS use (
      ProcessMemoryPriority => 0,
      ProcessMemoryExhaustionInfo => 1,
      ProcessAppMemoryInfo => 2,
      ProcessInPrivateInfo => 3,
      ProcessPowerThrottling => 4,
      ProcessReservedValue1 => 5,
      ProcessTelemetryCoverageInfo => 6,
      ProcessProtectionLevelInfo => 7,
      ProcessInformationClassMax => 8
   );
   for PROCESS_INFORMATION_CLASS'Size use 32;
   
   -- type PAPP_MEMORY_INFORMATION is access all APP_MEMORY_INFORMATION;
   -- type PPROCESS_MEMORY_EXHAUSTION_TYPE is access all PROCESS_MEMORY_EXHAUSTION_TYPE;
   type PROCESS_MEMORY_EXHAUSTION_TYPE is (
      PMETypeFailFastOnCommitFailure,
      PMETypeMax
   );
   for PROCESS_MEMORY_EXHAUSTION_TYPE use (
      PMETypeFailFastOnCommitFailure => 0,
      PMETypeMax => 1
   );
   for PROCESS_MEMORY_EXHAUSTION_TYPE'Size use 32;
   
   -- type PPROCESS_MEMORY_EXHAUSTION_INFO is access all PROCESS_MEMORY_EXHAUSTION_INFO;
   -- type PPROCESS_POWER_THROTTLING_STATE is access all PROCESS_POWER_THROTTLING_STATE;
   -- C:\Program Files (x86)\Windows Kits\10\include\10.0.16299.0\um\sysinfoapi.h
   -- type LPSYSTEM_INFO is access all SYSTEM_INFO;
   -- type LPMEMORYSTATUSEX is access all MEMORYSTATUSEX;
   type COMPUTER_NAME_FORMAT is (
      ComputerNameNetBIOS,
      ComputerNameDnsHostname,
      ComputerNameDnsDomain,
      ComputerNameDnsFullyQualified,
      ComputerNamePhysicalNetBIOS,
      ComputerNamePhysicalDnsHostname,
      ComputerNamePhysicalDnsDomain,
      ComputerNamePhysicalDnsFullyQualified,
      ComputerNameMax
   );
   for COMPUTER_NAME_FORMAT use (
      ComputerNameNetBIOS => 0,
      ComputerNameDnsHostname => 1,
      ComputerNameDnsDomain => 2,
      ComputerNameDnsFullyQualified => 3,
      ComputerNamePhysicalNetBIOS => 4,
      ComputerNamePhysicalDnsHostname => 5,
      ComputerNamePhysicalDnsDomain => 6,
      ComputerNamePhysicalDnsFullyQualified => 7,
      ComputerNameMax => 8
   );
   for COMPUTER_NAME_FORMAT'Size use 32;
   
   -- C:\Program Files (x86)\Windows Kits\10\include\10.0.16299.0\um\memoryapi.h
   type MEMORY_RESOURCE_NOTIFICATION_TYPE is (
      LowMemoryResourceNotification,
      HighMemoryResourceNotification
   );
   for MEMORY_RESOURCE_NOTIFICATION_TYPE use (
      LowMemoryResourceNotification => 0,
      HighMemoryResourceNotification => 1
   );
   for MEMORY_RESOURCE_NOTIFICATION_TYPE'Size use 32;
   
   -- type PWIN32_MEMORY_RANGE_ENTRY is access all WIN32_MEMORY_RANGE_ENTRY;
   -- type PBAD_MEMORY_CALLBACK_ROUTINE is access all BAD_MEMORY_CALLBACK_ROUTINE;
   type OFFER_PRIORITY is (
      VmOfferPriorityVeryLow,
      VmOfferPriorityLow,
      VmOfferPriorityBelowNormal,
      VmOfferPriorityNormal
   );
   for OFFER_PRIORITY use (
      VmOfferPriorityVeryLow => 1,
      VmOfferPriorityLow => 2,
      VmOfferPriorityBelowNormal => 3,
      VmOfferPriorityNormal => 4
   );
   for OFFER_PRIORITY'Size use 32;
   
   type WIN32_MEMORY_INFORMATION_CLASS is (
      MemoryRegionInfo
   );
   for WIN32_MEMORY_INFORMATION_CLASS use (
      MemoryRegionInfo => 0
   );
   for WIN32_MEMORY_INFORMATION_CLASS'Size use 32;
   
   -- C:\Program Files (x86)\Windows Kits\10\include\10.0.16299.0\um\enclaveapi.h
   -- C:\Program Files (x86)\Windows Kits\10\include\10.0.16299.0\um\threadpoollegacyapiset.h
   -- C:\Program Files (x86)\Windows Kits\10\include\10.0.16299.0\um\threadpoolapiset.h
   -- C:\Program Files (x86)\Windows Kits\10\include\10.0.16299.0\um\jobapi.h
   -- C:\Program Files (x86)\Windows Kits\10\include\10.0.16299.0\um\jobapi2.h
   -- C:\Program Files (x86)\Windows Kits\10\include\10.0.16299.0\um\wow64apiset.h
   -- C:\Program Files (x86)\Windows Kits\10\include\10.0.16299.0\um\libloaderapi.h
   -- type PENUMUILANG is access all tagENUMUILANG;
   -- type PDLL_DIRECTORY_COOKIE is access all PVOID;
   -- C:\Program Files (x86)\Windows Kits\10\include\10.0.16299.0\um\securitybaseapi.h
   -- C:\Program Files (x86)\Windows Kits\10\include\10.0.16299.0\um\namespaceapi.h
   -- C:\Program Files (x86)\Windows Kits\10\include\10.0.16299.0\um\systemtopologyapi.h
   -- C:\Program Files (x86)\Windows Kits\10\include\10.0.16299.0\um\processtopologyapi.h
   -- C:\Program Files (x86)\Windows Kits\10\include\10.0.16299.0\um\securityappcontainer.h
   -- C:\Program Files (x86)\Windows Kits\10\include\10.0.16299.0\um\realtimeapiset.h
   -- C:\Program Files (x86)\Windows Kits\10\include\10.0.16299.0\um\timezoneapi.h
   -- type LPTIME_ZONE_INFORMATION is access all TIME_ZONE_INFORMATION;
   -- type PTIME_ZONE_INFORMATION is access all TIME_ZONE_INFORMATION;
   -- type PDYNAMIC_TIME_ZONE_INFORMATION is access all TIME_DYNAMIC_ZONE_INFORMATION;
   -- C:\Program Files (x86)\Windows Kits\10\include\10.0.16299.0\um\wingdi.h
   -- type PDRAWPATRECT is access all DRAWPATRECT;
   -- type PPSINJECTDATA is access all PSINJECTDATA;
   -- type PPSFEATURE_OUTPUT is access all PSFEATURE_OUTPUT;
   -- type PPSFEATURE_CUSTPAPER is access all PSFEATURE_CUSTPAPER;
   -- type LPXFORM is access all tagXFORM;
   -- type PXFORM is access all tagXFORM;
   -- type PBITMAP is access all tagBITMAP;
   -- type NPBITMAP is access all tagBITMAP;
   -- type LPBITMAP is access all tagBITMAP;
   -- type NPRGBTRIPLE is access all tagRGBTRIPLE;
   -- type LPRGBTRIPLE is access all tagRGBTRIPLE;
   -- type PRGBTRIPLE is access all tagRGBTRIPLE;
   -- type LPRGBQUAD is access all RGBQUAD;
   type LPFXPT16DOT16 is access all Int32;
   subtype FXPT16DOT16 is Int32;
   subtype FXPT2DOT30 is Int32;
   type LPFXPT2DOT30 is access all Int32;
   -- type LPCIEXYZ is access all CIEXYZ;
   -- type LPCIEXYZTRIPLE is access all CIEXYZTRIPLE;
   -- type LPLOGCOLORSPACEA is access all tagLOGCOLORSPACEA;
   -- type LPLOGCOLORSPACEW is access all tagLOGCOLORSPACEW;
   -- type PBITMAPCOREHEADER is access all tagBITMAPCOREHEADER;
   -- type LPBITMAPCOREHEADER is access all tagBITMAPCOREHEADER;
   -- type PBITMAPINFOHEADER is access all tagBITMAPINFOHEADER;
   -- type LPBITMAPINFOHEADER is access all tagBITMAPINFOHEADER;
   -- type LPBITMAPV4HEADER is access all BITMAPV4HEADER;
   -- type PBITMAPV4HEADER is access all BITMAPV4HEADER;
   -- type LPBITMAPV5HEADER is access all BITMAPV5HEADER;
   -- type PBITMAPV5HEADER is access all BITMAPV5HEADER;
   -- type PBITMAPINFO is access all tagBITMAPINFO;
   -- type LPBITMAPINFO is access all tagBITMAPINFO;
   -- type LPBITMAPCOREINFO is access all tagBITMAPCOREINFO;
   -- type PBITMAPCOREINFO is access all tagBITMAPCOREINFO;
   -- type LPBITMAPFILEHEADER is access all tagBITMAPFILEHEADER;
   -- type PBITMAPFILEHEADER is access all tagBITMAPFILEHEADER;
   -- type LPFONTSIGNATURE is access all tagFONTSIGNATURE;
   -- type PFONTSIGNATURE is access all tagFONTSIGNATURE;
   -- type LPCHARSETINFO is access all tagCHARSETINFO;
   -- type NPCHARSETINFO is access all tagCHARSETINFO;
   -- type PCHARSETINFO is access all tagCHARSETINFO;
   -- type LPLOCALESIGNATURE is access all tagLOCALESIGNATURE;
   -- type PLOCALESIGNATURE is access all tagLOCALESIGNATURE;
   -- type PHANDLETABLE is access all tagHANDLETABLE;
   -- type LPHANDLETABLE is access all tagHANDLETABLE;
   -- type PMETARECORD is access all tagMETARECORD;
   -- type LPMETARECORD is access all tagMETARECORD;
   -- type LPMETAFILEPICT is access all tagMETAFILEPICT;
   -- type PMETAHEADER is access all tagMETAHEADER;
   -- type LPMETAHEADER is access all tagMETAHEADER;
   -- type PENHMETARECORD is access all tagENHMETARECORD;
   -- type LPENHMETARECORD is access all tagENHMETARECORD;
   -- type PENHMETAHEADER is access all tagENHMETAHEADER;
   -- type LPENHMETAHEADER is access all tagENHMETAHEADER;
   -- type LPTEXTMETRICA is access all tagTEXTMETRICA;
   -- type NPTEXTMETRICA is access all tagTEXTMETRICA;
   -- type PTEXTMETRICA is access all tagTEXTMETRICA;
   -- type LPTEXTMETRICW is access all tagTEXTMETRICW;
   -- type NPTEXTMETRICW is access all tagTEXTMETRICW;
   -- type PTEXTMETRICW is access all tagTEXTMETRICW;
   -- type LPNEWTEXTMETRICA is access all tagNEWTEXTMETRICA;
   -- type NPNEWTEXTMETRICA is access all tagNEWTEXTMETRICA;
   -- type PNEWTEXTMETRICA is access all tagNEWTEXTMETRICA;
   -- type PNEWTEXTMETRICW is access all tagNEWTEXTMETRICW;
   -- type LPNEWTEXTMETRICW is access all tagNEWTEXTMETRICW;
   -- type NPNEWTEXTMETRICW is access all tagNEWTEXTMETRICW;
   -- type PPELARRAY is access all tagPELARRAY;
   -- type NPPELARRAY is access all tagPELARRAY;
   -- type LPPELARRAY is access all tagPELARRAY;
   -- type NPLOGBRUSH is access all tagLOGBRUSH;
   -- type PLOGBRUSH is access all tagLOGBRUSH;
   -- type LPLOGBRUSH is access all tagLOGBRUSH;
   -- type NPLOGBRUSH32 is access all tagLOGBRUSH32;
   -- type LPLOGBRUSH32 is access all tagLOGBRUSH32;
   -- type PLOGBRUSH32 is access all tagLOGBRUSH32;
   -- type PPATTERN is access all PATTERN;
   -- type NPPATTERN is access all PATTERN;
   -- type LPPATTERN is access all PATTERN;
   -- type LPLOGPEN is access all tagLOGPEN;
   -- type PLOGPEN is access all tagLOGPEN;
   -- type NPLOGPEN is access all tagLOGPEN;
   -- type PEXTLOGPEN is access all tagEXTLOGPEN;
   -- type LPEXTLOGPEN is access all tagEXTLOGPEN;
   -- type NPEXTLOGPEN is access all tagEXTLOGPEN;
   -- type PEXTLOGPEN32 is access all tagEXTLOGPEN32;
   -- type NPEXTLOGPEN32 is access all tagEXTLOGPEN32;
   -- type LPEXTLOGPEN32 is access all tagEXTLOGPEN32;
   -- type PPALETTEENTRY is access all tagPALETTEENTRY;
   -- type LPPALETTEENTRY is access all tagPALETTEENTRY;
   -- type LPLOGPALETTE is access all tagLOGPALETTE;
   -- type NPLOGPALETTE is access all tagLOGPALETTE;
   -- type PLOGPALETTE is access all tagLOGPALETTE;
   -- type LPLOGFONTA is access all tagLOGFONTA;
   -- type NPLOGFONTA is access all tagLOGFONTA;
   -- type PLOGFONTA is access all tagLOGFONTA;
   -- type LPLOGFONTW is access all tagLOGFONTW;
   -- type NPLOGFONTW is access all tagLOGFONTW;
   -- type PLOGFONTW is access all tagLOGFONTW;
   -- type LPENUMLOGFONTA is access all tagENUMLOGFONTA;
   -- type LPENUMLOGFONTW is access all tagENUMLOGFONTW;
   -- type LPENUMLOGFONTEXA is access all tagENUMLOGFONTEXA;
   -- type LPENUMLOGFONTEXW is access all tagENUMLOGFONTEXW;
   -- type LPPANOSE is access all tagPANOSE;
   -- type PEXTLOGFONTA is access all tagEXTLOGFONTA;
   -- type NPEXTLOGFONTA is access all tagEXTLOGFONTA;
   -- type LPEXTLOGFONTA is access all tagEXTLOGFONTA;
   -- type NPEXTLOGFONTW is access all tagEXTLOGFONTW;
   -- type PEXTLOGFONTW is access all tagEXTLOGFONTW;
   -- type LPEXTLOGFONTW is access all tagEXTLOGFONTW;
   -- type PDEVMODEA is access all devicemodeA;
   -- type NPDEVMODEA is access all devicemodeA;
   -- type LPDEVMODEA is access all devicemodeA;
   -- type PDEVMODEW is access all devicemodeW;
   -- type NPDEVMODEW is access all devicemodeW;
   -- type LPDEVMODEW is access all devicemodeW;
   -- type PDISPLAY_DEVICEA is access all DISPLAY_DEVICEA;
   -- type LPDISPLAY_DEVICEA is access all DISPLAY_DEVICEA;
   -- type LPDISPLAY_DEVICEW is access all DISPLAY_DEVICEW;
   -- type PDISPLAY_DEVICEW is access all DISPLAY_DEVICEW;
   type DISPLAYCONFIG_VIDEO_OUTPUT_TECHNOLOGY is (
      DISPLAYCONFIG_OUTPUT_TECHNOLOGY_INTERNAL,
      DISPLAYCONFIG_OUTPUT_TECHNOLOGY_OTHER,
      DISPLAYCONFIG_OUTPUT_TECHNOLOGY_HD15,
      DISPLAYCONFIG_OUTPUT_TECHNOLOGY_SVIDEO,
      DISPLAYCONFIG_OUTPUT_TECHNOLOGY_COMPOSITE_VIDEO,
      DISPLAYCONFIG_OUTPUT_TECHNOLOGY_COMPONENT_VIDEO,
      DISPLAYCONFIG_OUTPUT_TECHNOLOGY_DVI,
      DISPLAYCONFIG_OUTPUT_TECHNOLOGY_HDMI,
      DISPLAYCONFIG_OUTPUT_TECHNOLOGY_LVDS,
      DISPLAYCONFIG_OUTPUT_TECHNOLOGY_D_JPN,
      DISPLAYCONFIG_OUTPUT_TECHNOLOGY_SDI,
      DISPLAYCONFIG_OUTPUT_TECHNOLOGY_DISPLAYPORT_EXTERNAL,
      DISPLAYCONFIG_OUTPUT_TECHNOLOGY_DISPLAYPORT_EMBEDDED,
      DISPLAYCONFIG_OUTPUT_TECHNOLOGY_UDI_EXTERNAL,
      DISPLAYCONFIG_OUTPUT_TECHNOLOGY_UDI_EMBEDDED,
      DISPLAYCONFIG_OUTPUT_TECHNOLOGY_SDTVDONGLE,
      DISPLAYCONFIG_OUTPUT_TECHNOLOGY_MIRACAST,
      DISPLAYCONFIG_OUTPUT_TECHNOLOGY_INDIRECT_WIRED
   );
   for DISPLAYCONFIG_VIDEO_OUTPUT_TECHNOLOGY use (
      DISPLAYCONFIG_OUTPUT_TECHNOLOGY_INTERNAL => -2147483648,
      DISPLAYCONFIG_OUTPUT_TECHNOLOGY_OTHER => -1,
      DISPLAYCONFIG_OUTPUT_TECHNOLOGY_HD15 => 0,
      DISPLAYCONFIG_OUTPUT_TECHNOLOGY_SVIDEO => 1,
      DISPLAYCONFIG_OUTPUT_TECHNOLOGY_COMPOSITE_VIDEO => 2,
      DISPLAYCONFIG_OUTPUT_TECHNOLOGY_COMPONENT_VIDEO => 3,
      DISPLAYCONFIG_OUTPUT_TECHNOLOGY_DVI => 4,
      DISPLAYCONFIG_OUTPUT_TECHNOLOGY_HDMI => 5,
      DISPLAYCONFIG_OUTPUT_TECHNOLOGY_LVDS => 6,
      DISPLAYCONFIG_OUTPUT_TECHNOLOGY_D_JPN => 8,
      DISPLAYCONFIG_OUTPUT_TECHNOLOGY_SDI => 9,
      DISPLAYCONFIG_OUTPUT_TECHNOLOGY_DISPLAYPORT_EXTERNAL => 10,
      DISPLAYCONFIG_OUTPUT_TECHNOLOGY_DISPLAYPORT_EMBEDDED => 11,
      DISPLAYCONFIG_OUTPUT_TECHNOLOGY_UDI_EXTERNAL => 12,
      DISPLAYCONFIG_OUTPUT_TECHNOLOGY_UDI_EMBEDDED => 13,
      DISPLAYCONFIG_OUTPUT_TECHNOLOGY_SDTVDONGLE => 14,
      DISPLAYCONFIG_OUTPUT_TECHNOLOGY_MIRACAST => 15,
      DISPLAYCONFIG_OUTPUT_TECHNOLOGY_INDIRECT_WIRED => 16
   );
   for DISPLAYCONFIG_VIDEO_OUTPUT_TECHNOLOGY'Size use 32;
   
   type DISPLAYCONFIG_SCANLINE_ORDERING is (
      DISPLAYCONFIG_SCANLINE_ORDERING_FORCE_UINT32,
      DISPLAYCONFIG_SCANLINE_ORDERING_UNSPECIFIED,
      DISPLAYCONFIG_SCANLINE_ORDERING_PROGRESSIVE,
      DISPLAYCONFIG_SCANLINE_ORDERING_INTERLACED,
      DISPLAYCONFIG_SCANLINE_ORDERING_INTERLACED_LOWERFIELDFIRST
   );
   for DISPLAYCONFIG_SCANLINE_ORDERING use (
      DISPLAYCONFIG_SCANLINE_ORDERING_FORCE_UINT32 => -1,
      DISPLAYCONFIG_SCANLINE_ORDERING_UNSPECIFIED => 0,
      DISPLAYCONFIG_SCANLINE_ORDERING_PROGRESSIVE => 1,
      DISPLAYCONFIG_SCANLINE_ORDERING_INTERLACED => 2,
      DISPLAYCONFIG_SCANLINE_ORDERING_INTERLACED_LOWERFIELDFIRST => 3
   );
   for DISPLAYCONFIG_SCANLINE_ORDERING'Size use 32;
   
   type DISPLAYCONFIG_SCALING is (
      DISPLAYCONFIG_SCALING_FORCE_UINT32,
      DISPLAYCONFIG_SCALING_IDENTITY,
      DISPLAYCONFIG_SCALING_CENTERED,
      DISPLAYCONFIG_SCALING_STRETCHED,
      DISPLAYCONFIG_SCALING_ASPECTRATIOCENTEREDMAX,
      DISPLAYCONFIG_SCALING_CUSTOM,
      DISPLAYCONFIG_SCALING_PREFERRED
   );
   for DISPLAYCONFIG_SCALING use (
      DISPLAYCONFIG_SCALING_FORCE_UINT32 => -1,
      DISPLAYCONFIG_SCALING_IDENTITY => 1,
      DISPLAYCONFIG_SCALING_CENTERED => 2,
      DISPLAYCONFIG_SCALING_STRETCHED => 3,
      DISPLAYCONFIG_SCALING_ASPECTRATIOCENTEREDMAX => 4,
      DISPLAYCONFIG_SCALING_CUSTOM => 5,
      DISPLAYCONFIG_SCALING_PREFERRED => 128
   );
   for DISPLAYCONFIG_SCALING'Size use 32;
   
   type DISPLAYCONFIG_ROTATION is (
      DISPLAYCONFIG_ROTATION_FORCE_UINT32,
      DISPLAYCONFIG_ROTATION_IDENTITY,
      DISPLAYCONFIG_ROTATION_ROTATE90,
      DISPLAYCONFIG_ROTATION_ROTATE180,
      DISPLAYCONFIG_ROTATION_ROTATE270
   );
   for DISPLAYCONFIG_ROTATION use (
      DISPLAYCONFIG_ROTATION_FORCE_UINT32 => -1,
      DISPLAYCONFIG_ROTATION_IDENTITY => 1,
      DISPLAYCONFIG_ROTATION_ROTATE90 => 2,
      DISPLAYCONFIG_ROTATION_ROTATE180 => 3,
      DISPLAYCONFIG_ROTATION_ROTATE270 => 4
   );
   for DISPLAYCONFIG_ROTATION'Size use 32;
   
   type DISPLAYCONFIG_MODE_INFO_TYPE is (
      DISPLAYCONFIG_MODE_INFO_TYPE_FORCE_UINT32,
      DISPLAYCONFIG_MODE_INFO_TYPE_SOURCE,
      DISPLAYCONFIG_MODE_INFO_TYPE_TARGET,
      DISPLAYCONFIG_MODE_INFO_TYPE_DESKTOP_IMAGE
   );
   for DISPLAYCONFIG_MODE_INFO_TYPE use (
      DISPLAYCONFIG_MODE_INFO_TYPE_FORCE_UINT32 => -1,
      DISPLAYCONFIG_MODE_INFO_TYPE_SOURCE => 1,
      DISPLAYCONFIG_MODE_INFO_TYPE_TARGET => 2,
      DISPLAYCONFIG_MODE_INFO_TYPE_DESKTOP_IMAGE => 3
   );
   for DISPLAYCONFIG_MODE_INFO_TYPE'Size use 32;
   
   type DISPLAYCONFIG_PIXELFORMAT is (
      DISPLAYCONFIG_PIXELFORMAT_FORCE_UINT32,
      DISPLAYCONFIG_PIXELFORMAT_8BPP,
      DISPLAYCONFIG_PIXELFORMAT_16BPP,
      DISPLAYCONFIG_PIXELFORMAT_24BPP,
      DISPLAYCONFIG_PIXELFORMAT_32BPP,
      DISPLAYCONFIG_PIXELFORMAT_NONGDI
   );
   for DISPLAYCONFIG_PIXELFORMAT use (
      DISPLAYCONFIG_PIXELFORMAT_FORCE_UINT32 => -1,
      DISPLAYCONFIG_PIXELFORMAT_8BPP => 1,
      DISPLAYCONFIG_PIXELFORMAT_16BPP => 2,
      DISPLAYCONFIG_PIXELFORMAT_24BPP => 3,
      DISPLAYCONFIG_PIXELFORMAT_32BPP => 4,
      DISPLAYCONFIG_PIXELFORMAT_NONGDI => 5
   );
   for DISPLAYCONFIG_PIXELFORMAT'Size use 32;
   
   type DISPLAYCONFIG_TOPOLOGY_ID is (
      DISPLAYCONFIG_TOPOLOGY_FORCE_UINT32,
      DISPLAYCONFIG_TOPOLOGY_INTERNAL,
      DISPLAYCONFIG_TOPOLOGY_CLONE,
      DISPLAYCONFIG_TOPOLOGY_EXTEND,
      DISPLAYCONFIG_TOPOLOGY_EXTERNAL
   );
   for DISPLAYCONFIG_TOPOLOGY_ID use (
      DISPLAYCONFIG_TOPOLOGY_FORCE_UINT32 => -1,
      DISPLAYCONFIG_TOPOLOGY_INTERNAL => 1,
      DISPLAYCONFIG_TOPOLOGY_CLONE => 2,
      DISPLAYCONFIG_TOPOLOGY_EXTEND => 4,
      DISPLAYCONFIG_TOPOLOGY_EXTERNAL => 8
   );
   for DISPLAYCONFIG_TOPOLOGY_ID'Size use 32;
   
   type DISPLAYCONFIG_DEVICE_INFO_TYPE is (
      DISPLAYCONFIG_DEVICE_INFO_FORCE_UINT32,
      DISPLAYCONFIG_DEVICE_INFO_GET_SOURCE_NAME,
      DISPLAYCONFIG_DEVICE_INFO_GET_TARGET_NAME,
      DISPLAYCONFIG_DEVICE_INFO_GET_TARGET_PREFERRED_MODE,
      DISPLAYCONFIG_DEVICE_INFO_GET_ADAPTER_NAME,
      DISPLAYCONFIG_DEVICE_INFO_SET_TARGET_PERSISTENCE,
      DISPLAYCONFIG_DEVICE_INFO_GET_TARGET_BASE_TYPE,
      DISPLAYCONFIG_DEVICE_INFO_GET_SUPPORT_VIRTUAL_RESOLUTION,
      DISPLAYCONFIG_DEVICE_INFO_SET_SUPPORT_VIRTUAL_RESOLUTION,
      DISPLAYCONFIG_DEVICE_INFO_GET_ADVANCED_COLOR_INFO,
      DISPLAYCONFIG_DEVICE_INFO_SET_ADVANCED_COLOR_STATE
   );
   for DISPLAYCONFIG_DEVICE_INFO_TYPE use (
      DISPLAYCONFIG_DEVICE_INFO_FORCE_UINT32 => -1,
      DISPLAYCONFIG_DEVICE_INFO_GET_SOURCE_NAME => 1,
      DISPLAYCONFIG_DEVICE_INFO_GET_TARGET_NAME => 2,
      DISPLAYCONFIG_DEVICE_INFO_GET_TARGET_PREFERRED_MODE => 3,
      DISPLAYCONFIG_DEVICE_INFO_GET_ADAPTER_NAME => 4,
      DISPLAYCONFIG_DEVICE_INFO_SET_TARGET_PERSISTENCE => 5,
      DISPLAYCONFIG_DEVICE_INFO_GET_TARGET_BASE_TYPE => 6,
      DISPLAYCONFIG_DEVICE_INFO_GET_SUPPORT_VIRTUAL_RESOLUTION => 7,
      DISPLAYCONFIG_DEVICE_INFO_SET_SUPPORT_VIRTUAL_RESOLUTION => 8,
      DISPLAYCONFIG_DEVICE_INFO_GET_ADVANCED_COLOR_INFO => 9,
      DISPLAYCONFIG_DEVICE_INFO_SET_ADVANCED_COLOR_STATE => 10
   );
   for DISPLAYCONFIG_DEVICE_INFO_TYPE'Size use 32;
   
   type DISPLAYCONFIG_COLOR_ENCODING is (
      DISPLAYCONFIG_COLOR_ENCODING_FORCE_UINT32,
      DISPLAYCONFIG_COLOR_ENCODING_RGB,
      DISPLAYCONFIG_COLOR_ENCODING_YCBCR444,
      DISPLAYCONFIG_COLOR_ENCODING_YCBCR422,
      DISPLAYCONFIG_COLOR_ENCODING_YCBCR420,
      DISPLAYCONFIG_COLOR_ENCODING_INTENSITY
   );
   for DISPLAYCONFIG_COLOR_ENCODING use (
      DISPLAYCONFIG_COLOR_ENCODING_FORCE_UINT32 => -1,
      DISPLAYCONFIG_COLOR_ENCODING_RGB => 0,
      DISPLAYCONFIG_COLOR_ENCODING_YCBCR444 => 1,
      DISPLAYCONFIG_COLOR_ENCODING_YCBCR422 => 2,
      DISPLAYCONFIG_COLOR_ENCODING_YCBCR420 => 3,
      DISPLAYCONFIG_COLOR_ENCODING_INTENSITY => 4
   );
   for DISPLAYCONFIG_COLOR_ENCODING'Size use 32;
   
   -- type PRGNDATAHEADER is access all RGNDATAHEADER;
   -- type PRGNDATA is access all RGNDATA;
   -- type NPRGNDATA is access all RGNDATA;
   -- type LPRGNDATA is access all RGNDATA;
   -- type NPABC is access all ABC;
   -- type LPABC is access all ABC;
   -- type PABC is access all ABC;
   -- type LPABCFLOAT is access all ABCFLOAT;
   -- type PABCFLOAT is access all ABCFLOAT;
   -- type NPABCFLOAT is access all ABCFLOAT;
   -- type LPOUTLINETEXTMETRICA is access all OUTLINETEXTMETRICA;
   -- type NPOUTLINETEXTMETRICA is access all OUTLINETEXTMETRICA;
   -- type POUTLINETEXTMETRICA is access all OUTLINETEXTMETRICA;
   -- type NPOUTLINETEXTMETRICW is access all OUTLINETEXTMETRICW;
   -- type POUTLINETEXTMETRICW is access all OUTLINETEXTMETRICW;
   -- type LPOUTLINETEXTMETRICW is access all OUTLINETEXTMETRICW;
   -- type NPPOLYTEXTA is access all tagPOLYTEXTA;
   -- type PPOLYTEXTA is access all tagPOLYTEXTA;
   -- type LPPOLYTEXTA is access all tagPOLYTEXTA;
   -- type PPOLYTEXTW is access all tagPOLYTEXTW;
   -- type NPPOLYTEXTW is access all tagPOLYTEXTW;
   -- type LPPOLYTEXTW is access all tagPOLYTEXTW;
   -- type LPMAT2 is access all MAT2;
   -- type LPGLYPHMETRICS is access all GLYPHMETRICS;
   -- type LPPOINTFX is access all tagPOINTFX;
   -- type LPTTPOLYCURVE is access all tagTTPOLYCURVE;
   -- type LPTTPOLYGONHEADER is access all tagTTPOLYGONHEADER;
   -- type LPGCP_RESULTSA is access all tagGCP_RESULTSA;
   -- type LPGCP_RESULTSW is access all tagGCP_RESULTSW;
   -- type LPRASTERIZER_STATUS is access all RASTERIZER_STATUS;
   -- type LPPIXELFORMATDESCRIPTOR is access all tagPIXELFORMATDESCRIPTOR;
   -- type PPIXELFORMATDESCRIPTOR is access all tagPIXELFORMATDESCRIPTOR;
   -- type PWCRANGE is access all tagWCRANGE;
   -- type LPWCRANGE is access all tagWCRANGE;
   -- type LPGLYPHSET is access all tagGLYPHSET;
   -- type PGLYPHSET is access all tagGLYPHSET;
   -- type PDESIGNVECTOR is access all tagDESIGNVECTOR;
   -- type LPDESIGNVECTOR is access all tagDESIGNVECTOR;
   -- type LPAXISINFOA is access all tagAXISINFOA;
   -- type PAXISINFOA is access all tagAXISINFOA;
   -- type PAXISINFOW is access all tagAXISINFOW;
   -- type LPAXISINFOW is access all tagAXISINFOW;
   -- type LPAXESLISTA is access all tagAXESLISTA;
   -- type PAXESLISTA is access all tagAXESLISTA;
   -- type LPAXESLISTW is access all tagAXESLISTW;
   -- type PAXESLISTW is access all tagAXESLISTW;
   -- type LPENUMLOGFONTEXDVA is access all tagENUMLOGFONTEXDVA;
   -- type PENUMLOGFONTEXDVA is access all tagENUMLOGFONTEXDVA;
   -- type PENUMLOGFONTEXDVW is access all tagENUMLOGFONTEXDVW;
   -- type LPENUMLOGFONTEXDVW is access all tagENUMLOGFONTEXDVW;
   -- type PENUMTEXTMETRICA is access all tagENUMTEXTMETRICA;
   -- type LPENUMTEXTMETRICA is access all tagENUMTEXTMETRICA;
   -- type PENUMTEXTMETRICW is access all tagENUMTEXTMETRICW;
   -- type LPENUMTEXTMETRICW is access all tagENUMTEXTMETRICW;
   -- type LPTRIVERTEX is access all TRIVERTEX;
   -- type PTRIVERTEX is access all TRIVERTEX;
   -- type PGRADIENT_TRIANGLE is access all GRADIENT_TRIANGLE;
   -- type LPGRADIENT_TRIANGLE is access all GRADIENT_TRIANGLE;
   -- type LPGRADIENT_RECT is access all GRADIENT_RECT;
   -- type PGRADIENT_RECT is access all GRADIENT_RECT;
   -- type PBLENDFUNCTION is access all BLENDFUNCTION;
   -- type PDIBSECTION is access all tagDIBSECTION;
   -- type LPDIBSECTION is access all tagDIBSECTION;
   -- type PCOLORADJUSTMENT is access all tagCOLORADJUSTMENT;
   -- type LPCOLORADJUSTMENT is access all tagCOLORADJUSTMENT;
   -- type LPDOCINFOA is access all DOCINFOA;
   -- type LPDOCINFOW is access all DOCINFOW;
   -- type LPKERNINGPAIR is access all tagKERNINGPAIR;
   -- type PEMR is access all tagEMR;
   -- type PEMRTEXT is access all tagEMRTEXT;
   -- type PEMRSAVEDC is access all tagABORTPATH;
   -- type PEMRABORTPATH is access all tagABORTPATH;
   -- type PEMRREALIZEPALETTE is access all tagABORTPATH;
   -- type PEMRFLATTENPATH is access all tagABORTPATH;
   -- type PEMRWIDENPATH is access all tagABORTPATH;
   -- type PEMRSETMETARGN is access all tagABORTPATH;
   -- type PEMRENDPATH is access all tagABORTPATH;
   -- type PEMRCLOSEFIGURE is access all tagABORTPATH;
   -- type PEMRBEGINPATH is access all tagABORTPATH;
   -- type PEMRSETROP2 is access all tagEMRSELECTCLIPPATH;
   -- type PEMRSETTEXTALIGN is access all tagEMRSELECTCLIPPATH;
   -- type PEMRSETICMMODE is access all tagEMRSELECTCLIPPATH;
   -- type PEMRSETSTRETCHBLTMODE is access all tagEMRSELECTCLIPPATH;
   -- type PEMRSETPOLYFILLMODE is access all tagEMRSELECTCLIPPATH;
   -- type PEMRSETLAYOUT is access all tagEMRSELECTCLIPPATH;
   -- type PEMRSETMAPMODE is access all tagEMRSELECTCLIPPATH;
   -- type PEMRSETBKMODE is access all tagEMRSELECTCLIPPATH;
   -- type PEMRSELECTCLIPPATH is access all tagEMRSELECTCLIPPATH;
   -- type PEMRSETMITERLIMIT is access all tagEMRSETMITERLIMIT;
   -- type PEMRRESTOREDC is access all tagEMRRESTOREDC;
   -- type PEMRSETARCDIRECTION is access all tagEMRSETARCDIRECTION;
   -- type PEMRSETMAPPERFLAGS is access all tagEMRSETMAPPERFLAGS;
   -- type PEMRSETTEXTCOLOR is access all tagEMRSETTEXTCOLOR;
   -- type PEMRSETBKCOLOR is access all tagEMRSETTEXTCOLOR;
   -- type PEMRDELETEOBJECT is access all tagEMRSELECTOBJECT;
   -- type PEMRSELECTOBJECT is access all tagEMRSELECTOBJECT;
   -- type PEMRSELECTPALETTE is access all tagEMRSELECTPALETTE;
   -- type PEMRRESIZEPALETTE is access all tagEMRRESIZEPALETTE;
   -- type PEMRSETPALETTEENTRIES is access all tagEMRSETPALETTEENTRIES;
   -- type PEMRSETCOLORADJUSTMENT is access all tagEMRSETCOLORADJUSTMENT;
   -- type PEMRGDICOMMENT is access all tagEMRGDICOMMENT;
   -- type PEMREOF is access all tagEMREOF;
   -- type PEMRMOVETOEX is access all tagEMRLINETO;
   -- type PEMRLINETO is access all tagEMRLINETO;
   -- type PEMROFFSETCLIPRGN is access all tagEMROFFSETCLIPRGN;
   -- type PEMRFILLPATH is access all tagEMRFILLPATH;
   -- type PEMRSTROKEANDFILLPATH is access all tagEMRFILLPATH;
   -- type PEMRSTROKEPATH is access all tagEMRFILLPATH;
   -- type PEMRINTERSECTCLIPRECT is access all tagEMREXCLUDECLIPRECT;
   -- type PEMREXCLUDECLIPRECT is access all tagEMREXCLUDECLIPRECT;
   -- type PEMRSETBRUSHORGEX is access all tagEMRSETVIEWPORTORGEX;
   -- type PEMRSETVIEWPORTORGEX is access all tagEMRSETVIEWPORTORGEX;
   -- type PEMRSETWINDOWORGEX is access all tagEMRSETVIEWPORTORGEX;
   -- type PEMRSETWINDOWEXTEX is access all tagEMRSETVIEWPORTEXTEX;
   -- type PEMRSETVIEWPORTEXTEX is access all tagEMRSETVIEWPORTEXTEX;
   -- type PEMRSCALEVIEWPORTEXTEX is access all tagEMRSCALEVIEWPORTEXTEX;
   -- type PEMRSCALEWINDOWEXTEX is access all tagEMRSCALEVIEWPORTEXTEX;
   -- type PEMRSETWORLDTRANSFORM is access all tagEMRSETWORLDTRANSFORM;
   -- type PEMRMODIFYWORLDTRANSFORM is access all tagEMRMODIFYWORLDTRANSFORM;
   -- type PEMRSETPIXELV is access all tagEMRSETPIXELV;
   -- type PEMREXTFLOODFILL is access all tagEMREXTFLOODFILL;
   -- type PEMRELLIPSE is access all tagEMRELLIPSE;
   -- type PEMRRECTANGLE is access all tagEMRELLIPSE;
   -- type PEMRROUNDRECT is access all tagEMRROUNDRECT;
   -- type PEMRARC is access all tagEMRARC;
   -- type PEMRARCTO is access all tagEMRARC;
   -- type PEMRCHORD is access all tagEMRARC;
   -- type PEMRPIE is access all tagEMRARC;
   -- type PEMRANGLEARC is access all tagEMRANGLEARC;
   -- type PEMRPOLYLINE is access all tagEMRPOLYLINE;
   -- type PEMRPOLYBEZIERTO is access all tagEMRPOLYLINE;
   -- type PEMRPOLYGON is access all tagEMRPOLYLINE;
   -- type PEMRPOLYBEZIER is access all tagEMRPOLYLINE;
   -- type PEMRPOLYLINETO is access all tagEMRPOLYLINE;
   -- type PEMRPOLYLINE16 is access all tagEMRPOLYLINE16;
   -- type PEMRPOLYBEZIER16 is access all tagEMRPOLYLINE16;
   -- type PEMRPOLYGON16 is access all tagEMRPOLYLINE16;
   -- type PEMRPOLYBEZIERTO16 is access all tagEMRPOLYLINE16;
   -- type PEMRPOLYLINETO16 is access all tagEMRPOLYLINE16;
   -- type PEMRPOLYDRAW is access all tagEMRPOLYDRAW;
   -- type PEMRPOLYDRAW16 is access all tagEMRPOLYDRAW16;
   -- type PEMRPOLYPOLYLINE is access all tagEMRPOLYPOLYLINE;
   -- type PEMRPOLYPOLYGON is access all tagEMRPOLYPOLYLINE;
   -- type PEMRPOLYPOLYGON16 is access all tagEMRPOLYPOLYLINE16;
   -- type PEMRPOLYPOLYLINE16 is access all tagEMRPOLYPOLYLINE16;
   -- type PEMRINVERTRGN is access all tagEMRINVERTRGN;
   -- type PEMRPAINTRGN is access all tagEMRINVERTRGN;
   -- type PEMRFILLRGN is access all tagEMRFILLRGN;
   -- type PEMRFRAMERGN is access all tagEMRFRAMERGN;
   -- type PEMREXTSELECTCLIPRGN is access all tagEMREXTSELECTCLIPRGN;
   -- type PEMREXTTEXTOUTW is access all tagEMREXTTEXTOUTA;
   -- type PEMREXTTEXTOUTA is access all tagEMREXTTEXTOUTA;
   -- type PEMRPOLYTEXTOUTA is access all tagEMRPOLYTEXTOUTA;
   -- type PEMRPOLYTEXTOUTW is access all tagEMRPOLYTEXTOUTA;
   -- type PEMRBITBLT is access all tagEMRBITBLT;
   -- type PEMRSTRETCHBLT is access all tagEMRSTRETCHBLT;
   -- type PEMRMASKBLT is access all tagEMRMASKBLT;
   -- type PEMRPLGBLT is access all tagEMRPLGBLT;
   -- type PEMRSETDIBITSTODEVICE is access all tagEMRSETDIBITSTODEVICE;
   -- type PEMRSTRETCHDIBITS is access all tagEMRSTRETCHDIBITS;
   -- type PEMREXTCREATEFONTINDIRECTW is access all tagEMREXTCREATEFONTINDIRECTW;
   -- type PEMRCREATEPALETTE is access all tagEMRCREATEPALETTE;
   -- type PEMRCREATEPEN is access all tagEMRCREATEPEN;
   -- type PEMREXTCREATEPEN is access all tagEMREXTCREATEPEN;
   -- type PEMRCREATEBRUSHINDIRECT is access all tagEMRCREATEBRUSHINDIRECT;
   -- type PEMRCREATEMONOBRUSH is access all tagEMRCREATEMONOBRUSH;
   -- type PEMRCREATEDIBPATTERNBRUSHPT is access all tagEMRCREATEDIBPATTERNBRUSHPT;
   -- type PEMRFORMAT is access all tagEMRFORMAT;
   -- type PEMRGLSRECORD is access all tagEMRGLSRECORD;
   -- type PEMRGLSBOUNDEDRECORD is access all tagEMRGLSBOUNDEDRECORD;
   -- type PEMRPIXELFORMAT is access all tagEMRPIXELFORMAT;
   -- type PEMRCREATECOLORSPACE is access all tagEMRCREATECOLORSPACE;
   -- type PEMRSELECTCOLORSPACE is access all tagEMRSETCOLORSPACE;
   -- type PEMRSETCOLORSPACE is access all tagEMRSETCOLORSPACE;
   -- type PEMRDELETECOLORSPACE is access all tagEMRSETCOLORSPACE;
   -- type PEMREXTESCAPE is access all tagEMREXTESCAPE;
   -- type PEMRDRAWESCAPE is access all tagEMREXTESCAPE;
   -- type PEMRNAMEDESCAPE is access all tagEMRNAMEDESCAPE;
   -- type PEMRSETICMPROFILE is access all tagEMRSETICMPROFILE;
   -- type PEMRSETICMPROFILEW is access all tagEMRSETICMPROFILE;
   -- type PEMRSETICMPROFILEA is access all tagEMRSETICMPROFILE;
   -- type PEMRCREATECOLORSPACEW is access all tagEMRCREATECOLORSPACEW;
   -- type PEMRCOLORMATCHTOTARGET is access all tagCOLORMATCHTOTARGET;
   -- type PEMRCOLORCORRECTPALETTE is access all tagCOLORCORRECTPALETTE;
   -- type PEMRALPHABLEND is access all tagEMRALPHABLEND;
   -- type PEMRGRADIENTFILL is access all tagEMRGRADIENTFILL;
   -- type PEMRTRANSPARENTBLT is access all tagEMRTRANSPARENTBLT;
   -- type PPOINTFLOAT is access all POINTFLOAT;
   -- type LPGLYPHMETRICSFLOAT is access all GLYPHMETRICSFLOAT;
   -- type PGLYPHMETRICSFLOAT is access all GLYPHMETRICSFLOAT;
   -- type LPLAYERPLANEDESCRIPTOR is access all tagLAYERPLANEDESCRIPTOR;
   -- type PLAYERPLANEDESCRIPTOR is access all tagLAYERPLANEDESCRIPTOR;
   -- type PWGLSWAP is access all WGLSWAP;
   -- type LPWGLSWAP is access all WGLSWAP;
   -- C:\Program Files (x86)\Windows Kits\10\include\10.0.16299.0\um\winuser.h
   -- type LPVIDEOPARAMETERS is access all VIDEOPARAMETERS;
   -- type PVIDEOPARAMETERS is access all VIDEOPARAMETERS;
   subtype MENUTEMPLATEA is Void;
   subtype MENUTEMPLATEW is Void;
   -- type LPCBT_CREATEWNDA is access all tagCBT_CREATEWNDA;
   -- type tagCREATESTRUCTA; -- forward declaration
   -- type LPCBT_CREATEWNDW is access all tagCBT_CREATEWNDW;
   -- type tagCREATESTRUCTW; -- forward declaration
   -- type LPCBTACTIVATESTRUCT is access all tagCBTACTIVATESTRUCT;
   -- type PWTSSESSION_NOTIFICATION is access all tagWTSSESSION_NOTIFICATION;
   -- type LPSHELLHOOKINFO is access all SHELLHOOKINFO;
   -- type LPEVENTMSGMSG is access all tagEVENTMSG;
   -- type PEVENTMSGMSG is access all tagEVENTMSG;
   -- type NPEVENTMSGMSG is access all tagEVENTMSG;
   -- type NPEVENTMSG is access all tagEVENTMSG;
   -- type PEVENTMSG is access all tagEVENTMSG;
   -- type LPEVENTMSG is access all tagEVENTMSG;
   -- type PCWPSTRUCT is access all tagCWPSTRUCT;
   -- type LPCWPSTRUCT is access all tagCWPSTRUCT;
   -- type NPCWPSTRUCT is access all tagCWPSTRUCT;
   -- type LPCWPRETSTRUCT is access all tagCWPRETSTRUCT;
   -- type NPCWPRETSTRUCT is access all tagCWPRETSTRUCT;
   -- type PCWPRETSTRUCT is access all tagCWPRETSTRUCT;
   -- type PKBDLLHOOKSTRUCT is access all tagKBDLLHOOKSTRUCT;
   -- type LPKBDLLHOOKSTRUCT is access all tagKBDLLHOOKSTRUCT;
   -- type PMSLLHOOKSTRUCT is access all tagMSLLHOOKSTRUCT;
   -- type LPMSLLHOOKSTRUCT is access all tagMSLLHOOKSTRUCT;
   -- type NPDEBUGHOOKINFO is access all tagDEBUGHOOKINFO;
   -- type PDEBUGHOOKINFO is access all tagDEBUGHOOKINFO;
   -- type LPDEBUGHOOKINFO is access all tagDEBUGHOOKINFO;
   -- type LPMOUSEHOOKSTRUCT is access all tagMOUSEHOOKSTRUCT;
   -- type PMOUSEHOOKSTRUCT is access all tagMOUSEHOOKSTRUCT;
   -- type LPMOUSEHOOKSTRUCTEX is access all tagMOUSEHOOKSTRUCTEX;
   -- type PMOUSEHOOKSTRUCTEX is access all tagMOUSEHOOKSTRUCTEX;
   -- type LPHARDWAREHOOKSTRUCT is access all tagHARDWAREHOOKSTRUCT;
   -- type PHARDWAREHOOKSTRUCT is access all tagHARDWAREHOOKSTRUCT;
   -- type LPMOUSEMOVEPOINT is access all tagMOUSEMOVEPOINT;
   -- type PMOUSEMOVEPOINT is access all tagMOUSEMOVEPOINT;
   -- type PUSEROBJECTFLAGS is access all tagUSEROBJECTFLAGS;
   -- type PWNDCLASSEXA is access all tagWNDCLASSEXA;
   -- type NPWNDCLASSEXA is access all tagWNDCLASSEXA;
   -- type LPWNDCLASSEXA is access all tagWNDCLASSEXA;
   -- type LPWNDCLASSEXW is access all tagWNDCLASSEXW;
   -- type NPWNDCLASSEXW is access all tagWNDCLASSEXW;
   -- type PWNDCLASSEXW is access all tagWNDCLASSEXW;
   -- type PWNDCLASSA is access all tagWNDCLASSA;
   -- type NPWNDCLASSA is access all tagWNDCLASSA;
   -- type LPWNDCLASSA is access all tagWNDCLASSA;
   -- type PWNDCLASSW is access all tagWNDCLASSW;
   -- type NPWNDCLASSW is access all tagWNDCLASSW;
   -- type LPWNDCLASSW is access all tagWNDCLASSW;
   -- type LPMSG is access all tagMSG;
   -- type NPMSG is access all tagMSG;
   -- type PMSG is access all tagMSG;
   -- type LPMINMAXINFO is access all tagMINMAXINFO;
   -- type PMINMAXINFO is access all tagMINMAXINFO;
   -- type PCOPYDATASTRUCT is access all tagCOPYDATASTRUCT;
   -- type PMDINEXTMENU is access all tagMDINEXTMENU;
   -- type LPMDINEXTMENU is access all tagMDINEXTMENU;
   -- type PPOWERBROADCAST_SETTING is access all POWERBROADCAST_SETTING;
   -- type LPWINDOWPOS is access all tagWINDOWPOS;
   -- type PWINDOWPOS is access all tagWINDOWPOS;
   -- type LPNCCALCSIZE_PARAMS is access all tagNCCALCSIZE_PARAMS;
   -- type LPTRACKMOUSEEVENT is access all tagTRACKMOUSEEVENT;
   -- type LPACCEL is access all tagACCEL;
   -- type NPPAINTSTRUCT is access all tagPAINTSTRUCT;
   -- type PPAINTSTRUCT is access all tagPAINTSTRUCT;
   -- type LPPAINTSTRUCT is access all tagPAINTSTRUCT;
   -- type LPCREATESTRUCTA is access all tagCREATESTRUCTA;
   -- type LPCREATESTRUCTW is access all tagCREATESTRUCTW;
   -- type LPWINDOWPLACEMENT is access all WINDOWPLACEMENT;
   -- type PWINDOWPLACEMENT is access all WINDOWPLACEMENT;
   -- type LPNMHDR is access all NMHDR;
   -- type LPSTYLESTRUCT is access all tagSTYLESTRUCT;
   -- type PMEASUREITEMSTRUCT is access all tagMEASUREITEMSTRUCT;
   -- type LPMEASUREITEMSTRUCT is access all tagMEASUREITEMSTRUCT;
   -- type PDRAWITEMSTRUCT is access all tagDRAWITEMSTRUCT;
   -- type LPDRAWITEMSTRUCT is access all tagDRAWITEMSTRUCT;
   -- type PDELETEITEMSTRUCT is access all tagDELETEITEMSTRUCT;
   -- type LPDELETEITEMSTRUCT is access all tagDELETEITEMSTRUCT;
   -- type PCOMPAREITEMSTRUCT is access all tagCOMPAREITEMSTRUCT;
   -- type LPCOMPAREITEMSTRUCT is access all tagCOMPAREITEMSTRUCT;
   -- type PBSMINFO is access all BSMINFO;
   -- type PHDEVNOTIFY is access all HDEVNOTIFY;
   -- type PHPOWERNOTIFY is access all HPOWERNOTIFY;
   -- type PUPDATELAYEREDWINDOWINFO is access all tagUPDATELAYEREDWINDOWINFO;
   -- type PFLASHWINFO is access all FLASHWINFO;
   -- type LPDLGTEMPLATEA is access all DLGTEMPLATE;
   -- type LPDLGTEMPLATEW is access all DLGTEMPLATE;
   -- type LPCDLGTEMPLATEA is access all DLGTEMPLATE;
   -- type LPCDLGTEMPLATEW is access all DLGTEMPLATE;
   -- type PDLGITEMTEMPLATEA is access all DLGITEMTEMPLATE;
   -- type PDLGITEMTEMPLATEW is access all DLGITEMTEMPLATE;
   -- type LPDLGITEMTEMPLATEA is access all DLGITEMTEMPLATE;
   -- type LPDLGITEMTEMPLATEW is access all DLGITEMTEMPLATE;
   type DIALOG_CONTROL_DPI_CHANGE_BEHAVIORS is (
      DCDC_DEFAULT,
      DCDC_DISABLE_FONT_UPDATE,
      DCDC_DISABLE_RELAYOUT
   );
   for DIALOG_CONTROL_DPI_CHANGE_BEHAVIORS use (
      DCDC_DEFAULT => 0,
      DCDC_DISABLE_FONT_UPDATE => 1,
      DCDC_DISABLE_RELAYOUT => 2
   );
   for DIALOG_CONTROL_DPI_CHANGE_BEHAVIORS'Size use 32;
   
   type DIALOG_DPI_CHANGE_BEHAVIORS is (
      DDC_DEFAULT,
      DDC_DISABLE_ALL,
      DDC_DISABLE_RESIZE,
      DDC_DISABLE_CONTROL_RELAYOUT
   );
   for DIALOG_DPI_CHANGE_BEHAVIORS use (
      DDC_DEFAULT => 0,
      DDC_DISABLE_ALL => 1,
      DDC_DISABLE_RESIZE => 2,
      DDC_DISABLE_CONTROL_RELAYOUT => 4
   );
   for DIALOG_DPI_CHANGE_BEHAVIORS'Size use 32;
   
   -- type LPMOUSEINPUT is access all tagMOUSEINPUT;
   -- type PMOUSEINPUT is access all tagMOUSEINPUT;
   -- type PKEYBDINPUT is access all tagKEYBDINPUT;
   -- type LPKEYBDINPUT is access all tagKEYBDINPUT;
   -- type PHARDWAREINPUT is access all tagHARDWAREINPUT;
   -- type LPHARDWAREINPUT is access all tagHARDWAREINPUT;
   -- type PINPUT is access all tagINPUT;
   -- type LPINPUT is access all tagINPUT;
   -- type HTOUCHINPUT is access all HTOUCHINPUT_x;
   -- type PTOUCHINPUT is access all tagTOUCHINPUT;
   -- type PCTOUCHINPUT is access all TOUCHINPUT;
   type tagPOINTER_INPUT_TYPE is (
      PT_POINTER,
      PT_TOUCH,
      PT_PEN,
      PT_MOUSE,
      PT_TOUCHPAD
   );
   for tagPOINTER_INPUT_TYPE use (
      PT_POINTER => 1,
      PT_TOUCH => 2,
      PT_PEN => 3,
      PT_MOUSE => 4,
      PT_TOUCHPAD => 5
   );
   for tagPOINTER_INPUT_TYPE'Size use 32;
   
   type tagPOINTER_BUTTON_CHANGE_TYPE is (
      POINTER_CHANGE_NONE,
      POINTER_CHANGE_FIRSTBUTTON_DOWN,
      POINTER_CHANGE_FIRSTBUTTON_UP,
      POINTER_CHANGE_SECONDBUTTON_DOWN,
      POINTER_CHANGE_SECONDBUTTON_UP,
      POINTER_CHANGE_THIRDBUTTON_DOWN,
      POINTER_CHANGE_THIRDBUTTON_UP,
      POINTER_CHANGE_FOURTHBUTTON_DOWN,
      POINTER_CHANGE_FOURTHBUTTON_UP,
      POINTER_CHANGE_FIFTHBUTTON_DOWN,
      POINTER_CHANGE_FIFTHBUTTON_UP
   );
   for tagPOINTER_BUTTON_CHANGE_TYPE use (
      POINTER_CHANGE_NONE => 0,
      POINTER_CHANGE_FIRSTBUTTON_DOWN => 1,
      POINTER_CHANGE_FIRSTBUTTON_UP => 2,
      POINTER_CHANGE_SECONDBUTTON_DOWN => 3,
      POINTER_CHANGE_SECONDBUTTON_UP => 4,
      POINTER_CHANGE_THIRDBUTTON_DOWN => 5,
      POINTER_CHANGE_THIRDBUTTON_UP => 6,
      POINTER_CHANGE_FOURTHBUTTON_DOWN => 7,
      POINTER_CHANGE_FOURTHBUTTON_UP => 8,
      POINTER_CHANGE_FIFTHBUTTON_DOWN => 9,
      POINTER_CHANGE_FIFTHBUTTON_UP => 10
   );
   for tagPOINTER_BUTTON_CHANGE_TYPE'Size use 32;
   
   -- type PUSAGE_PROPERTIES is access all tagUSAGE_PROPERTIES;
   -- type PPOINTER_TYPE_INFO is access all tagPOINTER_TYPE_INFO;
   -- type PINPUT_INJECTION_VALUE is access all tagINPUT_INJECTION_VALUE;
   -- type PTOUCH_HIT_TESTING_PROXIMITY_EVALUATION is access all tagTOUCH_HIT_TESTING_PROXIMITY_EVALUATION;
   -- type PTOUCH_HIT_TESTING_INPUT is access all tagTOUCH_HIT_TESTING_INPUT;
   type tagFEEDBACK_TYPE is (
      FEEDBACK_MAX,
      FEEDBACK_TOUCH_CONTACTVISUALIZATION,
      FEEDBACK_PEN_BARRELVISUALIZATION,
      FEEDBACK_PEN_TAP,
      FEEDBACK_PEN_DOUBLETAP,
      FEEDBACK_PEN_PRESSANDHOLD,
      FEEDBACK_PEN_RIGHTTAP,
      FEEDBACK_TOUCH_TAP,
      FEEDBACK_TOUCH_DOUBLETAP,
      FEEDBACK_TOUCH_PRESSANDHOLD,
      FEEDBACK_TOUCH_RIGHTTAP,
      FEEDBACK_GESTURE_PRESSANDTAP
   );
   for tagFEEDBACK_TYPE use (
      FEEDBACK_MAX => -1,
      FEEDBACK_TOUCH_CONTACTVISUALIZATION => 1,
      FEEDBACK_PEN_BARRELVISUALIZATION => 2,
      FEEDBACK_PEN_TAP => 3,
      FEEDBACK_PEN_DOUBLETAP => 4,
      FEEDBACK_PEN_PRESSANDHOLD => 5,
      FEEDBACK_PEN_RIGHTTAP => 6,
      FEEDBACK_TOUCH_TAP => 7,
      FEEDBACK_TOUCH_DOUBLETAP => 8,
      FEEDBACK_TOUCH_PRESSANDHOLD => 9,
      FEEDBACK_TOUCH_RIGHTTAP => 10,
      FEEDBACK_GESTURE_PRESSANDTAP => 11
   );
   for tagFEEDBACK_TYPE'Size use 32;
   
   -- type PLASTINPUTINFO is access all tagLASTINPUTINFO;
   -- type LPTPMPARAMS is access all TPMPARAMS;
   -- type LPMENUINFO is access all tagMENUINFO;
   -- type LPCMENUINFO is access all MENUINFO;
   -- type PMENUGETOBJECTINFO is access all tagMENUGETOBJECTINFO;
   -- type LPMENUITEMINFOA is access all tagMENUITEMINFOA;
   -- type LPMENUITEMINFOW is access all tagMENUITEMINFOW;
   -- type LPCMENUITEMINFOA is access all MENUITEMINFOA;
   -- type LPCMENUITEMINFOW is access all MENUITEMINFOW;
   -- type LPDROPSTRUCT is access all tagDROPSTRUCT;
   -- type PDROPSTRUCT is access all tagDROPSTRUCT;
   -- type LPDRAWTEXTPARAMS is access all tagDRAWTEXTPARAMS;
   -- type LPHELPINFO is access all tagHELPINFO;
   -- type LPMSGBOXPARAMSA is access all tagMSGBOXPARAMSA;
   -- type PMSGBOXPARAMSA is access all tagMSGBOXPARAMSA;
   -- type PMSGBOXPARAMSW is access all tagMSGBOXPARAMSW;
   -- type LPMSGBOXPARAMSW is access all tagMSGBOXPARAMSW;
   -- type PMENUITEMTEMPLATEHEADER is access all MENUITEMTEMPLATEHEADER;
   -- type PMENUITEMTEMPLATE is access all MENUITEMTEMPLATE;
   -- type PICONINFO is access all ICONINFO;
   -- type LPCURSORSHAPE is access all tagCURSORSHAPE;
   -- type PICONINFOEXA is access all ICONINFOEXA;
   -- type PICONINFOEXW is access all ICONINFOEXW;
   type EDIT_CONTROL_FEATURE is (
      EDIT_CONTROL_FEATURE_ENTERPRISE_DATA_PROTECTION_PASTE_SUPPORT,
      EDIT_CONTROL_FEATURE_PASTE_NOTIFICATIONS
   );
   for EDIT_CONTROL_FEATURE use (
      EDIT_CONTROL_FEATURE_ENTERPRISE_DATA_PROTECTION_PASTE_SUPPORT => 0,
      EDIT_CONTROL_FEATURE_PASTE_NOTIFICATIONS => 1
   );
   for EDIT_CONTROL_FEATURE'Size use 32;
   
   -- type LPSCROLLINFO is access all tagSCROLLINFO;
   -- type LPCSCROLLINFO is access all SCROLLINFO;
   -- type LPMDICREATESTRUCTA is access all tagMDICREATESTRUCTA;
   -- type LPMDICREATESTRUCTW is access all tagMDICREATESTRUCTW;
   -- type LPCLIENTCREATESTRUCT is access all tagCLIENTCREATESTRUCT;
   -- type LPMULTIKEYHELPA is access all tagMULTIKEYHELPA;
   -- type PMULTIKEYHELPA is access all tagMULTIKEYHELPA;
   -- type PMULTIKEYHELPW is access all tagMULTIKEYHELPW;
   -- type LPMULTIKEYHELPW is access all tagMULTIKEYHELPW;
   -- type PHELPWININFOA is access all tagHELPWININFOA;
   -- type LPHELPWININFOA is access all tagHELPWININFOA;
   -- type LPHELPWININFOW is access all tagHELPWININFOW;
   -- type PHELPWININFOW is access all tagHELPWININFOW;
   -- type PTOUCHPREDICTIONPARAMETERS is access all tagTouchPredictionParameters;
   -- type LPNONCLIENTMETRICSA is access all tagNONCLIENTMETRICSA;
   -- type PNONCLIENTMETRICSA is access all tagNONCLIENTMETRICSA;
   -- type PNONCLIENTMETRICSW is access all tagNONCLIENTMETRICSW;
   -- type LPNONCLIENTMETRICSW is access all tagNONCLIENTMETRICSW;
   -- type LPMINIMIZEDMETRICS is access all tagMINIMIZEDMETRICS;
   -- type PMINIMIZEDMETRICS is access all tagMINIMIZEDMETRICS;
   -- type LPICONMETRICSA is access all tagICONMETRICSA;
   -- type PICONMETRICSA is access all tagICONMETRICSA;
   -- type PICONMETRICSW is access all tagICONMETRICSW;
   -- type LPICONMETRICSW is access all tagICONMETRICSW;
   -- type LPANIMATIONINFO is access all tagANIMATIONINFO;
   -- type LPSERIALKEYSA is access all tagSERIALKEYSA;
   -- type LPSERIALKEYSW is access all tagSERIALKEYSW;
   -- type LPHIGHCONTRASTA is access all tagHIGHCONTRASTA;
   -- type LPHIGHCONTRASTW is access all tagHIGHCONTRASTW;
   -- type LPFILTERKEYS is access all tagFILTERKEYS;
   -- type LPSTICKYKEYS is access all tagSTICKYKEYS;
   -- type LPMOUSEKEYS is access all tagMOUSEKEYS;
   -- type LPACCESSTIMEOUT is access all tagACCESSTIMEOUT;
   -- type LPSOUNDSENTRYA is access all tagSOUNDSENTRYA;
   -- type LPSOUNDSENTRYW is access all tagSOUNDSENTRYW;
   -- type LPTOGGLEKEYS is access all tagTOGGLEKEYS;
   -- type LPAUDIODESCRIPTION is access all tagAUDIODESCRIPTION;
   -- type LPMONITORINFO is access all tagMONITORINFO;
   -- type LPMONITORINFOEXA is access all tagMONITORINFOEXA;
   -- type LPMONITORINFOEXW is access all tagMONITORINFOEXW;
   -- type LPGUITHREADINFO is access all tagGUITHREADINFO;
   -- type PGUITHREADINFO is access all tagGUITHREADINFO;
   -- type LPCURSORINFO is access all tagCURSORINFO;
   -- type PCURSORINFO is access all tagCURSORINFO;
   -- type LPWINDOWINFO is access all tagWINDOWINFO;
   -- type PWINDOWINFO is access all tagWINDOWINFO;
   -- type LPTITLEBARINFO is access all tagTITLEBARINFO;
   -- type PTITLEBARINFO is access all tagTITLEBARINFO;
   -- type LPTITLEBARINFOEX is access all tagTITLEBARINFOEX;
   -- type PTITLEBARINFOEX is access all tagTITLEBARINFOEX;
   -- type LPMENUBARINFO is access all tagMENUBARINFO;
   -- type PMENUBARINFO is access all tagMENUBARINFO;
   -- type LPSCROLLBARINFO is access all tagSCROLLBARINFO;
   -- type PSCROLLBARINFO is access all tagSCROLLBARINFO;
   -- type LPCOMBOBOXINFO is access all tagCOMBOBOXINFO;
   -- type PCOMBOBOXINFO is access all tagCOMBOBOXINFO;
   -- type LPALTTABINFO is access all tagALTTABINFO;
   -- type PALTTABINFO is access all tagALTTABINFO;
   -- type HRAWINPUT is access all HRAWINPUT_x;
   -- type PRAWINPUTHEADER is access all tagRAWINPUTHEADER;
   -- type LPRAWINPUTHEADER is access all tagRAWINPUTHEADER;
   -- type PRAWMOUSE is access all tagRAWMOUSE;
   -- type LPRAWMOUSE is access all tagRAWMOUSE;
   -- type LPRAWKEYBOARD is access all tagRAWKEYBOARD;
   -- type PRAWKEYBOARD is access all tagRAWKEYBOARD;
   -- type LPRAWHID is access all tagRAWHID;
   -- type PRAWHID is access all tagRAWHID;
   -- type PRAWINPUT is access all tagRAWINPUT;
   -- type LPRAWINPUT is access all tagRAWINPUT;
   -- type PRID_DEVICE_INFO_MOUSE is access all tagRID_DEVICE_INFO_MOUSE;
   -- type PRID_DEVICE_INFO_KEYBOARD is access all tagRID_DEVICE_INFO_KEYBOARD;
   -- type PRID_DEVICE_INFO_HID is access all tagRID_DEVICE_INFO_HID;
   -- type LPRID_DEVICE_INFO is access all tagRID_DEVICE_INFO;
   -- type PRID_DEVICE_INFO is access all tagRID_DEVICE_INFO;
   -- type PRAWINPUTDEVICE is access all tagRAWINPUTDEVICE;
   -- type LPRAWINPUTDEVICE is access all tagRAWINPUTDEVICE;
   -- type PCRAWINPUTDEVICE is access all RAWINPUTDEVICE;
   -- type PRAWINPUTDEVICELIST is access all tagRAWINPUTDEVICELIST;
   type tagPOINTER_DEVICE_TYPE is (
      POINTER_DEVICE_TYPE_MAX,
      POINTER_DEVICE_TYPE_INTEGRATED_PEN,
      POINTER_DEVICE_TYPE_EXTERNAL_PEN,
      POINTER_DEVICE_TYPE_TOUCH,
      POINTER_DEVICE_TYPE_TOUCH_PAD
   );
   for tagPOINTER_DEVICE_TYPE use (
      POINTER_DEVICE_TYPE_MAX => -1,
      POINTER_DEVICE_TYPE_INTEGRATED_PEN => 1,
      POINTER_DEVICE_TYPE_EXTERNAL_PEN => 2,
      POINTER_DEVICE_TYPE_TOUCH => 3,
      POINTER_DEVICE_TYPE_TOUCH_PAD => 4
   );
   for tagPOINTER_DEVICE_TYPE'Size use 32;
   
   type tagPOINTER_DEVICE_CURSOR_TYPE is (
      POINTER_DEVICE_CURSOR_TYPE_MAX,
      POINTER_DEVICE_CURSOR_TYPE_UNKNOWN,
      POINTER_DEVICE_CURSOR_TYPE_TIP,
      POINTER_DEVICE_CURSOR_TYPE_ERASER
   );
   for tagPOINTER_DEVICE_CURSOR_TYPE use (
      POINTER_DEVICE_CURSOR_TYPE_MAX => -1,
      POINTER_DEVICE_CURSOR_TYPE_UNKNOWN => 0,
      POINTER_DEVICE_CURSOR_TYPE_TIP => 1,
      POINTER_DEVICE_CURSOR_TYPE_ERASER => 2
   );
   for tagPOINTER_DEVICE_CURSOR_TYPE'Size use 32;
   
   -- type PCHANGEFILTERSTRUCT is access all tagCHANGEFILTERSTRUCT;
   -- type HGESTUREINFO is access all HGESTUREINFO_x;
   -- type PGESTUREINFO is access all tagGESTUREINFO;
   -- type PCGESTUREINFO is access all GESTUREINFO;
   -- type PGESTURENOTIFYSTRUCT is access all tagGESTURENOTIFYSTRUCT;
   -- type PGESTURECONFIG is access all tagGESTURECONFIG;
   type tagINPUT_MESSAGE_DEVICE_TYPE is (
      IMDT_UNAVAILABLE,
      IMDT_KEYBOARD,
      IMDT_MOUSE,
      IMDT_TOUCH,
      IMDT_PEN,
      IMDT_TOUCHPAD
   );
   for tagINPUT_MESSAGE_DEVICE_TYPE use (
      IMDT_UNAVAILABLE => 0,
      IMDT_KEYBOARD => 1,
      IMDT_MOUSE => 2,
      IMDT_TOUCH => 4,
      IMDT_PEN => 8,
      IMDT_TOUCHPAD => 16
   );
   for tagINPUT_MESSAGE_DEVICE_TYPE'Size use 32;
   
   type tagINPUT_MESSAGE_ORIGIN_ID is (
      IMO_UNAVAILABLE,
      IMO_HARDWARE,
      IMO_INJECTED,
      IMO_SYSTEM
   );
   for tagINPUT_MESSAGE_ORIGIN_ID use (
      IMO_UNAVAILABLE => 0,
      IMO_HARDWARE => 1,
      IMO_INJECTED => 2,
      IMO_SYSTEM => 4
   );
   for tagINPUT_MESSAGE_ORIGIN_ID'Size use 32;
   
   -- type PAR_STATE is access all tagAR_STATE;
   type tagAR_STATE is (
      AR_ENABLED,
      AR_DISABLED,
      AR_SUPPRESSED,
      AR_REMOTESESSION,
      AR_MULTIMON,
      AR_NOSENSOR,
      AR_NOT_SUPPORTED,
      AR_DOCKED,
      AR_LAPTOP
   );
   for tagAR_STATE use (
      AR_ENABLED => 0,
      AR_DISABLED => 1,
      AR_SUPPRESSED => 2,
      AR_REMOTESESSION => 4,
      AR_MULTIMON => 8,
      AR_NOSENSOR => 16,
      AR_NOT_SUPPORTED => 32,
      AR_DOCKED => 64,
      AR_LAPTOP => 128
   );
   for tagAR_STATE'Size use 32;
   
   type ORIENTATION_PREFERENCE is (
      ORIENTATION_PREFERENCE_NONE,
      ORIENTATION_PREFERENCE_LANDSCAPE,
      ORIENTATION_PREFERENCE_PORTRAIT,
      ORIENTATION_PREFERENCE_LANDSCAPE_FLIPPED,
      ORIENTATION_PREFERENCE_PORTRAIT_FLIPPED
   );
   for ORIENTATION_PREFERENCE use (
      ORIENTATION_PREFERENCE_NONE => 0,
      ORIENTATION_PREFERENCE_LANDSCAPE => 1,
      ORIENTATION_PREFERENCE_PORTRAIT => 2,
      ORIENTATION_PREFERENCE_LANDSCAPE_FLIPPED => 4,
      ORIENTATION_PREFERENCE_PORTRAIT_FLIPPED => 8
   );
   for ORIENTATION_PREFERENCE'Size use 32;
   
   -- C:\Program Files (x86)\Windows Kits\10\include\10.0.16299.0\um\winnls.h
   -- type LPCPINFO is access all cpinfo;
   -- type LPCPINFOEXA is access all cpinfoexA;
   -- type LPCPINFOEXW is access all cpinfoexW;
   -- type LPNUMBERFMTA is access all numberfmtA;
   -- type LPNUMBERFMTW is access all numberfmtW;
   -- type LPCURRENCYFMTA is access all currencyfmtA;
   -- type LPCURRENCYFMTW is access all currencyfmtW;
   type SYSNLS_FUNCTION is (
      COMPARE_STRING
   );
   for SYSNLS_FUNCTION use (
      COMPARE_STRING => 1
   );
   for SYSNLS_FUNCTION'Size use 32;
   
   -- type LPNLSVERSIONINFO is access all nlsversioninfo;
   -- type LPNLSVERSIONINFOEX is access all nlsversioninfoex;
   type SYSGEOTYPE is (
      GEO_NATION,
      GEO_LATITUDE,
      GEO_LONGITUDE,
      GEO_ISO2,
      GEO_ISO3,
      GEO_RFC1766,
      GEO_LCID,
      GEO_FRIENDLYNAME,
      GEO_OFFICIALNAME,
      GEO_TIMEZONES,
      GEO_OFFICIALLANGUAGES,
      GEO_ISO_UN_NUMBER,
      GEO_PARENT,
      GEO_DIALINGCODE,
      GEO_CURRENCYCODE,
      GEO_CURRENCYSYMBOL,
      GEO_NAME,
      GEO_ID
   );
   for SYSGEOTYPE use (
      GEO_NATION => 1,
      GEO_LATITUDE => 2,
      GEO_LONGITUDE => 3,
      GEO_ISO2 => 4,
      GEO_ISO3 => 5,
      GEO_RFC1766 => 6,
      GEO_LCID => 7,
      GEO_FRIENDLYNAME => 8,
      GEO_OFFICIALNAME => 9,
      GEO_TIMEZONES => 10,
      GEO_OFFICIALLANGUAGES => 11,
      GEO_ISO_UN_NUMBER => 12,
      GEO_PARENT => 13,
      GEO_DIALINGCODE => 14,
      GEO_CURRENCYCODE => 15,
      GEO_CURRENCYSYMBOL => 16,
      GEO_NAME => 17,
      GEO_ID => 18
   );
   for SYSGEOTYPE'Size use 32;
   
   type SYSGEOCLASS is (
      GEOCLASS_ALL,
      GEOCLASS_REGION,
      GEOCLASS_NATION
   );
   for SYSGEOCLASS use (
      GEOCLASS_ALL => 0,
      GEOCLASS_REGION => 14,
      GEOCLASS_NATION => 16
   );
   for SYSGEOCLASS'Size use 32;
   
   type NORM_FORM is (
      NormalizationOther,
      NormalizationC,
      NormalizationD,
      NormalizationKC,
      NormalizationKD
   );
   for NORM_FORM use (
      NormalizationOther => 0,
      NormalizationC => 1,
      NormalizationD => 2,
      NormalizationKC => 5,
      NormalizationKD => 6
   );
   for NORM_FORM'Size use 32;
   
   -- type PFILEMUIINFO is access all FILEMUIINFO;
   -- C:\Program Files (x86)\Windows Kits\10\include\10.0.16299.0\um\datetimeapi.h
   -- C:\Program Files (x86)\Windows Kits\10\include\10.0.16299.0\um\stringapiset.h
   -- C:\Program Files (x86)\Windows Kits\10\include\10.0.16299.0\um\wincon.h
   -- type PCOORD is access all COORD;
   -- type PSMALL_RECT is access all SMALL_RECT;
   -- type PKEY_EVENT_RECORD is access all KEY_EVENT_RECORD;
   -- type PMOUSE_EVENT_RECORD is access all MOUSE_EVENT_RECORD;
   -- type PWINDOW_BUFFER_SIZE_RECORD is access all WINDOW_BUFFER_SIZE_RECORD;
   -- type PMENU_EVENT_RECORD is access all MENU_EVENT_RECORD;
   -- type PFOCUS_EVENT_RECORD is access all FOCUS_EVENT_RECORD;
   -- type PINPUT_RECORD is access all INPUT_RECORD;
   -- type PCHAR_INFO is access all CHAR_INFO;
   -- type PCONSOLE_SCREEN_BUFFER_INFO is access all CONSOLE_SCREEN_BUFFER_INFO;
   -- type PCONSOLE_SCREEN_BUFFER_INFOEX is access all CONSOLE_SCREEN_BUFFER_INFOEX;
   -- type PCONSOLE_CURSOR_INFO is access all CONSOLE_CURSOR_INFO;
   -- type PCONSOLE_FONT_INFO is access all CONSOLE_FONT_INFO;
   -- type PCONSOLE_FONT_INFOEX is access all CONSOLE_FONT_INFOEX;
   -- type PCONSOLE_HISTORY_INFO is access all CONSOLE_HISTORY_INFO;
   -- type PCONSOLE_SELECTION_INFO is access all CONSOLE_SELECTION_INFO;
   -- type PCONSOLE_READCONSOLE_CONTROL is access all CONSOLE_READCONSOLE_CONTROL;
   -- C:\Program Files (x86)\Windows Kits\10\include\10.0.16299.0\um\consoleapi.h
   -- C:\Program Files (x86)\Windows Kits\10\include\10.0.16299.0\um\verrsrc.h
   -- C:\Program Files (x86)\Windows Kits\10\include\10.0.16299.0\um\winver.h
   -- C:\Program Files (x86)\Windows Kits\10\include\10.0.16299.0\um\winreg.h
   -- type PVALCONTEXT is access all val_context;
   -- type PPVALUEA is access all pvalueA;
   -- type PPVALUEW is access all pvalueW;
   -- type PQUERYHANDLER is access all QUERYHANDLER;
   -- type PPROVIDER is access all provider_info;
   -- type PVALENTA is access all value_entA;
   -- type PVALENTW is access all value_entW;
   -- C:\Program Files (x86)\Windows Kits\10\include\10.0.16299.0\um\winnetwk.h
   -- type LPNETRESOURCEA is access all NETRESOURCEA;
   -- type LPNETRESOURCEW is access all NETRESOURCEW;
   -- type LPCONNECTDLGSTRUCTA is access all CONNECTDLGSTRUCTA;
   -- type LPCONNECTDLGSTRUCTW is access all CONNECTDLGSTRUCTW;
   -- type LPDISCDLGSTRUCTA is access all DISCDLGSTRUCTA;
   -- type LPDISCDLGSTRUCTW is access all DISCDLGSTRUCTW;
   -- type LPUNIVERSAL_NAME_INFOA is access all UNIVERSAL_NAME_INFOA;
   -- type LPUNIVERSAL_NAME_INFOW is access all UNIVERSAL_NAME_INFOW;
   -- type LPREMOTE_NAME_INFOA is access all REMOTE_NAME_INFOA;
   -- type LPREMOTE_NAME_INFOW is access all REMOTE_NAME_INFOW;
   -- type LPNETINFOSTRUCT is access all NETINFOSTRUCT;
   -- type LPNETCONNECTINFOSTRUCT is access all NETCONNECTINFOSTRUCT;
   -- C:\Program Files (x86)\Windows Kits\10\include\10.0.16299.0\um\dde.h
   -- C:\Program Files (x86)\Windows Kits\10\include\10.0.16299.0\um\ddeml.h
   -- type HCONVLIST is access all HCONVLIST_x;
   -- type HCONV is access all HCONV_x;
   -- type HSZ is access all HSZ_x;
   -- type HDDEDATA is access all HDDEDATA_x;
   -- type PHSZPAIR is access all tagHSZPAIR;
   -- type PCONVCONTEXT is access all tagCONVCONTEXT;
   -- type PCONVINFO is access all tagCONVINFO;
   -- type PDDEML_MSG_HOOK_DATA is access all tagDDEML_MSG_HOOK_DATA;
   -- type PMONMSGSTRUCT is access all tagMONMSGSTRUCT;
   -- type PMONCBSTRUCT is access all tagMONCBSTRUCT;
   -- type PMONHSZSTRUCTA is access all tagMONHSZSTRUCTA;
   -- type PMONHSZSTRUCTW is access all tagMONHSZSTRUCTW;
   -- type PMONERRSTRUCT is access all tagMONERRSTRUCT;
   -- type PMONLINKSTRUCT is access all tagMONLINKSTRUCT;
   -- type PMONCONVSTRUCT is access all tagMONCONVSTRUCT;
   -- C:\Program Files (x86)\Windows Kits\10\include\10.0.16299.0\um\dlgs.h
   -- C:\Program Files (x86)\Windows Kits\10\include\10.0.16299.0\um\lzexpand.h
   -- C:\Program Files (x86)\Windows Kits\10\include\10.0.16299.0\um\mmsyscom.h
   -- type LPUINT is access all UINT;
   -- type PMMTIME is access all mmtime_tag;
   -- type NPMMTIME is access all mmtime_tag;
   -- type LPMMTIME is access all mmtime_tag;
   -- type HDRVR is access all HDRVR_x;
   -- type LPDRVCALLBACK is access all DRVCALLBACK;
   -- type PDRVCALLBACK is access all DRVCALLBACK;
   -- C:\Program Files (x86)\Windows Kits\10\include\10.0.16299.0\um\mciapi.h
   -- type PMCI_GENERIC_PARMS is access all tagMCI_GENERIC_PARMS;
   -- type LPMCI_GENERIC_PARMS is access all tagMCI_GENERIC_PARMS;
   -- type PMCI_OPEN_PARMSA is access all tagMCI_OPEN_PARMSA;
   -- type LPMCI_OPEN_PARMSA is access all tagMCI_OPEN_PARMSA;
   -- type PMCI_OPEN_PARMSW is access all tagMCI_OPEN_PARMSW;
   -- type LPMCI_OPEN_PARMSW is access all tagMCI_OPEN_PARMSW;
   -- type LPMCI_PLAY_PARMS is access all tagMCI_PLAY_PARMS;
   -- type PMCI_PLAY_PARMS is access all tagMCI_PLAY_PARMS;
   -- type LPMCI_SEEK_PARMS is access all tagMCI_SEEK_PARMS;
   -- type PMCI_SEEK_PARMS is access all tagMCI_SEEK_PARMS;
   -- type PMCI_STATUS_PARMS is access all tagMCI_STATUS_PARMS;
   -- type LPMCI_STATUS_PARMS is access all tagMCI_STATUS_PARMS;
   -- type LPMCI_INFO_PARMSA is access all tagMCI_INFO_PARMSA;
   -- type LPMCI_INFO_PARMSW is access all tagMCI_INFO_PARMSW;
   -- type LPMCI_GETDEVCAPS_PARMS is access all tagMCI_GETDEVCAPS_PARMS;
   -- type PMCI_GETDEVCAPS_PARMS is access all tagMCI_GETDEVCAPS_PARMS;
   -- type PMCI_SYSINFO_PARMSA is access all tagMCI_SYSINFO_PARMSA;
   -- type LPMCI_SYSINFO_PARMSA is access all tagMCI_SYSINFO_PARMSA;
   -- type LPMCI_SYSINFO_PARMSW is access all tagMCI_SYSINFO_PARMSW;
   -- type PMCI_SYSINFO_PARMSW is access all tagMCI_SYSINFO_PARMSW;
   -- type LPMCI_SET_PARMS is access all tagMCI_SET_PARMS;
   -- type PMCI_SET_PARMS is access all tagMCI_SET_PARMS;
   -- type LPMCI_BREAK_PARMS is access all tagMCI_BREAK_PARMS;
   -- type PMCI_BREAK_PARMS is access all tagMCI_BREAK_PARMS;
   -- type LPMCI_SAVE_PARMSA is access all tagMCI_SAVE_PARMSA;
   -- type PMCI_SAVE_PARMSA is access all tagMCI_SAVE_PARMSA;
   -- type PMCI_SAVE_PARMSW is access all tagMCI_SAVE_PARMSW;
   -- type LPMCI_SAVE_PARMSW is access all tagMCI_SAVE_PARMSW;
   -- type LPMCI_LOAD_PARMSA is access all tagMCI_LOAD_PARMSA;
   -- type PMCI_LOAD_PARMSA is access all tagMCI_LOAD_PARMSA;
   -- type LPMCI_LOAD_PARMSW is access all tagMCI_LOAD_PARMSW;
   -- type PMCI_LOAD_PARMSW is access all tagMCI_LOAD_PARMSW;
   -- type LPMCI_RECORD_PARMS is access all tagMCI_RECORD_PARMS;
   -- type LPMCI_VD_PLAY_PARMS is access all tagMCI_VD_PLAY_PARMS;
   -- type PMCI_VD_PLAY_PARMS is access all tagMCI_VD_PLAY_PARMS;
   -- type LPMCI_VD_STEP_PARMS is access all tagMCI_VD_STEP_PARMS;
   -- type PMCI_VD_STEP_PARMS is access all tagMCI_VD_STEP_PARMS;
   -- type PMCI_VD_ESCAPE_PARMSA is access all tagMCI_VD_ESCAPE_PARMSA;
   -- type LPMCI_VD_ESCAPE_PARMSA is access all tagMCI_VD_ESCAPE_PARMSA;
   -- type LPMCI_VD_ESCAPE_PARMSW is access all tagMCI_VD_ESCAPE_PARMSW;
   -- type PMCI_VD_ESCAPE_PARMSW is access all tagMCI_VD_ESCAPE_PARMSW;
   -- type PMCI_WAVE_OPEN_PARMSA is access all tagMCI_WAVE_OPEN_PARMSA;
   -- type LPMCI_WAVE_OPEN_PARMSA is access all tagMCI_WAVE_OPEN_PARMSA;
   -- type PMCI_WAVE_OPEN_PARMSW is access all tagMCI_WAVE_OPEN_PARMSW;
   -- type LPMCI_WAVE_OPEN_PARMSW is access all tagMCI_WAVE_OPEN_PARMSW;
   -- type LPMCI_WAVE_DELETE_PARMS is access all tagMCI_WAVE_DELETE_PARMS;
   -- type PMCI_WAVE_DELETE_PARMS is access all tagMCI_WAVE_DELETE_PARMS;
   -- type LPMCI_WAVE_SET_PARMS is access all tagMCI_WAVE_SET_PARMS;
   -- type PMCI_WAVE_SET_PARMS is access all tagMCI_WAVE_SET_PARMS;
   -- type PMCI_SEQ_SET_PARMS is access all tagMCI_SEQ_SET_PARMS;
   -- type LPMCI_SEQ_SET_PARMS is access all tagMCI_SEQ_SET_PARMS;
   -- type PMCI_ANIM_OPEN_PARMSA is access all tagMCI_ANIM_OPEN_PARMSA;
   -- type LPMCI_ANIM_OPEN_PARMSA is access all tagMCI_ANIM_OPEN_PARMSA;
   -- type LPMCI_ANIM_OPEN_PARMSW is access all tagMCI_ANIM_OPEN_PARMSW;
   -- type PMCI_ANIM_OPEN_PARMSW is access all tagMCI_ANIM_OPEN_PARMSW;
   -- type PMCI_ANIM_PLAY_PARMS is access all tagMCI_ANIM_PLAY_PARMS;
   -- type LPMCI_ANIM_PLAY_PARMS is access all tagMCI_ANIM_PLAY_PARMS;
   -- type PMCI_ANIM_STEP_PARMS is access all tagMCI_ANIM_STEP_PARMS;
   -- type LPMCI_ANIM_STEP_PARMS is access all tagMCI_ANIM_STEP_PARMS;
   -- type PMCI_ANIM_WINDOW_PARMSA is access all tagMCI_ANIM_WINDOW_PARMSA;
   -- type LPMCI_ANIM_WINDOW_PARMSA is access all tagMCI_ANIM_WINDOW_PARMSA;
   -- type PMCI_ANIM_WINDOW_PARMSW is access all tagMCI_ANIM_WINDOW_PARMSW;
   -- type LPMCI_ANIM_WINDOW_PARMSW is access all tagMCI_ANIM_WINDOW_PARMSW;
   -- type PMCI_ANIM_RECT_PARMS is access all MCI_ANIM_RECT_PARMS;
   -- type LPMCI_ANIM_RECT_PARMS is access all MCI_ANIM_RECT_PARMS;
   -- type LPMCI_ANIM_UPDATE_PARMS is access all tagMCI_ANIM_UPDATE_PARMS;
   -- type PMCI_ANIM_UPDATE_PARMS is access all tagMCI_ANIM_UPDATE_PARMS;
   -- type LPMCI_OVLY_OPEN_PARMSA is access all tagMCI_OVLY_OPEN_PARMSA;
   -- type PMCI_OVLY_OPEN_PARMSA is access all tagMCI_OVLY_OPEN_PARMSA;
   -- type LPMCI_OVLY_OPEN_PARMSW is access all tagMCI_OVLY_OPEN_PARMSW;
   -- type PMCI_OVLY_OPEN_PARMSW is access all tagMCI_OVLY_OPEN_PARMSW;
   -- type LPMCI_OVLY_WINDOW_PARMSA is access all tagMCI_OVLY_WINDOW_PARMSA;
   -- type PMCI_OVLY_WINDOW_PARMSA is access all tagMCI_OVLY_WINDOW_PARMSA;
   -- type LPMCI_OVLY_WINDOW_PARMSW is access all tagMCI_OVLY_WINDOW_PARMSW;
   -- type PMCI_OVLY_WINDOW_PARMSW is access all tagMCI_OVLY_WINDOW_PARMSW;
   -- type LPMCI_OVLY_RECT_PARMS is access all tagMCI_OVLY_RECT_PARMS;
   -- type PMCI_OVLY_RECT_PARMS is access all tagMCI_OVLY_RECT_PARMS;
   -- type LPMCI_OVLY_SAVE_PARMSA is access all tagMCI_OVLY_SAVE_PARMSA;
   -- type PMCI_OVLY_SAVE_PARMSA is access all tagMCI_OVLY_SAVE_PARMSA;
   -- type LPMCI_OVLY_SAVE_PARMSW is access all tagMCI_OVLY_SAVE_PARMSW;
   -- type PMCI_OVLY_SAVE_PARMSW is access all tagMCI_OVLY_SAVE_PARMSW;
   -- type LPMCI_OVLY_LOAD_PARMSA is access all tagMCI_OVLY_LOAD_PARMSA;
   -- type PMCI_OVLY_LOAD_PARMSA is access all tagMCI_OVLY_LOAD_PARMSA;
   -- type PMCI_OVLY_LOAD_PARMSW is access all tagMCI_OVLY_LOAD_PARMSW;
   -- type LPMCI_OVLY_LOAD_PARMSW is access all tagMCI_OVLY_LOAD_PARMSW;
   -- C:\Program Files (x86)\Windows Kits\10\include\10.0.16299.0\um\mmiscapi.h
   -- type LPDRVCONFIGINFOEX is access all DRVCONFIGINFOEX;
   -- type PDRVCONFIGINFOEX is access all DRVCONFIGINFOEX;
   -- type NPDRVCONFIGINFOEX is access all DRVCONFIGINFOEX;
   -- type PDRVCONFIGINFO is access all tagDRVCONFIGINFO;
   -- type NPDRVCONFIGINFO is access all tagDRVCONFIGINFO;
   -- type LPDRVCONFIGINFO is access all tagDRVCONFIGINFO;
   type HPSTR is access all Character;
   -- type HMMIO is access all HMMIO_x;
   -- type LPMMIOPROC is access all MMIOPROC;
   -- type PMMIOINFO is access all MMIOINFO;
   -- type NPMMIOINFO is access all MMIOINFO;
   -- type LPMMIOINFO is access all MMIOINFO;
   -- type LPCMMIOINFO is access all MMIOINFO;
   -- type LPMMCKINFO is access all MMCKINFO;
   -- type PMMCKINFO is access all MMCKINFO;
   -- type NPMMCKINFO is access all MMCKINFO;
   -- type LPCMMCKINFO is access all MMCKINFO;
   -- C:\Program Files (x86)\Windows Kits\10\include\10.0.16299.0\um\mmiscapi2.h
   -- type LPTIMECALLBACK is access all TIMECALLBACK;
   -- C:\Program Files (x86)\Windows Kits\10\include\10.0.16299.0\um\playsoundapi.h
   -- C:\Program Files (x86)\Windows Kits\10\include\10.0.16299.0\um\mmeapi.h
   -- type HWAVE is access all HWAVE_x;
   -- type HWAVEIN is access all HWAVEIN_x;
   -- type HWAVEOUT is access all HWAVEOUT_x;
   -- type LPHWAVEIN is access all HWAVEIN;
   -- type LPHWAVEOUT is access all HWAVEOUT;
   -- type LPWAVECALLBACK is access all WAVECALLBACK;
   -- type PWAVEHDR is access all wavehdr_tag;
   -- type NPWAVEHDR is access all wavehdr_tag;
   -- type LPWAVEHDR is access all wavehdr_tag;
   -- type LPWAVEOUTCAPSA is access all tagWAVEOUTCAPSA;
   -- type NPWAVEOUTCAPSA is access all tagWAVEOUTCAPSA;
   -- type PWAVEOUTCAPSA is access all tagWAVEOUTCAPSA;
   -- type PWAVEOUTCAPSW is access all tagWAVEOUTCAPSW;
   -- type NPWAVEOUTCAPSW is access all tagWAVEOUTCAPSW;
   -- type LPWAVEOUTCAPSW is access all tagWAVEOUTCAPSW;
   -- type PWAVEOUTCAPS2A is access all tagWAVEOUTCAPS2A;
   -- type LPWAVEOUTCAPS2A is access all tagWAVEOUTCAPS2A;
   -- type NPWAVEOUTCAPS2A is access all tagWAVEOUTCAPS2A;
   -- type LPWAVEOUTCAPS2W is access all tagWAVEOUTCAPS2W;
   -- type PWAVEOUTCAPS2W is access all tagWAVEOUTCAPS2W;
   -- type NPWAVEOUTCAPS2W is access all tagWAVEOUTCAPS2W;
   -- type LPWAVEINCAPSA is access all tagWAVEINCAPSA;
   -- type NPWAVEINCAPSA is access all tagWAVEINCAPSA;
   -- type PWAVEINCAPSA is access all tagWAVEINCAPSA;
   -- type LPWAVEINCAPSW is access all tagWAVEINCAPSW;
   -- type NPWAVEINCAPSW is access all tagWAVEINCAPSW;
   -- type PWAVEINCAPSW is access all tagWAVEINCAPSW;
   -- type NPWAVEINCAPS2A is access all tagWAVEINCAPS2A;
   -- type LPWAVEINCAPS2A is access all tagWAVEINCAPS2A;
   -- type PWAVEINCAPS2A is access all tagWAVEINCAPS2A;
   -- type NPWAVEINCAPS2W is access all tagWAVEINCAPS2W;
   -- type PWAVEINCAPS2W is access all tagWAVEINCAPS2W;
   -- type LPWAVEINCAPS2W is access all tagWAVEINCAPS2W;
   -- type LPWAVEFORMAT is access all waveformat_tag;
   -- type PWAVEFORMAT is access all waveformat_tag;
   -- type NPWAVEFORMAT is access all waveformat_tag;
   -- type PPCMWAVEFORMAT is access all pcmwaveformat_tag;
   -- type NPPCMWAVEFORMAT is access all pcmwaveformat_tag;
   -- type LPPCMWAVEFORMAT is access all pcmwaveformat_tag;
   -- type PWAVEFORMATEX is access all tWAVEFORMATEX;
   -- type NPWAVEFORMATEX is access all tWAVEFORMATEX;
   -- type LPWAVEFORMATEX is access all tWAVEFORMATEX;
   -- type LPCWAVEFORMATEX is access all WAVEFORMATEX;
   -- type HMIDI is access all HMIDI_x;
   -- type HMIDIIN is access all HMIDIIN_x;
   -- type HMIDIOUT is access all HMIDIOUT_x;
   -- type HMIDISTRM is access all HMIDISTRM_x;
   -- type LPHMIDI is access all HMIDI;
   -- type LPHMIDIIN is access all HMIDIIN;
   -- type LPHMIDIOUT is access all HMIDIOUT;
   -- type LPHMIDISTRM is access all HMIDISTRM;
   -- type LPMIDICALLBACK is access all MIDICALLBACK;
   -- type LPPATCHARRAY is access all WORD;
   -- type LPKEYARRAY is access all WORD;
   -- type LPMIDIOUTCAPSA is access all tagMIDIOUTCAPSA;
   -- type NPMIDIOUTCAPSA is access all tagMIDIOUTCAPSA;
   -- type PMIDIOUTCAPSA is access all tagMIDIOUTCAPSA;
   -- type PMIDIOUTCAPSW is access all tagMIDIOUTCAPSW;
   -- type NPMIDIOUTCAPSW is access all tagMIDIOUTCAPSW;
   -- type LPMIDIOUTCAPSW is access all tagMIDIOUTCAPSW;
   -- type PMIDIOUTCAPS2A is access all tagMIDIOUTCAPS2A;
   -- type LPMIDIOUTCAPS2A is access all tagMIDIOUTCAPS2A;
   -- type NPMIDIOUTCAPS2A is access all tagMIDIOUTCAPS2A;
   -- type NPMIDIOUTCAPS2W is access all tagMIDIOUTCAPS2W;
   -- type PMIDIOUTCAPS2W is access all tagMIDIOUTCAPS2W;
   -- type LPMIDIOUTCAPS2W is access all tagMIDIOUTCAPS2W;
   -- type LPMIDIINCAPSA is access all tagMIDIINCAPSA;
   -- type NPMIDIINCAPSA is access all tagMIDIINCAPSA;
   -- type PMIDIINCAPSA is access all tagMIDIINCAPSA;
   -- type PMIDIINCAPSW is access all tagMIDIINCAPSW;
   -- type NPMIDIINCAPSW is access all tagMIDIINCAPSW;
   -- type LPMIDIINCAPSW is access all tagMIDIINCAPSW;
   -- type PMIDIINCAPS2A is access all tagMIDIINCAPS2A;
   -- type NPMIDIINCAPS2A is access all tagMIDIINCAPS2A;
   -- type LPMIDIINCAPS2A is access all tagMIDIINCAPS2A;
   -- type PMIDIINCAPS2W is access all tagMIDIINCAPS2W;
   -- type NPMIDIINCAPS2W is access all tagMIDIINCAPS2W;
   -- type LPMIDIINCAPS2W is access all tagMIDIINCAPS2W;
   -- type PMIDIHDR is access all midihdr_tag;
   -- type NPMIDIHDR is access all midihdr_tag;
   -- type LPMIDIHDR is access all midihdr_tag;
   -- type LPMIDIPROPTIMEDIV is access all midiproptimediv_tag;
   -- type LPMIDIPROPTEMPO is access all midiproptempo_tag;
   -- type PAUXCAPSA is access all tagAUXCAPSA;
   -- type NPAUXCAPSA is access all tagAUXCAPSA;
   -- type LPAUXCAPSA is access all tagAUXCAPSA;
   -- type PAUXCAPSW is access all tagAUXCAPSW;
   -- type NPAUXCAPSW is access all tagAUXCAPSW;
   -- type LPAUXCAPSW is access all tagAUXCAPSW;
   -- type PAUXCAPS2A is access all tagAUXCAPS2A;
   -- type NPAUXCAPS2A is access all tagAUXCAPS2A;
   -- type LPAUXCAPS2A is access all tagAUXCAPS2A;
   -- type PAUXCAPS2W is access all tagAUXCAPS2W;
   -- type NPAUXCAPS2W is access all tagAUXCAPS2W;
   -- type LPAUXCAPS2W is access all tagAUXCAPS2W;
   -- type HMIXEROBJ is access all HMIXEROBJ_x;
   -- type LPHMIXEROBJ is access all HMIXEROBJ;
   -- type HMIXER is access all HMIXER_x;
   -- type LPHMIXER is access all HMIXER;
   -- type PMIXERCAPSA is access all tagMIXERCAPSA;
   -- type LPMIXERCAPSA is access all tagMIXERCAPSA;
   -- type LPMIXERCAPSW is access all tagMIXERCAPSW;
   -- type PMIXERCAPSW is access all tagMIXERCAPSW;
   -- type PMIXERCAPS2A is access all tagMIXERCAPS2A;
   -- type LPMIXERCAPS2A is access all tagMIXERCAPS2A;
   -- type PMIXERCAPS2W is access all tagMIXERCAPS2W;
   -- type LPMIXERCAPS2W is access all tagMIXERCAPS2W;
   -- type LPMIXERLINEA is access all tagMIXERLINEA;
   -- type PMIXERLINEA is access all tagMIXERLINEA;
   -- type PMIXERLINEW is access all tagMIXERLINEW;
   -- type LPMIXERLINEW is access all tagMIXERLINEW;
   -- type LPMIXERCONTROLA is access all tagMIXERCONTROLA;
   -- type PMIXERCONTROLA is access all tagMIXERCONTROLA;
   -- type PMIXERCONTROLW is access all tagMIXERCONTROLW;
   -- type LPMIXERCONTROLW is access all tagMIXERCONTROLW;
   -- type LPMIXERLINECONTROLSA is access all tagMIXERLINECONTROLSA;
   -- type PMIXERLINECONTROLSA is access all tagMIXERLINECONTROLSA;
   -- type LPMIXERLINECONTROLSW is access all tagMIXERLINECONTROLSW;
   -- type PMIXERLINECONTROLSW is access all tagMIXERLINECONTROLSW;
   -- type PMIXERCONTROLDETAILS is access all tMIXERCONTROLDETAILS;
   -- type LPMIXERCONTROLDETAILS is access all tMIXERCONTROLDETAILS;
   -- type LPMIXERCONTROLDETAILS_LISTTEXTA is access all tagMIXERCONTROLDETAILS_LISTTEXTA;
   -- type PMIXERCONTROLDETAILS_LISTTEXTA is access all tagMIXERCONTROLDETAILS_LISTTEXTA;
   -- type PMIXERCONTROLDETAILS_LISTTEXTW is access all tagMIXERCONTROLDETAILS_LISTTEXTW;
   -- type LPMIXERCONTROLDETAILS_LISTTEXTW is access all tagMIXERCONTROLDETAILS_LISTTEXTW;
   -- type LPMIXERCONTROLDETAILS_BOOLEAN is access all tMIXERCONTROLDETAILS_BOOLEAN;
   -- type PMIXERCONTROLDETAILS_BOOLEAN is access all tMIXERCONTROLDETAILS_BOOLEAN;
   -- type PMIXERCONTROLDETAILS_SIGNED is access all tMIXERCONTROLDETAILS_SIGNED;
   -- type LPMIXERCONTROLDETAILS_SIGNED is access all tMIXERCONTROLDETAILS_SIGNED;
   -- type PMIXERCONTROLDETAILS_UNSIGNED is access all tMIXERCONTROLDETAILS_UNSIGNED;
   -- type LPMIXERCONTROLDETAILS_UNSIGNED is access all tMIXERCONTROLDETAILS_UNSIGNED;
   -- C:\Program Files (x86)\Windows Kits\10\include\10.0.16299.0\um\timeapi.h
   -- type PTIMECAPS is access all timecaps_tag;
   -- type NPTIMECAPS is access all timecaps_tag;
   -- type LPTIMECAPS is access all timecaps_tag;
   -- C:\Program Files (x86)\Windows Kits\10\include\10.0.16299.0\um\joystickapi.h
   -- type LPJOYCAPSA is access all tagJOYCAPSA;
   -- type NPJOYCAPSA is access all tagJOYCAPSA;
   -- type PJOYCAPSA is access all tagJOYCAPSA;
   -- type NPJOYCAPSW is access all tagJOYCAPSW;
   -- type PJOYCAPSW is access all tagJOYCAPSW;
   -- type LPJOYCAPSW is access all tagJOYCAPSW;
   -- type LPJOYCAPS2A is access all tagJOYCAPS2A;
   -- type NPJOYCAPS2A is access all tagJOYCAPS2A;
   -- type PJOYCAPS2A is access all tagJOYCAPS2A;
   -- type PJOYCAPS2W is access all tagJOYCAPS2W;
   -- type LPJOYCAPS2W is access all tagJOYCAPS2W;
   -- type NPJOYCAPS2W is access all tagJOYCAPS2W;
   -- type PJOYINFO is access all joyinfo_tag;
   -- type NPJOYINFO is access all joyinfo_tag;
   -- type LPJOYINFO is access all joyinfo_tag;
   -- type PJOYINFOEX is access all joyinfoex_tag;
   -- type LPJOYINFOEX is access all joyinfoex_tag;
   -- type NPJOYINFOEX is access all joyinfoex_tag;
   -- C:\Program Files (x86)\Windows Kits\10\include\10.0.16299.0\um\nb30.h
   -- type PNCB is access all NCB;
   -- type PADAPTER_STATUS is access all ADAPTER_STATUS;
   -- type PNAME_BUFFER is access all NAME_BUFFER;
   -- type PSESSION_HEADER is access all SESSION_HEADER;
   -- type PSESSION_BUFFER is access all SESSION_BUFFER;
   -- type PLANA_ENUM is access all LANA_ENUM;
   -- type PFIND_NAME_HEADER is access all FIND_NAME_HEADER;
   -- type PFIND_NAME_BUFFER is access all FIND_NAME_BUFFER;
   -- type PACTION_HEADER is access all ACTION_HEADER;
   -- C:\Program Files (x86)\Windows Kits\10\include\10.0.16299.0\shared\rpc.h
   type RPC_NS_HANDLE is access all Void;
   type I_RPC_HANDLE is access all Void;
   subtype RPC_STATUS is Int32;
   -- C:\Program Files (x86)\Windows Kits\10\include\10.0.16299.0\shared\rpcdce.h
   type RPC_CSTR is access all UInt8;
   type RPC_WSTR is access all UInt16;
   type RPC_CWSTR is access all UInt16;
   type RPC_IF_HANDLE is access all Void;
   -- type PRPC_POLICY is access all RPC_POLICY;
   type RPC_AUTH_IDENTITY_HANDLE is access all Void;
   type RPC_AUTHZ_HANDLE is access all Void;
   -- type PRPC_SECURITY_QOS is access all RPC_SECURITY_QOS;
   -- type PSEC_WINNT_AUTH_IDENTITY_W is access all SEC_WINNT_AUTH_IDENTITY_W;
   -- type PSEC_WINNT_AUTH_IDENTITY_A is access all SEC_WINNT_AUTH_IDENTITY_A;
   -- type PRPC_HTTP_TRANSPORT_CREDENTIALS_W is access all RPC_HTTP_TRANSPORT_CREDENTIALS_W;
   -- type PRPC_HTTP_TRANSPORT_CREDENTIALS_A is access all RPC_HTTP_TRANSPORT_CREDENTIALS_A;
   -- type PRPC_HTTP_TRANSPORT_CREDENTIALS_V2_W is access all RPC_HTTP_TRANSPORT_CREDENTIALS_V2_W;
   -- type PRPC_HTTP_TRANSPORT_CREDENTIALS_V2_A is access all RPC_HTTP_TRANSPORT_CREDENTIALS_V2_A;
   -- type PRPC_HTTP_TRANSPORT_CREDENTIALS_V3_W is access all RPC_HTTP_TRANSPORT_CREDENTIALS_V3_W;
   -- type PRPC_HTTP_TRANSPORT_CREDENTIALS_V3_A is access all RPC_HTTP_TRANSPORT_CREDENTIALS_V3_A;
   -- type PRPC_SECURITY_QOS_V2_W is access all RPC_SECURITY_QOS_V2_W;
   -- type PRPC_SECURITY_QOS_V2_A is access all RPC_SECURITY_QOS_V2_A;
   -- type PRPC_SECURITY_QOS_V3_W is access all RPC_SECURITY_QOS_V3_W;
   -- type PRPC_SECURITY_QOS_V3_A is access all RPC_SECURITY_QOS_V3_A;
   -- type PRPC_SECURITY_QOS_V4_W is access all RPC_SECURITY_QOS_V4_W;
   -- type PRPC_SECURITY_QOS_V4_A is access all RPC_SECURITY_QOS_V4_A;
   -- type PRPC_SECURITY_QOS_V5_W is access all RPC_SECURITY_QOS_V5_W;
   -- type PRPC_SECURITY_QOS_V5_A is access all RPC_SECURITY_QOS_V5_A;
   -- type PRPC_BINDING_HANDLE_TEMPLATE_V1_W is access all RPC_BINDING_HANDLE_TEMPLATE_V1_W;
   -- type PRPC_BINDING_HANDLE_TEMPLATE_V1_A is access all RPC_BINDING_HANDLE_TEMPLATE_V1_A;
   -- type PRPC_BINDING_HANDLE_SECURITY_V1_W is access all RPC_BINDING_HANDLE_SECURITY_V1_W;
   -- type PRPC_BINDING_HANDLE_SECURITY_V1_A is access all RPC_BINDING_HANDLE_SECURITY_V1_A;
   -- type PRPC_BINDING_HANDLE_OPTIONS_V1 is access all RPC_BINDING_HANDLE_OPTIONS_V1;
   type RPC_HTTP_REDIRECTOR_STAGE is (
      RPCHTTP_RS_REDIRECT,
      RPCHTTP_RS_ACCESS_1,
      RPCHTTP_RS_SESSION,
      RPCHTTP_RS_ACCESS_2,
      RPCHTTP_RS_INTERFACE
   );
   for RPC_HTTP_REDIRECTOR_STAGE use (
      RPCHTTP_RS_REDIRECT => 1,
      RPCHTTP_RS_ACCESS_1 => 2,
      RPCHTTP_RS_SESSION => 3,
      RPCHTTP_RS_ACCESS_2 => 4,
      RPCHTTP_RS_INTERFACE => 5
   );
   for RPC_HTTP_REDIRECTOR_STAGE'Size use 32;
   
   -- type PRPC_CLIENT_INFORMATION1 is access all RPC_CLIENT_INFORMATION1;
   -- type RPC_EP_INQ_HANDLE is access all I_RPC_HANDLE;
   type RPC_INTERFACE_GROUP is access all Void;
   -- type PRPC_ENDPOINT_TEMPLATEW is access all RPC_ENDPOINT_TEMPLATEW;
   -- type PRPC_ENDPOINT_TEMPLATEA is access all RPC_ENDPOINT_TEMPLATEA;
   -- type PRPC_INTERFACE_TEMPLATEA is access all RPC_INTERFACE_TEMPLATEA;
   -- type PRPC_INTERFACE_TEMPLATEW is access all RPC_INTERFACE_TEMPLATEW;
   -- C:\Program Files (x86)\Windows Kits\10\include\10.0.16299.0\shared\rpcdcep.h
   -- type PRPC_SYNTAX_IDENTIFIER is access all RPC_SYNTAX_IDENTIFIER;
   -- type PRPC_MESSAGE is access all RPC_MESSAGE;
   type RPC_ADDRESS_CHANGE_TYPE is (
      PROTOCOL_NOT_LOADED,
      PROTOCOL_LOADED,
      PROTOCOL_ADDRESS_CHANGE
   );
   for RPC_ADDRESS_CHANGE_TYPE use (
      PROTOCOL_NOT_LOADED => 1,
      PROTOCOL_LOADED => 2,
      PROTOCOL_ADDRESS_CHANGE => 3
   );
   for RPC_ADDRESS_CHANGE_TYPE'Size use 32;
   
   -- type PRPC_DISPATCH_TABLE is access all RPC_DISPATCH_TABLE;
   -- type PRPC_PROTSEQ_ENDPOINT is access all RPC_PROTSEQ_ENDPOINT;
   -- type PRPC_SERVER_INTERFACE is access all RPC_SERVER_INTERFACE;
   -- type PRPC_CLIENT_INTERFACE is access all RPC_CLIENT_INTERFACE;
   type I_RPC_MUTEX is access all Void;
   type LRPC_SYSTEM_HANDLE_MARSHAL_DIRECTION is (
      MarshalDirectionMarshal,
      MarshalDirectionUnmarshal
   );
   for LRPC_SYSTEM_HANDLE_MARSHAL_DIRECTION use (
      MarshalDirectionMarshal => 0,
      MarshalDirectionUnmarshal => 1
   );
   for LRPC_SYSTEM_HANDLE_MARSHAL_DIRECTION'Size use 32;
   
   -- type PRPC_SEC_CONTEXT_KEY_INFO is access all RPC_SEC_CONTEXT_KEY_INFO;
   type RpcProxyPerfCounters is (
      RpcCurrentUniqueUser,
      RpcBackEndConnectionAttempts,
      RpcBackEndConnectionFailed,
      RpcRequestsPerSecond,
      RpcIncomingConnections,
      RpcIncomingBandwidth,
      RpcOutgoingBandwidth,
      RpcAttemptedLbsDecisions,
      RpcFailedLbsDecisions,
      RpcAttemptedLbsMessages,
      RpcFailedLbsMessages,
      RpcLastCounter
   );
   for RpcProxyPerfCounters use (
      RpcCurrentUniqueUser => 1,
      RpcBackEndConnectionAttempts => 2,
      RpcBackEndConnectionFailed => 3,
      RpcRequestsPerSecond => 4,
      RpcIncomingConnections => 5,
      RpcIncomingBandwidth => 6,
      RpcOutgoingBandwidth => 7,
      RpcAttemptedLbsDecisions => 8,
      RpcFailedLbsDecisions => 9,
      RpcAttemptedLbsMessages => 10,
      RpcFailedLbsMessages => 11,
      RpcLastCounter => 12
   );
   for RpcProxyPerfCounters'Size use 32;
   
   -- C:\Program Files (x86)\Windows Kits\10\include\10.0.16299.0\shared\rpcasync.h
   type RPC_NOTIFICATION_TYPES is (
      RpcNotificationTypeNone,
      RpcNotificationTypeEvent,
      RpcNotificationTypeApc,
      RpcNotificationTypeIoc,
      RpcNotificationTypeHwnd,
      RpcNotificationTypeCallback
   );
   for RPC_NOTIFICATION_TYPES use (
      RpcNotificationTypeNone => 0,
      RpcNotificationTypeEvent => 1,
      RpcNotificationTypeApc => 2,
      RpcNotificationTypeIoc => 3,
      RpcNotificationTypeHwnd => 4,
      RpcNotificationTypeCallback => 5
   );
   for RPC_NOTIFICATION_TYPES'Size use 32;
   
   type RPC_ASYNC_EVENT is (
      RpcCallComplete,
      RpcSendComplete,
      RpcReceiveComplete,
      RpcClientDisconnect,
      RpcClientCancel
   );
   for RPC_ASYNC_EVENT use (
      RpcCallComplete => 0,
      RpcSendComplete => 1,
      RpcReceiveComplete => 2,
      RpcClientDisconnect => 3,
      RpcClientCancel => 4
   );
   for RPC_ASYNC_EVENT'Size use 32;
   
   -- type RPC_ASYNC_STATE; -- forward declaration
   -- type PFN_RPCNOTIFICATION_ROUTINE is access all RPCNOTIFICATION_ROUTINE;
   -- type PRPC_ASYNC_NOTIFICATION_INFO is access all RPC_ASYNC_NOTIFICATION_INFO;
   -- type PRPC_ASYNC_STATE is access all RPC_ASYNC_STATE;
   type tagExtendedErrorParamTypes is (
      eeptAnsiString,
      eeptUnicodeString,
      eeptLongVal,
      eeptShortVal,
      eeptPointerVal,
      eeptNone,
      eeptBinary
   );
   for tagExtendedErrorParamTypes use (
      eeptAnsiString => 1,
      eeptUnicodeString => 2,
      eeptLongVal => 3,
      eeptShortVal => 4,
      eeptPointerVal => 5,
      eeptNone => 6,
      eeptBinary => 7
   );
   for tagExtendedErrorParamTypes'Size use 32;
   
   type tagRpcLocalAddressFormat is (
      rlafInvalid,
      rlafIPv4,
      rlafIPv6
   );
   for tagRpcLocalAddressFormat use (
      rlafInvalid => 0,
      rlafIPv4 => 1,
      rlafIPv6 => 2
   );
   for tagRpcLocalAddressFormat'Size use 32;
   
   -- type PRPC_CALL_LOCAL_ADDRESS_V1 is access all RPC_CALL_LOCAL_ADDRESS_V1;
   type tagRpcCallType is (
      rctInvalid,
      rctNormal,
      rctTraining,
      rctGuaranteed
   );
   for tagRpcCallType use (
      rctInvalid => 0,
      rctNormal => 1,
      rctTraining => 2,
      rctGuaranteed => 3
   );
   for tagRpcCallType'Size use 32;
   
   type tagRpcCallClientLocality is (
      rcclInvalid,
      rcclLocal,
      rcclRemote,
      rcclClientUnknownLocality
   );
   for tagRpcCallClientLocality use (
      rcclInvalid => 0,
      rcclLocal => 1,
      rcclRemote => 2,
      rcclClientUnknownLocality => 3
   );
   for tagRpcCallClientLocality'Size use 32;
   
   type RPC_NOTIFICATIONS is (
      RpcNotificationCallNone,
      RpcNotificationClientDisconnect,
      RpcNotificationCallCancel
   );
   for RPC_NOTIFICATIONS use (
      RpcNotificationCallNone => 0,
      RpcNotificationClientDisconnect => 1,
      RpcNotificationCallCancel => 2
   );
   for RPC_NOTIFICATIONS'Size use 32;
   
   -- C:\Program Files (x86)\Windows Kits\10\include\10.0.16299.0\um\shellapi.h
   -- type HDROP is access all HDROP_x;
   -- type LPDRAGINFOA is access all DRAGINFOA;
   -- type LPDRAGINFOW is access all DRAGINFOW;
   -- type PAPPBARDATA is access all AppBarData;
   -- type LPSHFILEOPSTRUCTA is access all SHFILEOPSTRUCTA;
   -- type LPSHFILEOPSTRUCTW is access all SHFILEOPSTRUCTW;
   -- type LPSHNAMEMAPPINGA is access all SHNAMEMAPPINGA;
   -- type LPSHNAMEMAPPINGW is access all SHNAMEMAPPINGW;
   -- type LPSHELLEXECUTEINFOA is access all SHELLEXECUTEINFOA;
   -- type LPSHELLEXECUTEINFOW is access all SHELLEXECUTEINFOW;
   -- type PSHCREATEPROCESSINFOW is access all SHCREATEPROCESSINFOW;
   type ASSOCCLASS is (
      ASSOCCLASS_SHELL_KEY,
      ASSOCCLASS_PROGID_KEY,
      ASSOCCLASS_PROGID_STR,
      ASSOCCLASS_CLSID_KEY,
      ASSOCCLASS_CLSID_STR,
      ASSOCCLASS_APP_KEY,
      ASSOCCLASS_APP_STR,
      ASSOCCLASS_SYSTEM_STR,
      ASSOCCLASS_FOLDER,
      ASSOCCLASS_STAR,
      ASSOCCLASS_FIXED_PROGID_STR,
      ASSOCCLASS_PROTOCOL_STR
   );
   for ASSOCCLASS use (
      ASSOCCLASS_SHELL_KEY => 0,
      ASSOCCLASS_PROGID_KEY => 1,
      ASSOCCLASS_PROGID_STR => 2,
      ASSOCCLASS_CLSID_KEY => 3,
      ASSOCCLASS_CLSID_STR => 4,
      ASSOCCLASS_APP_KEY => 5,
      ASSOCCLASS_APP_STR => 6,
      ASSOCCLASS_SYSTEM_STR => 7,
      ASSOCCLASS_FOLDER => 8,
      ASSOCCLASS_STAR => 9,
      ASSOCCLASS_FIXED_PROGID_STR => 10,
      ASSOCCLASS_PROTOCOL_STR => 11
   );
   for ASSOCCLASS'Size use 32;
   
   -- type LPSHQUERYRBINFO is access all SHQUERYRBINFO;
   type QUERY_USER_NOTIFICATION_STATE is (
      QUNS_NOT_PRESENT,
      QUNS_BUSY,
      QUNS_RUNNING_D3D_FULL_SCREEN,
      QUNS_PRESENTATION_MODE,
      QUNS_ACCEPTS_NOTIFICATIONS,
      QUNS_QUIET_TIME,
      QUNS_APP
   );
   for QUERY_USER_NOTIFICATION_STATE use (
      QUNS_NOT_PRESENT => 1,
      QUNS_BUSY => 2,
      QUNS_RUNNING_D3D_FULL_SCREEN => 3,
      QUNS_PRESENTATION_MODE => 4,
      QUNS_ACCEPTS_NOTIFICATIONS => 5,
      QUNS_QUIET_TIME => 6,
      QUNS_APP => 7
   );
   for QUERY_USER_NOTIFICATION_STATE'Size use 32;
   
   -- type PNOTIFYICONDATAA is access all NOTIFYICONDATAA;
   -- type PNOTIFYICONDATAW is access all NOTIFYICONDATAW;
   -- type PNOTIFYICONIDENTIFIER is access all NOTIFYICONIDENTIFIER;
   type SHSTOCKICONID is (
      SIID_DOCNOASSOC,
      SIID_DOCASSOC,
      SIID_APPLICATION,
      SIID_FOLDER,
      SIID_FOLDEROPEN,
      SIID_DRIVE525,
      SIID_DRIVE35,
      SIID_DRIVEREMOVE,
      SIID_DRIVEFIXED,
      SIID_DRIVENET,
      SIID_DRIVENETDISABLED,
      SIID_DRIVECD,
      SIID_DRIVERAM,
      SIID_WORLD,
      SIID_SERVER,
      SIID_PRINTER,
      SIID_MYNETWORK,
      SIID_FIND,
      SIID_HELP,
      SIID_SHARE,
      SIID_LINK,
      SIID_SLOWFILE,
      SIID_RECYCLER,
      SIID_RECYCLERFULL,
      SIID_MEDIACDAUDIO,
      SIID_LOCK,
      SIID_AUTOLIST,
      SIID_PRINTERNET,
      SIID_SERVERSHARE,
      SIID_PRINTERFAX,
      SIID_PRINTERFAXNET,
      SIID_PRINTERFILE,
      SIID_STACK,
      SIID_MEDIASVCD,
      SIID_STUFFEDFOLDER,
      SIID_DRIVEUNKNOWN,
      SIID_DRIVEDVD,
      SIID_MEDIADVD,
      SIID_MEDIADVDRAM,
      SIID_MEDIADVDRW,
      SIID_MEDIADVDR,
      SIID_MEDIADVDROM,
      SIID_MEDIACDAUDIOPLUS,
      SIID_MEDIACDRW,
      SIID_MEDIACDR,
      SIID_MEDIACDBURN,
      SIID_MEDIABLANKCD,
      SIID_MEDIACDROM,
      SIID_AUDIOFILES,
      SIID_IMAGEFILES,
      SIID_VIDEOFILES,
      SIID_MIXEDFILES,
      SIID_FOLDERBACK,
      SIID_FOLDERFRONT,
      SIID_SHIELD,
      SIID_WARNING,
      SIID_INFO,
      SIID_ERROR,
      SIID_KEY,
      SIID_SOFTWARE,
      SIID_RENAME,
      SIID_DELETE,
      SIID_MEDIAAUDIODVD,
      SIID_MEDIAMOVIEDVD,
      SIID_MEDIAENHANCEDCD,
      SIID_MEDIAENHANCEDDVD,
      SIID_MEDIAHDDVD,
      SIID_MEDIABLURAY,
      SIID_MEDIAVCD,
      SIID_MEDIADVDPLUSR,
      SIID_MEDIADVDPLUSRW,
      SIID_DESKTOPPC,
      SIID_MOBILEPC,
      SIID_USERS,
      SIID_MEDIASMARTMEDIA,
      SIID_MEDIACOMPACTFLASH,
      SIID_DEVICECELLPHONE,
      SIID_DEVICECAMERA,
      SIID_DEVICEVIDEOCAMERA,
      SIID_DEVICEAUDIOPLAYER,
      SIID_NETWORKCONNECT,
      SIID_INTERNET,
      SIID_ZIPFILE,
      SIID_SETTINGS,
      SIID_DRIVEHDDVD,
      SIID_DRIVEBD,
      SIID_MEDIAHDDVDROM,
      SIID_MEDIAHDDVDR,
      SIID_MEDIAHDDVDRAM,
      SIID_MEDIABDROM,
      SIID_MEDIABDR,
      SIID_MEDIABDRE,
      SIID_CLUSTEREDDRIVE,
      SIID_MAX_ICONS
   );
   for SHSTOCKICONID use (
      SIID_DOCNOASSOC => 0,
      SIID_DOCASSOC => 1,
      SIID_APPLICATION => 2,
      SIID_FOLDER => 3,
      SIID_FOLDEROPEN => 4,
      SIID_DRIVE525 => 5,
      SIID_DRIVE35 => 6,
      SIID_DRIVEREMOVE => 7,
      SIID_DRIVEFIXED => 8,
      SIID_DRIVENET => 9,
      SIID_DRIVENETDISABLED => 10,
      SIID_DRIVECD => 11,
      SIID_DRIVERAM => 12,
      SIID_WORLD => 13,
      SIID_SERVER => 15,
      SIID_PRINTER => 16,
      SIID_MYNETWORK => 17,
      SIID_FIND => 22,
      SIID_HELP => 23,
      SIID_SHARE => 28,
      SIID_LINK => 29,
      SIID_SLOWFILE => 30,
      SIID_RECYCLER => 31,
      SIID_RECYCLERFULL => 32,
      SIID_MEDIACDAUDIO => 40,
      SIID_LOCK => 47,
      SIID_AUTOLIST => 49,
      SIID_PRINTERNET => 50,
      SIID_SERVERSHARE => 51,
      SIID_PRINTERFAX => 52,
      SIID_PRINTERFAXNET => 53,
      SIID_PRINTERFILE => 54,
      SIID_STACK => 55,
      SIID_MEDIASVCD => 56,
      SIID_STUFFEDFOLDER => 57,
      SIID_DRIVEUNKNOWN => 58,
      SIID_DRIVEDVD => 59,
      SIID_MEDIADVD => 60,
      SIID_MEDIADVDRAM => 61,
      SIID_MEDIADVDRW => 62,
      SIID_MEDIADVDR => 63,
      SIID_MEDIADVDROM => 64,
      SIID_MEDIACDAUDIOPLUS => 65,
      SIID_MEDIACDRW => 66,
      SIID_MEDIACDR => 67,
      SIID_MEDIACDBURN => 68,
      SIID_MEDIABLANKCD => 69,
      SIID_MEDIACDROM => 70,
      SIID_AUDIOFILES => 71,
      SIID_IMAGEFILES => 72,
      SIID_VIDEOFILES => 73,
      SIID_MIXEDFILES => 74,
      SIID_FOLDERBACK => 75,
      SIID_FOLDERFRONT => 76,
      SIID_SHIELD => 77,
      SIID_WARNING => 78,
      SIID_INFO => 79,
      SIID_ERROR => 80,
      SIID_KEY => 81,
      SIID_SOFTWARE => 82,
      SIID_RENAME => 83,
      SIID_DELETE => 84,
      SIID_MEDIAAUDIODVD => 85,
      SIID_MEDIAMOVIEDVD => 86,
      SIID_MEDIAENHANCEDCD => 87,
      SIID_MEDIAENHANCEDDVD => 88,
      SIID_MEDIAHDDVD => 89,
      SIID_MEDIABLURAY => 90,
      SIID_MEDIAVCD => 91,
      SIID_MEDIADVDPLUSR => 92,
      SIID_MEDIADVDPLUSRW => 93,
      SIID_DESKTOPPC => 94,
      SIID_MOBILEPC => 95,
      SIID_USERS => 96,
      SIID_MEDIASMARTMEDIA => 97,
      SIID_MEDIACOMPACTFLASH => 98,
      SIID_DEVICECELLPHONE => 99,
      SIID_DEVICECAMERA => 100,
      SIID_DEVICEVIDEOCAMERA => 101,
      SIID_DEVICEAUDIOPLAYER => 102,
      SIID_NETWORKCONNECT => 103,
      SIID_INTERNET => 104,
      SIID_ZIPFILE => 105,
      SIID_SETTINGS => 106,
      SIID_DRIVEHDDVD => 132,
      SIID_DRIVEBD => 133,
      SIID_MEDIAHDDVDROM => 134,
      SIID_MEDIAHDDVDR => 135,
      SIID_MEDIAHDDVDRAM => 136,
      SIID_MEDIABDROM => 137,
      SIID_MEDIABDR => 138,
      SIID_MEDIABDRE => 139,
      SIID_CLUSTEREDDRIVE => 140,
      SIID_MAX_ICONS => 181
   );
   for SHSTOCKICONID'Size use 32;
   
   -- type POPEN_PRINTER_PROPS_INFOA is access all OPEN_PRINTER_PROPS_INFOA;
   -- type POPEN_PRINTER_PROPS_INFOW is access all OPEN_PRINTER_PROPS_INFOW;
   -- type PNC_ADDRESS is access all tagNC_ADDRESS;
   type NET_ADDRESS_INFO_x is null record; -- Incomplete/Opaque Type
   -- C:\Program Files (x86)\Windows Kits\10\include\10.0.16299.0\um\winperf.h
   -- type PPERF_DATA_BLOCK is access all PERF_DATA_BLOCK;
   -- type PPERF_OBJECT_TYPE is access all PERF_OBJECT_TYPE;
   -- type PPERF_COUNTER_DEFINITION is access all PERF_COUNTER_DEFINITION;
   -- type PPERF_INSTANCE_DEFINITION is access all PERF_INSTANCE_DEFINITION;
   -- type PPERF_COUNTER_BLOCK is access all PERF_COUNTER_BLOCK;
   -- C:\Program Files (x86)\Windows Kits\10\include\10.0.16299.0\um\winsock.h
   subtype u_char is UInt8;
   subtype u_short is UInt16;
   subtype u_int is UInt32;
   subtype u_long is UInt32;
   -- type LPWSADATA is access all WSADATA;
   -- type PTRANSMIT_FILE_BUFFERS is access all TRANSMIT_FILE_BUFFERS;
   -- type LPTRANSMIT_FILE_BUFFERS is access all TRANSMIT_FILE_BUFFERS;
   -- type PSOCKADDR is access all sockaddr;
   -- type LPSOCKADDR is access all sockaddr;
   -- type PSOCKADDR_IN is access all sockaddr_in;
   -- type LPSOCKADDR_IN is access all sockaddr_in;
   -- type PLINGER is access all linger;
   -- type LPLINGER is access all linger;
   -- type PFD_SET is access all fd_set;
   -- type LPFD_SET is access all fd_set;
   -- type PHOSTENT is access all hostent;
   -- type LPHOSTENT is access all hostent;
   -- type PSERVENT is access all servent;
   -- type LPSERVENT is access all servent;
   -- type PPROTOENT is access all protoent;
   -- type LPPROTOENT is access all protoent;
   -- type PTIMEVAL is access all timeval;
   -- type LPTIMEVAL is access all timeval;
   -- C:\Program Files (x86)\Windows Kits\10\include\10.0.16299.0\shared\inaddr.h
   -- type PIN_ADDR is access all in_addr;
   -- type LPIN_ADDR is access all in_addr;
   -- C:\Program Files (x86)\Windows Kits\10\include\10.0.16299.0\um\wincrypt.h
   subtype ALG_ID is UInt32;
   -- type PCMS_KEY_INFO is access all CMS_KEY_INFO;
   -- type PHMAC_INFO is access all HMAC_Info;
   -- type PSCHANNEL_ALG is access all SCHANNEL_ALG;
   -- type PKEY_TYPE_SUBTYPE is access all KEY_TYPE_SUBTYPE;
   -- type PCRYPT_RC4_KEY_STATE is access all CRYPT_RC4_KEY_STATE;
   -- type PCRYPT_DES_KEY_STATE is access all CRYPT_DES_KEY_STATE;
   -- type PCRYPT_3DES_KEY_STATE is access all CRYPT_3DES_KEY_STATE;
   -- type PCRYPT_AES_128_KEY_STATE is access all CRYPT_AES_128_KEY_STATE;
   -- type PCRYPT_AES_256_KEY_STATE is access all CRYPT_AES_256_KEY_STATE;
   -- type PCRYPT_DIGEST_BLOB is access all CRYPTOAPI_BLOB;
   -- type PCRYPT_HASH_BLOB is access all CRYPTOAPI_BLOB;
   -- type PCRYPT_DER_BLOB is access all CRYPTOAPI_BLOB;
   -- type PCRYPT_ATTR_BLOB is access all CRYPTOAPI_BLOB;
   -- type PCRYPT_DATA_BLOB is access all CRYPTOAPI_BLOB;
   -- type PCERT_BLOB is access all CRYPTOAPI_BLOB;
   -- type PCRL_BLOB is access all CRYPTOAPI_BLOB;
   -- type PDATA_BLOB is access all CRYPTOAPI_BLOB;
   -- type PCERT_RDN_VALUE_BLOB is access all CRYPTOAPI_BLOB;
   -- type PCERT_NAME_BLOB is access all CRYPTOAPI_BLOB;
   -- type PCRYPT_OBJID_BLOB is access all CRYPTOAPI_BLOB;
   -- type PCRYPT_UINT_BLOB is access all CRYPTOAPI_BLOB;
   -- type PCRYPT_INTEGER_BLOB is access all CRYPTOAPI_BLOB;
   -- type PCMS_DH_KEY_INFO is access all CMS_DH_KEY_INFO;
   -- type PCRYPT_BIT_BLOB is access all CRYPT_BIT_BLOB;
   -- type PCRYPT_ALGORITHM_IDENTIFIER is access all CRYPT_ALGORITHM_IDENTIFIER;
   -- type PCRYPT_OBJID_TABLE is access all CRYPT_OBJID_TABLE;
   -- type PCRYPT_HASH_INFO is access all CRYPT_HASH_INFO;
   -- type PCERT_EXTENSION is access all CERT_EXTENSION;
   -- type PCCERT_EXTENSION is access all CERT_EXTENSION;
   -- type PCRYPT_ATTRIBUTE_TYPE_VALUE is access all CRYPT_ATTRIBUTE_TYPE_VALUE;
   -- type PCRYPT_ATTRIBUTE is access all CRYPT_ATTRIBUTE;
   -- type PCRYPT_ATTRIBUTES is access all CRYPT_ATTRIBUTES;
   -- type PCERT_RDN_ATTR is access all CERT_RDN_ATTR;
   -- type PCERT_RDN is access all CERT_RDN;
   -- type PCERT_NAME_INFO is access all CERT_NAME_INFO;
   -- type PCERT_NAME_VALUE is access all CERT_NAME_VALUE;
   -- type PCERT_PUBLIC_KEY_INFO is access all CERT_PUBLIC_KEY_INFO;
   -- type PCRYPT_ECC_PRIVATE_KEY_INFO is access all CRYPT_ECC_PRIVATE_KEY_INFO;
   -- type PCRYPT_PRIVATE_KEY_INFO is access all CRYPT_PRIVATE_KEY_INFO;
   -- type PCRYPT_ENCRYPTED_PRIVATE_KEY_INFO is access all CRYPT_ENCRYPTED_PRIVATE_KEY_INFO;
   -- type PCRYPT_PKCS8_IMPORT_PARAMS is access all CRYPT_PKCS8_IMPORT_PARAMS;
   -- type PCRYPT_PRIVATE_KEY_BLOB_AND_PARAMS is access all CRYPT_PKCS8_IMPORT_PARAMS;
   -- type PCRYPT_PKCS8_EXPORT_PARAMS is access all CRYPT_PKCS8_EXPORT_PARAMS;
   -- type PCERT_INFO is access all CERT_INFO;
   -- type PCRL_ENTRY is access all CRL_ENTRY;
   -- type PCRL_INFO is access all CRL_INFO;
   -- type PCERT_OR_CRL_BLOB is access all CERT_OR_CRL_BLOB;
   -- type PCERT_OR_CRL_BUNDLE is access all CERT_OR_CRL_BUNDLE;
   -- type PCERT_REQUEST_INFO is access all CERT_REQUEST_INFO;
   -- type PCERT_KEYGEN_REQUEST_INFO is access all CERT_KEYGEN_REQUEST_INFO;
   -- type PCERT_SIGNED_CONTENT_INFO is access all CERT_SIGNED_CONTENT_INFO;
   -- type PCTL_USAGE is access all CTL_USAGE;
   -- type PCERT_ENHKEY_USAGE is access all CTL_USAGE;
   -- type PCCTL_USAGE is access all CTL_USAGE;
   -- type PCCERT_ENHKEY_USAGE is access all CERT_ENHKEY_USAGE;
   -- type PCTL_ENTRY is access all CTL_ENTRY;
   -- type PCTL_INFO is access all CTL_INFO;
   -- type PCRYPT_TIME_STAMP_REQUEST_INFO is access all CRYPT_TIME_STAMP_REQUEST_INFO;
   -- type PCRYPT_ENROLLMENT_NAME_VALUE_PAIR is access all CRYPT_ENROLLMENT_NAME_VALUE_PAIR;
   -- type PCRYPT_CSP_PROVIDER is access all CRYPT_CSP_PROVIDER;
   -- type PCRYPT_ENCODE_PARA is access all CRYPT_ENCODE_PARA;
   -- type PCRYPT_DECODE_PARA is access all CRYPT_DECODE_PARA;
   -- type PCERT_EXTENSIONS is access all CERT_EXTENSIONS;
   -- type PCERT_AUTHORITY_KEY_ID_INFO is access all CERT_AUTHORITY_KEY_ID_INFO;
   -- type PCERT_PRIVATE_KEY_VALIDITY is access all CERT_PRIVATE_KEY_VALIDITY;
   -- type PCERT_KEY_ATTRIBUTES_INFO is access all CERT_KEY_ATTRIBUTES_INFO;
   -- type PCERT_POLICY_ID is access all CERT_POLICY_ID;
   -- type PCERT_KEY_USAGE_RESTRICTION_INFO is access all CERT_KEY_USAGE_RESTRICTION_INFO;
   -- type PCERT_OTHER_NAME is access all CERT_OTHER_NAME;
   -- type PCERT_ALT_NAME_ENTRY is access all CERT_ALT_NAME_ENTRY;
   -- type PCERT_ALT_NAME_INFO is access all CERT_ALT_NAME_INFO;
   -- type PCERT_BASIC_CONSTRAINTS_INFO is access all CERT_BASIC_CONSTRAINTS_INFO;
   -- type PCERT_BASIC_CONSTRAINTS2_INFO is access all CERT_BASIC_CONSTRAINTS2_INFO;
   -- type PCERT_POLICY_QUALIFIER_INFO is access all CERT_POLICY_QUALIFIER_INFO;
   -- type PCERT_POLICY_INFO is access all CERT_POLICY_INFO;
   -- type PCERT_POLICIES_INFO is access all CERT_POLICIES_INFO;
   -- type PCERT_POLICY_QUALIFIER_NOTICE_REFERENCE is access all CERT_POLICY_QUALIFIER_NOTICE_REFERENCE;
   -- type PCERT_POLICY_QUALIFIER_USER_NOTICE is access all CERT_POLICY_QUALIFIER_USER_NOTICE;
   -- type PCPS_URLS is access all CPS_URLS;
   -- type PCERT_POLICY95_QUALIFIER1 is access all CERT_POLICY95_QUALIFIER1;
   -- type PCERT_POLICY_MAPPING is access all CERT_POLICY_MAPPING;
   -- type PCERT_POLICY_MAPPINGS_INFO is access all CERT_POLICY_MAPPINGS_INFO;
   -- type PCERT_POLICY_CONSTRAINTS_INFO is access all CERT_POLICY_CONSTRAINTS_INFO;
   -- type PCRYPT_CONTENT_INFO_SEQUENCE_OF_ANY is access all CRYPT_CONTENT_INFO_SEQUENCE_OF_ANY;
   -- type PCRYPT_CONTENT_INFO is access all CRYPT_CONTENT_INFO;
   -- type PCRYPT_SEQUENCE_OF_ANY is access all CRYPT_SEQUENCE_OF_ANY;
   -- type PCERT_AUTHORITY_KEY_ID2_INFO is access all CERT_AUTHORITY_KEY_ID2_INFO;
   -- type PCERT_ACCESS_DESCRIPTION is access all CERT_ACCESS_DESCRIPTION;
   -- type PCERT_SUBJECT_INFO_ACCESS is access all CERT_AUTHORITY_INFO_ACCESS;
   -- type PCERT_AUTHORITY_INFO_ACCESS is access all CERT_AUTHORITY_INFO_ACCESS;
   -- type PCRL_DIST_POINT_NAME is access all CRL_DIST_POINT_NAME;
   -- type PCRL_DIST_POINT is access all CRL_DIST_POINT;
   -- type PCRL_DIST_POINTS_INFO is access all CRL_DIST_POINTS_INFO;
   -- type PCROSS_CERT_DIST_POINTS_INFO is access all CROSS_CERT_DIST_POINTS_INFO;
   -- type PCERT_PAIR is access all CERT_PAIR;
   -- type PCRL_ISSUING_DIST_POINT is access all CRL_ISSUING_DIST_POINT;
   -- type PCERT_GENERAL_SUBTREE is access all CERT_GENERAL_SUBTREE;
   -- type PCERT_NAME_CONSTRAINTS_INFO is access all CERT_NAME_CONSTRAINTS_INFO;
   -- type PCERT_DSS_PARAMETERS is access all CERT_DSS_PARAMETERS;
   -- type PCERT_DH_PARAMETERS is access all CERT_DH_PARAMETERS;
   -- type PCERT_ECC_SIGNATURE is access all CERT_ECC_SIGNATURE;
   -- type PCERT_X942_DH_VALIDATION_PARAMS is access all CERT_X942_DH_VALIDATION_PARAMS;
   -- type PCERT_X942_DH_PARAMETERS is access all CERT_X942_DH_PARAMETERS;
   -- type PCRYPT_X942_OTHER_INFO is access all CRYPT_X942_OTHER_INFO;
   -- type PCRYPT_ECC_CMS_SHARED_INFO is access all CRYPT_ECC_CMS_SHARED_INFO;
   -- type PCRYPT_RC2_CBC_PARAMETERS is access all CRYPT_RC2_CBC_PARAMETERS;
   -- type PCRYPT_SMIME_CAPABILITY is access all CRYPT_SMIME_CAPABILITY;
   -- type PCRYPT_SMIME_CAPABILITIES is access all CRYPT_SMIME_CAPABILITIES;
   -- type PCERT_QC_STATEMENT is access all CERT_QC_STATEMENT;
   -- type PCERT_QC_STATEMENTS_EXT_INFO is access all CERT_QC_STATEMENTS_EXT_INFO;
   -- type PCRYPT_MASK_GEN_ALGORITHM is access all CRYPT_MASK_GEN_ALGORITHM;
   -- type PCRYPT_RSA_SSA_PSS_PARAMETERS is access all CRYPT_RSA_SSA_PSS_PARAMETERS;
   -- type PCRYPT_PSOURCE_ALGORITHM is access all CRYPT_PSOURCE_ALGORITHM;
   -- type PCRYPT_RSAES_OAEP_PARAMETERS is access all CRYPT_RSAES_OAEP_PARAMETERS;
   -- type PCMC_TAGGED_ATTRIBUTE is access all CMC_TAGGED_ATTRIBUTE;
   -- type PCMC_TAGGED_CERT_REQUEST is access all CMC_TAGGED_CERT_REQUEST;
   -- type PCMC_TAGGED_REQUEST is access all CMC_TAGGED_REQUEST;
   -- type PCMC_TAGGED_CONTENT_INFO is access all CMC_TAGGED_CONTENT_INFO;
   -- type PCMC_TAGGED_OTHER_MSG is access all CMC_TAGGED_OTHER_MSG;
   -- type PCMC_DATA_INFO is access all CMC_DATA_INFO;
   -- type PCMC_RESPONSE_INFO is access all CMC_RESPONSE_INFO;
   -- type PCMC_PEND_INFO is access all CMC_PEND_INFO;
   -- type PCMC_STATUS_INFO is access all CMC_STATUS_INFO;
   -- type PCMC_ADD_EXTENSIONS_INFO is access all CMC_ADD_EXTENSIONS_INFO;
   -- type PCMC_ADD_ATTRIBUTES_INFO is access all CMC_ADD_ATTRIBUTES_INFO;
   -- type PCERT_TEMPLATE_EXT is access all CERT_TEMPLATE_EXT;
   -- type PCERT_HASHED_URL is access all CERT_HASHED_URL;
   -- type PCERT_LOGOTYPE_DETAILS is access all CERT_LOGOTYPE_DETAILS;
   -- type PCERT_LOGOTYPE_REFERENCE is access all CERT_LOGOTYPE_REFERENCE;
   -- type PCERT_LOGOTYPE_IMAGE_INFO is access all CERT_LOGOTYPE_IMAGE_INFO;
   -- type PCERT_LOGOTYPE_IMAGE is access all CERT_LOGOTYPE_IMAGE;
   -- type PCERT_LOGOTYPE_AUDIO_INFO is access all CERT_LOGOTYPE_AUDIO_INFO;
   -- type PCERT_LOGOTYPE_AUDIO is access all CERT_LOGOTYPE_AUDIO;
   -- type PCERT_LOGOTYPE_DATA is access all CERT_LOGOTYPE_DATA;
   -- type PCERT_LOGOTYPE_INFO is access all CERT_LOGOTYPE_INFO;
   -- type PCERT_OTHER_LOGOTYPE_INFO is access all CERT_OTHER_LOGOTYPE_INFO;
   -- type PCERT_LOGOTYPE_EXT_INFO is access all CERT_LOGOTYPE_EXT_INFO;
   -- type PCERT_BIOMETRIC_DATA is access all CERT_BIOMETRIC_DATA;
   -- type PCERT_BIOMETRIC_EXT_INFO is access all CERT_BIOMETRIC_EXT_INFO;
   -- type POCSP_SIGNATURE_INFO is access all OCSP_SIGNATURE_INFO;
   -- type POCSP_SIGNED_REQUEST_INFO is access all OCSP_SIGNED_REQUEST_INFO;
   -- type POCSP_CERT_ID is access all OCSP_CERT_ID;
   -- type POCSP_REQUEST_ENTRY is access all OCSP_REQUEST_ENTRY;
   -- type POCSP_REQUEST_INFO is access all OCSP_REQUEST_INFO;
   -- type POCSP_RESPONSE_INFO is access all OCSP_RESPONSE_INFO;
   -- type POCSP_BASIC_SIGNED_RESPONSE_INFO is access all OCSP_BASIC_SIGNED_RESPONSE_INFO;
   -- type POCSP_BASIC_REVOKED_INFO is access all OCSP_BASIC_REVOKED_INFO;
   -- type POCSP_BASIC_RESPONSE_ENTRY is access all OCSP_BASIC_RESPONSE_ENTRY;
   -- type POCSP_BASIC_RESPONSE_INFO is access all OCSP_BASIC_RESPONSE_INFO;
   -- type PCERT_SUPPORTED_ALGORITHM_INFO is access all CERT_SUPPORTED_ALGORITHM_INFO;
   -- type PCERT_TPM_SPECIFICATION_INFO is access all CERT_TPM_SPECIFICATION_INFO;
   type HCRYPTOIDFUNCSET is access all Void;
   type HCRYPTOIDFUNCADDR is access all Void;
   -- type PCRYPT_OID_FUNC_ENTRY is access all CRYPT_OID_FUNC_ENTRY;
   -- type PCRYPT_OID_INFO is access all CRYPT_OID_INFO;
   -- type PCCRYPT_OID_INFO is access all CRYPT_OID_INFO;
   -- type PCERT_STRONG_SIGN_SERIALIZED_INFO is access all CERT_STRONG_SIGN_SERIALIZED_INFO;
   -- type PCERT_STRONG_SIGN_PARA is access all CERT_STRONG_SIGN_PARA;
   -- type PCCERT_STRONG_SIGN_PARA is access all CERT_STRONG_SIGN_PARA;
   type HCRYPTMSG is access all Void;
   -- type PCERT_ISSUER_SERIAL_NUMBER is access all CERT_ISSUER_SERIAL_NUMBER;
   -- type PCERT_ID is access all CERT_ID;
   -- type PCMSG_SIGNER_ENCODE_INFO is access all CMSG_SIGNER_ENCODE_INFO;
   -- type PCMSG_SIGNED_ENCODE_INFO is access all CMSG_SIGNED_ENCODE_INFO;
   -- type CMSG_RECIPIENT_ENCODE_INFO; -- forward declaration
   -- type PCMSG_RECIPIENT_ENCODE_INFO is access all CMSG_RECIPIENT_ENCODE_INFO;
   -- type PCMSG_ENVELOPED_ENCODE_INFO is access all CMSG_ENVELOPED_ENCODE_INFO;
   -- type PCMSG_KEY_TRANS_RECIPIENT_ENCODE_INFO is access all CMSG_KEY_TRANS_RECIPIENT_ENCODE_INFO;
   -- type PCMSG_RECIPIENT_ENCRYPTED_KEY_ENCODE_INFO is access all CMSG_RECIPIENT_ENCRYPTED_KEY_ENCODE_INFO;
   -- type PCMSG_KEY_AGREE_RECIPIENT_ENCODE_INFO is access all CMSG_KEY_AGREE_RECIPIENT_ENCODE_INFO;
   -- type PCMSG_MAIL_LIST_RECIPIENT_ENCODE_INFO is access all CMSG_MAIL_LIST_RECIPIENT_ENCODE_INFO;
   -- type PCMSG_RC2_AUX_INFO is access all CMSG_RC2_AUX_INFO;
   -- type PCMSG_SP3_COMPATIBLE_AUX_INFO is access all CMSG_SP3_COMPATIBLE_AUX_INFO;
   -- type PCMSG_RC4_AUX_INFO is access all CMSG_RC4_AUX_INFO;
   -- type PCMSG_SIGNED_AND_ENVELOPED_ENCODE_INFO is access all CMSG_SIGNED_AND_ENVELOPED_ENCODE_INFO;
   -- type PCMSG_HASHED_ENCODE_INFO is access all CMSG_HASHED_ENCODE_INFO;
   -- type PCMSG_ENCRYPTED_ENCODE_INFO is access all CMSG_ENCRYPTED_ENCODE_INFO;
   -- type PCMSG_STREAM_INFO is access all CMSG_STREAM_INFO;
   -- type PCMSG_SIGNER_INFO is access all CMSG_SIGNER_INFO;
   -- type PCMSG_CMS_SIGNER_INFO is access all CMSG_CMS_SIGNER_INFO;
   -- type PCMSG_ATTR is access all CRYPT_ATTRIBUTES;
   -- type PCMSG_KEY_TRANS_RECIPIENT_INFO is access all CMSG_KEY_TRANS_RECIPIENT_INFO;
   -- type PCMSG_RECIPIENT_ENCRYPTED_KEY_INFO is access all CMSG_RECIPIENT_ENCRYPTED_KEY_INFO;
   -- type PCMSG_KEY_AGREE_RECIPIENT_INFO is access all CMSG_KEY_AGREE_RECIPIENT_INFO;
   -- type PCMSG_MAIL_LIST_RECIPIENT_INFO is access all CMSG_MAIL_LIST_RECIPIENT_INFO;
   -- type PCMSG_CMS_RECIPIENT_INFO is access all CMSG_CMS_RECIPIENT_INFO;
   -- type PCMSG_CTRL_VERIFY_SIGNATURE_EX_PARA is access all CMSG_CTRL_VERIFY_SIGNATURE_EX_PARA;
   -- type PCMSG_CTRL_DECRYPT_PARA is access all CMSG_CTRL_DECRYPT_PARA;
   -- type PCMSG_CTRL_KEY_TRANS_DECRYPT_PARA is access all CMSG_CTRL_KEY_TRANS_DECRYPT_PARA;
   -- type PCMSG_CTRL_KEY_AGREE_DECRYPT_PARA is access all CMSG_CTRL_KEY_AGREE_DECRYPT_PARA;
   -- type PCMSG_CTRL_MAIL_LIST_DECRYPT_PARA is access all CMSG_CTRL_MAIL_LIST_DECRYPT_PARA;
   -- type PCMSG_CTRL_ADD_SIGNER_UNAUTH_ATTR_PARA is access all CMSG_CTRL_ADD_SIGNER_UNAUTH_ATTR_PARA;
   -- type PCMSG_CTRL_DEL_SIGNER_UNAUTH_ATTR_PARA is access all CMSG_CTRL_DEL_SIGNER_UNAUTH_ATTR_PARA;
   -- type PCMSG_CONTENT_ENCRYPT_INFO is access all CMSG_CONTENT_ENCRYPT_INFO;
   -- type PCMSG_KEY_TRANS_ENCRYPT_INFO is access all CMSG_KEY_TRANS_ENCRYPT_INFO;
   -- type PCMSG_KEY_AGREE_KEY_ENCRYPT_INFO is access all CMSG_KEY_AGREE_KEY_ENCRYPT_INFO;
   -- type PCMSG_KEY_AGREE_ENCRYPT_INFO is access all CMSG_KEY_AGREE_ENCRYPT_INFO;
   -- type PCMSG_MAIL_LIST_ENCRYPT_INFO is access all CMSG_MAIL_LIST_ENCRYPT_INFO;
   -- type PCMSG_CNG_CONTENT_DECRYPT_INFO is access all CMSG_CNG_CONTENT_DECRYPT_INFO;
   type HCERTSTORE is access all Void;
   -- type PCERT_CONTEXT is access all CERT_CONTEXT;
   -- type PCCERT_CONTEXT is access all CERT_CONTEXT;
   -- type PCRL_CONTEXT is access all CRL_CONTEXT;
   -- type PCCRL_CONTEXT is access all CRL_CONTEXT;
   -- type PCTL_CONTEXT is access all CTL_CONTEXT;
   -- type PCCTL_CONTEXT is access all CTL_CONTEXT;
   type CertKeyType is (
      KeyTypeOther,
      KeyTypeVirtualSmartCard,
      KeyTypePhysicalSmartCard,
      KeyTypePassport,
      KeyTypePassportRemote,
      KeyTypePassportSmartCard,
      KeyTypeHardware,
      KeyTypeSoftware,
      KeyTypeSelfSigned
   );
   for CertKeyType use (
      KeyTypeOther => 0,
      KeyTypeVirtualSmartCard => 1,
      KeyTypePhysicalSmartCard => 2,
      KeyTypePassport => 3,
      KeyTypePassportRemote => 4,
      KeyTypePassportSmartCard => 5,
      KeyTypeHardware => 6,
      KeyTypeSoftware => 7,
      KeyTypeSelfSigned => 8
   );
   for CertKeyType'Size use 32;
   
   -- type PCRYPT_KEY_PROV_PARAM is access all CRYPT_KEY_PROV_PARAM;
   -- type PCRYPT_KEY_PROV_INFO is access all CRYPT_KEY_PROV_INFO;
   -- type PCERT_KEY_CONTEXT is access all CERT_KEY_CONTEXT;
   -- type PROOT_INFO_LUID is access all ROOT_INFO_LUID;
   -- type PCRYPT_SMART_CARD_ROOT_INFO is access all CRYPT_SMART_CARD_ROOT_INFO;
   -- type PCERT_SYSTEM_STORE_RELOCATE_PARA is access all CERT_SYSTEM_STORE_RELOCATE_PARA;
   -- type PCERT_REGISTRY_STORE_CLIENT_GPT_PARA is access all CERT_REGISTRY_STORE_CLIENT_GPT_PARA;
   -- type PCERT_REGISTRY_STORE_ROAMING_PARA is access all CERT_REGISTRY_STORE_ROAMING_PARA;
   -- type PCERT_LDAP_STORE_OPENED_PARA is access all CERT_LDAP_STORE_OPENED_PARA;
   type HCERTSTOREPROV is access all Void;
   -- type PCERT_STORE_PROV_INFO is access all CERT_STORE_PROV_INFO;
   -- type PCERT_STORE_PROV_FIND_INFO is access all CERT_STORE_PROV_FIND_INFO;
   -- type PCCERT_STORE_PROV_FIND_INFO is access all CERT_STORE_PROV_FIND_INFO;
   -- type PCRL_FIND_ISSUED_FOR_PARA is access all CRL_FIND_ISSUED_FOR_PARA;
   -- type PCTL_ANY_SUBJECT_INFO is access all CTL_ANY_SUBJECT_INFO;
   -- type PCTL_FIND_USAGE_PARA is access all CTL_FIND_USAGE_PARA;
   -- type PCTL_FIND_SUBJECT_PARA is access all CTL_FIND_SUBJECT_PARA;
   -- type PCERT_CREATE_CONTEXT_PARA is access all CERT_CREATE_CONTEXT_PARA;
   -- type PCERT_SYSTEM_STORE_INFO is access all CERT_SYSTEM_STORE_INFO;
   -- type PCERT_PHYSICAL_STORE_INFO is access all CERT_PHYSICAL_STORE_INFO;
   -- type PCTL_VERIFY_USAGE_PARA is access all CTL_VERIFY_USAGE_PARA;
   -- type PCTL_VERIFY_USAGE_STATUS is access all CTL_VERIFY_USAGE_STATUS;
   -- type PCERT_REVOCATION_CRL_INFO is access all CERT_REVOCATION_CRL_INFO;
   -- type PCERT_REVOCATION_CHAIN_PARA is access all CERT_REVOCATION_CHAIN_PARA;
   -- type CERT_REVOCATION_CHAIN_PARA; -- forward declaration
   -- type PCERT_REVOCATION_PARA is access all CERT_REVOCATION_PARA;
   -- type PCERT_REVOCATION_STATUS is access all CERT_REVOCATION_STATUS;
   -- type PCRYPT_VERIFY_CERT_SIGN_STRONG_PROPERTIES_INFO is access all CRYPT_VERIFY_CERT_SIGN_STRONG_PROPERTIES_INFO;
   -- type PCRYPT_VERIFY_CERT_SIGN_WEAK_HASH_INFO is access all CRYPT_VERIFY_CERT_SIGN_WEAK_HASH_INFO;
   type HCRYPTDEFAULTCONTEXT is access all Void;
   -- type PCRYPT_DEFAULT_CONTEXT_MULTI_OID_PARA is access all CRYPT_DEFAULT_CONTEXT_MULTI_OID_PARA;
   -- type PCRYPT_SIGN_MESSAGE_PARA is access all CRYPT_SIGN_MESSAGE_PARA;
   -- type PCRYPT_VERIFY_MESSAGE_PARA is access all CRYPT_VERIFY_MESSAGE_PARA;
   -- type PCRYPT_ENCRYPT_MESSAGE_PARA is access all CRYPT_ENCRYPT_MESSAGE_PARA;
   -- type PCRYPT_DECRYPT_MESSAGE_PARA is access all CRYPT_DECRYPT_MESSAGE_PARA;
   -- type PCRYPT_HASH_MESSAGE_PARA is access all CRYPT_HASH_MESSAGE_PARA;
   -- type PCRYPT_KEY_SIGN_MESSAGE_PARA is access all CRYPT_KEY_SIGN_MESSAGE_PARA;
   -- type PCRYPT_KEY_VERIFY_MESSAGE_PARA is access all CRYPT_KEY_VERIFY_MESSAGE_PARA;
   -- type PCERT_CHAIN is access all CERT_CHAIN;
   -- type PHCRYPTASYNC is access all HANDLE;
   -- type PCRYPT_BLOB_ARRAY is access all CRYPT_BLOB_ARRAY;
   -- type PCRYPT_CREDENTIALS is access all CRYPT_CREDENTIALS;
   -- type PCRYPT_PASSWORD_CREDENTIALSA is access all CRYPT_PASSWORD_CREDENTIALSA;
   -- type PCRYPT_PASSWORD_CREDENTIALSW is access all CRYPT_PASSWORD_CREDENTIALSW;
   -- type PCRYPTNET_URL_CACHE_PRE_FETCH_INFO is access all CRYPTNET_URL_CACHE_PRE_FETCH_INFO;
   -- type PCRYPTNET_URL_CACHE_FLUSH_INFO is access all CRYPTNET_URL_CACHE_FLUSH_INFO;
   -- type PCRYPTNET_URL_CACHE_RESPONSE_INFO is access all CRYPTNET_URL_CACHE_RESPONSE_INFO;
   -- type PCRYPT_RETRIEVE_AUX_INFO is access all CRYPT_RETRIEVE_AUX_INFO;
   -- type PCRYPT_ASYNC_RETRIEVAL_COMPLETION is access all CRYPT_ASYNC_RETRIEVAL_COMPLETION;
   -- type PCRYPT_URL_ARRAY is access all CRYPT_URL_ARRAY;
   -- type PCRYPT_URL_INFO is access all CRYPT_URL_INFO;
   -- type PCERT_CRL_CONTEXT_PAIR is access all CERT_CRL_CONTEXT_PAIR;
   -- type PCCERT_CRL_CONTEXT_PAIR is access all CERT_CRL_CONTEXT_PAIR;
   -- type PCRYPT_GET_TIME_VALID_OBJECT_EXTRA_INFO is access all CRYPT_GET_TIME_VALID_OBJECT_EXTRA_INFO;
   -- type PCERT_CHAIN_ENGINE_CONFIG is access all CERT_CHAIN_ENGINE_CONFIG;
   -- type PCERT_TRUST_STATUS is access all CERT_TRUST_STATUS;
   -- type PCERT_REVOCATION_INFO is access all CERT_REVOCATION_INFO;
   -- type PCERT_TRUST_LIST_INFO is access all CERT_TRUST_LIST_INFO;
   -- type PCERT_CHAIN_ELEMENT is access all CERT_CHAIN_ELEMENT;
   -- type PCCERT_CHAIN_ELEMENT is access all CERT_CHAIN_ELEMENT;
   -- type PCERT_SIMPLE_CHAIN is access all CERT_SIMPLE_CHAIN;
   -- type PCCERT_SIMPLE_CHAIN is access all CERT_SIMPLE_CHAIN;
   -- type PCERT_CHAIN_CONTEXT is access all CERT_CHAIN_CONTEXT;
   -- type CERT_CHAIN_CONTEXT; -- forward declaration
   -- type PCCERT_CHAIN_CONTEXT is access all CERT_CHAIN_CONTEXT;
   -- type PCERT_USAGE_MATCH is access all CERT_USAGE_MATCH;
   -- type PCTL_USAGE_MATCH is access all CTL_USAGE_MATCH;
   -- type PCERT_CHAIN_PARA is access all CERT_CHAIN_PARA;
   -- type PCRL_REVOCATION_INFO is access all CRL_REVOCATION_INFO;
   -- type PCERT_CHAIN_FIND_ISSUER_PARA is access all CERT_CHAIN_FIND_BY_ISSUER_PARA;
   -- type PCERT_CHAIN_FIND_BY_ISSUER_PARA is access all CERT_CHAIN_FIND_BY_ISSUER_PARA;
   -- type PCERT_CHAIN_POLICY_PARA is access all CERT_CHAIN_POLICY_PARA;
   -- type PCERT_CHAIN_POLICY_STATUS is access all CERT_CHAIN_POLICY_STATUS;
   -- type PAUTHENTICODE_EXTRA_CERT_CHAIN_POLICY_PARA is access all AUTHENTICODE_EXTRA_CERT_CHAIN_POLICY_PARA;
   -- type PAUTHENTICODE_EXTRA_CERT_CHAIN_POLICY_STATUS is access all AUTHENTICODE_EXTRA_CERT_CHAIN_POLICY_STATUS;
   -- type PAUTHENTICODE_TS_EXTRA_CERT_CHAIN_POLICY_PARA is access all AUTHENTICODE_TS_EXTRA_CERT_CHAIN_POLICY_PARA;
   -- type PSSL_EXTRA_CERT_CHAIN_POLICY_PARA is access all HTTPSPolicyCallbackData;
   -- type PHTTPSPolicyCallbackData is access all HTTPSPolicyCallbackData;
   -- type PEV_EXTRA_CERT_CHAIN_POLICY_PARA is access all EV_EXTRA_CERT_CHAIN_POLICY_PARA;
   -- type PEV_EXTRA_CERT_CHAIN_POLICY_STATUS is access all EV_EXTRA_CERT_CHAIN_POLICY_STATUS;
   -- type PSSL_F12_EXTRA_CERT_CHAIN_POLICY_STATUS is access all SSL_F12_EXTRA_CERT_CHAIN_POLICY_STATUS;
   -- type PSSL_HPKP_HEADER_EXTRA_CERT_CHAIN_POLICY_PARA is access all SSL_HPKP_HEADER_EXTRA_CERT_CHAIN_POLICY_PARA;
   -- type PSSL_KEY_PIN_EXTRA_CERT_CHAIN_POLICY_PARA is access all SSL_KEY_PIN_EXTRA_CERT_CHAIN_POLICY_PARA;
   -- type PSSL_KEY_PIN_EXTRA_CERT_CHAIN_POLICY_STATUS is access all SSL_KEY_PIN_EXTRA_CERT_CHAIN_POLICY_STATUS;
   type HCERT_SERVER_OCSP_RESPONSE is access all Void;
   -- type PCERT_SERVER_OCSP_RESPONSE_CONTEXT is access all CERT_SERVER_OCSP_RESPONSE_CONTEXT;
   -- type CERT_SERVER_OCSP_RESPONSE_CONTEXT; -- forward declaration
   -- type PCCERT_SERVER_OCSP_RESPONSE_CONTEXT is access all CERT_SERVER_OCSP_RESPONSE_CONTEXT;
   -- type PCERT_SERVER_OCSP_RESPONSE_OPEN_PARA is access all CERT_SERVER_OCSP_RESPONSE_OPEN_PARA;
   -- type PCERT_SELECT_CHAIN_PARA is access all CERT_SELECT_CHAIN_PARA;
   -- type PCCERT_SELECT_CHAIN_PARA is access all CERT_SELECT_CHAIN_PARA;
   -- type PCERT_SELECT_CRITERIA is access all CERT_SELECT_CRITERIA;
   -- type PCCERT_SELECT_CRITERIA is access all CERT_SELECT_CRITERIA;
   -- type PCRYPT_TIMESTAMP_REQUEST is access all CRYPT_TIMESTAMP_REQUEST;
   -- type PCRYPT_TIMESTAMP_RESPONSE is access all CRYPT_TIMESTAMP_RESPONSE;
   -- type PCRYPT_TIMESTAMP_ACCURACY is access all CRYPT_TIMESTAMP_ACCURACY;
   -- type PCRYPT_TIMESTAMP_INFO is access all CRYPT_TIMESTAMP_INFO;
   -- type PCRYPT_TIMESTAMP_CONTEXT is access all CRYPT_TIMESTAMP_CONTEXT;
   -- type PCRYPT_TIMESTAMP_PARA is access all CRYPT_TIMESTAMP_PARA;
   -- type PCRYPT_OBJECT_LOCATOR_PROVIDER_TABLE is access all CRYPT_OBJECT_LOCATOR_PROVIDER_TABLE;
   -- C:\Program Files (x86)\Windows Kits\10\include\10.0.16299.0\shared\bcrypt.h
   -- type PNTSTATUS is access all NTSTATUS;
   -- type PBCRYPT_AUTHENTICATED_CIPHER_MODE_INFO is access all BCRYPT_AUTHENTICATED_CIPHER_MODE_INFO;
   -- type PBCryptBuffer is access all BCryptBuffer;
   -- type PBCryptBufferDesc is access all BCryptBufferDesc;
   -- type PBCRYPT_ECCKEY_BLOB is access all BCRYPT_ECCKEY_BLOB;
   -- type PSSL_ECCKEY_BLOB is access all SSL_ECCKEY_BLOB;
   type ECC_CURVE_TYPE_ENUM is (
      BCRYPT_ECC_PRIME_SHORT_WEIERSTRASS_CURVE,
      BCRYPT_ECC_PRIME_TWISTED_EDWARDS_CURVE,
      BCRYPT_ECC_PRIME_MONTGOMERY_CURVE
   );
   for ECC_CURVE_TYPE_ENUM use (
      BCRYPT_ECC_PRIME_SHORT_WEIERSTRASS_CURVE => 1,
      BCRYPT_ECC_PRIME_TWISTED_EDWARDS_CURVE => 2,
      BCRYPT_ECC_PRIME_MONTGOMERY_CURVE => 3
   );
   for ECC_CURVE_TYPE_ENUM'Size use 32;
   
   type ECC_CURVE_ALG_ID_ENUM is (
      BCRYPT_NO_CURVE_GENERATION_ALG_ID
   );
   for ECC_CURVE_ALG_ID_ENUM use (
      BCRYPT_NO_CURVE_GENERATION_ALG_ID => 0
   );
   for ECC_CURVE_ALG_ID_ENUM'Size use 32;
   
   -- type PBCRYPT_ECCFULLKEY_BLOB is access all BCRYPT_ECCFULLKEY_BLOB;
   -- type PBCRYPT_DH_KEY_BLOB is access all BCRYPT_DH_KEY_BLOB;
   -- type PBCRYPT_DSA_KEY_BLOB is access all BCRYPT_DSA_KEY_BLOB;
   type HASHALGORITHM_ENUM is (
      DSA_HASH_ALGORITHM_SHA1,
      DSA_HASH_ALGORITHM_SHA256,
      DSA_HASH_ALGORITHM_SHA512
   );
   for HASHALGORITHM_ENUM use (
      DSA_HASH_ALGORITHM_SHA1 => 0,
      DSA_HASH_ALGORITHM_SHA256 => 1,
      DSA_HASH_ALGORITHM_SHA512 => 2
   );
   for HASHALGORITHM_ENUM'Size use 32;
   
   type DSAFIPSVERSION_ENUM is (
      DSA_FIPS186_2,
      DSA_FIPS186_3
   );
   for DSAFIPSVERSION_ENUM use (
      DSA_FIPS186_2 => 0,
      DSA_FIPS186_3 => 1
   );
   for DSAFIPSVERSION_ENUM'Size use 32;
   
   -- type PBCRYPT_DSA_KEY_BLOB_V2 is access all BCRYPT_DSA_KEY_BLOB_V2;
   -- type PBCRYPT_KEY_DATA_BLOB_HEADER is access all BCRYPT_KEY_DATA_BLOB_HEADER;
   type BCRYPT_HASH_OPERATION_TYPE is (
      BCRYPT_HASH_OPERATION_HASH_DATA,
      BCRYPT_HASH_OPERATION_FINISH_HASH
   );
   for BCRYPT_HASH_OPERATION_TYPE use (
      BCRYPT_HASH_OPERATION_HASH_DATA => 1,
      BCRYPT_HASH_OPERATION_FINISH_HASH => 2
   );
   for BCRYPT_HASH_OPERATION_TYPE'Size use 32;
   
   type BCRYPT_MULTI_OPERATION_TYPE is (
      BCRYPT_OPERATION_TYPE_HASH
   );
   for BCRYPT_MULTI_OPERATION_TYPE use (
      BCRYPT_OPERATION_TYPE_HASH => 1
   );
   for BCRYPT_MULTI_OPERATION_TYPE'Size use 32;
   
   -- type PBCRYPT_INTERFACE_VERSION is access all BCRYPT_INTERFACE_VERSION;
   -- type PCRYPT_INTERFACE_REG is access all CRYPT_INTERFACE_REG;
   -- type PCRYPT_IMAGE_REG is access all CRYPT_IMAGE_REG;
   -- type PCRYPT_PROVIDER_REG is access all CRYPT_PROVIDER_REG;
   -- type PCRYPT_PROVIDERS is access all CRYPT_PROVIDERS;
   -- type PCRYPT_CONTEXT_CONFIG is access all CRYPT_CONTEXT_CONFIG;
   -- type PCRYPT_CONTEXT_FUNCTION_CONFIG is access all CRYPT_CONTEXT_FUNCTION_CONFIG;
   -- type PCRYPT_CONTEXTS is access all CRYPT_CONTEXTS;
   -- type PCRYPT_CONTEXT_FUNCTIONS is access all CRYPT_CONTEXT_FUNCTIONS;
   -- type PCRYPT_CONTEXT_FUNCTION_PROVIDERS is access all CRYPT_CONTEXT_FUNCTION_PROVIDERS;
   -- type PCRYPT_PROPERTY_REF is access all CRYPT_PROPERTY_REF;
   -- type PCRYPT_IMAGE_REF is access all CRYPT_IMAGE_REF;
   -- type PCRYPT_PROVIDER_REF is access all CRYPT_PROVIDER_REF;
   -- type PCRYPT_PROVIDER_REFS is access all CRYPT_PROVIDER_REFS;
   -- C:\Program Files (x86)\Windows Kits\10\include\10.0.16299.0\um\ncrypt.h
   -- type PNCryptBuffer is access all BCryptBuffer;
   -- type PNCryptBufferDesc is access all BCryptBufferDesc;
   -- type PNCRYPT_CIPHER_PADDING_INFO is access all NCRYPT_CIPHER_PADDING_INFO;
   -- type PNCRYPT_ISOLATED_KEY_ATTESTED_ATTRIBUTES is access all NCRYPT_ISOLATED_KEY_ATTESTED_ATTRIBUTES;
   -- type PNCRYPT_VSM_KEY_ATTESTATION_STATEMENT is access all NCRYPT_VSM_KEY_ATTESTATION_STATEMENT;
   -- type PNCRYPT_VSM_KEY_ATTESTATION_CLAIM_RESTRICTIONS is access all NCRYPT_VSM_KEY_ATTESTATION_CLAIM_RESTRICTIONS;
   -- type PNCRYPT_EXPORTED_ISOLATED_KEY_HEADER is access all NCRYPT_EXPORTED_ISOLATED_KEY_HEADER;
   -- type PNCRYPT_EXPORTED_ISOLATED_KEY_ENVELOPE is access all NCRYPT_EXPORTED_ISOLATED_KEY_ENVELOPE;
   -- type PNCRYPT_PCP_TPM_WEB_AUTHN_ATTESTATION_STATEMENT is access all NCRYPT_PCP_TPM_WEB_AUTHN_ATTESTATION_STATEMENT;
   -- type PNCRYPT_KEY_BLOB_HEADER is access all NCRYPT_KEY_BLOB_HEADER;
   -- type PNCRYPT_TPM_LOADABLE_KEY_BLOB_HEADER is access all NCRYPT_TPM_LOADABLE_KEY_BLOB_HEADER;
   -- C:\Program Files (x86)\Windows Kits\10\include\10.0.16299.0\um\dpapi.h
   -- type PCRYPTPROTECT_PROMPTSTRUCT is access all CRYPTPROTECT_PROMPTSTRUCT;
   -- C:\Program Files (x86)\Windows Kits\10\include\10.0.16299.0\um\winefs.h
   -- type PEFS_CERTIFICATE_BLOB is access all CERTIFICATE_BLOB;
   -- type PEFS_HASH_BLOB is access all EFS_HASH_BLOB;
   -- type PEFS_RPC_BLOB is access all EFS_RPC_BLOB;
   -- type PEFS_PIN_BLOB is access all EFS_PIN_BLOB;
   -- type PEFS_KEY_INFO is access all EFS_KEY_INFO;
   -- type PEFS_COMPATIBILITY_INFO is access all EFS_COMPATIBILITY_INFO;
   -- type PEFS_VERSION_INFO is access all EFS_VERSION_INFO;
   -- type PEFS_DECRYPTION_STATUS_INFO is access all EFS_DECRYPTION_STATUS_INFO;
   -- type PEFS_ENCRYPTION_STATUS_INFO is access all EFS_ENCRYPTION_STATUS_INFO;
   -- type PENCRYPTION_CERTIFICATE is access all ENCRYPTION_CERTIFICATE;
   -- type PENCRYPTION_CERTIFICATE_HASH is access all ENCRYPTION_CERTIFICATE_HASH;
   -- type PENCRYPTION_CERTIFICATE_HASH_LIST is access all ENCRYPTION_CERTIFICATE_HASH_LIST;
   -- type PENCRYPTION_CERTIFICATE_LIST is access all ENCRYPTION_CERTIFICATE_LIST;
   -- type PENCRYPTED_FILE_METADATA_SIGNATURE is access all ENCRYPTED_FILE_METADATA_SIGNATURE;
   -- type PENCRYPTION_PROTECTOR is access all ENCRYPTION_PROTECTOR;
   -- type PENCRYPTION_PROTECTOR_LIST is access all ENCRYPTION_PROTECTOR_LIST;
   -- C:\Program Files (x86)\Windows Kits\10\include\10.0.16299.0\um\winscard.h
   -- type LPCBYTE is access all BYTE;
   -- type LPSCARDCONTEXT is access all SCARDCONTEXT;
   -- type PSCARDCONTEXT is access all SCARDCONTEXT;
   -- type LPSCARDHANDLE is access all SCARDHANDLE;
   -- type PSCARDHANDLE is access all SCARDHANDLE;
   -- type PSCARD_READERSTATEA is access all SCARD_READERSTATEA;
   -- type LPSCARD_READERSTATEA is access all SCARD_READERSTATEA;
   -- type LPSCARD_READERSTATEW is access all SCARD_READERSTATEW;
   -- type PSCARD_READERSTATEW is access all SCARD_READERSTATEW;
   -- type LPSCARD_ATRMASK is access all SCARD_ATRMASK;
   -- type PSCARD_ATRMASK is access all SCARD_ATRMASK;
   -- type LPOPENCARD_SEARCH_CRITERIAA is access all OPENCARD_SEARCH_CRITERIAA;
   -- type POPENCARD_SEARCH_CRITERIAA is access all OPENCARD_SEARCH_CRITERIAA;
   -- type POPENCARD_SEARCH_CRITERIAW is access all OPENCARD_SEARCH_CRITERIAW;
   -- type LPOPENCARD_SEARCH_CRITERIAW is access all OPENCARD_SEARCH_CRITERIAW;
   -- type POPENCARDNAME_EXA is access all OPENCARDNAME_EXA;
   -- type LPOPENCARDNAME_EXA is access all OPENCARDNAME_EXA;
   -- type LPOPENCARDNAME_EXW is access all OPENCARDNAME_EXW;
   -- type POPENCARDNAME_EXW is access all OPENCARDNAME_EXW;
   type READER_SEL_REQUEST_MATCH_TYPE is (
      RSR_MATCH_TYPE_READER_AND_CONTAINER,
      RSR_MATCH_TYPE_SERIAL_NUMBER,
      RSR_MATCH_TYPE_ALL_CARDS
   );
   for READER_SEL_REQUEST_MATCH_TYPE use (
      RSR_MATCH_TYPE_READER_AND_CONTAINER => 1,
      RSR_MATCH_TYPE_SERIAL_NUMBER => 2,
      RSR_MATCH_TYPE_ALL_CARDS => 3
   );
   for READER_SEL_REQUEST_MATCH_TYPE'Size use 32;
   
   -- type PREADER_SEL_REQUEST is access all READER_SEL_REQUEST;
   -- type PREADER_SEL_RESPONSE is access all READER_SEL_RESPONSE;
   -- type POPENCARDNAMEA is access all OPENCARDNAMEA;
   -- type LPOPENCARDNAMEA is access all OPENCARDNAMEA;
   -- type LPOPENCARDNAMEW is access all OPENCARDNAMEW;
   -- type POPENCARDNAMEW is access all OPENCARDNAMEW;
   -- C:\Program Files (x86)\Windows Kits\10\include\10.0.16299.0\shared\wtypes.h
   type tagDVASPECT is (
      DVASPECT_CONTENT,
      DVASPECT_THUMBNAIL,
      DVASPECT_ICON,
      DVASPECT_DOCPRINT
   );
   for tagDVASPECT use (
      DVASPECT_CONTENT => 1,
      DVASPECT_THUMBNAIL => 2,
      DVASPECT_ICON => 4,
      DVASPECT_DOCPRINT => 8
   );
   for tagDVASPECT'Size use 32;
   
   type tagSTGC is (
      STGC_DEFAULT,
      STGC_OVERWRITE,
      STGC_ONLYIFCURRENT,
      STGC_DANGEROUSLYCOMMITMERELYTODISKCACHE,
      STGC_CONSOLIDATE
   );
   for tagSTGC use (
      STGC_DEFAULT => 0,
      STGC_OVERWRITE => 1,
      STGC_ONLYIFCURRENT => 2,
      STGC_DANGEROUSLYCOMMITMERELYTODISKCACHE => 4,
      STGC_CONSOLIDATE => 8
   );
   for tagSTGC'Size use 32;
   
   type tagSTGMOVE is (
      STGMOVE_MOVE,
      STGMOVE_COPY,
      STGMOVE_SHALLOWCOPY
   );
   for tagSTGMOVE use (
      STGMOVE_MOVE => 0,
      STGMOVE_COPY => 1,
      STGMOVE_SHALLOWCOPY => 2
   );
   for tagSTGMOVE'Size use 32;
   
   type tagSTATFLAG is (
      STATFLAG_DEFAULT,
      STATFLAG_NONAME,
      STATFLAG_NOOPEN
   );
   for tagSTATFLAG use (
      STATFLAG_DEFAULT => 0,
      STATFLAG_NONAME => 1,
      STATFLAG_NOOPEN => 2
   );
   for tagSTATFLAG'Size use 32;
   
   type HCONTEXT is access all Void;
   -- type wireCLIPFORMAT is access all userCLIPFORMAT;
   -- type wireHGLOBAL is access all userHGLOBAL;
   -- type wireHWND is access all RemotableHandle;
   -- type wireHMENU is access all RemotableHandle;
   -- type wireHACCEL is access all RemotableHandle;
   -- type wireHBRUSH is access all RemotableHandle;
   -- type wireHFONT is access all RemotableHandle;
   -- type wireHDC is access all RemotableHandle;
   -- type wireHICON is access all RemotableHandle;
   -- type wireHRGN is access all RemotableHandle;
   -- type wireHMONITOR is access all RemotableHandle;
   -- type wireHBITMAP is access all userHBITMAP;
   -- type wireHPALETTE is access all userHPALETTE;
   -- type wireHENHMETAFILE is access all userHENHMETAFILE;
   -- type wireHMETAFILE is access all userHMETAFILE;
   -- type wireHMETAFILEPICT is access all userHMETAFILEPICT;
   type HMETAFILEPICT is access all Void;
   subtype DATE is Long_Float;
   -- type LPCY is access all CY;
   -- type LPDECIMAL is access all DECIMAL;
   -- type wireBSTR is access all FLAGGED_WORD_BLOB;
   -- type BSTR is access all OLECHAR;
   -- type LPBSTR is access all BSTR;
   subtype VARIANT_BOOL is Int16;
   -- type LPBSTRBLOB is access all tagBSTRBLOB;
   subtype VARTYPE is UInt16;
   type VARENUM is (
      VT_EMPTY,
      VT_NULL,
      VT_I2,
      VT_I4,
      VT_R4,
      VT_R8,
      VT_CY,
      VT_DATE,
      VT_BSTR,
      VT_DISPATCH,
      VT_ERROR,
      VT_BOOL,
      VT_VARIANT,
      VT_UNKNOWN,
      VT_DECIMAL,
      VT_I1,
      VT_UI1,
      VT_UI2,
      VT_UI4,
      VT_I8,
      VT_UI8,
      VT_INT,
      VT_UINT,
      VT_VOID,
      VT_HRESULT,
      VT_PTR,
      VT_SAFEARRAY,
      VT_CARRAY,
      VT_USERDEFINED,
      VT_LPSTR,
      VT_LPWSTR,
      VT_RECORD,
      VT_INT_PTR,
      VT_UINT_PTR,
      VT_FILETIME,
      VT_BLOB,
      VT_STREAM,
      VT_STORAGE,
      VT_STREAMED_OBJECT,
      VT_STORED_OBJECT,
      VT_BLOB_OBJECT,
      VT_CF,
      VT_CLSID,
      VT_VERSIONED_STREAM,
      VT_BSTR_BLOB,
      VT_VECTOR,
      VT_ARRAY,
      VT_BYREF,
      VT_RESERVED,
      VT_ILLEGAL
   );
   for VARENUM use (
      VT_EMPTY => 0,
      VT_NULL => 1,
      VT_I2 => 2,
      VT_I4 => 3,
      VT_R4 => 4,
      VT_R8 => 5,
      VT_CY => 6,
      VT_DATE => 7,
      VT_BSTR => 8,
      VT_DISPATCH => 9,
      VT_ERROR => 10,
      VT_BOOL => 11,
      VT_VARIANT => 12,
      VT_UNKNOWN => 13,
      VT_DECIMAL => 14,
      VT_I1 => 16,
      VT_UI1 => 17,
      VT_UI2 => 18,
      VT_UI4 => 19,
      VT_I8 => 20,
      VT_UI8 => 21,
      VT_INT => 22,
      VT_UINT => 23,
      VT_VOID => 24,
      VT_HRESULT => 25,
      VT_PTR => 26,
      VT_SAFEARRAY => 27,
      VT_CARRAY => 28,
      VT_USERDEFINED => 29,
      VT_LPSTR => 30,
      VT_LPWSTR => 31,
      VT_RECORD => 36,
      VT_INT_PTR => 37,
      VT_UINT_PTR => 38,
      VT_FILETIME => 64,
      VT_BLOB => 65,
      VT_STREAM => 66,
      VT_STORAGE => 67,
      VT_STREAMED_OBJECT => 68,
      VT_STORED_OBJECT => 69,
      VT_BLOB_OBJECT => 70,
      VT_CF => 71,
      VT_CLSID => 72,
      VT_VERSIONED_STREAM => 73,
      VT_BSTR_BLOB => 4095,
      VT_VECTOR => 4096,
      VT_ARRAY => 8192,
      VT_BYREF => 16384,
      VT_RESERVED => 32768,
      VT_ILLEGAL => 65535
   );
   for VARENUM'Size use 32;
   
   type tagTYSPEC is (
      TYSPEC_CLSID,
      TYSPEC_FILEEXT,
      TYSPEC_MIMETYPE,
      TYSPEC_FILENAME,
      TYSPEC_PROGID,
      TYSPEC_PACKAGENAME,
      TYSPEC_OBJECTID
   );
   for tagTYSPEC use (
      TYSPEC_CLSID => 0,
      TYSPEC_FILEEXT => 1,
      TYSPEC_MIMETYPE => 2,
      TYSPEC_FILENAME => 3,
      TYSPEC_PROGID => 4,
      TYSPEC_PACKAGENAME => 5,
      TYSPEC_OBJECTID => 6
   );
   for tagTYSPEC'Size use 32;
   
   -- C:\Program Files (x86)\Windows Kits\10\include\10.0.16299.0\shared\rpcndr.h
   subtype boolean is UInt8;
   type NDR_CCONTEXT is access all Void;
   -- type PSCONTEXT_QUEUE is access all SCONTEXT_QUEUE;
   subtype error_status_t is UInt32;
   -- type MIDL_STUB_MESSAGE; -- forward declaration
   -- type MIDL_STUB_DESC; -- forward declaration
   -- type FULL_PTR_XLAT_TABLES; -- forward declaration
   type RPC_BUFPTR is access all UInt8;
   subtype RPC_LENGTH is UInt32;
   -- type PARRAY_INFO is access all ARRAY_INFO;
   type NDR_ASYNC_MESSAGE is null record; -- Incomplete/Opaque Type
   type PNDR_ASYNC_MESSAGE is access all NDR_ASYNC_MESSAGE;
   type NDR_CORRELATION_INFO is null record; -- Incomplete/Opaque Type
   type PNDR_CORRELATION_INFO is access all NDR_CORRELATION_INFO;
   type PFORMAT_STRING is access all UInt8;
   -- type PMIDL_SYNTAX_INFO is access all MIDL_SYNTAX_INFO;
   -- type MIDL_SYNTAX_INFO; -- forward declaration
   type NDR_ALLOC_ALL_NODES_CONTEXT is null record; -- Incomplete/Opaque Type
   type NDR_POINTER_QUEUE_STATE is null record; -- Incomplete/Opaque Type
   type NDR_PROC_CONTEXT is null record; -- Incomplete/Opaque Type
   -- type IRpcChannelBuffer; -- forward declaration
   -- type PMIDL_STUB_MESSAGE is access all MIDL_STUB_MESSAGE;
   -- type PGENERIC_BINDING_ROUTINE_PAIR is access all GENERIC_BINDING_ROUTINE_PAIR;
   -- type PGENERIC_BINDING_INFO is access all GENERIC_BINDING_INFO;
   -- type PXMIT_ROUTINE_QUINTUPLE is access all XMIT_ROUTINE_QUINTUPLE;
   type USER_MARSHAL_CB_TYPE is (
      USER_MARSHAL_CB_BUFFER_SIZE,
      USER_MARSHAL_CB_MARSHALL,
      USER_MARSHAL_CB_UNMARSHALL,
      USER_MARSHAL_CB_FREE
   );
   for USER_MARSHAL_CB_TYPE use (
      USER_MARSHAL_CB_BUFFER_SIZE => 0,
      USER_MARSHAL_CB_MARSHALL => 1,
      USER_MARSHAL_CB_UNMARSHALL => 2,
      USER_MARSHAL_CB_FREE => 3
   );
   for USER_MARSHAL_CB_TYPE'Size use 32;
   
   type IDL_CS_CONVERT is (
      IDL_CS_NO_CONVERT,
      IDL_CS_IN_PLACE_CONVERT,
      IDL_CS_NEW_BUFFER_CONVERT
   );
   for IDL_CS_CONVERT use (
      IDL_CS_NO_CONVERT => 0,
      IDL_CS_IN_PLACE_CONVERT => 1,
      IDL_CS_NEW_BUFFER_CONVERT => 2
   );
   for IDL_CS_CONVERT'Size use 32;
   
   -- type PMIDL_STUB_DESC is access all MIDL_STUB_DESC;
   type PMIDL_XMIT_TYPE is access all Void;
   -- type PMIDL_METHOD_PROPERTY is access all MIDL_METHOD_PROPERTY;
   -- type PMIDL_METHOD_PROPERTY_MAP is access all MIDL_METHOD_PROPERTY_MAP;
   -- type PMIDL_SERVER_INFO is access all MIDL_SERVER_INFO_x;
   -- type PMIDL_STUBLESS_PROXY_INFO is access all MIDL_STUBLESS_PROXY_INFO;
   type PPARAM_OFFSETTABLE is access all UInt16;
   type PARAM_OFFSETTABLE is access all UInt16;
   type XLAT_SIDE is (
      XLAT_SERVER,
      XLAT_CLIENT
   );
   for XLAT_SIDE use (
      XLAT_SERVER => 1,
      XLAT_CLIENT => 2
   );
   for XLAT_SIDE'Size use 32;
   
   -- type PFULL_PTR_XLAT_TABLES is access all FULL_PTR_XLAT_TABLES;
   type system_handle_t is (
      SYSTEM_HANDLE_FILE,
      SYSTEM_HANDLE_SEMAPHORE,
      SYSTEM_HANDLE_EVENT,
      SYSTEM_HANDLE_MUTEX,
      SYSTEM_HANDLE_PROCESS,
      SYSTEM_HANDLE_TOKEN,
      SYSTEM_HANDLE_SECTION,
      SYSTEM_HANDLE_REG_KEY,
      SYSTEM_HANDLE_THREAD,
      SYSTEM_HANDLE_COMPOSITION_OBJECT,
      SYSTEM_HANDLE_SOCKET,
      SYSTEM_HANDLE_JOB,
      SYSTEM_HANDLE_PIPE,
      SYSTEM_HANDLE_INVALID
   );
   for system_handle_t use (
      SYSTEM_HANDLE_FILE => 0,
      SYSTEM_HANDLE_SEMAPHORE => 1,
      SYSTEM_HANDLE_EVENT => 2,
      SYSTEM_HANDLE_MUTEX => 3,
      SYSTEM_HANDLE_PROCESS => 4,
      SYSTEM_HANDLE_TOKEN => 5,
      SYSTEM_HANDLE_SECTION => 6,
      SYSTEM_HANDLE_REG_KEY => 7,
      SYSTEM_HANDLE_THREAD => 8,
      SYSTEM_HANDLE_COMPOSITION_OBJECT => 9,
      SYSTEM_HANDLE_SOCKET => 10,
      SYSTEM_HANDLE_JOB => 11,
      SYSTEM_HANDLE_PIPE => 12,
      SYSTEM_HANDLE_INVALID => 255
   );
   for system_handle_t'Size use 32;
   
   -- type PMIDL_INTERCEPTION_INFO is access all MIDL_INTERCEPTION_INFO;
   -- type PMIDL_WINRT_TYPE_SERIALIZATION_INFO is access all MIDL_WINRT_TYPE_SERIALIZATION_INFO;
   type STUB_PHASE is (
      STUB_UNMARSHAL,
      STUB_CALL_SERVER,
      STUB_MARSHAL,
      STUB_CALL_SERVER_NO_HRESULT
   );
   for STUB_PHASE use (
      STUB_UNMARSHAL => 0,
      STUB_CALL_SERVER => 1,
      STUB_MARSHAL => 2,
      STUB_CALL_SERVER_NO_HRESULT => 3
   );
   for STUB_PHASE'Size use 32;
   
   type PROXY_PHASE is (
      PROXY_CALCSIZE,
      PROXY_GETBUFFER,
      PROXY_MARSHAL,
      PROXY_SENDRECEIVE,
      PROXY_UNMARSHAL
   );
   for PROXY_PHASE use (
      PROXY_CALCSIZE => 0,
      PROXY_GETBUFFER => 1,
      PROXY_MARSHAL => 2,
      PROXY_SENDRECEIVE => 3,
      PROXY_UNMARSHAL => 4
   );
   for PROXY_PHASE'Size use 32;
   
   -- type IRpcStubBuffer; -- forward declaration
   type RPC_SS_THREAD_HANDLE is access all Void;
   -- C:\Program Files (x86)\Windows Kits\10\include\10.0.16299.0\um\rpcnsip.h
   -- type PRPC_IMPORT_CONTEXT_P is access all RPC_IMPORT_CONTEXT_P;
   -- C:\Program Files (x86)\Windows Kits\10\include\10.0.16299.0\shared\wtypesbase.h
   -- type LPOLESTR is access all OLECHAR;
   -- type LPCOLESTR is access all OLECHAR;
   subtype DOUBLE is Long_Float;
   -- type PSCODE is access all SCODE;
   type tagMEMCTX is (
      MEMCTX_SAME,
      MEMCTX_UNKNOWN,
      MEMCTX_TASK,
      MEMCTX_SHARED,
      MEMCTX_MACSYSTEM
   );
   for tagMEMCTX use (
      MEMCTX_SAME => -2,
      MEMCTX_UNKNOWN => -1,
      MEMCTX_TASK => 1,
      MEMCTX_SHARED => 2,
      MEMCTX_MACSYSTEM => 3
   );
   for tagMEMCTX'Size use 32;
   
   type tagCLSCTX is (
      CLSCTX_PS_DLL,
      CLSCTX_INPROC_SERVER,
      CLSCTX_INPROC_HANDLER,
      CLSCTX_LOCAL_SERVER,
      CLSCTX_INPROC_SERVER16,
      CLSCTX_REMOTE_SERVER,
      CLSCTX_INPROC_HANDLER16,
      CLSCTX_RESERVED1,
      CLSCTX_RESERVED2,
      CLSCTX_RESERVED3,
      CLSCTX_RESERVED4,
      CLSCTX_NO_CODE_DOWNLOAD,
      CLSCTX_RESERVED5,
      CLSCTX_NO_CUSTOM_MARSHAL,
      CLSCTX_ENABLE_CODE_DOWNLOAD,
      CLSCTX_NO_FAILURE_LOG,
      CLSCTX_DISABLE_AAA,
      CLSCTX_ENABLE_AAA,
      CLSCTX_FROM_DEFAULT_CONTEXT,
      CLSCTX_ACTIVATE_X86_SERVER,
      CLSCTX_ACTIVATE_64_BIT_SERVER,
      CLSCTX_ENABLE_CLOAKING,
      CLSCTX_APPCONTAINER,
      CLSCTX_ACTIVATE_AAA_AS_IU,
      CLSCTX_RESERVED6,
      CLSCTX_ACTIVATE_ARM32_SERVER
   );
   for tagCLSCTX use (
      CLSCTX_PS_DLL => -2147483648,
      CLSCTX_INPROC_SERVER => 1,
      CLSCTX_INPROC_HANDLER => 2,
      CLSCTX_LOCAL_SERVER => 4,
      CLSCTX_INPROC_SERVER16 => 8,
      CLSCTX_REMOTE_SERVER => 16,
      CLSCTX_INPROC_HANDLER16 => 32,
      CLSCTX_RESERVED1 => 64,
      CLSCTX_RESERVED2 => 128,
      CLSCTX_RESERVED3 => 256,
      CLSCTX_RESERVED4 => 512,
      CLSCTX_NO_CODE_DOWNLOAD => 1024,
      CLSCTX_RESERVED5 => 2048,
      CLSCTX_NO_CUSTOM_MARSHAL => 4096,
      CLSCTX_ENABLE_CODE_DOWNLOAD => 8192,
      CLSCTX_NO_FAILURE_LOG => 16384,
      CLSCTX_DISABLE_AAA => 32768,
      CLSCTX_ENABLE_AAA => 65536,
      CLSCTX_FROM_DEFAULT_CONTEXT => 131072,
      CLSCTX_ACTIVATE_X86_SERVER => 262144,
      CLSCTX_ACTIVATE_64_BIT_SERVER => 524288,
      CLSCTX_ENABLE_CLOAKING => 1048576,
      CLSCTX_APPCONTAINER => 4194304,
      CLSCTX_ACTIVATE_AAA_AS_IU => 8388608,
      CLSCTX_RESERVED6 => 16777216,
      CLSCTX_ACTIVATE_ARM32_SERVER => 33554432
   );
   for tagCLSCTX'Size use 32;
   
   type tagMSHLFLAGS is (
      MSHLFLAGS_NORMAL,
      MSHLFLAGS_TABLESTRONG,
      MSHLFLAGS_TABLEWEAK,
      MSHLFLAGS_NOPING,
      MSHLFLAGS_RESERVED1,
      MSHLFLAGS_RESERVED2,
      MSHLFLAGS_RESERVED3,
      MSHLFLAGS_RESERVED4
   );
   for tagMSHLFLAGS use (
      MSHLFLAGS_NORMAL => 0,
      MSHLFLAGS_TABLESTRONG => 1,
      MSHLFLAGS_TABLEWEAK => 2,
      MSHLFLAGS_NOPING => 4,
      MSHLFLAGS_RESERVED1 => 8,
      MSHLFLAGS_RESERVED2 => 16,
      MSHLFLAGS_RESERVED3 => 32,
      MSHLFLAGS_RESERVED4 => 64
   );
   for tagMSHLFLAGS'Size use 32;
   
   type tagMSHCTX is (
      MSHCTX_LOCAL,
      MSHCTX_NOSHAREDMEM,
      MSHCTX_DIFFERENTMACHINE,
      MSHCTX_INPROC,
      MSHCTX_CROSSCTX
   );
   for tagMSHCTX use (
      MSHCTX_LOCAL => 0,
      MSHCTX_NOSHAREDMEM => 1,
      MSHCTX_DIFFERENTMACHINE => 2,
      MSHCTX_INPROC => 3,
      MSHCTX_CROSSCTX => 4
   );
   for tagMSHCTX'Size use 32;
   
   -- type UP_BYTE_BLOB is access all BYTE_BLOB;
   -- type UP_WORD_BLOB is access all WORD_BLOB;
   -- type UP_DWORD_BLOB is access all DWORD_BLOB;
   -- type UP_FLAGGED_BYTE_BLOB is access all FLAGGED_BYTE_BLOB;
   -- type UP_FLAGGED_WORD_BLOB is access all FLAGGED_WORD_BLOB;
   -- type LPBLOB is access all tagBLOB;
   -- C:\Program Files (x86)\Windows Kits\10\include\10.0.16299.0\um\winioctl.h
   -- type PSTORAGE_HOTPLUG_INFO is access all STORAGE_HOTPLUG_INFO;
   -- type PSTORAGE_DEVICE_NUMBER is access all STORAGE_DEVICE_NUMBER;
   -- type PSTORAGE_DEVICE_NUMBERS is access all STORAGE_DEVICE_NUMBERS;
   -- type PSTORAGE_DEVICE_NUMBER_EX is access all STORAGE_DEVICE_NUMBER_EX;
   -- type PSTORAGE_BUS_RESET_REQUEST is access all STORAGE_BUS_RESET_REQUEST;
   -- type PSTORAGE_BREAK_RESERVATION_REQUEST is access all STORAGE_BREAK_RESERVATION_REQUEST;
   -- type PPREVENT_MEDIA_REMOVAL is access all PREVENT_MEDIA_REMOVAL;
   -- type PCLASS_MEDIA_CHANGE_CONTEXT is access all CLASS_MEDIA_CHANGE_CONTEXT;
   -- type PTAPE_STATISTICS is access all TAPE_STATISTICS;
   -- type PTAPE_GET_STATISTICS is access all TAPE_GET_STATISTICS;
   -- type PSTORAGE_MEDIA_TYPE is access all STORAGE_MEDIA_TYPE;
   type STORAGE_MEDIA_TYPE is (
      DDS_4mm,
      MiniQic,
      Travan,
      QIC,
      MP_8mm,
      AME_8mm,
      AIT1_8mm,
      DLT,
      NCTP,
      IBM_3480,
      IBM_3490E,
      IBM_Magstar_3590,
      IBM_Magstar_MP,
      STK_DATA_D3,
      SONY_DTF,
      DV_6mm,
      DMI,
      SONY_D2,
      CLEANER_CARTRIDGE,
      CD_ROM,
      CD_R,
      CD_RW,
      DVD_ROM,
      DVD_R,
      DVD_RW,
      MO_3_RW,
      MO_5_WO,
      MO_5_RW,
      MO_5_LIMDOW,
      PC_5_WO,
      PC_5_RW,
      PD_5_RW,
      ABL_5_WO,
      PINNACLE_APEX_5_RW,
      SONY_12_WO,
      PHILIPS_12_WO,
      HITACHI_12_WO,
      CYGNET_12_WO,
      KODAK_14_WO,
      MO_NFR_525,
      NIKON_12_RW,
      IOMEGA_ZIP,
      IOMEGA_JAZ,
      SYQUEST_EZ135,
      SYQUEST_EZFLYER,
      SYQUEST_SYJET,
      AVATAR_F2,
      MP2_8mm,
      DST_S,
      DST_M,
      DST_L,
      VXATape_1,
      VXATape_2,
      STK_9840,
      LTO_Ultrium,
      LTO_Accelis,
      DVD_RAM,
      AIT_8mm,
      ADR_1,
      ADR_2,
      STK_9940,
      SAIT,
      VXATape
   );
   for STORAGE_MEDIA_TYPE use (
      DDS_4mm => 32,
      MiniQic => 33,
      Travan => 34,
      QIC => 35,
      MP_8mm => 36,
      AME_8mm => 37,
      AIT1_8mm => 38,
      DLT => 39,
      NCTP => 40,
      IBM_3480 => 41,
      IBM_3490E => 42,
      IBM_Magstar_3590 => 43,
      IBM_Magstar_MP => 44,
      STK_DATA_D3 => 45,
      SONY_DTF => 46,
      DV_6mm => 47,
      DMI => 48,
      SONY_D2 => 49,
      CLEANER_CARTRIDGE => 50,
      CD_ROM => 51,
      CD_R => 52,
      CD_RW => 53,
      DVD_ROM => 54,
      DVD_R => 55,
      DVD_RW => 56,
      MO_3_RW => 57,
      MO_5_WO => 58,
      MO_5_RW => 59,
      MO_5_LIMDOW => 60,
      PC_5_WO => 61,
      PC_5_RW => 62,
      PD_5_RW => 63,
      ABL_5_WO => 64,
      PINNACLE_APEX_5_RW => 65,
      SONY_12_WO => 66,
      PHILIPS_12_WO => 67,
      HITACHI_12_WO => 68,
      CYGNET_12_WO => 69,
      KODAK_14_WO => 70,
      MO_NFR_525 => 71,
      NIKON_12_RW => 72,
      IOMEGA_ZIP => 73,
      IOMEGA_JAZ => 74,
      SYQUEST_EZ135 => 75,
      SYQUEST_EZFLYER => 76,
      SYQUEST_SYJET => 77,
      AVATAR_F2 => 78,
      MP2_8mm => 79,
      DST_S => 80,
      DST_M => 81,
      DST_L => 82,
      VXATape_1 => 83,
      VXATape_2 => 84,
      STK_9840 => 85,
      LTO_Ultrium => 86,
      LTO_Accelis => 87,
      DVD_RAM => 88,
      AIT_8mm => 89,
      ADR_1 => 90,
      ADR_2 => 91,
      STK_9940 => 92,
      SAIT => 93,
      VXATape => 94
   );
   for STORAGE_MEDIA_TYPE'Size use 32;
   
   type STORAGE_BUS_TYPE is (
      BusTypeUnknown,
      BusTypeScsi,
      BusTypeAtapi,
      BusTypeAta,
      BusType1394,
      BusTypeSsa,
      BusTypeFibre,
      BusTypeUsb,
      BusTypeRAID,
      BusTypeiScsi,
      BusTypeSas,
      BusTypeSata,
      BusTypeSd,
      BusTypeMmc,
      BusTypeVirtual,
      BusTypeFileBackedVirtual,
      BusTypeSpaces,
      BusTypeNvme,
      BusTypeSCM,
      BusTypeUfs,
      BusTypeMax,
      BusTypeMaxReserved
   );
   for STORAGE_BUS_TYPE use (
      BusTypeUnknown => 0,
      BusTypeScsi => 1,
      BusTypeAtapi => 2,
      BusTypeAta => 3,
      BusType1394 => 4,
      BusTypeSsa => 5,
      BusTypeFibre => 6,
      BusTypeUsb => 7,
      BusTypeRAID => 8,
      BusTypeiScsi => 9,
      BusTypeSas => 10,
      BusTypeSata => 11,
      BusTypeSd => 12,
      BusTypeMmc => 13,
      BusTypeVirtual => 14,
      BusTypeFileBackedVirtual => 15,
      BusTypeSpaces => 16,
      BusTypeNvme => 17,
      BusTypeSCM => 18,
      BusTypeUfs => 19,
      BusTypeMax => 20,
      BusTypeMaxReserved => 127
   );
   for STORAGE_BUS_TYPE'Size use 32;
   
   -- type PSTORAGE_BUS_TYPE is access all STORAGE_BUS_TYPE;
   -- type PDEVICE_MEDIA_INFO is access all DEVICE_MEDIA_INFO;
   -- type PGET_MEDIA_TYPES is access all GET_MEDIA_TYPES;
   -- type PSTORAGE_PREDICT_FAILURE is access all STORAGE_PREDICT_FAILURE;
   -- type PSTORAGE_FAILURE_PREDICTION_CONFIG is access all STORAGE_FAILURE_PREDICTION_CONFIG;
   -- type PSTORAGE_QUERY_TYPE is access all STORAGE_QUERY_TYPE;
   type STORAGE_QUERY_TYPE is (
      PropertyStandardQuery,
      PropertyExistsQuery,
      PropertyMaskQuery,
      PropertyQueryMaxDefined
   );
   for STORAGE_QUERY_TYPE use (
      PropertyStandardQuery => 0,
      PropertyExistsQuery => 1,
      PropertyMaskQuery => 2,
      PropertyQueryMaxDefined => 3
   );
   for STORAGE_QUERY_TYPE'Size use 32;
   
   -- type PSTORAGE_PROPERTY_ID is access all STORAGE_PROPERTY_ID;
   type STORAGE_PROPERTY_ID is (
      StorageDeviceProperty,
      StorageAdapterProperty,
      StorageDeviceIdProperty,
      StorageDeviceUniqueIdProperty,
      StorageDeviceWriteCacheProperty,
      StorageMiniportProperty,
      StorageAccessAlignmentProperty,
      StorageDeviceSeekPenaltyProperty,
      StorageDeviceTrimProperty,
      StorageDeviceWriteAggregationProperty,
      StorageDeviceDeviceTelemetryProperty,
      StorageDeviceLBProvisioningProperty,
      StorageDevicePowerProperty,
      StorageDeviceCopyOffloadProperty,
      StorageDeviceResiliencyProperty,
      StorageDeviceMediumProductType,
      StorageAdapterRpmbProperty,
      StorageAdapterCryptoProperty,
      StorageDeviceIoCapabilityProperty,
      StorageAdapterProtocolSpecificProperty,
      StorageDeviceProtocolSpecificProperty,
      StorageAdapterTemperatureProperty,
      StorageDeviceTemperatureProperty,
      StorageAdapterPhysicalTopologyProperty,
      StorageDevicePhysicalTopologyProperty,
      StorageDeviceAttributesProperty,
      StorageDeviceManagementStatus,
      StorageAdapterSerialNumberProperty,
      StorageDeviceLocationProperty,
      StorageDeviceNumaProperty,
      StorageDeviceZonedDeviceProperty,
      StorageDeviceUnsafeShutdownCount
   );
   for STORAGE_PROPERTY_ID use (
      StorageDeviceProperty => 0,
      StorageAdapterProperty => 1,
      StorageDeviceIdProperty => 2,
      StorageDeviceUniqueIdProperty => 3,
      StorageDeviceWriteCacheProperty => 4,
      StorageMiniportProperty => 5,
      StorageAccessAlignmentProperty => 6,
      StorageDeviceSeekPenaltyProperty => 7,
      StorageDeviceTrimProperty => 8,
      StorageDeviceWriteAggregationProperty => 9,
      StorageDeviceDeviceTelemetryProperty => 10,
      StorageDeviceLBProvisioningProperty => 11,
      StorageDevicePowerProperty => 12,
      StorageDeviceCopyOffloadProperty => 13,
      StorageDeviceResiliencyProperty => 14,
      StorageDeviceMediumProductType => 15,
      StorageAdapterRpmbProperty => 16,
      StorageAdapterCryptoProperty => 17,
      StorageDeviceIoCapabilityProperty => 48,
      StorageAdapterProtocolSpecificProperty => 49,
      StorageDeviceProtocolSpecificProperty => 50,
      StorageAdapterTemperatureProperty => 51,
      StorageDeviceTemperatureProperty => 52,
      StorageAdapterPhysicalTopologyProperty => 53,
      StorageDevicePhysicalTopologyProperty => 54,
      StorageDeviceAttributesProperty => 55,
      StorageDeviceManagementStatus => 56,
      StorageAdapterSerialNumberProperty => 57,
      StorageDeviceLocationProperty => 58,
      StorageDeviceNumaProperty => 59,
      StorageDeviceZonedDeviceProperty => 60,
      StorageDeviceUnsafeShutdownCount => 61
   );
   for STORAGE_PROPERTY_ID'Size use 32;
   
   -- type PSTORAGE_PROPERTY_QUERY is access all STORAGE_PROPERTY_QUERY;
   -- type PSTORAGE_DESCRIPTOR_HEADER is access all STORAGE_DESCRIPTOR_HEADER;
   -- type PSTORAGE_DEVICE_DESCRIPTOR is access all STORAGE_DEVICE_DESCRIPTOR;
   -- type PSTORAGE_ADAPTER_DESCRIPTOR is access all STORAGE_ADAPTER_DESCRIPTOR;
   -- type PSTORAGE_ACCESS_ALIGNMENT_DESCRIPTOR is access all STORAGE_ACCESS_ALIGNMENT_DESCRIPTOR;
   -- type PSTORAGE_MEDIUM_PRODUCT_TYPE_DESCRIPTOR is access all STORAGE_MEDIUM_PRODUCT_TYPE_DESCRIPTOR;
   -- type PSTORAGE_PORT_CODE_SET is access all STORAGE_PORT_CODE_SET;
   type STORAGE_PORT_CODE_SET is (
      StoragePortCodeSetReserved,
      StoragePortCodeSetStorport,
      StoragePortCodeSetSCSIport,
      StoragePortCodeSetSpaceport,
      StoragePortCodeSetATAport,
      StoragePortCodeSetUSBport,
      StoragePortCodeSetSBP2port,
      StoragePortCodeSetSDport
   );
   for STORAGE_PORT_CODE_SET use (
      StoragePortCodeSetReserved => 0,
      StoragePortCodeSetStorport => 1,
      StoragePortCodeSetSCSIport => 2,
      StoragePortCodeSetSpaceport => 3,
      StoragePortCodeSetATAport => 4,
      StoragePortCodeSetUSBport => 5,
      StoragePortCodeSetSBP2port => 6,
      StoragePortCodeSetSDport => 7
   );
   for STORAGE_PORT_CODE_SET'Size use 32;
   
   -- type PSTORAGE_MINIPORT_DESCRIPTOR is access all STORAGE_MINIPORT_DESCRIPTOR;
   type STORAGE_IDENTIFIER_CODE_SET is (
      StorageIdCodeSetReserved,
      StorageIdCodeSetBinary,
      StorageIdCodeSetAscii,
      StorageIdCodeSetUtf8
   );
   for STORAGE_IDENTIFIER_CODE_SET use (
      StorageIdCodeSetReserved => 0,
      StorageIdCodeSetBinary => 1,
      StorageIdCodeSetAscii => 2,
      StorageIdCodeSetUtf8 => 3
   );
   for STORAGE_IDENTIFIER_CODE_SET'Size use 32;
   
   -- type PSTORAGE_IDENTIFIER_CODE_SET is access all STORAGE_IDENTIFIER_CODE_SET;
   type STORAGE_IDENTIFIER_TYPE is (
      StorageIdTypeVendorSpecific,
      StorageIdTypeVendorId,
      StorageIdTypeEUI64,
      StorageIdTypeFCPHName,
      StorageIdTypePortRelative,
      StorageIdTypeTargetPortGroup,
      StorageIdTypeLogicalUnitGroup,
      StorageIdTypeMD5LogicalUnitIdentifier,
      StorageIdTypeScsiNameString
   );
   for STORAGE_IDENTIFIER_TYPE use (
      StorageIdTypeVendorSpecific => 0,
      StorageIdTypeVendorId => 1,
      StorageIdTypeEUI64 => 2,
      StorageIdTypeFCPHName => 3,
      StorageIdTypePortRelative => 4,
      StorageIdTypeTargetPortGroup => 5,
      StorageIdTypeLogicalUnitGroup => 6,
      StorageIdTypeMD5LogicalUnitIdentifier => 7,
      StorageIdTypeScsiNameString => 8
   );
   for STORAGE_IDENTIFIER_TYPE'Size use 32;
   
   -- type PSTORAGE_IDENTIFIER_TYPE is access all STORAGE_IDENTIFIER_TYPE;
   -- type PSTORAGE_ID_NAA_FORMAT is access all STORAGE_ID_NAA_FORMAT;
   type STORAGE_ID_NAA_FORMAT is (
      StorageIdNAAFormatIEEEExtended,
      StorageIdNAAFormatIEEERegistered,
      StorageIdNAAFormatIEEEERegisteredExtended
   );
   for STORAGE_ID_NAA_FORMAT use (
      StorageIdNAAFormatIEEEExtended => 2,
      StorageIdNAAFormatIEEERegistered => 3,
      StorageIdNAAFormatIEEEERegisteredExtended => 5
   );
   for STORAGE_ID_NAA_FORMAT'Size use 32;
   
   -- type PSTORAGE_ASSOCIATION_TYPE is access all STORAGE_ASSOCIATION_TYPE;
   type STORAGE_ASSOCIATION_TYPE is (
      StorageIdAssocDevice,
      StorageIdAssocPort,
      StorageIdAssocTarget
   );
   for STORAGE_ASSOCIATION_TYPE use (
      StorageIdAssocDevice => 0,
      StorageIdAssocPort => 1,
      StorageIdAssocTarget => 2
   );
   for STORAGE_ASSOCIATION_TYPE'Size use 32;
   
   -- type PSTORAGE_IDENTIFIER is access all STORAGE_IDENTIFIER;
   -- type PSTORAGE_DEVICE_ID_DESCRIPTOR is access all STORAGE_DEVICE_ID_DESCRIPTOR;
   -- type PDEVICE_SEEK_PENALTY_DESCRIPTOR is access all DEVICE_SEEK_PENALTY_DESCRIPTOR;
   -- type PDEVICE_WRITE_AGGREGATION_DESCRIPTOR is access all DEVICE_WRITE_AGGREGATION_DESCRIPTOR;
   -- type PDEVICE_TRIM_DESCRIPTOR is access all DEVICE_TRIM_DESCRIPTOR;
   -- type PDEVICE_LB_PROVISIONING_DESCRIPTOR is access all DEVICE_LB_PROVISIONING_DESCRIPTOR;
   -- type PSTORAGE_LB_PROVISIONING_MAP_RESOURCES is access all STORAGE_LB_PROVISIONING_MAP_RESOURCES;
   -- type PDEVICE_POWER_DESCRIPTOR is access all DEVICE_POWER_DESCRIPTOR;
   -- type PDEVICE_COPY_OFFLOAD_DESCRIPTOR is access all DEVICE_COPY_OFFLOAD_DESCRIPTOR;
   -- type PSTORAGE_DEVICE_RESILIENCY_DESCRIPTOR is access all STORAGE_DEVICE_RESILIENCY_DESCRIPTOR;
   -- type PSTORAGE_RPMB_FRAME_TYPE is access all STORAGE_RPMB_FRAME_TYPE;
   type STORAGE_RPMB_FRAME_TYPE is (
      StorageRpmbFrameTypeUnknown,
      StorageRpmbFrameTypeStandard,
      StorageRpmbFrameTypeMax
   );
   for STORAGE_RPMB_FRAME_TYPE use (
      StorageRpmbFrameTypeUnknown => 0,
      StorageRpmbFrameTypeStandard => 1,
      StorageRpmbFrameTypeMax => 2
   );
   for STORAGE_RPMB_FRAME_TYPE'Size use 32;
   
   -- type PSTORAGE_RPMB_DESCRIPTOR is access all STORAGE_RPMB_DESCRIPTOR;
   -- type PSTORAGE_CRYPTO_ALGORITHM_ID is access all STORAGE_CRYPTO_ALGORITHM_ID;
   type STORAGE_CRYPTO_ALGORITHM_ID is (
      StorageCryptoAlgorithmUnknown,
      StorageCryptoAlgorithmXTSAES,
      StorageCryptoAlgorithmBitlockerAESCBC,
      StorageCryptoAlgorithmAESECB,
      StorageCryptoAlgorithmESSIVAESCBC,
      StorageCryptoAlgorithmMax
   );
   for STORAGE_CRYPTO_ALGORITHM_ID use (
      StorageCryptoAlgorithmUnknown => 0,
      StorageCryptoAlgorithmXTSAES => 1,
      StorageCryptoAlgorithmBitlockerAESCBC => 2,
      StorageCryptoAlgorithmAESECB => 3,
      StorageCryptoAlgorithmESSIVAESCBC => 4,
      StorageCryptoAlgorithmMax => 5
   );
   for STORAGE_CRYPTO_ALGORITHM_ID'Size use 32;
   
   -- type PSTORAGE_CRYPTO_KEY_SIZE is access all STORAGE_CRYPTO_KEY_SIZE;
   type STORAGE_CRYPTO_KEY_SIZE is (
      StorageCryptoKeySizeUnknown,
      StorageCryptoKeySize128Bits,
      StorageCryptoKeySize192Bits,
      StorageCryptoKeySize256Bits,
      StorageCryptoKeySize512Bits
   );
   for STORAGE_CRYPTO_KEY_SIZE use (
      StorageCryptoKeySizeUnknown => 0,
      StorageCryptoKeySize128Bits => 1,
      StorageCryptoKeySize192Bits => 2,
      StorageCryptoKeySize256Bits => 3,
      StorageCryptoKeySize512Bits => 4
   );
   for STORAGE_CRYPTO_KEY_SIZE'Size use 32;
   
   -- type PSTORAGE_CRYPTO_CAPABILITY is access all STORAGE_CRYPTO_CAPABILITY;
   -- type PSTORAGE_CRYPTO_DESCRIPTOR is access all STORAGE_CRYPTO_DESCRIPTOR;
   -- type PSTORAGE_TIER_MEDIA_TYPE is access all STORAGE_TIER_MEDIA_TYPE;
   type STORAGE_TIER_MEDIA_TYPE is (
      StorageTierMediaTypeUnspecified,
      StorageTierMediaTypeDisk,
      StorageTierMediaTypeSsd,
      StorageTierMediaTypeScm,
      StorageTierMediaTypeMax
   );
   for STORAGE_TIER_MEDIA_TYPE use (
      StorageTierMediaTypeUnspecified => 0,
      StorageTierMediaTypeDisk => 1,
      StorageTierMediaTypeSsd => 2,
      StorageTierMediaTypeScm => 4,
      StorageTierMediaTypeMax => 5
   );
   for STORAGE_TIER_MEDIA_TYPE'Size use 32;
   
   -- type PSTORAGE_TIER_CLASS is access all STORAGE_TIER_CLASS;
   type STORAGE_TIER_CLASS is (
      StorageTierClassUnspecified,
      StorageTierClassCapacity,
      StorageTierClassPerformance,
      StorageTierClassMax
   );
   for STORAGE_TIER_CLASS use (
      StorageTierClassUnspecified => 0,
      StorageTierClassCapacity => 1,
      StorageTierClassPerformance => 2,
      StorageTierClassMax => 3
   );
   for STORAGE_TIER_CLASS'Size use 32;
   
   -- type PSTORAGE_TIER is access all STORAGE_TIER;
   -- type PSTORAGE_DEVICE_TIERING_DESCRIPTOR is access all STORAGE_DEVICE_TIERING_DESCRIPTOR;
   -- type PSTORAGE_DEVICE_FAULT_DOMAIN_DESCRIPTOR is access all STORAGE_DEVICE_FAULT_DOMAIN_DESCRIPTOR;
   -- type PSTORAGE_PROTOCOL_TYPE is access all STORAGE_PROTOCOL_TYPE;
   type STORAGE_PROTOCOL_TYPE is (
      ProtocolTypeUnknown,
      ProtocolTypeScsi,
      ProtocolTypeAta,
      ProtocolTypeNvme,
      ProtocolTypeSd,
      ProtocolTypeUfs,
      ProtocolTypeProprietary,
      ProtocolTypeMaxReserved
   );
   for STORAGE_PROTOCOL_TYPE use (
      ProtocolTypeUnknown => 0,
      ProtocolTypeScsi => 1,
      ProtocolTypeAta => 2,
      ProtocolTypeNvme => 3,
      ProtocolTypeSd => 4,
      ProtocolTypeUfs => 5,
      ProtocolTypeProprietary => 126,
      ProtocolTypeMaxReserved => 127
   );
   for STORAGE_PROTOCOL_TYPE'Size use 32;
   
   type STORAGE_PROTOCOL_NVME_DATA_TYPE is (
      NVMeDataTypeUnknown,
      NVMeDataTypeIdentify,
      NVMeDataTypeLogPage,
      NVMeDataTypeFeature
   );
   for STORAGE_PROTOCOL_NVME_DATA_TYPE use (
      NVMeDataTypeUnknown => 0,
      NVMeDataTypeIdentify => 1,
      NVMeDataTypeLogPage => 2,
      NVMeDataTypeFeature => 3
   );
   for STORAGE_PROTOCOL_NVME_DATA_TYPE'Size use 32;
   
   -- type PSTORAGE_PROTOCOL_NVME_DATA_TYPE is access all STORAGE_PROTOCOL_NVME_DATA_TYPE;
   type STORAGE_PROTOCOL_ATA_DATA_TYPE is (
      AtaDataTypeUnknown,
      AtaDataTypeIdentify,
      AtaDataTypeLogPage
   );
   for STORAGE_PROTOCOL_ATA_DATA_TYPE use (
      AtaDataTypeUnknown => 0,
      AtaDataTypeIdentify => 1,
      AtaDataTypeLogPage => 2
   );
   for STORAGE_PROTOCOL_ATA_DATA_TYPE'Size use 32;
   
   -- type PSTORAGE_PROTOCOL_ATA_DATA_TYPE is access all STORAGE_PROTOCOL_ATA_DATA_TYPE;
   type STORAGE_PROTOCOL_UFS_DATA_TYPE is (
      UfsDataTypeUnknown,
      UfsDataTypeQueryDescriptor,
      UfsDataTypeMax
   );
   for STORAGE_PROTOCOL_UFS_DATA_TYPE use (
      UfsDataTypeUnknown => 0,
      UfsDataTypeQueryDescriptor => 1,
      UfsDataTypeMax => 2
   );
   for STORAGE_PROTOCOL_UFS_DATA_TYPE'Size use 32;
   
   -- type PSTORAGE_PROTOCOL_UFS_DATA_TYPE is access all STORAGE_PROTOCOL_UFS_DATA_TYPE;
   -- type PSTORAGE_PROTOCOL_SPECIFIC_DATA is access all STORAGE_PROTOCOL_SPECIFIC_DATA;
   -- type PSTORAGE_PROTOCOL_DATA_DESCRIPTOR is access all STORAGE_PROTOCOL_DATA_DESCRIPTOR;
   -- type PSTORAGE_TEMPERATURE_INFO is access all STORAGE_TEMPERATURE_INFO;
   -- type PSTORAGE_TEMPERATURE_DATA_DESCRIPTOR is access all STORAGE_TEMPERATURE_DATA_DESCRIPTOR;
   -- type PSTORAGE_TEMPERATURE_THRESHOLD is access all STORAGE_TEMPERATURE_THRESHOLD;
   -- type PSTORAGE_DEVICE_FORM_FACTOR is access all STORAGE_DEVICE_FORM_FACTOR;
   type STORAGE_DEVICE_FORM_FACTOR is (
      FormFactorUnknown,
      FormFactor3_5,
      FormFactor2_5,
      FormFactor1_8,
      FormFactor1_8Less,
      FormFactorEmbedded,
      FormFactorMemoryCard,
      FormFactormSata,
      FormFactorM_2,
      FormFactorPCIeBoard,
      FormFactorDimm
   );
   for STORAGE_DEVICE_FORM_FACTOR use (
      FormFactorUnknown => 0,
      FormFactor3_5 => 1,
      FormFactor2_5 => 2,
      FormFactor1_8 => 3,
      FormFactor1_8Less => 4,
      FormFactorEmbedded => 5,
      FormFactorMemoryCard => 6,
      FormFactormSata => 7,
      FormFactorM_2 => 8,
      FormFactorPCIeBoard => 9,
      FormFactorDimm => 10
   );
   for STORAGE_DEVICE_FORM_FACTOR'Size use 32;
   
   -- type PSTORAGE_COMPONENT_HEALTH_STATUS is access all STORAGE_COMPONENT_HEALTH_STATUS;
   type STORAGE_COMPONENT_HEALTH_STATUS is (
      HealthStatusUnknown,
      HealthStatusNormal,
      HealthStatusThrottled,
      HealthStatusWarning,
      HealthStatusDisabled,
      HealthStatusFailed
   );
   for STORAGE_COMPONENT_HEALTH_STATUS use (
      HealthStatusUnknown => 0,
      HealthStatusNormal => 1,
      HealthStatusThrottled => 2,
      HealthStatusWarning => 3,
      HealthStatusDisabled => 4,
      HealthStatusFailed => 5
   );
   for STORAGE_COMPONENT_HEALTH_STATUS'Size use 32;
   
   -- type PSTORAGE_SPEC_VERSION is access all STORAGE_SPEC_VERSION;
   -- type PSTORAGE_PHYSICAL_DEVICE_DATA is access all STORAGE_PHYSICAL_DEVICE_DATA;
   -- type PSTORAGE_PHYSICAL_ADAPTER_DATA is access all STORAGE_PHYSICAL_ADAPTER_DATA;
   -- type PSTORAGE_PHYSICAL_NODE_DATA is access all STORAGE_PHYSICAL_NODE_DATA;
   -- type PSTORAGE_PHYSICAL_TOPOLOGY_DESCRIPTOR is access all STORAGE_PHYSICAL_TOPOLOGY_DESCRIPTOR;
   -- type PSTORAGE_DEVICE_IO_CAPABILITY_DESCRIPTOR is access all STORAGE_DEVICE_IO_CAPABILITY_DESCRIPTOR;
   -- type PSTORAGE_DEVICE_ATTRIBUTES_DESCRIPTOR is access all STORAGE_DEVICE_ATTRIBUTES_DESCRIPTOR;
   type STORAGE_DISK_HEALTH_STATUS is (
      DiskHealthUnknown,
      DiskHealthUnhealthy,
      DiskHealthWarning,
      DiskHealthHealthy,
      DiskHealthMax
   );
   for STORAGE_DISK_HEALTH_STATUS use (
      DiskHealthUnknown => 0,
      DiskHealthUnhealthy => 1,
      DiskHealthWarning => 2,
      DiskHealthHealthy => 3,
      DiskHealthMax => 4
   );
   for STORAGE_DISK_HEALTH_STATUS'Size use 32;
   
   -- type PSTORAGE_DISK_HEALTH_STATUS is access all STORAGE_DISK_HEALTH_STATUS;
   type STORAGE_DISK_OPERATIONAL_STATUS is (
      DiskOpStatusNone,
      DiskOpStatusUnknown,
      DiskOpStatusOk,
      DiskOpStatusPredictingFailure,
      DiskOpStatusInService,
      DiskOpStatusHardwareError,
      DiskOpStatusNotUsable,
      DiskOpStatusTransientError,
      DiskOpStatusMissing
   );
   for STORAGE_DISK_OPERATIONAL_STATUS use (
      DiskOpStatusNone => 0,
      DiskOpStatusUnknown => 1,
      DiskOpStatusOk => 2,
      DiskOpStatusPredictingFailure => 3,
      DiskOpStatusInService => 4,
      DiskOpStatusHardwareError => 5,
      DiskOpStatusNotUsable => 6,
      DiskOpStatusTransientError => 7,
      DiskOpStatusMissing => 8
   );
   for STORAGE_DISK_OPERATIONAL_STATUS'Size use 32;
   
   -- type PSTORAGE_DISK_OPERATIONAL_STATUS is access all STORAGE_DISK_OPERATIONAL_STATUS;
   type STORAGE_OPERATIONAL_STATUS_REASON is (
      DiskOpReasonUnknown,
      DiskOpReasonScsiSenseCode,
      DiskOpReasonMedia,
      DiskOpReasonIo,
      DiskOpReasonThresholdExceeded,
      DiskOpReasonLostData,
      DiskOpReasonEnergySource,
      DiskOpReasonConfiguration,
      DiskOpReasonDeviceController,
      DiskOpReasonMediaController,
      DiskOpReasonComponent,
      DiskOpReasonNVDIMM_N,
      DiskOpReasonBackgroundOperation,
      DiskOpReasonInvalidFirmware,
      DiskOpReasonHealthCheck,
      DiskOpReasonLostDataPersistence,
      DiskOpReasonDisabledByPlatform,
      DiskOpReasonLostWritePersistence,
      DiskOpReasonDataPersistenceLossImminent,
      DiskOpReasonWritePersistenceLossImminent,
      DiskOpReasonMax
   );
   for STORAGE_OPERATIONAL_STATUS_REASON use (
      DiskOpReasonUnknown => 0,
      DiskOpReasonScsiSenseCode => 1,
      DiskOpReasonMedia => 2,
      DiskOpReasonIo => 3,
      DiskOpReasonThresholdExceeded => 4,
      DiskOpReasonLostData => 5,
      DiskOpReasonEnergySource => 6,
      DiskOpReasonConfiguration => 7,
      DiskOpReasonDeviceController => 8,
      DiskOpReasonMediaController => 9,
      DiskOpReasonComponent => 10,
      DiskOpReasonNVDIMM_N => 11,
      DiskOpReasonBackgroundOperation => 12,
      DiskOpReasonInvalidFirmware => 13,
      DiskOpReasonHealthCheck => 14,
      DiskOpReasonLostDataPersistence => 15,
      DiskOpReasonDisabledByPlatform => 16,
      DiskOpReasonLostWritePersistence => 17,
      DiskOpReasonDataPersistenceLossImminent => 18,
      DiskOpReasonWritePersistenceLossImminent => 19,
      DiskOpReasonMax => 20
   );
   for STORAGE_OPERATIONAL_STATUS_REASON'Size use 32;
   
   -- type PSTORAGE_OPERATIONAL_STATUS_REASON is access all STORAGE_OPERATIONAL_STATUS_REASON;
   -- type PSTORAGE_OPERATIONAL_REASON is access all STORAGE_OPERATIONAL_REASON;
   -- type PSTORAGE_DEVICE_MANAGEMENT_STATUS is access all STORAGE_DEVICE_MANAGEMENT_STATUS;
   -- type PSTORAGE_ADAPTER_SERIAL_NUMBER is access all STORAGE_ADAPTER_SERIAL_NUMBER;
   -- type PSTORAGE_ZONED_DEVICE_TYPES is access all STORAGE_ZONED_DEVICE_TYPES;
   type STORAGE_ZONED_DEVICE_TYPES is (
      ZonedDeviceTypeUnknown,
      ZonedDeviceTypeHostManaged,
      ZonedDeviceTypeHostAware,
      ZonedDeviceTypeDeviceManaged
   );
   for STORAGE_ZONED_DEVICE_TYPES use (
      ZonedDeviceTypeUnknown => 0,
      ZonedDeviceTypeHostManaged => 1,
      ZonedDeviceTypeHostAware => 2,
      ZonedDeviceTypeDeviceManaged => 3
   );
   for STORAGE_ZONED_DEVICE_TYPES'Size use 32;
   
   type STORAGE_ZONE_TYPES is (
      ZoneTypeUnknown,
      ZoneTypeConventional,
      ZoneTypeSequentialWriteRequired,
      ZoneTypeSequentialWritePreferred,
      ZoneTypeMax
   );
   for STORAGE_ZONE_TYPES use (
      ZoneTypeUnknown => 0,
      ZoneTypeConventional => 1,
      ZoneTypeSequentialWriteRequired => 2,
      ZoneTypeSequentialWritePreferred => 3,
      ZoneTypeMax => 4
   );
   for STORAGE_ZONE_TYPES'Size use 32;
   
   -- type PSTORAGE_ZONE_TYPES is access all STORAGE_ZONE_TYPES;
   -- type PSTORAGE_ZONE_GROUP is access all STORAGE_ZONE_GROUP;
   -- type PSTORAGE_ZONED_DEVICE_DESCRIPTOR is access all STORAGE_ZONED_DEVICE_DESCRIPTOR;
   -- type PDEVICE_LOCATION is access all DEVICE_LOCATION;
   -- type PSTORAGE_DEVICE_LOCATION_DESCRIPTOR is access all STORAGE_DEVICE_LOCATION_DESCRIPTOR;
   -- type PSTORAGE_DEVICE_NUMA_PROPERTY is access all STORAGE_DEVICE_NUMA_PROPERTY;
   -- type PSTORAGE_DEVICE_UNSAFE_SHUTDOWN_COUNT is access all STORAGE_DEVICE_UNSAFE_SHUTDOWN_COUNT;
   -- type PDEVICE_DATA_SET_RANGE is access all DEVICE_DATA_SET_RANGE;
   -- type PDEVICE_MANAGE_DATA_SET_ATTRIBUTES is access all DEVICE_MANAGE_DATA_SET_ATTRIBUTES;
   -- type PDEVICE_DSM_NOTIFICATION_PARAMETERS is access all DEVICE_DSM_NOTIFICATION_PARAMETERS;
   -- type PDEVICE_DSM_NVCACHE_CHANGE_PRIORITY_PARAMETERS is access all DEVICE_DSM_NVCACHE_CHANGE_PRIORITY_PARAMETERS;
   -- type PSTORAGE_OFFLOAD_TOKEN is access all STORAGE_OFFLOAD_TOKEN;
   -- type PDEVICE_DSM_OFFLOAD_READ_PARAMETERS is access all DEVICE_DSM_OFFLOAD_READ_PARAMETERS;
   -- type PDEVICE_DSM_OFFLOAD_WRITE_PARAMETERS is access all DEVICE_DSM_OFFLOAD_WRITE_PARAMETERS;
   -- type PDEVICE_DATA_SET_REPAIR_PARAMETERS is access all DEVICE_DATA_SET_REPAIR_PARAMETERS;
   -- type PDEVICE_DATA_SET_LBP_STATE_PARAMETERS is access all DEVICE_DATA_SET_LBP_STATE_PARAMETERS;
   -- type PDEVICE_MANAGE_DATA_SET_ATTRIBUTES_OUTPUT is access all DEVICE_MANAGE_DATA_SET_ATTRIBUTES_OUTPUT;
   -- type PDEVICE_DATA_SET_LB_PROVISIONING_STATE is access all DEVICE_DATA_SET_LB_PROVISIONING_STATE;
   -- type PDEVICE_DATA_SET_LB_PROVISIONING_STATE_V2 is access all DEVICE_DATA_SET_LB_PROVISIONING_STATE_V2;
   -- type PSTORAGE_OFFLOAD_READ_OUTPUT is access all STORAGE_OFFLOAD_READ_OUTPUT;
   -- type PSTORAGE_OFFLOAD_WRITE_OUTPUT is access all STORAGE_OFFLOAD_WRITE_OUTPUT;
   -- type PDEVICE_DATA_SET_SCRUB_OUTPUT is access all DEVICE_DATA_SET_SCRUB_OUTPUT;
   -- type PDEVICE_DATA_SET_SCRUB_EX_OUTPUT is access all DEVICE_DATA_SET_SCRUB_EX_OUTPUT;
   -- type PDEVICE_DATA_SET_REPAIR_OUTPUT is access all DEVICE_DATA_SET_REPAIR_OUTPUT;
   -- type PDEVICE_DSM_TIERING_QUERY_INPUT is access all DEVICE_DSM_TIERING_QUERY_INPUT;
   -- type PSTORAGE_TIER_REGION is access all STORAGE_TIER_REGION;
   -- type PDEVICE_DSM_TIERING_QUERY_OUTPUT is access all DEVICE_DSM_TIERING_QUERY_OUTPUT;
   -- type PDEVICE_DATA_SET_TOPOLOGY_ID_QUERY_OUTPUT is access all DEVICE_DATA_SET_TOPOLOGY_ID_QUERY_OUTPUT;
   -- type PDEVICE_STORAGE_ADDRESS_RANGE is access all DEVICE_STORAGE_ADDRESS_RANGE;
   -- type PDEVICE_DSM_PHYSICAL_ADDRESSES_OUTPUT is access all DEVICE_DSM_PHYSICAL_ADDRESSES_OUTPUT;
   type STORAGE_ZONE_CONDITION is (
      ZoneConditionConventional,
      ZoneConditionEmpty,
      ZoneConditionImplicitlyOpened,
      ZoneConditionExplicitlyOpened,
      ZoneConditionClosed,
      ZoneConditionReadOnly,
      ZoneConditionFull,
      ZoneConditionOffline
   );
   for STORAGE_ZONE_CONDITION use (
      ZoneConditionConventional => 0,
      ZoneConditionEmpty => 1,
      ZoneConditionImplicitlyOpened => 2,
      ZoneConditionExplicitlyOpened => 3,
      ZoneConditionClosed => 4,
      ZoneConditionReadOnly => 13,
      ZoneConditionFull => 14,
      ZoneConditionOffline => 15
   );
   for STORAGE_ZONE_CONDITION'Size use 32;
   
   -- type PSTORAGE_ZONE_CONDITION is access all STORAGE_ZONE_CONDITION;
   -- type PDEVICE_DSM_REPORT_ZONES_PARAMETERS is access all DEVICE_DSM_REPORT_ZONES_PARAMETERS;
   -- type PSTORAGE_ZONES_ATTRIBUTES is access all STORAGE_ZONES_ATTRIBUTES;
   type STORAGE_ZONES_ATTRIBUTES is (
      ZonesAttributeTypeAndLengthMayDifferent,
      ZonesAttributeTypeSameLengthSame,
      ZonesAttributeTypeSameLastZoneLengthDifferent,
      ZonesAttributeTypeMayDifferentLengthSame
   );
   for STORAGE_ZONES_ATTRIBUTES use (
      ZonesAttributeTypeAndLengthMayDifferent => 0,
      ZonesAttributeTypeSameLengthSame => 1,
      ZonesAttributeTypeSameLastZoneLengthDifferent => 2,
      ZonesAttributeTypeMayDifferentLengthSame => 3
   );
   for STORAGE_ZONES_ATTRIBUTES'Size use 32;
   
   -- type PSTORAGE_ZONE_DESCRIPTOR is access all STORAGE_ZONE_DESCRIPTOR;
   -- type PDEVICE_DSM_REPORT_ZONES_DATA is access all DEVICE_DSM_REPORT_ZONES_DATA;
   -- type PDEVICE_STORAGE_RANGE_ATTRIBUTES is access all DEVICE_STORAGE_RANGE_ATTRIBUTES;
   -- type PDEVICE_DSM_RANGE_ERROR_INFO is access all DEVICE_DSM_RANGE_ERROR_INFO;
   -- type PSTORAGE_GET_BC_PROPERTIES_OUTPUT is access all STORAGE_GET_BC_PROPERTIES_OUTPUT;
   -- type PSTORAGE_ALLOCATE_BC_STREAM_INPUT is access all STORAGE_ALLOCATE_BC_STREAM_INPUT;
   -- type PSTORAGE_ALLOCATE_BC_STREAM_OUTPUT is access all STORAGE_ALLOCATE_BC_STREAM_OUTPUT;
   -- type PSTORAGE_PRIORITY_HINT_SUPPORT is access all STORAGE_PRIORITY_HINT_SUPPORT;
   type STORAGE_DIAGNOSTIC_LEVEL is (
      StorageDiagnosticLevelDefault,
      StorageDiagnosticLevelMax
   );
   for STORAGE_DIAGNOSTIC_LEVEL use (
      StorageDiagnosticLevelDefault => 0,
      StorageDiagnosticLevelMax => 1
   );
   for STORAGE_DIAGNOSTIC_LEVEL'Size use 32;
   
   -- type PSTORAGE_DIAGNOSTIC_LEVEL is access all STORAGE_DIAGNOSTIC_LEVEL;
   -- type PSTORAGE_DIAGNOSTIC_TARGET_TYPE is access all STORAGE_DIAGNOSTIC_TARGET_TYPE;
   type STORAGE_DIAGNOSTIC_TARGET_TYPE is (
      StorageDiagnosticTargetTypeUndefined,
      StorageDiagnosticTargetTypePort,
      StorageDiagnosticTargetTypeMiniport,
      StorageDiagnosticTargetTypeHbaFirmware,
      StorageDiagnosticTargetTypeMax
   );
   for STORAGE_DIAGNOSTIC_TARGET_TYPE use (
      StorageDiagnosticTargetTypeUndefined => 0,
      StorageDiagnosticTargetTypePort => 1,
      StorageDiagnosticTargetTypeMiniport => 2,
      StorageDiagnosticTargetTypeHbaFirmware => 3,
      StorageDiagnosticTargetTypeMax => 4
   );
   for STORAGE_DIAGNOSTIC_TARGET_TYPE'Size use 32;
   
   -- type PSTORAGE_DIAGNOSTIC_REQUEST is access all STORAGE_DIAGNOSTIC_REQUEST;
   -- type PSTORAGE_DIAGNOSTIC_DATA is access all STORAGE_DIAGNOSTIC_DATA;
   -- type PPHYSICAL_ELEMENT_STATUS_REQUEST is access all PHYSICAL_ELEMENT_STATUS_REQUEST;
   -- type PPHYSICAL_ELEMENT_STATUS_DESCRIPTOR is access all PHYSICAL_ELEMENT_STATUS_DESCRIPTOR;
   -- type PPHYSICAL_ELEMENT_STATUS is access all PHYSICAL_ELEMENT_STATUS;
   -- type PREMOVE_ELEMENT_AND_TRUNCATE_REQUEST is access all REMOVE_ELEMENT_AND_TRUNCATE_REQUEST;
   -- type PSTORAGE_MEDIA_SERIAL_NUMBER_DATA is access all STORAGE_MEDIA_SERIAL_NUMBER_DATA;
   -- type PSTORAGE_READ_CAPACITY is access all STORAGE_READ_CAPACITY;
   type WRITE_CACHE_TYPE is (
      WriteCacheTypeUnknown,
      WriteCacheTypeNone,
      WriteCacheTypeWriteBack,
      WriteCacheTypeWriteThrough
   );
   for WRITE_CACHE_TYPE use (
      WriteCacheTypeUnknown => 0,
      WriteCacheTypeNone => 1,
      WriteCacheTypeWriteBack => 2,
      WriteCacheTypeWriteThrough => 3
   );
   for WRITE_CACHE_TYPE'Size use 32;
   
   type WRITE_CACHE_ENABLE is (
      WriteCacheEnableUnknown,
      WriteCacheDisabled,
      WriteCacheEnabled
   );
   for WRITE_CACHE_ENABLE use (
      WriteCacheEnableUnknown => 0,
      WriteCacheDisabled => 1,
      WriteCacheEnabled => 2
   );
   for WRITE_CACHE_ENABLE'Size use 32;
   
   type WRITE_CACHE_CHANGE is (
      WriteCacheChangeUnknown,
      WriteCacheNotChangeable,
      WriteCacheChangeable
   );
   for WRITE_CACHE_CHANGE use (
      WriteCacheChangeUnknown => 0,
      WriteCacheNotChangeable => 1,
      WriteCacheChangeable => 2
   );
   for WRITE_CACHE_CHANGE'Size use 32;
   
   type WRITE_THROUGH is (
      WriteThroughUnknown,
      WriteThroughNotSupported,
      WriteThroughSupported
   );
   for WRITE_THROUGH use (
      WriteThroughUnknown => 0,
      WriteThroughNotSupported => 1,
      WriteThroughSupported => 2
   );
   for WRITE_THROUGH'Size use 32;
   
   -- type PSTORAGE_WRITE_CACHE_PROPERTY is access all STORAGE_WRITE_CACHE_PROPERTY;
   -- type PPERSISTENT_RESERVE_COMMAND is access all PERSISTENT_RESERVE_COMMAND;
   -- type PDEVICEDUMP_COLLECTION_TYPE is access all DEVICEDUMP_COLLECTION_TYPE;
   type DEVICEDUMP_COLLECTION_TYPE is (
      TCCollectionBugCheck,
      TCCollectionApplicationRequested,
      TCCollectionDeviceRequested
   );
   for DEVICEDUMP_COLLECTION_TYPE use (
      TCCollectionBugCheck => 1,
      TCCollectionApplicationRequested => 2,
      TCCollectionDeviceRequested => 3
   );
   for DEVICEDUMP_COLLECTION_TYPE'Size use 32;
   
   -- type PDEVICEDUMP_SUBSECTION_POINTER is access all DEVICEDUMP_SUBSECTION_POINTER;
   -- type PDEVICEDUMP_STRUCTURE_VERSION is access all DEVICEDUMP_STRUCTURE_VERSION;
   -- type PDEVICEDUMP_SECTION_HEADER is access all DEVICEDUMP_SECTION_HEADER;
   -- type PGP_LOG_PAGE_DESCRIPTOR is access all GP_LOG_PAGE_DESCRIPTOR;
   -- type PDEVICEDUMP_PUBLIC_SUBSECTION is access all DEVICEDUMP_PUBLIC_SUBSECTION;
   -- type PDEVICEDUMP_RESTRICTED_SUBSECTION is access all DEVICEDUMP_RESTRICTED_SUBSECTION;
   -- type PDEVICEDUMP_PRIVATE_SUBSECTION is access all DEVICEDUMP_PRIVATE_SUBSECTION;
   -- type PDEVICEDUMP_STORAGEDEVICE_DATA is access all DEVICEDUMP_STORAGEDEVICE_DATA;
   -- type PDEVICEDUMP_STORAGESTACK_PUBLIC_STATE_RECORD is access all DEVICEDUMP_STORAGESTACK_PUBLIC_STATE_RECORD;
   -- type PDEVICEDUMP_STORAGESTACK_PUBLIC_DUMP is access all DEVICEDUMP_STORAGESTACK_PUBLIC_DUMP;
   -- type PSTORAGE_IDLE_POWER is access all STORAGE_IDLE_POWER;
   -- type PSTORAGE_POWERUP_REASON_TYPE is access all STORAGE_POWERUP_REASON_TYPE;
   type STORAGE_POWERUP_REASON_TYPE is (
      StoragePowerupUnknown,
      StoragePowerupIO,
      StoragePowerupDeviceAttention
   );
   for STORAGE_POWERUP_REASON_TYPE use (
      StoragePowerupUnknown => 0,
      StoragePowerupIO => 1,
      StoragePowerupDeviceAttention => 2
   );
   for STORAGE_POWERUP_REASON_TYPE'Size use 32;
   
   -- type PSTORAGE_IDLE_POWERUP_REASON is access all STORAGE_IDLE_POWERUP_REASON;
   type STORAGE_DEVICE_POWER_CAP_UNITS is (
      StorageDevicePowerCapUnitsPercent,
      StorageDevicePowerCapUnitsMilliwatts
   );
   for STORAGE_DEVICE_POWER_CAP_UNITS use (
      StorageDevicePowerCapUnitsPercent => 0,
      StorageDevicePowerCapUnitsMilliwatts => 1
   );
   for STORAGE_DEVICE_POWER_CAP_UNITS'Size use 32;
   
   -- type PSTORAGE_DEVICE_POWER_CAP_UNITS is access all STORAGE_DEVICE_POWER_CAP_UNITS;
   -- type PSTORAGE_DEVICE_POWER_CAP is access all STORAGE_DEVICE_POWER_CAP;
   -- type PSTORAGE_RPMB_DATA_FRAME is access all STORAGE_RPMB_DATA_FRAME;
   type STORAGE_RPMB_COMMAND_TYPE is (
      StorRpmbProgramAuthKey,
      StorRpmbQueryWriteCounter,
      StorRpmbAuthenticatedWrite,
      StorRpmbAuthenticatedRead,
      StorRpmbReadResultRequest,
      StorRpmbAuthenticatedDeviceConfigWrite,
      StorRpmbAuthenticatedDeviceConfigRead
   );
   for STORAGE_RPMB_COMMAND_TYPE use (
      StorRpmbProgramAuthKey => 1,
      StorRpmbQueryWriteCounter => 2,
      StorRpmbAuthenticatedWrite => 3,
      StorRpmbAuthenticatedRead => 4,
      StorRpmbReadResultRequest => 5,
      StorRpmbAuthenticatedDeviceConfigWrite => 6,
      StorRpmbAuthenticatedDeviceConfigRead => 7
   );
   for STORAGE_RPMB_COMMAND_TYPE'Size use 32;
   
   -- type PSTORAGE_RPMB_COMMAND_TYPE is access all STORAGE_RPMB_COMMAND_TYPE;
   -- type PSTORAGE_EVENT_NOTIFICATION is access all STORAGE_EVENT_NOTIFICATION;
   type STORAGE_COUNTER_TYPE is (
      StorageCounterTypeUnknown,
      StorageCounterTypeTemperatureCelsius,
      StorageCounterTypeTemperatureCelsiusMax,
      StorageCounterTypeReadErrorsTotal,
      StorageCounterTypeReadErrorsCorrected,
      StorageCounterTypeReadErrorsUncorrected,
      StorageCounterTypeWriteErrorsTotal,
      StorageCounterTypeWriteErrorsCorrected,
      StorageCounterTypeWriteErrorsUncorrected,
      StorageCounterTypeManufactureDate,
      StorageCounterTypeStartStopCycleCount,
      StorageCounterTypeStartStopCycleCountMax,
      StorageCounterTypeLoadUnloadCycleCount,
      StorageCounterTypeLoadUnloadCycleCountMax,
      StorageCounterTypeWearPercentage,
      StorageCounterTypeWearPercentageWarning,
      StorageCounterTypeWearPercentageMax,
      StorageCounterTypePowerOnHours,
      StorageCounterTypeReadLatency100NSMax,
      StorageCounterTypeWriteLatency100NSMax,
      StorageCounterTypeFlushLatency100NSMax,
      StorageCounterTypeMax
   );
   for STORAGE_COUNTER_TYPE use (
      StorageCounterTypeUnknown => 0,
      StorageCounterTypeTemperatureCelsius => 1,
      StorageCounterTypeTemperatureCelsiusMax => 2,
      StorageCounterTypeReadErrorsTotal => 3,
      StorageCounterTypeReadErrorsCorrected => 4,
      StorageCounterTypeReadErrorsUncorrected => 5,
      StorageCounterTypeWriteErrorsTotal => 6,
      StorageCounterTypeWriteErrorsCorrected => 7,
      StorageCounterTypeWriteErrorsUncorrected => 8,
      StorageCounterTypeManufactureDate => 9,
      StorageCounterTypeStartStopCycleCount => 10,
      StorageCounterTypeStartStopCycleCountMax => 11,
      StorageCounterTypeLoadUnloadCycleCount => 12,
      StorageCounterTypeLoadUnloadCycleCountMax => 13,
      StorageCounterTypeWearPercentage => 14,
      StorageCounterTypeWearPercentageWarning => 15,
      StorageCounterTypeWearPercentageMax => 16,
      StorageCounterTypePowerOnHours => 17,
      StorageCounterTypeReadLatency100NSMax => 18,
      StorageCounterTypeWriteLatency100NSMax => 19,
      StorageCounterTypeFlushLatency100NSMax => 20,
      StorageCounterTypeMax => 21
   );
   for STORAGE_COUNTER_TYPE'Size use 32;
   
   -- type PSTORAGE_COUNTER_TYPE is access all STORAGE_COUNTER_TYPE;
   -- type PSTORAGE_COUNTER is access all STORAGE_COUNTER;
   -- type PSTORAGE_COUNTERS is access all STORAGE_COUNTERS;
   -- type PSTORAGE_HW_FIRMWARE_INFO_QUERY is access all STORAGE_HW_FIRMWARE_INFO_QUERY;
   -- type PSTORAGE_HW_FIRMWARE_SLOT_INFO is access all STORAGE_HW_FIRMWARE_SLOT_INFO;
   -- type PSTORAGE_HW_FIRMWARE_INFO is access all STORAGE_HW_FIRMWARE_INFO;
   -- type PSTORAGE_HW_FIRMWARE_DOWNLOAD is access all STORAGE_HW_FIRMWARE_DOWNLOAD;
   -- type PSTORAGE_HW_FIRMWARE_DOWNLOAD_V2 is access all STORAGE_HW_FIRMWARE_DOWNLOAD_V2;
   -- type PSTORAGE_HW_FIRMWARE_ACTIVATE is access all STORAGE_HW_FIRMWARE_ACTIVATE;
   -- type PSTORAGE_PROTOCOL_COMMAND is access all STORAGE_PROTOCOL_COMMAND;
   -- type PSTORAGE_ATTRIBUTE_MGMT_ACTION is access all STORAGE_ATTRIBUTE_MGMT_ACTION;
   type STORAGE_ATTRIBUTE_MGMT_ACTION is (
      StorAttributeMgmt_ClearAttribute,
      StorAttributeMgmt_SetAttribute,
      StorAttributeMgmt_ResetAttribute
   );
   for STORAGE_ATTRIBUTE_MGMT_ACTION use (
      StorAttributeMgmt_ClearAttribute => 0,
      StorAttributeMgmt_SetAttribute => 1,
      StorAttributeMgmt_ResetAttribute => 2
   );
   for STORAGE_ATTRIBUTE_MGMT_ACTION'Size use 32;
   
   -- type PSTORAGE_ATTRIBUTE_MGMT is access all STORAGE_ATTRIBUTE_MGMT;
   -- type PMEDIA_TYPE is access all MEDIA_TYPE;
   type MEDIA_TYPE is (
      Unknown,
      F5_1Pt2_512,
      F3_1Pt44_512,
      F3_2Pt88_512,
      F3_20Pt8_512,
      F3_720_512,
      F5_360_512,
      F5_320_512,
      F5_320_1024,
      F5_180_512,
      F5_160_512,
      RemovableMedia,
      FixedMedia,
      F3_120M_512,
      F3_640_512,
      F5_640_512,
      F5_720_512,
      F3_1Pt2_512,
      F3_1Pt23_1024,
      F5_1Pt23_1024,
      F3_128Mb_512,
      F3_230Mb_512,
      F8_256_128,
      F3_200Mb_512,
      F3_240M_512,
      F3_32M_512
   );
   for MEDIA_TYPE use (
      Unknown => 0,
      F5_1Pt2_512 => 1,
      F3_1Pt44_512 => 2,
      F3_2Pt88_512 => 3,
      F3_20Pt8_512 => 4,
      F3_720_512 => 5,
      F5_360_512 => 6,
      F5_320_512 => 7,
      F5_320_1024 => 8,
      F5_180_512 => 9,
      F5_160_512 => 10,
      RemovableMedia => 11,
      FixedMedia => 12,
      F3_120M_512 => 13,
      F3_640_512 => 14,
      F5_640_512 => 15,
      F5_720_512 => 16,
      F3_1Pt2_512 => 17,
      F3_1Pt23_1024 => 18,
      F5_1Pt23_1024 => 19,
      F3_128Mb_512 => 20,
      F3_230Mb_512 => 21,
      F8_256_128 => 22,
      F3_200Mb_512 => 23,
      F3_240M_512 => 24,
      F3_32M_512 => 25
   );
   for MEDIA_TYPE'Size use 32;
   
   -- type PFORMAT_PARAMETERS is access all FORMAT_PARAMETERS;
   -- type PBAD_TRACK_NUMBER is access all WORD;
   -- type PFORMAT_EX_PARAMETERS is access all FORMAT_EX_PARAMETERS;
   -- type PDISK_GEOMETRY is access all DISK_GEOMETRY;
   -- type PPARTITION_INFORMATION is access all PARTITION_INFORMATION;
   -- type PSET_PARTITION_INFORMATION is access all SET_PARTITION_INFORMATION;
   -- type PDRIVE_LAYOUT_INFORMATION is access all DRIVE_LAYOUT_INFORMATION;
   -- type PVERIFY_INFORMATION is access all VERIFY_INFORMATION;
   -- type PREASSIGN_BLOCKS is access all REASSIGN_BLOCKS;
   -- type PREASSIGN_BLOCKS_EX is access all REASSIGN_BLOCKS_EX;
   type PARTITION_STYLE is (
      PARTITION_STYLE_MBR,
      PARTITION_STYLE_GPT,
      PARTITION_STYLE_RAW
   );
   for PARTITION_STYLE use (
      PARTITION_STYLE_MBR => 0,
      PARTITION_STYLE_GPT => 1,
      PARTITION_STYLE_RAW => 2
   );
   for PARTITION_STYLE'Size use 32;
   
   -- type PPARTITION_INFORMATION_GPT is access all PARTITION_INFORMATION_GPT;
   -- type PPARTITION_INFORMATION_MBR is access all PARTITION_INFORMATION_MBR;
   -- type PSET_PARTITION_INFORMATION_EX is access all SET_PARTITION_INFORMATION_EX;
   -- type PCREATE_DISK_GPT is access all CREATE_DISK_GPT;
   -- type PCREATE_DISK_MBR is access all CREATE_DISK_MBR;
   -- type PCREATE_DISK is access all CREATE_DISK;
   -- type PGET_LENGTH_INFORMATION is access all GET_LENGTH_INFORMATION;
   -- type PPARTITION_INFORMATION_EX is access all PARTITION_INFORMATION_EX;
   -- type PDRIVE_LAYOUT_INFORMATION_GPT is access all DRIVE_LAYOUT_INFORMATION_GPT;
   -- type PDRIVE_LAYOUT_INFORMATION_MBR is access all DRIVE_LAYOUT_INFORMATION_MBR;
   -- type PDRIVE_LAYOUT_INFORMATION_EX is access all DRIVE_LAYOUT_INFORMATION_EX;
   type DETECTION_TYPE is (
      DetectNone,
      DetectInt13,
      DetectExInt13
   );
   for DETECTION_TYPE use (
      DetectNone => 0,
      DetectInt13 => 1,
      DetectExInt13 => 2
   );
   for DETECTION_TYPE'Size use 32;
   
   -- type PDISK_INT13_INFO is access all DISK_INT13_INFO;
   -- type PDISK_EX_INT13_INFO is access all DISK_EX_INT13_INFO;
   -- type PDISK_DETECTION_INFO is access all DISK_DETECTION_INFO;
   -- type PDISK_PARTITION_INFO is access all DISK_PARTITION_INFO;
   -- type PDISK_GEOMETRY_EX is access all DISK_GEOMETRY_EX;
   -- type PDISK_CONTROLLER_NUMBER is access all DISK_CONTROLLER_NUMBER;
   type DISK_CACHE_RETENTION_PRIORITY is (
      EqualPriority,
      KeepPrefetchedData,
      KeepReadData
   );
   for DISK_CACHE_RETENTION_PRIORITY use (
      EqualPriority => 0,
      KeepPrefetchedData => 1,
      KeepReadData => 2
   );
   for DISK_CACHE_RETENTION_PRIORITY'Size use 32;
   
   -- type PDISK_CACHE_INFORMATION is access all DISK_CACHE_INFORMATION;
   -- type PDISK_GROW_PARTITION is access all DISK_GROW_PARTITION;
   -- type PHISTOGRAM_BUCKET is access all HISTOGRAM_BUCKET;
   -- type PDISK_HISTOGRAM is access all DISK_HISTOGRAM;
   -- type PDISK_PERFORMANCE is access all DISK_PERFORMANCE;
   -- type PDISK_RECORD is access all DISK_RECORD;
   -- type PDISK_LOGGING is access all DISK_LOGGING;
   type BIN_TYPES is (
      RequestSize,
      RequestLocation
   );
   for BIN_TYPES use (
      RequestSize => 0,
      RequestLocation => 1
   );
   for BIN_TYPES'Size use 32;
   
   -- type PBIN_RANGE is access all BIN_RANGE;
   -- type PPERF_BIN is access all PERF_BIN;
   -- type PBIN_COUNT is access all BIN_COUNT;
   -- type PBIN_RESULTS is access all BIN_RESULTS;
   -- type LPGETVERSIONINPARAMS is access all GETVERSIONINPARAMS;
   -- type PGETVERSIONINPARAMS is access all GETVERSIONINPARAMS;
   -- type LPIDEREGS is access all IDEREGS;
   -- type PIDEREGS is access all IDEREGS;
   -- type PSENDCMDINPARAMS is access all SENDCMDINPARAMS;
   -- type LPSENDCMDINPARAMS is access all SENDCMDINPARAMS;
   -- type PDRIVERSTATUS is access all DRIVERSTATUS;
   -- type LPDRIVERSTATUS is access all DRIVERSTATUS;
   -- type PSENDCMDOUTPARAMS is access all SENDCMDOUTPARAMS;
   -- type LPSENDCMDOUTPARAMS is access all SENDCMDOUTPARAMS;
   -- type PGET_DISK_ATTRIBUTES is access all GET_DISK_ATTRIBUTES;
   -- type PSET_DISK_ATTRIBUTES is access all SET_DISK_ATTRIBUTES;
   type ELEMENT_TYPE is (
      AllElements,
      ChangerTransport,
      ChangerSlot,
      ChangerIEPort,
      ChangerDrive,
      ChangerDoor,
      ChangerKeypad,
      ChangerMaxElement
   );
   for ELEMENT_TYPE use (
      AllElements => 0,
      ChangerTransport => 1,
      ChangerSlot => 2,
      ChangerIEPort => 3,
      ChangerDrive => 4,
      ChangerDoor => 5,
      ChangerKeypad => 6,
      ChangerMaxElement => 7
   );
   for ELEMENT_TYPE'Size use 32;
   
   -- type PELEMENT_TYPE is access all ELEMENT_TYPE;
   -- type PCHANGER_ELEMENT is access all CHANGER_ELEMENT;
   -- type PCHANGER_ELEMENT_LIST is access all CHANGER_ELEMENT_LIST;
   -- type PGET_CHANGER_PARAMETERS is access all GET_CHANGER_PARAMETERS;
   -- type PCHANGER_PRODUCT_DATA is access all CHANGER_PRODUCT_DATA;
   -- type PCHANGER_SET_ACCESS is access all CHANGER_SET_ACCESS;
   -- type PCHANGER_READ_ELEMENT_STATUS is access all CHANGER_READ_ELEMENT_STATUS;
   -- type PCHANGER_ELEMENT_STATUS is access all CHANGER_ELEMENT_STATUS;
   -- type PCHANGER_ELEMENT_STATUS_EX is access all CHANGER_ELEMENT_STATUS_EX;
   -- type PCHANGER_INITIALIZE_ELEMENT_STATUS is access all CHANGER_INITIALIZE_ELEMENT_STATUS;
   -- type PCHANGER_SET_POSITION is access all CHANGER_SET_POSITION;
   -- type PCHANGER_EXCHANGE_MEDIUM is access all CHANGER_EXCHANGE_MEDIUM;
   -- type PCHANGER_MOVE_MEDIUM is access all CHANGER_MOVE_MEDIUM;
   -- type PCHANGER_SEND_VOLUME_TAG_INFORMATION is access all CHANGER_SEND_VOLUME_TAG_INFORMATION;
   -- type PREAD_ELEMENT_ADDRESS_INFO is access all READ_ELEMENT_ADDRESS_INFO;
   type CHANGER_DEVICE_PROBLEM_TYPE is (
      DeviceProblemNone,
      DeviceProblemHardware,
      DeviceProblemCHMError,
      DeviceProblemDoorOpen,
      DeviceProblemCalibrationError,
      DeviceProblemTargetFailure,
      DeviceProblemCHMMoveError,
      DeviceProblemCHMZeroError,
      DeviceProblemCartridgeInsertError,
      DeviceProblemPositionError,
      DeviceProblemSensorError,
      DeviceProblemCartridgeEjectError,
      DeviceProblemGripperError,
      DeviceProblemDriveError
   );
   for CHANGER_DEVICE_PROBLEM_TYPE use (
      DeviceProblemNone => 0,
      DeviceProblemHardware => 1,
      DeviceProblemCHMError => 2,
      DeviceProblemDoorOpen => 3,
      DeviceProblemCalibrationError => 4,
      DeviceProblemTargetFailure => 5,
      DeviceProblemCHMMoveError => 6,
      DeviceProblemCHMZeroError => 7,
      DeviceProblemCartridgeInsertError => 8,
      DeviceProblemPositionError => 9,
      DeviceProblemSensorError => 10,
      DeviceProblemCartridgeEjectError => 11,
      DeviceProblemGripperError => 12,
      DeviceProblemDriveError => 13
   );
   for CHANGER_DEVICE_PROBLEM_TYPE'Size use 32;
   
   -- type PCHANGER_DEVICE_PROBLEM_TYPE is access all CHANGER_DEVICE_PROBLEM_TYPE;
   -- type PPATHNAME_BUFFER is access all PATHNAME_BUFFER;
   -- type PFSCTL_QUERY_FAT_BPB_BUFFER is access all FSCTL_QUERY_FAT_BPB_BUFFER;
   -- type PNTFS_VOLUME_DATA_BUFFER is access all NTFS_VOLUME_DATA_BUFFER;
   -- type PNTFS_EXTENDED_VOLUME_DATA is access all NTFS_EXTENDED_VOLUME_DATA;
   -- type PREFS_VOLUME_DATA_BUFFER is access all REFS_VOLUME_DATA_BUFFER;
   -- type PSTARTING_LCN_INPUT_BUFFER is access all STARTING_LCN_INPUT_BUFFER;
   -- type PSTARTING_LCN_INPUT_BUFFER_EX is access all STARTING_LCN_INPUT_BUFFER_EX;
   -- type PVOLUME_BITMAP_BUFFER is access all VOLUME_BITMAP_BUFFER;
   -- type PSTARTING_VCN_INPUT_BUFFER is access all STARTING_VCN_INPUT_BUFFER;
   -- type PRETRIEVAL_POINTERS_BUFFER is access all RETRIEVAL_POINTERS_BUFFER;
   -- type PRETRIEVAL_POINTERS_AND_REFCOUNT_BUFFER is access all RETRIEVAL_POINTERS_AND_REFCOUNT_BUFFER;
   -- type PNTFS_FILE_RECORD_INPUT_BUFFER is access all NTFS_FILE_RECORD_INPUT_BUFFER;
   -- type PNTFS_FILE_RECORD_OUTPUT_BUFFER is access all NTFS_FILE_RECORD_OUTPUT_BUFFER;
   -- type PMOVE_FILE_DATA is access all MOVE_FILE_DATA;
   -- type PMOVE_FILE_RECORD_DATA is access all MOVE_FILE_RECORD_DATA;
   -- type PFIND_BY_SID_DATA is access all FIND_BY_SID_DATA;
   -- type PFIND_BY_SID_OUTPUT is access all FIND_BY_SID_OUTPUT;
   -- type PMFT_ENUM_DATA_V0 is access all MFT_ENUM_DATA_V0;
   -- type PMFT_ENUM_DATA_V1 is access all MFT_ENUM_DATA_V1;
   -- type PMFT_ENUM_DATA is access all MFT_ENUM_DATA_V1;
   -- type PCREATE_USN_JOURNAL_DATA is access all CREATE_USN_JOURNAL_DATA;
   -- type PREAD_FILE_USN_DATA is access all READ_FILE_USN_DATA;
   -- type PREAD_USN_JOURNAL_DATA_V0 is access all READ_USN_JOURNAL_DATA_V0;
   -- type PREAD_USN_JOURNAL_DATA_V1 is access all READ_USN_JOURNAL_DATA_V1;
   -- type PREAD_USN_JOURNAL_DATA is access all READ_USN_JOURNAL_DATA_V1;
   -- type PUSN_TRACK_MODIFIED_RANGES is access all USN_TRACK_MODIFIED_RANGES;
   -- type PUSN_RANGE_TRACK_OUTPUT is access all USN_RANGE_TRACK_OUTPUT;
   -- type PUSN_RECORD_V2 is access all USN_RECORD_V2;
   -- type PUSN_RECORD_V3 is access all USN_RECORD_V3;
   -- type PUSN_RECORD is access all USN_RECORD_V2;
   -- type PUSN_RECORD_COMMON_HEADER is access all USN_RECORD_COMMON_HEADER;
   -- type PUSN_RECORD_EXTENT is access all USN_RECORD_EXTENT;
   -- type PUSN_RECORD_V4 is access all USN_RECORD_V4;
   -- type PUSN_RECORD_UNION is access all USN_RECORD_UNION;
   -- type PUSN_JOURNAL_DATA_V0 is access all USN_JOURNAL_DATA_V0;
   -- type PUSN_JOURNAL_DATA_V1 is access all USN_JOURNAL_DATA_V1;
   -- type PUSN_JOURNAL_DATA_V2 is access all USN_JOURNAL_DATA_V2;
   -- type PUSN_JOURNAL_DATA is access all USN_JOURNAL_DATA_V1;
   -- type PDELETE_USN_JOURNAL_DATA is access all DELETE_USN_JOURNAL_DATA;
   -- type PMARK_HANDLE_INFO is access all MARK_HANDLE_INFO;
   -- type PBULK_SECURITY_TEST_DATA is access all BULK_SECURITY_TEST_DATA;
   -- type PFILE_PREFETCH is access all FILE_PREFETCH;
   -- type PFILE_PREFETCH_EX is access all FILE_PREFETCH_EX;
   -- type PFILESYSTEM_STATISTICS is access all FILESYSTEM_STATISTICS;
   -- type PFAT_STATISTICS is access all FAT_STATISTICS;
   -- type PEXFAT_STATISTICS is access all EXFAT_STATISTICS;
   -- type PNTFS_STATISTICS is access all NTFS_STATISTICS;
   -- type PFILESYSTEM_STATISTICS_EX is access all FILESYSTEM_STATISTICS_EX;
   -- type PNTFS_STATISTICS_EX is access all NTFS_STATISTICS_EX;
   -- type PFILE_OBJECTID_BUFFER is access all FILE_OBJECTID_BUFFER;
   -- type PFILE_SET_SPARSE_BUFFER is access all FILE_SET_SPARSE_BUFFER;
   -- type PFILE_ZERO_DATA_INFORMATION is access all FILE_ZERO_DATA_INFORMATION;
   -- type PFILE_ZERO_DATA_INFORMATION_EX is access all FILE_ZERO_DATA_INFORMATION_EX;
   -- type PFILE_ALLOCATED_RANGE_BUFFER is access all FILE_ALLOCATED_RANGE_BUFFER;
   -- type PENCRYPTION_BUFFER is access all ENCRYPTION_BUFFER;
   -- type PDECRYPTION_STATUS_BUFFER is access all DECRYPTION_STATUS_BUFFER;
   -- type PREQUEST_RAW_ENCRYPTED_DATA is access all REQUEST_RAW_ENCRYPTED_DATA;
   -- type PENCRYPTED_DATA_INFO is access all ENCRYPTED_DATA_INFO;
   -- type PEXTENDED_ENCRYPTED_DATA_INFO is access all EXTENDED_ENCRYPTED_DATA_INFO;
   -- type PPLEX_READ_DATA_REQUEST is access all PLEX_READ_DATA_REQUEST;
   -- type PSI_COPYFILE is access all SI_COPYFILE;
   -- type PFILE_MAKE_COMPATIBLE_BUFFER is access all FILE_MAKE_COMPATIBLE_BUFFER;
   -- type PFILE_SET_DEFECT_MGMT_BUFFER is access all FILE_SET_DEFECT_MGMT_BUFFER;
   -- type PFILE_QUERY_SPARING_BUFFER is access all FILE_QUERY_SPARING_BUFFER;
   -- type PFILE_QUERY_ON_DISK_VOL_INFO_BUFFER is access all FILE_QUERY_ON_DISK_VOL_INFO_BUFFER;
   -- type PFILE_INITIATE_REPAIR_OUTPUT_BUFFER is access all FILE_INITIATE_REPAIR_OUTPUT_BUFFER;
   type SHRINK_VOLUME_REQUEST_TYPES is (
      ShrinkPrepare,
      ShrinkCommit,
      ShrinkAbort
   );
   for SHRINK_VOLUME_REQUEST_TYPES use (
      ShrinkPrepare => 1,
      ShrinkCommit => 2,
      ShrinkAbort => 3
   );
   for SHRINK_VOLUME_REQUEST_TYPES'Size use 32;
   
   -- type PSHRINK_VOLUME_REQUEST_TYPES is access all SHRINK_VOLUME_REQUEST_TYPES;
   -- type PSHRINK_VOLUME_INFORMATION is access all SHRINK_VOLUME_INFORMATION;
   -- type PTXFS_MODIFY_RM is access all TXFS_MODIFY_RM;
   -- type PTXFS_QUERY_RM_INFORMATION is access all TXFS_QUERY_RM_INFORMATION;
   -- type PTXFS_ROLLFORWARD_REDO_INFORMATION is access all TXFS_ROLLFORWARD_REDO_INFORMATION;
   -- type PTXFS_START_RM_INFORMATION is access all TXFS_START_RM_INFORMATION;
   -- type PTXFS_GET_METADATA_INFO_OUT is access all TXFS_GET_METADATA_INFO_OUT;
   -- type PTXFS_LIST_TRANSACTION_LOCKED_FILES_ENTRY is access all TXFS_LIST_TRANSACTION_LOCKED_FILES_ENTRY;
   -- type PTXFS_LIST_TRANSACTION_LOCKED_FILES is access all TXFS_LIST_TRANSACTION_LOCKED_FILES;
   -- type PTXFS_LIST_TRANSACTIONS_ENTRY is access all TXFS_LIST_TRANSACTIONS_ENTRY;
   -- type PTXFS_LIST_TRANSACTIONS is access all TXFS_LIST_TRANSACTIONS;
   -- type PTXFS_READ_BACKUP_INFORMATION_OUT is access all TXFS_READ_BACKUP_INFORMATION_OUT;
   -- type PTXFS_WRITE_BACKUP_INFORMATION is access all TXFS_WRITE_BACKUP_INFORMATION;
   -- type PTXFS_GET_TRANSACTED_VERSION is access all TXFS_GET_TRANSACTED_VERSION;
   -- type PTXFS_SAVEPOINT_INFORMATION is access all TXFS_SAVEPOINT_INFORMATION;
   -- type PTXFS_CREATE_MINIVERSION_INFO is access all TXFS_CREATE_MINIVERSION_INFO;
   -- type PTXFS_TRANSACTION_ACTIVE_INFO is access all TXFS_TRANSACTION_ACTIVE_INFO;
   -- type PBOOT_AREA_INFO is access all BOOT_AREA_INFO;
   -- type PRETRIEVAL_POINTER_BASE is access all RETRIEVAL_POINTER_BASE;
   -- type PFILE_FS_PERSISTENT_VOLUME_INFORMATION is access all FILE_FS_PERSISTENT_VOLUME_INFORMATION;
   -- type PFILE_SYSTEM_RECOGNITION_INFORMATION is access all FILE_SYSTEM_RECOGNITION_INFORMATION;
   -- type PREQUEST_OPLOCK_INPUT_BUFFER is access all REQUEST_OPLOCK_INPUT_BUFFER;
   -- type PREQUEST_OPLOCK_OUTPUT_BUFFER is access all REQUEST_OPLOCK_OUTPUT_BUFFER;
   -- type PVIRTUAL_STORAGE_TYPE is access all VIRTUAL_STORAGE_TYPE;
   -- type PSTORAGE_QUERY_DEPENDENT_VOLUME_REQUEST is access all STORAGE_QUERY_DEPENDENT_VOLUME_REQUEST;
   -- type PSTORAGE_QUERY_DEPENDENT_VOLUME_LEV1_ENTRY is access all STORAGE_QUERY_DEPENDENT_VOLUME_LEV1_ENTRY;
   -- type PSTORAGE_QUERY_DEPENDENT_VOLUME_LEV2_ENTRY is access all STORAGE_QUERY_DEPENDENT_VOLUME_LEV2_ENTRY;
   -- type PSTORAGE_QUERY_DEPENDENT_VOLUME_RESPONSE is access all STORAGE_QUERY_DEPENDENT_VOLUME_RESPONSE;
   -- type PSD_CHANGE_MACHINE_SID_INPUT is access all SD_CHANGE_MACHINE_SID_INPUT;
   -- type PSD_CHANGE_MACHINE_SID_OUTPUT is access all SD_CHANGE_MACHINE_SID_OUTPUT;
   -- type PSD_QUERY_STATS_INPUT is access all SD_QUERY_STATS_INPUT;
   -- type PSD_QUERY_STATS_OUTPUT is access all SD_QUERY_STATS_OUTPUT;
   -- type PSD_ENUM_SDS_INPUT is access all SD_ENUM_SDS_INPUT;
   -- type PSD_ENUM_SDS_ENTRY is access all SD_ENUM_SDS_ENTRY;
   -- type PSD_ENUM_SDS_OUTPUT is access all SD_ENUM_SDS_OUTPUT;
   -- type PSD_GLOBAL_CHANGE_INPUT is access all SD_GLOBAL_CHANGE_INPUT;
   -- type PSD_GLOBAL_CHANGE_OUTPUT is access all SD_GLOBAL_CHANGE_OUTPUT;
   -- type PLOOKUP_STREAM_FROM_CLUSTER_INPUT is access all LOOKUP_STREAM_FROM_CLUSTER_INPUT;
   -- type PLOOKUP_STREAM_FROM_CLUSTER_OUTPUT is access all LOOKUP_STREAM_FROM_CLUSTER_OUTPUT;
   -- type PLOOKUP_STREAM_FROM_CLUSTER_ENTRY is access all LOOKUP_STREAM_FROM_CLUSTER_ENTRY;
   -- type PFILE_TYPE_NOTIFICATION_INPUT is access all FILE_TYPE_NOTIFICATION_INPUT;
   -- type PCSV_MGMT_LOCK is access all CSV_MGMT_LOCK;
   -- type PCSV_NAMESPACE_INFO is access all CSV_NAMESPACE_INFO;
   -- type PCSV_CONTROL_OP is access all CSV_CONTROL_OP;
   type CSV_CONTROL_OP is (
      CsvControlStartRedirectFile,
      CsvControlStopRedirectFile,
      CsvControlQueryRedirectState,
      CsvControlQueryFileRevision,
      CsvControlQueryMdsPath,
      CsvControlQueryFileRevisionFileId128,
      CsvControlQueryVolumeRedirectState,
      CsvControlEnableUSNRangeModificationTracking,
      CsvControlMarkHandleLocalVolumeMount,
      CsvControlUnmarkHandleLocalVolumeMount,
      CsvControlGetCsvFsMdsPathV2
   );
   for CSV_CONTROL_OP use (
      CsvControlStartRedirectFile => 2,
      CsvControlStopRedirectFile => 3,
      CsvControlQueryRedirectState => 4,
      CsvControlQueryFileRevision => 6,
      CsvControlQueryMdsPath => 8,
      CsvControlQueryFileRevisionFileId128 => 9,
      CsvControlQueryVolumeRedirectState => 10,
      CsvControlEnableUSNRangeModificationTracking => 13,
      CsvControlMarkHandleLocalVolumeMount => 14,
      CsvControlUnmarkHandleLocalVolumeMount => 15,
      CsvControlGetCsvFsMdsPathV2 => 18
   );
   for CSV_CONTROL_OP'Size use 32;
   
   -- type PCSV_CONTROL_PARAM is access all CSV_CONTROL_PARAM;
   -- type PCSV_QUERY_REDIRECT_STATE is access all CSV_QUERY_REDIRECT_STATE;
   -- type PCSV_QUERY_FILE_REVISION is access all CSV_QUERY_FILE_REVISION;
   -- type PCSV_QUERY_FILE_REVISION_FILE_ID_128 is access all CSV_QUERY_FILE_REVISION_FILE_ID_128;
   -- type PCSV_QUERY_MDS_PATH is access all CSV_QUERY_MDS_PATH;
   type CSVFS_DISK_CONNECTIVITY is (
      CsvFsDiskConnectivityNone,
      CsvFsDiskConnectivityMdsNodeOnly,
      CsvFsDiskConnectivitySubsetOfNodes,
      CsvFsDiskConnectivityAllNodes
   );
   for CSVFS_DISK_CONNECTIVITY use (
      CsvFsDiskConnectivityNone => 0,
      CsvFsDiskConnectivityMdsNodeOnly => 1,
      CsvFsDiskConnectivitySubsetOfNodes => 2,
      CsvFsDiskConnectivityAllNodes => 3
   );
   for CSVFS_DISK_CONNECTIVITY'Size use 32;
   
   -- type PCSVFS_DISK_CONNECTIVITY is access all CSVFS_DISK_CONNECTIVITY;
   -- type PCSV_QUERY_VOLUME_REDIRECT_STATE is access all CSV_QUERY_VOLUME_REDIRECT_STATE;
   -- type PCSV_QUERY_MDS_PATH_V2 is access all CSV_QUERY_MDS_PATH_V2;
   -- type PCSV_QUERY_VETO_FILE_DIRECT_IO_OUTPUT is access all CSV_QUERY_VETO_FILE_DIRECT_IO_OUTPUT;
   -- type PCSV_IS_OWNED_BY_CSVFS is access all CSV_IS_OWNED_BY_CSVFS;
   -- type PFILE_LEVEL_TRIM_RANGE is access all FILE_LEVEL_TRIM_RANGE;
   -- type PFILE_LEVEL_TRIM is access all FILE_LEVEL_TRIM;
   -- type PFILE_LEVEL_TRIM_OUTPUT is access all FILE_LEVEL_TRIM_OUTPUT;
   type QUERY_FILE_LAYOUT_FILTER_TYPE is (
      QUERY_FILE_LAYOUT_FILTER_TYPE_NONE,
      QUERY_FILE_LAYOUT_FILTER_TYPE_CLUSTERS,
      QUERY_FILE_LAYOUT_FILTER_TYPE_FILEID,
      QUERY_FILE_LAYOUT_NUM_FILTER_TYPES
   );
   for QUERY_FILE_LAYOUT_FILTER_TYPE use (
      QUERY_FILE_LAYOUT_FILTER_TYPE_NONE => 0,
      QUERY_FILE_LAYOUT_FILTER_TYPE_CLUSTERS => 1,
      QUERY_FILE_LAYOUT_FILTER_TYPE_FILEID => 2,
      QUERY_FILE_LAYOUT_NUM_FILTER_TYPES => 3
   );
   for QUERY_FILE_LAYOUT_FILTER_TYPE'Size use 32;
   
   -- type PCLUSTER_RANGE is access all CLUSTER_RANGE;
   -- type PFILE_REFERENCE_RANGE is access all FILE_REFERENCE_RANGE;
   -- type PQUERY_FILE_LAYOUT_INPUT is access all QUERY_FILE_LAYOUT_INPUT;
   -- type PQUERY_FILE_LAYOUT_OUTPUT is access all QUERY_FILE_LAYOUT_OUTPUT;
   -- type PFILE_LAYOUT_ENTRY is access all FILE_LAYOUT_ENTRY;
   -- type PFILE_LAYOUT_NAME_ENTRY is access all FILE_LAYOUT_NAME_ENTRY;
   -- type PFILE_LAYOUT_INFO_ENTRY is access all FILE_LAYOUT_INFO_ENTRY;
   -- type PSTREAM_LAYOUT_ENTRY is access all STREAM_LAYOUT_ENTRY;
   -- type PSTREAM_EXTENT_ENTRY is access all STREAM_EXTENT_ENTRY;
   -- type PFSCTL_GET_INTEGRITY_INFORMATION_BUFFER is access all FSCTL_GET_INTEGRITY_INFORMATION_BUFFER;
   -- type PFSCTL_SET_INTEGRITY_INFORMATION_BUFFER is access all FSCTL_SET_INTEGRITY_INFORMATION_BUFFER;
   -- type PFSCTL_SET_INTEGRITY_INFORMATION_BUFFER_EX is access all FSCTL_SET_INTEGRITY_INFORMATION_BUFFER_EX;
   -- type PFSCTL_OFFLOAD_READ_INPUT is access all FSCTL_OFFLOAD_READ_INPUT;
   -- type PFSCTL_OFFLOAD_READ_OUTPUT is access all FSCTL_OFFLOAD_READ_OUTPUT;
   -- type PFSCTL_OFFLOAD_WRITE_INPUT is access all FSCTL_OFFLOAD_WRITE_INPUT;
   -- type PFSCTL_OFFLOAD_WRITE_OUTPUT is access all FSCTL_OFFLOAD_WRITE_OUTPUT;
   -- type PSET_PURGE_FAILURE_MODE_INPUT is access all SET_PURGE_FAILURE_MODE_INPUT;
   -- type PREPAIR_COPIES_INPUT is access all REPAIR_COPIES_INPUT;
   -- type PREPAIR_COPIES_OUTPUT is access all REPAIR_COPIES_OUTPUT;
   -- type PFILE_REGION_INFO is access all FILE_REGION_INFO;
   -- type PFILE_REGION_OUTPUT is access all FILE_REGION_OUTPUT;
   -- type PFILE_REGION_INPUT is access all FILE_REGION_INPUT;
   -- type PWRITE_USN_REASON_INPUT is access all WRITE_USN_REASON_INPUT;
   -- type PFILE_STORAGE_TIER_MEDIA_TYPE is access all FILE_STORAGE_TIER_MEDIA_TYPE;
   type FILE_STORAGE_TIER_MEDIA_TYPE is (
      FileStorageTierMediaTypeUnspecified,
      FileStorageTierMediaTypeDisk,
      FileStorageTierMediaTypeSsd,
      FileStorageTierMediaTypeScm,
      FileStorageTierMediaTypeMax
   );
   for FILE_STORAGE_TIER_MEDIA_TYPE use (
      FileStorageTierMediaTypeUnspecified => 0,
      FileStorageTierMediaTypeDisk => 1,
      FileStorageTierMediaTypeSsd => 2,
      FileStorageTierMediaTypeScm => 4,
      FileStorageTierMediaTypeMax => 5
   );
   for FILE_STORAGE_TIER_MEDIA_TYPE'Size use 32;
   
   type FILE_STORAGE_TIER_CLASS is (
      FileStorageTierClassUnspecified,
      FileStorageTierClassCapacity,
      FileStorageTierClassPerformance,
      FileStorageTierClassMax
   );
   for FILE_STORAGE_TIER_CLASS use (
      FileStorageTierClassUnspecified => 0,
      FileStorageTierClassCapacity => 1,
      FileStorageTierClassPerformance => 2,
      FileStorageTierClassMax => 3
   );
   for FILE_STORAGE_TIER_CLASS'Size use 32;
   
   -- type PFILE_STORAGE_TIER_CLASS is access all FILE_STORAGE_TIER_CLASS;
   -- type PFILE_STORAGE_TIER is access all FILE_STORAGE_TIER;
   -- type PFSCTL_QUERY_STORAGE_CLASSES_OUTPUT is access all FSCTL_QUERY_STORAGE_CLASSES_OUTPUT;
   -- type PSTREAM_INFORMATION_ENTRY is access all STREAM_INFORMATION_ENTRY;
   -- type PFSCTL_QUERY_REGION_INFO_INPUT is access all FSCTL_QUERY_REGION_INFO_INPUT;
   -- type PFILE_STORAGE_TIER_REGION is access all FILE_STORAGE_TIER_REGION;
   -- type PFSCTL_QUERY_REGION_INFO_OUTPUT is access all FSCTL_QUERY_REGION_INFO_OUTPUT;
   -- type PFILE_DESIRED_STORAGE_CLASS_INFORMATION is access all FILE_DESIRED_STORAGE_CLASS_INFORMATION;
   -- type PDUPLICATE_EXTENTS_DATA is access all DUPLICATE_EXTENTS_DATA;
   -- type PDUPLICATE_EXTENTS_DATA_EX is access all DUPLICATE_EXTENTS_DATA_EX;
   -- type PREFS_SMR_VOLUME_GC_STATE is access all REFS_SMR_VOLUME_GC_STATE;
   type REFS_SMR_VOLUME_GC_STATE is (
      SmrGcStateInactive,
      SmrGcStatePaused,
      SmrGcStateActive,
      SmrGcStateActiveFullSpeed
   );
   for REFS_SMR_VOLUME_GC_STATE use (
      SmrGcStateInactive => 0,
      SmrGcStatePaused => 1,
      SmrGcStateActive => 2,
      SmrGcStateActiveFullSpeed => 3
   );
   for REFS_SMR_VOLUME_GC_STATE'Size use 32;
   
   -- type PREFS_SMR_VOLUME_INFO_OUTPUT is access all REFS_SMR_VOLUME_INFO_OUTPUT;
   -- type PREFS_SMR_VOLUME_GC_ACTION is access all REFS_SMR_VOLUME_GC_ACTION;
   type REFS_SMR_VOLUME_GC_ACTION is (
      SmrGcActionStart,
      SmrGcActionStartFullSpeed,
      SmrGcActionPause,
      SmrGcActionStop
   );
   for REFS_SMR_VOLUME_GC_ACTION use (
      SmrGcActionStart => 1,
      SmrGcActionStartFullSpeed => 2,
      SmrGcActionPause => 3,
      SmrGcActionStop => 4
   );
   for REFS_SMR_VOLUME_GC_ACTION'Size use 32;
   
   type REFS_SMR_VOLUME_GC_METHOD is (
      SmrGcMethodCompaction,
      SmrGcMethodCompression,
      SmrGcMethodRotation
   );
   for REFS_SMR_VOLUME_GC_METHOD use (
      SmrGcMethodCompaction => 1,
      SmrGcMethodCompression => 2,
      SmrGcMethodRotation => 3
   );
   for REFS_SMR_VOLUME_GC_METHOD'Size use 32;
   
   -- type PREFS_SMR_VOLUME_GC_METHOD is access all REFS_SMR_VOLUME_GC_METHOD;
   -- type PREFS_SMR_VOLUME_GC_PARAMETERS is access all REFS_SMR_VOLUME_GC_PARAMETERS;
   -- type PSTREAMS_QUERY_PARAMETERS_OUTPUT_BUFFER is access all STREAMS_QUERY_PARAMETERS_OUTPUT_BUFFER;
   -- type PSTREAMS_ASSOCIATE_ID_INPUT_BUFFER is access all STREAMS_ASSOCIATE_ID_INPUT_BUFFER;
   -- type PSTREAMS_QUERY_ID_OUTPUT_BUFFER is access all STREAMS_QUERY_ID_OUTPUT_BUFFER;
   -- type PQUERY_BAD_RANGES_INPUT_RANGE is access all QUERY_BAD_RANGES_INPUT_RANGE;
   -- type PQUERY_BAD_RANGES_INPUT is access all QUERY_BAD_RANGES_INPUT;
   -- type PQUERY_BAD_RANGES_OUTPUT_RANGE is access all QUERY_BAD_RANGES_OUTPUT_RANGE;
   -- type PQUERY_BAD_RANGES_OUTPUT is access all QUERY_BAD_RANGES_OUTPUT;
   -- type PSET_DAX_ALLOC_ALIGNMENT_HINT_INPUT is access all SET_DAX_ALLOC_ALIGNMENT_HINT_INPUT;
   -- type PWOF_EXTERNAL_INFO is access all WOF_EXTERNAL_INFO;
   -- type PWOF_EXTERNAL_FILE_ID is access all WOF_EXTERNAL_FILE_ID;
   -- type PWOF_VERSION_INFO is access all WOF_VERSION_INFO;
   -- type PWIM_PROVIDER_EXTERNAL_INFO is access all WIM_PROVIDER_EXTERNAL_INFO;
   -- type PWIM_PROVIDER_ADD_OVERLAY_INPUT is access all WIM_PROVIDER_ADD_OVERLAY_INPUT;
   -- type PWIM_PROVIDER_UPDATE_OVERLAY_INPUT is access all WIM_PROVIDER_UPDATE_OVERLAY_INPUT;
   -- type PWIM_PROVIDER_REMOVE_OVERLAY_INPUT is access all WIM_PROVIDER_REMOVE_OVERLAY_INPUT;
   -- type PWIM_PROVIDER_SUSPEND_OVERLAY_INPUT is access all WIM_PROVIDER_SUSPEND_OVERLAY_INPUT;
   -- type PWIM_PROVIDER_OVERLAY_ENTRY is access all WIM_PROVIDER_OVERLAY_ENTRY;
   -- type PFILE_PROVIDER_EXTERNAL_INFO_V0 is access all FILE_PROVIDER_EXTERNAL_INFO_V0;
   -- type PFILE_PROVIDER_EXTERNAL_INFO_V1 is access all FILE_PROVIDER_EXTERNAL_INFO_V1;
   -- type PCONTAINER_VOLUME_STATE is access all CONTAINER_VOLUME_STATE;
   -- type PCONTAINER_ROOT_INFO_INPUT is access all CONTAINER_ROOT_INFO_INPUT;
   -- type PCONTAINER_ROOT_INFO_OUTPUT is access all CONTAINER_ROOT_INFO_OUTPUT;
   -- type PVIRTUALIZATION_INSTANCE_INFO_INPUT is access all VIRTUALIZATION_INSTANCE_INFO_INPUT;
   -- type PVIRTUALIZATION_INSTANCE_INFO_OUTPUT is access all VIRTUALIZATION_INSTANCE_INFO_OUTPUT;
   -- type PGET_FILTER_FILE_IDENTIFIER_INPUT is access all GET_FILTER_FILE_IDENTIFIER_INPUT;
   -- type PGET_FILTER_FILE_IDENTIFIER_OUTPUT is access all GET_FILTER_FILE_IDENTIFIER_OUTPUT;
   -- type PDISK_EXTENT is access all DISK_EXTENT;
   -- type PVOLUME_DISK_EXTENTS is access all VOLUME_DISK_EXTENTS;
   -- type PVOLUME_GET_GPT_ATTRIBUTES_INFORMATION is access all VOLUME_GET_GPT_ATTRIBUTES_INFORMATION;
   -- type IO_IRP_EXT_TRACK_OFFSET_HEADER; -- forward declaration
   -- type PIO_IRP_EXT_TRACK_OFFSET_HEADER is access all IO_IRP_EXT_TRACK_OFFSET_HEADER;
   -- C:\Program Files (x86)\Windows Kits\10\include\10.0.16299.0\shared\winsmcrd.h
   -- type PSCARD_IO_REQUEST is access all SCARD_IO_REQUEST;
   -- type LPSCARD_IO_REQUEST is access all SCARD_IO_REQUEST;
   -- type LPCSCARD_IO_REQUEST is access all SCARD_IO_REQUEST;
   -- type LPSCARD_T0_COMMAND is access all SCARD_T0_COMMAND;
   -- type PSCARD_T0_REQUEST is access all SCARD_T0_REQUEST;
   -- type LPSCARD_T0_REQUEST is access all SCARD_T0_REQUEST;
   -- type LPSCARD_T1_REQUEST is access all SCARD_T1_REQUEST;
   -- type PSCARD_T1_REQUEST is access all SCARD_T1_REQUEST;
   -- C:\Program Files (x86)\Windows Kits\10\include\10.0.16299.0\um\winspool.h
   -- type LPPRINTER_INFO_1A is access all PRINTER_INFO_1A;
   -- type PPRINTER_INFO_1A is access all PRINTER_INFO_1A;
   -- type PPRINTER_INFO_1W is access all PRINTER_INFO_1W;
   -- type LPPRINTER_INFO_1W is access all PRINTER_INFO_1W;
   -- type PPRINTER_INFO_2A is access all PRINTER_INFO_2A;
   -- type LPPRINTER_INFO_2A is access all PRINTER_INFO_2A;
   -- type LPPRINTER_INFO_2W is access all PRINTER_INFO_2W;
   -- type PPRINTER_INFO_2W is access all PRINTER_INFO_2W;
   -- type PPRINTER_INFO_3 is access all PRINTER_INFO_3;
   -- type LPPRINTER_INFO_3 is access all PRINTER_INFO_3;
   -- type PPRINTER_INFO_4A is access all PRINTER_INFO_4A;
   -- type LPPRINTER_INFO_4A is access all PRINTER_INFO_4A;
   -- type PPRINTER_INFO_4W is access all PRINTER_INFO_4W;
   -- type LPPRINTER_INFO_4W is access all PRINTER_INFO_4W;
   -- type PPRINTER_INFO_5A is access all PRINTER_INFO_5A;
   -- type LPPRINTER_INFO_5A is access all PRINTER_INFO_5A;
   -- type PPRINTER_INFO_5W is access all PRINTER_INFO_5W;
   -- type LPPRINTER_INFO_5W is access all PRINTER_INFO_5W;
   -- type PPRINTER_INFO_6 is access all PRINTER_INFO_6;
   -- type LPPRINTER_INFO_6 is access all PRINTER_INFO_6;
   -- type PPRINTER_INFO_7A is access all PRINTER_INFO_7A;
   -- type LPPRINTER_INFO_7A is access all PRINTER_INFO_7A;
   -- type PPRINTER_INFO_7W is access all PRINTER_INFO_7W;
   -- type LPPRINTER_INFO_7W is access all PRINTER_INFO_7W;
   -- type LPPRINTER_INFO_8A is access all PRINTER_INFO_8A;
   -- type PPRINTER_INFO_8A is access all PRINTER_INFO_8A;
   -- type LPPRINTER_INFO_8W is access all PRINTER_INFO_8W;
   -- type PPRINTER_INFO_8W is access all PRINTER_INFO_8W;
   -- type LPPRINTER_INFO_9A is access all PRINTER_INFO_9A;
   -- type PPRINTER_INFO_9A is access all PRINTER_INFO_9A;
   -- type LPPRINTER_INFO_9W is access all PRINTER_INFO_9W;
   -- type PPRINTER_INFO_9W is access all PRINTER_INFO_9W;
   -- type PJOB_INFO_1A is access all JOB_INFO_1A;
   -- type LPJOB_INFO_1A is access all JOB_INFO_1A;
   -- type PJOB_INFO_1W is access all JOB_INFO_1W;
   -- type LPJOB_INFO_1W is access all JOB_INFO_1W;
   -- type PJOB_INFO_2A is access all JOB_INFO_2A;
   -- type LPJOB_INFO_2A is access all JOB_INFO_2A;
   -- type LPJOB_INFO_2W is access all JOB_INFO_2W;
   -- type PJOB_INFO_2W is access all JOB_INFO_2W;
   -- type LPJOB_INFO_3 is access all JOB_INFO_3;
   -- type PJOB_INFO_3 is access all JOB_INFO_3;
   -- type PJOB_INFO_4A is access all JOB_INFO_4A;
   -- type LPJOB_INFO_4A is access all JOB_INFO_4A;
   -- type PJOB_INFO_4W is access all JOB_INFO_4W;
   -- type LPJOB_INFO_4W is access all JOB_INFO_4W;
   -- type PADDJOB_INFO_1A is access all ADDJOB_INFO_1A;
   -- type LPADDJOB_INFO_1A is access all ADDJOB_INFO_1A;
   -- type LPADDJOB_INFO_1W is access all ADDJOB_INFO_1W;
   -- type PADDJOB_INFO_1W is access all ADDJOB_INFO_1W;
   -- type PDRIVER_INFO_1A is access all DRIVER_INFO_1A;
   -- type LPDRIVER_INFO_1A is access all DRIVER_INFO_1A;
   -- type PDRIVER_INFO_1W is access all DRIVER_INFO_1W;
   -- type LPDRIVER_INFO_1W is access all DRIVER_INFO_1W;
   -- type LPDRIVER_INFO_2A is access all DRIVER_INFO_2A;
   -- type PDRIVER_INFO_2A is access all DRIVER_INFO_2A;
   -- type PDRIVER_INFO_2W is access all DRIVER_INFO_2W;
   -- type LPDRIVER_INFO_2W is access all DRIVER_INFO_2W;
   -- type LPDRIVER_INFO_3A is access all DRIVER_INFO_3A;
   -- type PDRIVER_INFO_3A is access all DRIVER_INFO_3A;
   -- type LPDRIVER_INFO_3W is access all DRIVER_INFO_3W;
   -- type PDRIVER_INFO_3W is access all DRIVER_INFO_3W;
   -- type LPDRIVER_INFO_4A is access all DRIVER_INFO_4A;
   -- type PDRIVER_INFO_4A is access all DRIVER_INFO_4A;
   -- type LPDRIVER_INFO_4W is access all DRIVER_INFO_4W;
   -- type PDRIVER_INFO_4W is access all DRIVER_INFO_4W;
   -- type PDRIVER_INFO_5A is access all DRIVER_INFO_5A;
   -- type LPDRIVER_INFO_5A is access all DRIVER_INFO_5A;
   -- type PDRIVER_INFO_5W is access all DRIVER_INFO_5W;
   -- type LPDRIVER_INFO_5W is access all DRIVER_INFO_5W;
   -- type LPDRIVER_INFO_6A is access all DRIVER_INFO_6A;
   -- type PDRIVER_INFO_6A is access all DRIVER_INFO_6A;
   -- type PDRIVER_INFO_6W is access all DRIVER_INFO_6W;
   -- type LPDRIVER_INFO_6W is access all DRIVER_INFO_6W;
   -- type LPDRIVER_INFO_8A is access all DRIVER_INFO_8A;
   -- type PDRIVER_INFO_8A is access all DRIVER_INFO_8A;
   -- type LPDRIVER_INFO_8W is access all DRIVER_INFO_8W;
   -- type PDRIVER_INFO_8W is access all DRIVER_INFO_8W;
   -- type LPDOC_INFO_1A is access all DOC_INFO_1A;
   -- type PDOC_INFO_1A is access all DOC_INFO_1A;
   -- type LPDOC_INFO_1W is access all DOC_INFO_1W;
   -- type PDOC_INFO_1W is access all DOC_INFO_1W;
   -- type PFORM_INFO_1A is access all FORM_INFO_1A;
   -- type LPFORM_INFO_1A is access all FORM_INFO_1A;
   -- type PFORM_INFO_1W is access all FORM_INFO_1W;
   -- type LPFORM_INFO_1W is access all FORM_INFO_1W;
   -- type LPFORM_INFO_2A is access all FORM_INFO_2A;
   -- type PFORM_INFO_2A is access all FORM_INFO_2A;
   -- type PFORM_INFO_2W is access all FORM_INFO_2W;
   -- type LPFORM_INFO_2W is access all FORM_INFO_2W;
   -- type PDOC_INFO_2A is access all DOC_INFO_2A;
   -- type LPDOC_INFO_2A is access all DOC_INFO_2A;
   -- type LPDOC_INFO_2W is access all DOC_INFO_2W;
   -- type PDOC_INFO_2W is access all DOC_INFO_2W;
   -- type PDOC_INFO_3A is access all DOC_INFO_3A;
   -- type LPDOC_INFO_3A is access all DOC_INFO_3A;
   -- type LPDOC_INFO_3W is access all DOC_INFO_3W;
   -- type PDOC_INFO_3W is access all DOC_INFO_3W;
   -- type PPRINTPROCESSOR_INFO_1A is access all PRINTPROCESSOR_INFO_1A;
   -- type LPPRINTPROCESSOR_INFO_1A is access all PRINTPROCESSOR_INFO_1A;
   -- type LPPRINTPROCESSOR_INFO_1W is access all PRINTPROCESSOR_INFO_1W;
   -- type PPRINTPROCESSOR_INFO_1W is access all PRINTPROCESSOR_INFO_1W;
   -- type PPRINTPROCESSOR_CAPS_1 is access all PRINTPROCESSOR_CAPS_1;
   -- type PPRINTPROCESSOR_CAPS_2 is access all PRINTPROCESSOR_CAPS_2;
   -- type LPPORT_INFO_1A is access all PORT_INFO_1A;
   -- type PPORT_INFO_1A is access all PORT_INFO_1A;
   -- type PPORT_INFO_1W is access all PORT_INFO_1W;
   -- type LPPORT_INFO_1W is access all PORT_INFO_1W;
   -- type LPPORT_INFO_2A is access all PORT_INFO_2A;
   -- type PPORT_INFO_2A is access all PORT_INFO_2A;
   -- type PPORT_INFO_2W is access all PORT_INFO_2W;
   -- type LPPORT_INFO_2W is access all PORT_INFO_2W;
   -- type PPORT_INFO_3A is access all PORT_INFO_3A;
   -- type LPPORT_INFO_3A is access all PORT_INFO_3A;
   -- type PPORT_INFO_3W is access all PORT_INFO_3W;
   -- type LPPORT_INFO_3W is access all PORT_INFO_3W;
   -- type LPMONITOR_INFO_1A is access all MONITOR_INFO_1A;
   -- type PMONITOR_INFO_1A is access all MONITOR_INFO_1A;
   -- type LPMONITOR_INFO_1W is access all MONITOR_INFO_1W;
   -- type PMONITOR_INFO_1W is access all MONITOR_INFO_1W;
   -- type LPMONITOR_INFO_2A is access all MONITOR_INFO_2A;
   -- type PMONITOR_INFO_2A is access all MONITOR_INFO_2A;
   -- type LPMONITOR_INFO_2W is access all MONITOR_INFO_2W;
   -- type PMONITOR_INFO_2W is access all MONITOR_INFO_2W;
   -- type LPDATATYPES_INFO_1A is access all DATATYPES_INFO_1A;
   -- type PDATATYPES_INFO_1A is access all DATATYPES_INFO_1A;
   -- type LPDATATYPES_INFO_1W is access all DATATYPES_INFO_1W;
   -- type PDATATYPES_INFO_1W is access all DATATYPES_INFO_1W;
   -- type LPPRINTER_DEFAULTSA is access all PRINTER_DEFAULTSA;
   -- type PPRINTER_DEFAULTSA is access all PRINTER_DEFAULTSA;
   -- type LPPRINTER_DEFAULTSW is access all PRINTER_DEFAULTSW;
   -- type PPRINTER_DEFAULTSW is access all PRINTER_DEFAULTSW;
   -- type LPPRINTER_ENUM_VALUESA is access all PRINTER_ENUM_VALUESA;
   -- type PPRINTER_ENUM_VALUESA is access all PRINTER_ENUM_VALUESA;
   -- type LPPRINTER_ENUM_VALUESW is access all PRINTER_ENUM_VALUESW;
   -- type PPRINTER_ENUM_VALUESW is access all PRINTER_ENUM_VALUESW;
   -- type PPRINTER_NOTIFY_OPTIONS_TYPE is access all PRINTER_NOTIFY_OPTIONS_TYPE;
   -- type LPPRINTER_NOTIFY_OPTIONS_TYPE is access all PRINTER_NOTIFY_OPTIONS_TYPE;
   -- type PPRINTER_NOTIFY_OPTIONS is access all PRINTER_NOTIFY_OPTIONS;
   -- type LPPRINTER_NOTIFY_OPTIONS is access all PRINTER_NOTIFY_OPTIONS;
   -- type PPRINTER_NOTIFY_INFO_DATA is access all PRINTER_NOTIFY_INFO_DATA;
   -- type LPPRINTER_NOTIFY_INFO_DATA is access all PRINTER_NOTIFY_INFO_DATA;
   -- type PPRINTER_NOTIFY_INFO is access all PRINTER_NOTIFY_INFO;
   -- type LPPRINTER_NOTIFY_INFO is access all PRINTER_NOTIFY_INFO;
   -- type PBINARY_CONTAINER is access all BINARY_CONTAINER;
   -- type PBIDI_DATA is access all BIDI_DATA;
   -- type LPBIDI_DATA is access all BIDI_DATA;
   -- type PBIDI_REQUEST_DATA is access all BIDI_REQUEST_DATA;
   -- type LPBIDI_REQUEST_DATA is access all BIDI_REQUEST_DATA;
   -- type PBIDI_REQUEST_CONTAINER is access all BIDI_REQUEST_CONTAINER;
   -- type LPBIDI_REQUEST_CONTAINER is access all BIDI_REQUEST_CONTAINER;
   -- type PBIDI_RESPONSE_DATA is access all BIDI_RESPONSE_DATA;
   -- type LPBIDI_RESPONSE_DATA is access all BIDI_RESPONSE_DATA;
   -- type PBIDI_RESPONSE_CONTAINER is access all BIDI_RESPONSE_CONTAINER;
   -- type LPBIDI_RESPONSE_CONTAINER is access all BIDI_RESPONSE_CONTAINER;
   type BIDI_TYPE is (
      BIDI_NULL,
      BIDI_INT,
      BIDI_FLOAT,
      BIDI_BOOL,
      BIDI_STRING,
      BIDI_TEXT,
      BIDI_ENUM,
      BIDI_BLOB
   );
   for BIDI_TYPE use (
      BIDI_NULL => 0,
      BIDI_INT => 1,
      BIDI_FLOAT => 2,
      BIDI_BOOL => 3,
      BIDI_STRING => 4,
      BIDI_TEXT => 5,
      BIDI_ENUM => 6,
      BIDI_BLOB => 7
   );
   for BIDI_TYPE'Size use 32;
   
   -- type LPPROVIDOR_INFO_1A is access all PROVIDOR_INFO_1A;
   -- type PPROVIDOR_INFO_1A is access all PROVIDOR_INFO_1A;
   -- type LPPROVIDOR_INFO_1W is access all PROVIDOR_INFO_1W;
   -- type PPROVIDOR_INFO_1W is access all PROVIDOR_INFO_1W;
   -- type PPROVIDOR_INFO_2A is access all PROVIDOR_INFO_2A;
   -- type LPPROVIDOR_INFO_2A is access all PROVIDOR_INFO_2A;
   -- type LPPROVIDOR_INFO_2W is access all PROVIDOR_INFO_2W;
   -- type PPROVIDOR_INFO_2W is access all PROVIDOR_INFO_2W;
   type PRINTER_OPTION_FLAGS is (
      PRINTER_OPTION_NO_CACHE,
      PRINTER_OPTION_CACHE,
      PRINTER_OPTION_CLIENT_CHANGE,
      PRINTER_OPTION_NO_CLIENT_DATA
   );
   for PRINTER_OPTION_FLAGS use (
      PRINTER_OPTION_NO_CACHE => 1,
      PRINTER_OPTION_CACHE => 2,
      PRINTER_OPTION_CLIENT_CHANGE => 4,
      PRINTER_OPTION_NO_CLIENT_DATA => 8
   );
   for PRINTER_OPTION_FLAGS'Size use 32;
   
   -- type LPPRINTER_OPTIONSA is access all PRINTER_OPTIONSA;
   -- type PPRINTER_OPTIONSA is access all PRINTER_OPTIONSA;
   -- type PPRINTER_OPTIONSW is access all PRINTER_OPTIONSW;
   -- type LPPRINTER_OPTIONSW is access all PRINTER_OPTIONSW;
   -- type PPRINTER_CONNECTION_INFO_1A is access all PRINTER_CONNECTION_INFO_1A;
   -- type PPRINTER_CONNECTION_INFO_1W is access all PRINTER_CONNECTION_INFO_1W;
   -- type PCORE_PRINTER_DRIVERA is access all CORE_PRINTER_DRIVERA;
   -- type PCORE_PRINTER_DRIVERW is access all CORE_PRINTER_DRIVERW;
   type EPrintPropertyType is (
      kPropertyTypeString,
      kPropertyTypeInt32,
      kPropertyTypeInt64,
      kPropertyTypeByte,
      kPropertyTypeTime,
      kPropertyTypeDevMode,
      kPropertyTypeSD,
      kPropertyTypeNotificationReply,
      kPropertyTypeNotificationOptions,
      kPropertyTypeBuffer
   );
   for EPrintPropertyType use (
      kPropertyTypeString => 1,
      kPropertyTypeInt32 => 2,
      kPropertyTypeInt64 => 3,
      kPropertyTypeByte => 4,
      kPropertyTypeTime => 5,
      kPropertyTypeDevMode => 6,
      kPropertyTypeSD => 7,
      kPropertyTypeNotificationReply => 8,
      kPropertyTypeNotificationOptions => 9,
      kPropertyTypeBuffer => 10
   );
   for EPrintPropertyType'Size use 32;
   
   type EPrintXPSJobProgress is (
      kAddingDocumentSequence,
      kDocumentSequenceAdded,
      kAddingFixedDocument,
      kFixedDocumentAdded,
      kAddingFixedPage,
      kFixedPageAdded,
      kResourceAdded,
      kFontAdded,
      kImageAdded,
      kXpsDocumentCommitted
   );
   for EPrintXPSJobProgress use (
      kAddingDocumentSequence => 0,
      kDocumentSequenceAdded => 1,
      kAddingFixedDocument => 2,
      kFixedDocumentAdded => 3,
      kAddingFixedPage => 4,
      kFixedPageAdded => 5,
      kResourceAdded => 6,
      kFontAdded => 7,
      kImageAdded => 8,
      kXpsDocumentCommitted => 9
   );
   for EPrintXPSJobProgress'Size use 32;
   
   type EPrintXPSJobOperation is (
      kJobProduction,
      kJobConsumption
   );
   for EPrintXPSJobOperation use (
      kJobProduction => 1,
      kJobConsumption => 2
   );
   for EPrintXPSJobOperation'Size use 32;
   
   type PRINT_EXECUTION_CONTEXT is (
      PRINT_EXECUTION_CONTEXT_APPLICATION,
      PRINT_EXECUTION_CONTEXT_SPOOLER_SERVICE,
      PRINT_EXECUTION_CONTEXT_SPOOLER_ISOLATION_HOST,
      PRINT_EXECUTION_CONTEXT_FILTER_PIPELINE,
      PRINT_EXECUTION_CONTEXT_WOW64
   );
   for PRINT_EXECUTION_CONTEXT use (
      PRINT_EXECUTION_CONTEXT_APPLICATION => 0,
      PRINT_EXECUTION_CONTEXT_SPOOLER_SERVICE => 1,
      PRINT_EXECUTION_CONTEXT_SPOOLER_ISOLATION_HOST => 2,
      PRINT_EXECUTION_CONTEXT_FILTER_PIPELINE => 3,
      PRINT_EXECUTION_CONTEXT_WOW64 => 4
   );
   for PRINT_EXECUTION_CONTEXT'Size use 32;
   
   -- C:\Program Files (x86)\Windows Kits\10\include\10.0.16299.0\um\prsht.h
   type PSP is null record; -- Incomplete/Opaque Type
   type HPROPSHEETPAGE is access all PSP;
   -- type PROPSHEETPAGEA; -- forward declaration
   -- type PROPSHEETPAGEW; -- forward declaration
   -- type LPPROPSHEETPAGEA_V1 is access all PROPSHEETPAGEA_V1;
   -- type LPCPROPSHEETPAGEA_V1 is access all PROPSHEETPAGEA_V1;
   -- type LPPROPSHEETPAGEA_V2 is access all PROPSHEETPAGEA_V2;
   -- type LPCPROPSHEETPAGEA_V2 is access all PROPSHEETPAGEA_V2;
   -- type LPPROPSHEETPAGEA_V3 is access all PROPSHEETPAGEA_V3;
   -- type LPCPROPSHEETPAGEA_V3 is access all PROPSHEETPAGEA_V3;
   -- type LPPROPSHEETPAGEA_V4 is access all PROPSHEETPAGEA;
   -- type LPCPROPSHEETPAGEA_V4 is access all PROPSHEETPAGEA_V4;
   -- type LPPROPSHEETPAGEW_V1 is access all PROPSHEETPAGEW_V1;
   -- type LPCPROPSHEETPAGEW_V1 is access all PROPSHEETPAGEW_V1;
   -- type LPPROPSHEETPAGEW_V2 is access all PROPSHEETPAGEW_V2;
   -- type LPCPROPSHEETPAGEW_V2 is access all PROPSHEETPAGEW_V2;
   -- type LPPROPSHEETPAGEW_V3 is access all PROPSHEETPAGEW_V3;
   -- type LPCPROPSHEETPAGEW_V3 is access all PROPSHEETPAGEW_V3;
   -- type LPPROPSHEETPAGEW_V4 is access all PROPSHEETPAGEW;
   -- type LPCPROPSHEETPAGEW_V4 is access all PROPSHEETPAGEW_V4;
   -- type LPPROPSHEETHEADERA_V1 is access all PROPSHEETHEADERA_V1;
   -- type LPCPROPSHEETHEADERA_V1 is access all PROPSHEETHEADERA_V1;
   -- type LPPROPSHEETHEADERA_V2 is access all PROPSHEETHEADERA_V2;
   -- type LPCPROPSHEETHEADERA_V2 is access all PROPSHEETHEADERA_V2;
   -- type LPPROPSHEETHEADERW_V1 is access all PROPSHEETHEADERW_V1;
   -- type LPCPROPSHEETHEADERW_V1 is access all PROPSHEETHEADERW_V1;
   -- type LPPROPSHEETHEADERW_V2 is access all PROPSHEETHEADERW_V2;
   -- type LPCPROPSHEETHEADERW_V2 is access all PROPSHEETHEADERW_V2;
   -- type LPPSHNOTIFY is access all PSHNOTIFY;
   -- C:\Program Files (x86)\Windows Kits\10\include\10.0.16299.0\um\ole2.h
   -- type LPOLESTREAM is access all OLESTREAM;
   -- type OLESTREAM; -- forward declaration
   -- type LPOLESTREAMVTBL is access all OLESTREAMVTBL;
   -- C:\Program Files (x86)\Windows Kits\10\include\10.0.16299.0\um\objbase.h
   type tagCOINIT is (
      COINIT_MULTITHREADED,
      COINIT_APARTMENTTHREADED,
      COINIT_DISABLE_OLE1DDE,
      COINIT_SPEED_OVER_MEMORY
   );
   for tagCOINIT use (
      COINIT_MULTITHREADED => 0,
      COINIT_APARTMENTTHREADED => 2,
      COINIT_DISABLE_OLE1DDE => 4,
      COINIT_SPEED_OVER_MEMORY => 8
   );
   for tagCOINIT'Size use 32;
   
   type tagCOMSD is (
      SD_LAUNCHPERMISSIONS,
      SD_ACCESSPERMISSIONS,
      SD_LAUNCHRESTRICTIONS,
      SD_ACCESSRESTRICTIONS
   );
   for tagCOMSD use (
      SD_LAUNCHPERMISSIONS => 0,
      SD_ACCESSPERMISSIONS => 1,
      SD_LAUNCHRESTRICTIONS => 2,
      SD_ACCESSRESTRICTIONS => 3
   );
   for tagCOMSD'Size use 32;
   
   -- C:\Program Files (x86)\Windows Kits\10\include\10.0.16299.0\um\combaseapi.h
   type tagREGCLS is (
      REGCLS_SINGLEUSE,
      REGCLS_MULTIPLEUSE,
      REGCLS_MULTI_SEPARATE,
      REGCLS_SUSPENDED,
      REGCLS_SURROGATE,
      REGCLS_AGILE
   );
   for tagREGCLS use (
      REGCLS_SINGLEUSE => 0,
      REGCLS_MULTIPLEUSE => 1,
      REGCLS_MULTI_SEPARATE => 2,
      REGCLS_SUSPENDED => 4,
      REGCLS_SURROGATE => 8,
      REGCLS_AGILE => 16
   );
   for tagREGCLS'Size use 32;
   
   type tagCOINITBASE is (
      COINITBASE_MULTITHREADED
   );
   for tagCOINITBASE use (
      COINITBASE_MULTITHREADED => 0
   );
   for tagCOINITBASE'Size use 32;
   
   -- type PServerInformation is access all tagServerInformation;
   -- type CO_MTA_USAGE_COOKIE is access all CO_MTA_USAGE_COOKIE_x;
   type tagSTDMSHLFLAGS is (
      SMEXF_SERVER,
      SMEXF_HANDLER
   );
   for tagSTDMSHLFLAGS use (
      SMEXF_SERVER => 1,
      SMEXF_HANDLER => 2
   );
   for tagSTDMSHLFLAGS'Size use 32;
   
   -- type tagPROPVARIANT; -- forward declaration
   type tagCOWAIT_FLAGS is (
      COWAIT_DEFAULT,
      COWAIT_WAITALL,
      COWAIT_ALERTABLE,
      COWAIT_INPUTAVAILABLE,
      COWAIT_DISPATCH_CALLS,
      COWAIT_DISPATCH_WINDOW_MESSAGES
   );
   for tagCOWAIT_FLAGS use (
      COWAIT_DEFAULT => 0,
      COWAIT_WAITALL => 1,
      COWAIT_ALERTABLE => 2,
      COWAIT_INPUTAVAILABLE => 4,
      COWAIT_DISPATCH_CALLS => 8,
      COWAIT_DISPATCH_WINDOW_MESSAGES => 16
   );
   for tagCOWAIT_FLAGS'Size use 32;
   
   type CWMO_FLAGS is (
      CWMO_DEFAULT,
      CWMO_DISPATCH_CALLS,
      CWMO_DISPATCH_WINDOW_MESSAGES
   );
   for CWMO_FLAGS use (
      CWMO_DEFAULT => 0,
      CWMO_DISPATCH_CALLS => 1,
      CWMO_DISPATCH_WINDOW_MESSAGES => 2
   );
   for CWMO_FLAGS'Size use 32;
   
   type AgileReferenceOptions is (
      AGILEREFERENCE_DEFAULT,
      AGILEREFERENCE_DELAYEDMARSHAL
   );
   for AgileReferenceOptions use (
      AGILEREFERENCE_DEFAULT => 0,
      AGILEREFERENCE_DELAYEDMARSHAL => 1
   );
   for AgileReferenceOptions'Size use 32;
   
   -- C:\Program Files (x86)\Windows Kits\10\include\10.0.16299.0\ucrt\corecrt_malloc.h
   -- C:\Program Files (x86)\Windows Kits\10\include\10.0.16299.0\ucrt\stddef.h
   -- C:\Program Files (x86)\Windows Kits\10\include\10.0.16299.0\ucrt\corecrt_search.h
   -- C:\Program Files (x86)\Windows Kits\10\include\10.0.16299.0\ucrt\corecrt_wstdlib.h
   -- C:\Program Files (x86)\Windows Kits\10\include\10.0.16299.0\ucrt\stdlib.h
   -- C:\Program Files (x86)\Windows Kits\10\include\10.0.16299.0\um\unknwnbase.h
   -- type IUnknown; -- forward declaration
   -- type AsyncIUnknown; -- forward declaration
   -- type IClassFactory; -- forward declaration
   -- type LPUNKNOWN is access all IUnknown;
   -- type LPCLASSFACTORY is access all IClassFactory;
   -- C:\Program Files (x86)\Windows Kits\10\include\10.0.16299.0\um\objidlbase.h
   -- type IMarshal; -- forward declaration
   -- type INoMarshal; -- forward declaration
   -- type IAgileObject; -- forward declaration
   -- type IActivationFilter; -- forward declaration
   -- type IMarshal2; -- forward declaration
   -- type IMalloc; -- forward declaration
   -- type IStdMarshalInfo; -- forward declaration
   -- type IExternalConnection; -- forward declaration
   -- type IMultiQI; -- forward declaration
   -- type AsyncIMultiQI; -- forward declaration
   -- type IInternalUnknown; -- forward declaration
   -- type IEnumUnknown; -- forward declaration
   -- type IEnumString; -- forward declaration
   -- type ISequentialStream; -- forward declaration
   -- type IStream; -- forward declaration
   -- type IRpcChannelBuffer2; -- forward declaration
   -- type IAsyncRpcChannelBuffer; -- forward declaration
   -- type IRpcChannelBuffer3; -- forward declaration
   -- type IRpcSyntaxNegotiate; -- forward declaration
   -- type IRpcProxyBuffer; -- forward declaration
   -- type IPSFactoryBuffer; -- forward declaration
   -- type IChannelHook; -- forward declaration
   -- type IClientSecurity; -- forward declaration
   -- type IServerSecurity; -- forward declaration
   -- type IRpcOptions; -- forward declaration
   -- type IGlobalOptions; -- forward declaration
   -- type ISurrogate; -- forward declaration
   -- type IGlobalInterfaceTable; -- forward declaration
   -- type ISynchronize; -- forward declaration
   -- type ISynchronizeHandle; -- forward declaration
   -- type ISynchronizeEvent; -- forward declaration
   -- type ISynchronizeContainer; -- forward declaration
   -- type ISynchronizeMutex; -- forward declaration
   -- type ICancelMethodCalls; -- forward declaration
   -- type IAsyncManager; -- forward declaration
   -- type ICallFactory; -- forward declaration
   -- type IRpcHelper; -- forward declaration
   -- type IReleaseMarshalBuffers; -- forward declaration
   -- type IWaitMultiple; -- forward declaration
   -- type IAddrTrackingControl; -- forward declaration
   -- type IAddrExclusionControl; -- forward declaration
   -- type IPipeByte; -- forward declaration
   -- type AsyncIPipeByte; -- forward declaration
   -- type IPipeLong; -- forward declaration
   -- type AsyncIPipeLong; -- forward declaration
   -- type IPipeDouble; -- forward declaration
   -- type AsyncIPipeDouble; -- forward declaration
   type IEnumContextProps is null record; -- Incomplete/Opaque Type
   type IContext is null record; -- Incomplete/Opaque Type
   type IObjContext is null record; -- Incomplete/Opaque Type
   -- type IComThreadingInfo; -- forward declaration
   -- type IProcessInitControl; -- forward declaration
   -- type IFastRundown; -- forward declaration
   -- type IMarshalingStream; -- forward declaration
   -- type IAgileReference; -- forward declaration
   -- type LPMARSHAL is access all IMarshal;
   type tagACTIVATIONTYPE is (
      ACTIVATIONTYPE_UNCATEGORIZED,
      ACTIVATIONTYPE_FROM_MONIKER,
      ACTIVATIONTYPE_FROM_DATA,
      ACTIVATIONTYPE_FROM_STORAGE,
      ACTIVATIONTYPE_FROM_STREAM,
      ACTIVATIONTYPE_FROM_FILE
   );
   for tagACTIVATIONTYPE use (
      ACTIVATIONTYPE_UNCATEGORIZED => 0,
      ACTIVATIONTYPE_FROM_MONIKER => 1,
      ACTIVATIONTYPE_FROM_DATA => 2,
      ACTIVATIONTYPE_FROM_STORAGE => 4,
      ACTIVATIONTYPE_FROM_STREAM => 8,
      ACTIVATIONTYPE_FROM_FILE => 16
   );
   for tagACTIVATIONTYPE'Size use 32;
   
   -- type LPMARSHAL2 is access all IMarshal2;
   -- type LPMALLOC is access all IMalloc;
   -- type LPSTDMARSHALINFO is access all IStdMarshalInfo;
   -- type LPEXTERNALCONNECTION is access all IExternalConnection;
   type tagEXTCONN is (
      EXTCONN_STRONG,
      EXTCONN_WEAK,
      EXTCONN_CALLABLE
   );
   for tagEXTCONN use (
      EXTCONN_STRONG => 1,
      EXTCONN_WEAK => 2,
      EXTCONN_CALLABLE => 4
   );
   for tagEXTCONN'Size use 32;
   
   -- type LPMULTIQI is access all IMultiQI;
   -- type LPENUMUNKNOWN is access all IEnumUnknown;
   -- type LPENUMSTRING is access all IEnumString;
   -- type LPSTREAM is access all IStream;
   type tagSTGTY is (
      STGTY_STORAGE,
      STGTY_STREAM,
      STGTY_LOCKBYTES,
      STGTY_PROPERTY
   );
   for tagSTGTY use (
      STGTY_STORAGE => 1,
      STGTY_STREAM => 2,
      STGTY_LOCKBYTES => 3,
      STGTY_PROPERTY => 4
   );
   for tagSTGTY'Size use 32;
   
   type tagSTREAM_SEEK is (
      STREAM_SEEK_SET,
      STREAM_SEEK_CUR,
      STREAM_SEEK_END
   );
   for tagSTREAM_SEEK use (
      STREAM_SEEK_SET => 0,
      STREAM_SEEK_CUR => 1,
      STREAM_SEEK_END => 2
   );
   for tagSTREAM_SEEK'Size use 32;
   
   type tagLOCKTYPE is (
      LOCK_WRITE,
      LOCK_EXCLUSIVE,
      LOCK_ONLYONCE
   );
   for tagLOCKTYPE use (
      LOCK_WRITE => 1,
      LOCK_EXCLUSIVE => 2,
      LOCK_ONLYONCE => 4
   );
   for tagLOCKTYPE'Size use 32;
   
   -- type PRPCOLEMESSAGE is access all RPCOLEMESSAGE;
   -- type PSOLE_AUTHENTICATION_SERVICE is access all SOLE_AUTHENTICATION_SERVICE;
   type tagEOLE_AUTHENTICATION_CAPABILITIES is (
      EOAC_NONE,
      EOAC_MUTUAL_AUTH,
      EOAC_SECURE_REFS,
      EOAC_ACCESS_CONTROL,
      EOAC_APPID,
      EOAC_DYNAMIC,
      EOAC_STATIC_CLOAKING,
      EOAC_DYNAMIC_CLOAKING,
      EOAC_ANY_AUTHORITY,
      EOAC_MAKE_FULLSIC,
      EOAC_REQUIRE_FULLSIC,
      EOAC_AUTO_IMPERSONATE,
      EOAC_DEFAULT,
      EOAC_DISABLE_AAA,
      EOAC_NO_CUSTOM_MARSHAL,
      EOAC_RESERVED1
   );
   for tagEOLE_AUTHENTICATION_CAPABILITIES use (
      EOAC_NONE => 0,
      EOAC_MUTUAL_AUTH => 1,
      EOAC_SECURE_REFS => 2,
      EOAC_ACCESS_CONTROL => 4,
      EOAC_APPID => 8,
      EOAC_DYNAMIC => 16,
      EOAC_STATIC_CLOAKING => 32,
      EOAC_DYNAMIC_CLOAKING => 64,
      EOAC_ANY_AUTHORITY => 128,
      EOAC_MAKE_FULLSIC => 256,
      EOAC_REQUIRE_FULLSIC => 512,
      EOAC_AUTO_IMPERSONATE => 1024,
      EOAC_DEFAULT => 2048,
      EOAC_DISABLE_AAA => 4096,
      EOAC_NO_CUSTOM_MARSHAL => 8192,
      EOAC_RESERVED1 => 16384
   );
   for tagEOLE_AUTHENTICATION_CAPABILITIES'Size use 32;
   
   -- type PSOLE_AUTHENTICATION_INFO is access all tagSOLE_AUTHENTICATION_INFO;
   -- type PSOLE_AUTHENTICATION_LIST is access all tagSOLE_AUTHENTICATION_LIST;
   type tagRPCOPT_PROPERTIES is (
      COMBND_RPCTIMEOUT,
      COMBND_SERVER_LOCALITY,
      COMBND_RESERVED1,
      COMBND_RESERVED2,
      COMBND_RESERVED3,
      COMBND_RESERVED4
   );
   for tagRPCOPT_PROPERTIES use (
      COMBND_RPCTIMEOUT => 1,
      COMBND_SERVER_LOCALITY => 2,
      COMBND_RESERVED1 => 4,
      COMBND_RESERVED2 => 5,
      COMBND_RESERVED3 => 8,
      COMBND_RESERVED4 => 16
   );
   for tagRPCOPT_PROPERTIES'Size use 32;
   
   type tagRPCOPT_SERVER_LOCALITY_VALUES is (
      SERVER_LOCALITY_PROCESS_LOCAL,
      SERVER_LOCALITY_MACHINE_LOCAL,
      SERVER_LOCALITY_REMOTE
   );
   for tagRPCOPT_SERVER_LOCALITY_VALUES use (
      SERVER_LOCALITY_PROCESS_LOCAL => 0,
      SERVER_LOCALITY_MACHINE_LOCAL => 1,
      SERVER_LOCALITY_REMOTE => 2
   );
   for tagRPCOPT_SERVER_LOCALITY_VALUES'Size use 32;
   
   type tagGLOBALOPT_PROPERTIES is (
      COMGLB_EXCEPTION_HANDLING,
      COMGLB_APPID,
      COMGLB_RPC_THREADPOOL_SETTING,
      COMGLB_RO_SETTINGS,
      COMGLB_UNMARSHALING_POLICY,
      COMGLB_PROPERTIES_RESERVED1
   );
   for tagGLOBALOPT_PROPERTIES use (
      COMGLB_EXCEPTION_HANDLING => 1,
      COMGLB_APPID => 2,
      COMGLB_RPC_THREADPOOL_SETTING => 3,
      COMGLB_RO_SETTINGS => 4,
      COMGLB_UNMARSHALING_POLICY => 5,
      COMGLB_PROPERTIES_RESERVED1 => 6
   );
   for tagGLOBALOPT_PROPERTIES'Size use 32;
   
   type tagGLOBALOPT_EH_VALUES is (
      COMGLB_EXCEPTION_HANDLE,
      COMGLB_EXCEPTION_DONOT_HANDLE_FATAL,
      COMGLB_EXCEPTION_DONOT_HANDLE_ANY
   );
   for tagGLOBALOPT_EH_VALUES use (
      COMGLB_EXCEPTION_HANDLE => 0,
      COMGLB_EXCEPTION_DONOT_HANDLE_FATAL => 1,
      COMGLB_EXCEPTION_DONOT_HANDLE_ANY => 2
   );
   for tagGLOBALOPT_EH_VALUES'Size use 32;
   
   type tagGLOBALOPT_RPCTP_VALUES is (
      COMGLB_RPC_THREADPOOL_SETTING_DEFAULT_POOL,
      COMGLB_RPC_THREADPOOL_SETTING_PRIVATE_POOL
   );
   for tagGLOBALOPT_RPCTP_VALUES use (
      COMGLB_RPC_THREADPOOL_SETTING_DEFAULT_POOL => 0,
      COMGLB_RPC_THREADPOOL_SETTING_PRIVATE_POOL => 1
   );
   for tagGLOBALOPT_RPCTP_VALUES'Size use 32;
   
   type tagGLOBALOPT_RO_FLAGS is (
      COMGLB_STA_MODALLOOP_REMOVE_TOUCH_MESSAGES,
      COMGLB_STA_MODALLOOP_SHARED_QUEUE_REMOVE_INPUT_MESSAGES,
      COMGLB_STA_MODALLOOP_SHARED_QUEUE_DONOT_REMOVE_INPUT_MESSAGES,
      COMGLB_FAST_RUNDOWN,
      COMGLB_RESERVED1,
      COMGLB_RESERVED2,
      COMGLB_RESERVED3,
      COMGLB_STA_MODALLOOP_SHARED_QUEUE_REORDER_POINTER_MESSAGES,
      COMGLB_RESERVED4,
      COMGLB_RESERVED5,
      COMGLB_RESERVED6
   );
   for tagGLOBALOPT_RO_FLAGS use (
      COMGLB_STA_MODALLOOP_REMOVE_TOUCH_MESSAGES => 1,
      COMGLB_STA_MODALLOOP_SHARED_QUEUE_REMOVE_INPUT_MESSAGES => 2,
      COMGLB_STA_MODALLOOP_SHARED_QUEUE_DONOT_REMOVE_INPUT_MESSAGES => 4,
      COMGLB_FAST_RUNDOWN => 8,
      COMGLB_RESERVED1 => 16,
      COMGLB_RESERVED2 => 32,
      COMGLB_RESERVED3 => 64,
      COMGLB_STA_MODALLOOP_SHARED_QUEUE_REORDER_POINTER_MESSAGES => 128,
      COMGLB_RESERVED4 => 256,
      COMGLB_RESERVED5 => 512,
      COMGLB_RESERVED6 => 1024
   );
   for tagGLOBALOPT_RO_FLAGS'Size use 32;
   
   type tagGLOBALOPT_UNMARSHALING_POLICY_VALUES is (
      COMGLB_UNMARSHALING_POLICY_NORMAL,
      COMGLB_UNMARSHALING_POLICY_STRONG,
      COMGLB_UNMARSHALING_POLICY_HYBRID
   );
   for tagGLOBALOPT_UNMARSHALING_POLICY_VALUES use (
      COMGLB_UNMARSHALING_POLICY_NORMAL => 0,
      COMGLB_UNMARSHALING_POLICY_STRONG => 1,
      COMGLB_UNMARSHALING_POLICY_HYBRID => 2
   );
   for tagGLOBALOPT_UNMARSHALING_POLICY_VALUES'Size use 32;
   
   -- type LPSURROGATE is access all ISurrogate;
   -- type LPGLOBALINTERFACETABLE is access all IGlobalInterfaceTable;
   -- type LPCANCELMETHODCALLS is access all ICancelMethodCalls;
   type tagDCOM_CALL_STATE is (
      DCOM_NONE,
      DCOM_CALL_COMPLETE,
      DCOM_CALL_CANCELED
   );
   for tagDCOM_CALL_STATE use (
      DCOM_NONE => 0,
      DCOM_CALL_COMPLETE => 1,
      DCOM_CALL_CANCELED => 2
   );
   for tagDCOM_CALL_STATE'Size use 32;
   
   -- type LPADDRTRACKINGCONTROL is access all IAddrTrackingControl;
   -- type LPADDREXCLUSIONCONTROL is access all IAddrExclusionControl;
   type APTTYPEQUALIFIER is (
      APTTYPEQUALIFIER_NONE,
      APTTYPEQUALIFIER_IMPLICIT_MTA,
      APTTYPEQUALIFIER_NA_ON_MTA,
      APTTYPEQUALIFIER_NA_ON_STA,
      APTTYPEQUALIFIER_NA_ON_IMPLICIT_MTA,
      APTTYPEQUALIFIER_NA_ON_MAINSTA,
      APTTYPEQUALIFIER_APPLICATION_STA
   );
   for APTTYPEQUALIFIER use (
      APTTYPEQUALIFIER_NONE => 0,
      APTTYPEQUALIFIER_IMPLICIT_MTA => 1,
      APTTYPEQUALIFIER_NA_ON_MTA => 2,
      APTTYPEQUALIFIER_NA_ON_STA => 3,
      APTTYPEQUALIFIER_NA_ON_IMPLICIT_MTA => 4,
      APTTYPEQUALIFIER_NA_ON_MAINSTA => 5,
      APTTYPEQUALIFIER_APPLICATION_STA => 6
   );
   for APTTYPEQUALIFIER'Size use 32;
   
   type APTTYPE is (
      APTTYPE_CURRENT,
      APTTYPE_STA,
      APTTYPE_MTA,
      APTTYPE_NA,
      APTTYPE_MAINSTA
   );
   for APTTYPE use (
      APTTYPE_CURRENT => -1,
      APTTYPE_STA => 0,
      APTTYPE_MTA => 1,
      APTTYPE_NA => 2,
      APTTYPE_MAINSTA => 3
   );
   for APTTYPE'Size use 32;
   
   type THDTYPE is (
      THDTYPE_BLOCKMESSAGES,
      THDTYPE_PROCESSMESSAGES
   );
   for THDTYPE use (
      THDTYPE_BLOCKMESSAGES => 0,
      THDTYPE_PROCESSMESSAGES => 1
   );
   for THDTYPE'Size use 32;
   
   type CO_MARSHALING_CONTEXT_ATTRIBUTES is (
      CO_MARSHALING_CONTEXT_ATTRIBUTE_RESERVED_1,
      CO_MARSHALING_CONTEXT_ATTRIBUTE_RESERVED_2,
      CO_MARSHALING_CONTEXT_ATTRIBUTE_RESERVED_3,
      CO_MARSHALING_CONTEXT_ATTRIBUTE_RESERVED_4,
      CO_MARSHALING_CONTEXT_ATTRIBUTE_RESERVED_5,
      CO_MARSHALING_CONTEXT_ATTRIBUTE_RESERVED_6,
      CO_MARSHALING_CONTEXT_ATTRIBUTE_RESERVED_7,
      CO_MARSHALING_CONTEXT_ATTRIBUTE_RESERVED_8,
      CO_MARSHALING_CONTEXT_ATTRIBUTE_RESERVED_9,
      CO_MARSHALING_SOURCE_IS_APP_CONTAINER
   );
   for CO_MARSHALING_CONTEXT_ATTRIBUTES use (
      CO_MARSHALING_CONTEXT_ATTRIBUTE_RESERVED_1 => -2147483648,
      CO_MARSHALING_CONTEXT_ATTRIBUTE_RESERVED_2 => -2147483647,
      CO_MARSHALING_CONTEXT_ATTRIBUTE_RESERVED_3 => -2147483646,
      CO_MARSHALING_CONTEXT_ATTRIBUTE_RESERVED_4 => -2147483645,
      CO_MARSHALING_CONTEXT_ATTRIBUTE_RESERVED_5 => -2147483644,
      CO_MARSHALING_CONTEXT_ATTRIBUTE_RESERVED_6 => -2147483643,
      CO_MARSHALING_CONTEXT_ATTRIBUTE_RESERVED_7 => -2147483642,
      CO_MARSHALING_CONTEXT_ATTRIBUTE_RESERVED_8 => -2147483641,
      CO_MARSHALING_CONTEXT_ATTRIBUTE_RESERVED_9 => -2147483640,
      CO_MARSHALING_SOURCE_IS_APP_CONTAINER => 0
   );
   for CO_MARSHALING_CONTEXT_ATTRIBUTES'Size use 32;
   
   -- C:\Program Files (x86)\Windows Kits\10\include\10.0.16299.0\um\cguid.h
   -- C:\Program Files (x86)\Windows Kits\10\include\10.0.16299.0\um\coml2api.h
   -- C:\Program Files (x86)\Windows Kits\10\include\10.0.16299.0\um\objidl.h
   -- type IMallocSpy; -- forward declaration
   -- type IBindCtx; -- forward declaration
   -- type IEnumMoniker; -- forward declaration
   -- type IRunnableObject; -- forward declaration
   -- type IRunningObjectTable; -- forward declaration
   -- type IPersist; -- forward declaration
   -- type IPersistStream; -- forward declaration
   -- type IMoniker; -- forward declaration
   -- type IROTData; -- forward declaration
   -- type IEnumSTATSTG; -- forward declaration
   -- type IStorage; -- forward declaration
   -- type IPersistFile; -- forward declaration
   -- type IPersistStorage; -- forward declaration
   -- type ILockBytes; -- forward declaration
   -- type IEnumFORMATETC; -- forward declaration
   -- type IEnumSTATDATA; -- forward declaration
   -- type IRootStorage; -- forward declaration
   -- type IAdviseSink; -- forward declaration
   -- type AsyncIAdviseSink; -- forward declaration
   -- type IAdviseSink2; -- forward declaration
   -- type AsyncIAdviseSink2; -- forward declaration
   -- type IDataObject; -- forward declaration
   -- type IDataAdviseHolder; -- forward declaration
   -- type IMessageFilter; -- forward declaration
   -- type IClassActivator; -- forward declaration
   -- type IFillLockBytes; -- forward declaration
   -- type IProgressNotify; -- forward declaration
   -- type ILayoutStorage; -- forward declaration
   -- type IBlockingLock; -- forward declaration
   -- type ITimeAndNoticeControl; -- forward declaration
   -- type IOplockStorage; -- forward declaration
   -- type IDirectWriterLock; -- forward declaration
   -- type IUrlMon; -- forward declaration
   -- type IForegroundTransfer; -- forward declaration
   -- type IThumbnailExtractor; -- forward declaration
   -- type IDummyHICONIncluder; -- forward declaration
   -- type IProcessLock; -- forward declaration
   -- type ISurrogateService; -- forward declaration
   -- type IInitializeSpy; -- forward declaration
   -- type IApartmentShutdown; -- forward declaration
   -- type LPMALLOCSPY is access all IMallocSpy;
   -- type LPBC is access all IBindCtx;
   -- type LPBINDCTX is access all IBindCtx;
   -- type LPBIND_OPTS is access all tagBIND_OPTS;
   -- type LPBIND_OPTS2 is access all tagBIND_OPTS2;
   -- type LPBIND_OPTS3 is access all tagBIND_OPTS3;
   type tagBIND_FLAGS is (
      BIND_MAYBOTHERUSER,
      BIND_JUSTTESTEXISTENCE
   );
   for tagBIND_FLAGS use (
      BIND_MAYBOTHERUSER => 1,
      BIND_JUSTTESTEXISTENCE => 2
   );
   for tagBIND_FLAGS'Size use 32;
   
   -- type LPENUMMONIKER is access all IEnumMoniker;
   -- type LPRUNNABLEOBJECT is access all IRunnableObject;
   -- type LPRUNNINGOBJECTTABLE is access all IRunningObjectTable;
   -- type LPPERSIST is access all IPersist;
   -- type LPPERSISTSTREAM is access all IPersistStream;
   -- type LPMONIKER is access all IMoniker;
   type tagMKSYS is (
      MKSYS_NONE,
      MKSYS_GENERICCOMPOSITE,
      MKSYS_FILEMONIKER,
      MKSYS_ANTIMONIKER,
      MKSYS_ITEMMONIKER,
      MKSYS_POINTERMONIKER,
      MKSYS_CLASSMONIKER,
      MKSYS_OBJREFMONIKER,
      MKSYS_SESSIONMONIKER,
      MKSYS_LUAMONIKER
   );
   for tagMKSYS use (
      MKSYS_NONE => 0,
      MKSYS_GENERICCOMPOSITE => 1,
      MKSYS_FILEMONIKER => 2,
      MKSYS_ANTIMONIKER => 3,
      MKSYS_ITEMMONIKER => 4,
      MKSYS_POINTERMONIKER => 5,
      MKSYS_CLASSMONIKER => 7,
      MKSYS_OBJREFMONIKER => 8,
      MKSYS_SESSIONMONIKER => 9,
      MKSYS_LUAMONIKER => 10
   );
   for tagMKSYS'Size use 32;
   
   type tagMKREDUCE is (
      MKRREDUCE_ALL,
      MKRREDUCE_THROUGHUSER,
      MKRREDUCE_TOUSER,
      MKRREDUCE_ONE
   );
   for tagMKREDUCE use (
      MKRREDUCE_ALL => 0,
      MKRREDUCE_THROUGHUSER => 65536,
      MKRREDUCE_TOUSER => 131072,
      MKRREDUCE_ONE => 196608
   );
   for tagMKREDUCE'Size use 32;
   
   -- type LPENUMSTATSTG is access all IEnumSTATSTG;
   -- type LPSTORAGE is access all IStorage;
   -- type wireSNB is access all RemSNB;
   -- type SNB is access all LPOLESTR;
   -- type LPPERSISTFILE is access all IPersistFile;
   -- type LPPERSISTSTORAGE is access all IPersistStorage;
   -- type LPLOCKBYTES is access all ILockBytes;
   -- type LPENUMFORMATETC is access all IEnumFORMATETC;
   -- type LPCLIPFORMAT is access all CLIPFORMAT;
   -- type LPFORMATETC is access all tagFORMATETC;
   -- type LPENUMSTATDATA is access all IEnumSTATDATA;
   type tagADVF is (
      ADVF_NODATA,
      ADVF_PRIMEFIRST,
      ADVF_ONLYONCE,
      ADVFCACHE_NOHANDLER,
      ADVFCACHE_FORCEBUILTIN,
      ADVFCACHE_ONSAVE,
      ADVF_DATAONSTOP
   );
   for tagADVF use (
      ADVF_NODATA => 1,
      ADVF_PRIMEFIRST => 2,
      ADVF_ONLYONCE => 4,
      ADVFCACHE_NOHANDLER => 8,
      ADVFCACHE_FORCEBUILTIN => 16,
      ADVFCACHE_ONSAVE => 32,
      ADVF_DATAONSTOP => 64
   );
   for tagADVF'Size use 32;
   
   -- type LPSTATDATA is access all STATDATA;
   -- type LPROOTSTORAGE is access all IRootStorage;
   -- type LPADVISESINK is access all IAdviseSink;
   type tagTYMED is (
      TYMED_NULL,
      TYMED_HGLOBAL,
      TYMED_FILE,
      TYMED_ISTREAM,
      TYMED_ISTORAGE,
      TYMED_GDI,
      TYMED_MFPICT,
      TYMED_ENHMF
   );
   for tagTYMED use (
      TYMED_NULL => 0,
      TYMED_HGLOBAL => 1,
      TYMED_FILE => 2,
      TYMED_ISTREAM => 4,
      TYMED_ISTORAGE => 8,
      TYMED_GDI => 16,
      TYMED_MFPICT => 32,
      TYMED_ENHMF => 64
   );
   for tagTYMED'Size use 32;
   
   -- type wireSTGMEDIUM is access all userSTGMEDIUM;
   -- type wireASYNC_STGMEDIUM is access all userSTGMEDIUM;
   -- type LPSTGMEDIUM is access all STGMEDIUM;
   -- type wireFLAG_STGMEDIUM is access all userFLAG_STGMEDIUM;
   -- type LPADVISESINK2 is access all IAdviseSink2;
   -- type LPDATAOBJECT is access all IDataObject;
   type tagDATADIR is (
      DATADIR_GET,
      DATADIR_SET
   );
   for tagDATADIR use (
      DATADIR_GET => 1,
      DATADIR_SET => 2
   );
   for tagDATADIR'Size use 32;
   
   -- type LPDATAADVISEHOLDER is access all IDataAdviseHolder;
   -- type LPMESSAGEFILTER is access all IMessageFilter;
   type tagCALLTYPE is (
      CALLTYPE_TOPLEVEL,
      CALLTYPE_NESTED,
      CALLTYPE_ASYNC,
      CALLTYPE_TOPLEVEL_CALLPENDING,
      CALLTYPE_ASYNC_CALLPENDING
   );
   for tagCALLTYPE use (
      CALLTYPE_TOPLEVEL => 1,
      CALLTYPE_NESTED => 2,
      CALLTYPE_ASYNC => 3,
      CALLTYPE_TOPLEVEL_CALLPENDING => 4,
      CALLTYPE_ASYNC_CALLPENDING => 5
   );
   for tagCALLTYPE'Size use 32;
   
   type tagSERVERCALL is (
      SERVERCALL_ISHANDLED,
      SERVERCALL_REJECTED,
      SERVERCALL_RETRYLATER
   );
   for tagSERVERCALL use (
      SERVERCALL_ISHANDLED => 0,
      SERVERCALL_REJECTED => 1,
      SERVERCALL_RETRYLATER => 2
   );
   for tagSERVERCALL'Size use 32;
   
   type tagPENDINGTYPE is (
      PENDINGTYPE_TOPLEVEL,
      PENDINGTYPE_NESTED
   );
   for tagPENDINGTYPE use (
      PENDINGTYPE_TOPLEVEL => 1,
      PENDINGTYPE_NESTED => 2
   );
   for tagPENDINGTYPE'Size use 32;
   
   type tagPENDINGMSG is (
      PENDINGMSG_CANCELCALL,
      PENDINGMSG_WAITNOPROCESS,
      PENDINGMSG_WAITDEFPROCESS
   );
   for tagPENDINGMSG use (
      PENDINGMSG_CANCELCALL => 0,
      PENDINGMSG_WAITNOPROCESS => 1,
      PENDINGMSG_WAITDEFPROCESS => 2
   );
   for tagPENDINGMSG'Size use 32;
   
   -- type LPINTERFACEINFO is access all tagINTERFACEINFO;
   type tagApplicationType is (
      ServerApplication,
      LibraryApplication
   );
   for tagApplicationType use (
      ServerApplication => 0,
      LibraryApplication => 1
   );
   for tagApplicationType'Size use 32;
   
   type tagShutdownType is (
      IdleShutdown,
      ForcedShutdown
   );
   for tagShutdownType use (
      IdleShutdown => 0,
      ForcedShutdown => 1
   );
   for tagShutdownType'Size use 32;
   
   -- type LPINITIALIZESPY is access all IInitializeSpy;
   -- C:\Program Files (x86)\Windows Kits\10\include\10.0.16299.0\um\unknwn.h
   -- C:\Program Files (x86)\Windows Kits\10\include\10.0.16299.0\um\propidlbase.h
   -- type IPropertyStorage; -- forward declaration
   -- type IPropertySetStorage; -- forward declaration
   -- type IEnumSTATPROPSTG; -- forward declaration
   -- type IEnumSTATPROPSETSTG; -- forward declaration
   -- type LPVERSIONEDSTREAM is access all tagVersionedStream;
   -- type LPPROPVARIANT is access all tagPROPVARIANT;
   -- type LPPROPERTYSETSTORAGE is access all IPropertySetStorage;
   -- type LPENUMSTATPROPSTG is access all IEnumSTATPROPSTG;
   -- type LPENUMSTATPROPSETSTG is access all IEnumSTATPROPSETSTG;
   -- type LPPROPERTYSTORAGE is access all IPropertyStorage;
   -- C:\Program Files (x86)\Windows Kits\10\include\10.0.16299.0\um\oaidl.h
   -- type ICreateTypeInfo; -- forward declaration
   -- type ICreateTypeInfo2; -- forward declaration
   -- type ICreateTypeLib; -- forward declaration
   -- type ICreateTypeLib2; -- forward declaration
   -- type IDispatch; -- forward declaration
   -- type IEnumVARIANT; -- forward declaration
   -- type ITypeComp; -- forward declaration
   -- type ITypeInfo; -- forward declaration
   -- type ITypeInfo2; -- forward declaration
   -- type ITypeLib; -- forward declaration
   -- type ITypeLib2; -- forward declaration
   -- type ITypeChangeEvents; -- forward declaration
   -- type IErrorInfo; -- forward declaration
   -- type ICreateErrorInfo; -- forward declaration
   -- type ISupportErrorInfo; -- forward declaration
   -- type ITypeFactory; -- forward declaration
   -- type ITypeMarshal; -- forward declaration
   -- type IRecordInfo; -- forward declaration
   -- type IErrorLog; -- forward declaration
   -- type IPropertyBag; -- forward declaration
   -- type ITypeLibRegistrationReader; -- forward declaration
   -- type ITypeLibRegistration; -- forward declaration
   -- type LPSAFEARRAYBOUND is access all tagSAFEARRAYBOUND;
   -- type wireVARIANT; -- forward declaration
   -- type wireVARIANT is access all wireVARIANT;
   -- type wireBRECORD is access all wireBRECORD;
   -- type wireBRECORD; -- forward declaration
   type tagSF_TYPE is (
      SF_I2,
      SF_I4,
      SF_BSTR,
      SF_DISPATCH,
      SF_ERROR,
      SF_VARIANT,
      SF_UNKNOWN,
      SF_I1,
      SF_I8,
      SF_RECORD,
      SF_HAVEIID
   );
   for tagSF_TYPE use (
      SF_I2 => 2,
      SF_I4 => 3,
      SF_BSTR => 8,
      SF_DISPATCH => 9,
      SF_ERROR => 10,
      SF_VARIANT => 12,
      SF_UNKNOWN => 13,
      SF_I1 => 16,
      SF_I8 => 20,
      SF_RECORD => 36,
      SF_HAVEIID => 32781
   );
   for tagSF_TYPE'Size use 32;
   
   -- type wireSAFEARRAY is access all wireSAFEARRAY;
   -- type wirePSAFEARRAY is access all wireSAFEARRAY;
   -- type LPSAFEARRAY is access all SAFEARRAY;
   -- type tagVARIANT; -- forward declaration
   -- type LPVARIANT is access all VARIANT;
   -- type LPVARIANTARG is access all VARIANT;
   type tagTYPEKIND is (
      TKIND_ENUM,
      TKIND_RECORD,
      TKIND_MODULE,
      TKIND_INTERFACE,
      TKIND_DISPATCH,
      TKIND_COCLASS,
      TKIND_ALIAS,
      TKIND_UNION,
      TKIND_MAX
   );
   for tagTYPEKIND use (
      TKIND_ENUM => 0,
      TKIND_RECORD => 1,
      TKIND_MODULE => 2,
      TKIND_INTERFACE => 3,
      TKIND_DISPATCH => 4,
      TKIND_COCLASS => 5,
      TKIND_ALIAS => 6,
      TKIND_UNION => 7,
      TKIND_MAX => 8
   );
   for tagTYPEKIND'Size use 32;
   
   -- type tagARRAYDESC; -- forward declaration
   -- type LPPARAMDESCEX is access all tagPARAMDESCEX;
   -- type LPPARAMDESC is access all tagPARAMDESC;
   -- type LPIDLDESC is access all tagIDLDESC;
   -- type LPELEMDESC is access all tagELEMDESC;
   -- type LPTYPEATTR is access all tagTYPEATTR;
   -- type LPEXCEPINFO is access all tagEXCEPINFO;
   type tagCALLCONV is (
      CC_FASTCALL,
      CC_CDECL,
      CC_MSCPASCAL,
      CC_MACPASCAL,
      CC_STDCALL,
      CC_FPFASTCALL,
      CC_SYSCALL,
      CC_MPWCDECL,
      CC_MPWPASCAL,
      CC_MAX
   );
   for tagCALLCONV use (
      CC_FASTCALL => 0,
      CC_CDECL => 1,
      CC_MSCPASCAL => 2,
      CC_MACPASCAL => 3,
      CC_STDCALL => 4,
      CC_FPFASTCALL => 5,
      CC_SYSCALL => 6,
      CC_MPWCDECL => 7,
      CC_MPWPASCAL => 8,
      CC_MAX => 9
   );
   for tagCALLCONV'Size use 32;
   
   type tagFUNCKIND is (
      FUNC_VIRTUAL,
      FUNC_PUREVIRTUAL,
      FUNC_NONVIRTUAL,
      FUNC_STATIC,
      FUNC_DISPATCH
   );
   for tagFUNCKIND use (
      FUNC_VIRTUAL => 0,
      FUNC_PUREVIRTUAL => 1,
      FUNC_NONVIRTUAL => 2,
      FUNC_STATIC => 3,
      FUNC_DISPATCH => 4
   );
   for tagFUNCKIND'Size use 32;
   
   type tagINVOKEKIND is (
      INVOKE_FUNC,
      INVOKE_PROPERTYGET,
      INVOKE_PROPERTYPUT,
      INVOKE_PROPERTYPUTREF
   );
   for tagINVOKEKIND use (
      INVOKE_FUNC => 1,
      INVOKE_PROPERTYGET => 2,
      INVOKE_PROPERTYPUT => 4,
      INVOKE_PROPERTYPUTREF => 8
   );
   for tagINVOKEKIND'Size use 32;
   
   -- type LPFUNCDESC is access all tagFUNCDESC;
   type tagVARKIND is (
      VAR_PERINSTANCE,
      VAR_STATIC,
      VAR_CONST,
      VAR_DISPATCH
   );
   for tagVARKIND use (
      VAR_PERINSTANCE => 0,
      VAR_STATIC => 1,
      VAR_CONST => 2,
      VAR_DISPATCH => 3
   );
   for tagVARKIND'Size use 32;
   
   -- type LPVARDESC is access all tagVARDESC;
   type tagTYPEFLAGS is (
      TYPEFLAG_FAPPOBJECT,
      TYPEFLAG_FCANCREATE,
      TYPEFLAG_FLICENSED,
      TYPEFLAG_FPREDECLID,
      TYPEFLAG_FHIDDEN,
      TYPEFLAG_FCONTROL,
      TYPEFLAG_FDUAL,
      TYPEFLAG_FNONEXTENSIBLE,
      TYPEFLAG_FOLEAUTOMATION,
      TYPEFLAG_FRESTRICTED,
      TYPEFLAG_FAGGREGATABLE,
      TYPEFLAG_FREPLACEABLE,
      TYPEFLAG_FDISPATCHABLE,
      TYPEFLAG_FREVERSEBIND,
      TYPEFLAG_FPROXY
   );
   for tagTYPEFLAGS use (
      TYPEFLAG_FAPPOBJECT => 1,
      TYPEFLAG_FCANCREATE => 2,
      TYPEFLAG_FLICENSED => 4,
      TYPEFLAG_FPREDECLID => 8,
      TYPEFLAG_FHIDDEN => 16,
      TYPEFLAG_FCONTROL => 32,
      TYPEFLAG_FDUAL => 64,
      TYPEFLAG_FNONEXTENSIBLE => 128,
      TYPEFLAG_FOLEAUTOMATION => 256,
      TYPEFLAG_FRESTRICTED => 512,
      TYPEFLAG_FAGGREGATABLE => 1024,
      TYPEFLAG_FREPLACEABLE => 2048,
      TYPEFLAG_FDISPATCHABLE => 4096,
      TYPEFLAG_FREVERSEBIND => 8192,
      TYPEFLAG_FPROXY => 16384
   );
   for tagTYPEFLAGS'Size use 32;
   
   type tagFUNCFLAGS is (
      FUNCFLAG_FRESTRICTED,
      FUNCFLAG_FSOURCE,
      FUNCFLAG_FBINDABLE,
      FUNCFLAG_FREQUESTEDIT,
      FUNCFLAG_FDISPLAYBIND,
      FUNCFLAG_FDEFAULTBIND,
      FUNCFLAG_FHIDDEN,
      FUNCFLAG_FUSESGETLASTERROR,
      FUNCFLAG_FDEFAULTCOLLELEM,
      FUNCFLAG_FUIDEFAULT,
      FUNCFLAG_FNONBROWSABLE,
      FUNCFLAG_FREPLACEABLE,
      FUNCFLAG_FIMMEDIATEBIND
   );
   for tagFUNCFLAGS use (
      FUNCFLAG_FRESTRICTED => 1,
      FUNCFLAG_FSOURCE => 2,
      FUNCFLAG_FBINDABLE => 4,
      FUNCFLAG_FREQUESTEDIT => 8,
      FUNCFLAG_FDISPLAYBIND => 16,
      FUNCFLAG_FDEFAULTBIND => 32,
      FUNCFLAG_FHIDDEN => 64,
      FUNCFLAG_FUSESGETLASTERROR => 128,
      FUNCFLAG_FDEFAULTCOLLELEM => 256,
      FUNCFLAG_FUIDEFAULT => 512,
      FUNCFLAG_FNONBROWSABLE => 1024,
      FUNCFLAG_FREPLACEABLE => 2048,
      FUNCFLAG_FIMMEDIATEBIND => 4096
   );
   for tagFUNCFLAGS'Size use 32;
   
   type tagVARFLAGS is (
      VARFLAG_FREADONLY,
      VARFLAG_FSOURCE,
      VARFLAG_FBINDABLE,
      VARFLAG_FREQUESTEDIT,
      VARFLAG_FDISPLAYBIND,
      VARFLAG_FDEFAULTBIND,
      VARFLAG_FHIDDEN,
      VARFLAG_FRESTRICTED,
      VARFLAG_FDEFAULTCOLLELEM,
      VARFLAG_FUIDEFAULT,
      VARFLAG_FNONBROWSABLE,
      VARFLAG_FREPLACEABLE,
      VARFLAG_FIMMEDIATEBIND
   );
   for tagVARFLAGS use (
      VARFLAG_FREADONLY => 1,
      VARFLAG_FSOURCE => 2,
      VARFLAG_FBINDABLE => 4,
      VARFLAG_FREQUESTEDIT => 8,
      VARFLAG_FDISPLAYBIND => 16,
      VARFLAG_FDEFAULTBIND => 32,
      VARFLAG_FHIDDEN => 64,
      VARFLAG_FRESTRICTED => 128,
      VARFLAG_FDEFAULTCOLLELEM => 256,
      VARFLAG_FUIDEFAULT => 512,
      VARFLAG_FNONBROWSABLE => 1024,
      VARFLAG_FREPLACEABLE => 2048,
      VARFLAG_FIMMEDIATEBIND => 4096
   );
   for tagVARFLAGS'Size use 32;
   
   -- type LPCUSTDATAITEM is access all tagCUSTDATAITEM;
   -- type LPCUSTDATA is access all tagCUSTDATA;
   -- type LPCREATETYPEINFO is access all ICreateTypeInfo;
   -- type LPCREATETYPEINFO2 is access all ICreateTypeInfo2;
   -- type LPCREATETYPELIB is access all ICreateTypeLib;
   -- type LPCREATETYPELIB2 is access all ICreateTypeLib2;
   -- type LPDISPATCH is access all IDispatch;
   -- type LPENUMVARIANT is access all IEnumVARIANT;
   -- type LPTYPECOMP is access all ITypeComp;
   type tagDESCKIND is (
      DESCKIND_NONE,
      DESCKIND_FUNCDESC,
      DESCKIND_VARDESC,
      DESCKIND_TYPECOMP,
      DESCKIND_IMPLICITAPPOBJ,
      DESCKIND_MAX
   );
   for tagDESCKIND use (
      DESCKIND_NONE => 0,
      DESCKIND_FUNCDESC => 1,
      DESCKIND_VARDESC => 2,
      DESCKIND_TYPECOMP => 3,
      DESCKIND_IMPLICITAPPOBJ => 4,
      DESCKIND_MAX => 5
   );
   for tagDESCKIND'Size use 32;
   
   -- type LPBINDPTR is access all tagBINDPTR;
   -- type LPTYPEINFO is access all ITypeInfo;
   -- type LPTYPEINFO2 is access all ITypeInfo2;
   type tagSYSKIND is (
      SYS_WIN16,
      SYS_WIN32,
      SYS_MAC,
      SYS_WIN64
   );
   for tagSYSKIND use (
      SYS_WIN16 => 0,
      SYS_WIN32 => 1,
      SYS_MAC => 2,
      SYS_WIN64 => 3
   );
   for tagSYSKIND'Size use 32;
   
   type tagLIBFLAGS is (
      LIBFLAG_FRESTRICTED,
      LIBFLAG_FCONTROL,
      LIBFLAG_FHIDDEN,
      LIBFLAG_FHASDISKIMAGE
   );
   for tagLIBFLAGS use (
      LIBFLAG_FRESTRICTED => 1,
      LIBFLAG_FCONTROL => 2,
      LIBFLAG_FHIDDEN => 4,
      LIBFLAG_FHASDISKIMAGE => 8
   );
   for tagLIBFLAGS'Size use 32;
   
   -- type LPTYPELIB is access all ITypeLib;
   -- type LPTLIBATTR is access all tagTLIBATTR;
   -- type LPTYPELIB2 is access all ITypeLib2;
   -- type LPTYPECHANGEEVENTS is access all ITypeChangeEvents;
   type tagCHANGEKIND is (
      CHANGEKIND_ADDMEMBER,
      CHANGEKIND_DELETEMEMBER,
      CHANGEKIND_SETNAMES,
      CHANGEKIND_SETDOCUMENTATION,
      CHANGEKIND_GENERAL,
      CHANGEKIND_INVALIDATE,
      CHANGEKIND_CHANGEFAILED,
      CHANGEKIND_MAX
   );
   for tagCHANGEKIND use (
      CHANGEKIND_ADDMEMBER => 0,
      CHANGEKIND_DELETEMEMBER => 1,
      CHANGEKIND_SETNAMES => 2,
      CHANGEKIND_SETDOCUMENTATION => 3,
      CHANGEKIND_GENERAL => 4,
      CHANGEKIND_INVALIDATE => 5,
      CHANGEKIND_CHANGEFAILED => 6,
      CHANGEKIND_MAX => 7
   );
   for tagCHANGEKIND'Size use 32;
   
   -- type LPERRORINFO is access all IErrorInfo;
   -- type LPCREATEERRORINFO is access all ICreateErrorInfo;
   -- type LPSUPPORTERRORINFO is access all ISupportErrorInfo;
   -- type LPRECORDINFO is access all IRecordInfo;
   -- type LPERRORLOG is access all IErrorLog;
   -- type LPPROPERTYBAG is access all IPropertyBag;
   -- C:\Program Files (x86)\Windows Kits\10\include\10.0.16299.0\um\urlmon.h
   -- type IPersistMoniker; -- forward declaration
   -- type IMonikerProp; -- forward declaration
   -- type IBindProtocol; -- forward declaration
   -- type IBinding; -- forward declaration
   -- type IBindStatusCallback; -- forward declaration
   -- type IBindStatusCallbackEx; -- forward declaration
   -- type IAuthenticate; -- forward declaration
   -- type IAuthenticateEx; -- forward declaration
   -- type IHttpNegotiate; -- forward declaration
   -- type IHttpNegotiate2; -- forward declaration
   -- type IHttpNegotiate3; -- forward declaration
   -- type IWinInetFileStream; -- forward declaration
   -- type IWindowForBindingUI; -- forward declaration
   -- type ICodeInstall; -- forward declaration
   -- type IUri; -- forward declaration
   -- type IUriContainer; -- forward declaration
   -- type IUriBuilder; -- forward declaration
   -- type IUriBuilderFactory; -- forward declaration
   -- type IWinInetInfo; -- forward declaration
   -- type IHttpSecurity; -- forward declaration
   -- type IWinInetHttpInfo; -- forward declaration
   -- type IWinInetHttpTimeouts; -- forward declaration
   -- type IWinInetCacheHints; -- forward declaration
   -- type IWinInetCacheHints2; -- forward declaration
   -- type IBindHost; -- forward declaration
   -- type IInternet; -- forward declaration
   -- type IInternetBindInfo; -- forward declaration
   -- type IInternetBindInfoEx; -- forward declaration
   -- type IInternetProtocolRoot; -- forward declaration
   -- type IInternetProtocol; -- forward declaration
   -- type IInternetProtocolEx; -- forward declaration
   -- type IInternetProtocolSink; -- forward declaration
   -- type IInternetProtocolSinkStackable; -- forward declaration
   -- type IInternetSession; -- forward declaration
   -- type IInternetThreadSwitch; -- forward declaration
   -- type IInternetPriority; -- forward declaration
   -- type IInternetProtocolInfo; -- forward declaration
   -- type IInternetSecurityMgrSite; -- forward declaration
   -- type IInternetSecurityManager; -- forward declaration
   -- type IInternetSecurityManagerEx; -- forward declaration
   -- type IInternetSecurityManagerEx2; -- forward declaration
   -- type IZoneIdentifier; -- forward declaration
   -- type IZoneIdentifier2; -- forward declaration
   -- type IInternetHostSecurityManager; -- forward declaration
   -- type IInternetZoneManager; -- forward declaration
   -- type IInternetZoneManagerEx; -- forward declaration
   -- type IInternetZoneManagerEx2; -- forward declaration
   -- type ISoftDistExt; -- forward declaration
   -- type ICatalogFileInfo; -- forward declaration
   -- type IDataFilter; -- forward declaration
   -- type IEncodingFilterFactory; -- forward declaration
   -- type IWrappedProtocol; -- forward declaration
   -- type IGetBindHandle; -- forward declaration
   -- type IBindCallbackRedirect; -- forward declaration
   -- type IBindHttpSecurity; -- forward declaration
   type IEObjectType is (
      IE_EPM_OBJECT_EVENT,
      IE_EPM_OBJECT_MUTEX,
      IE_EPM_OBJECT_SEMAPHORE,
      IE_EPM_OBJECT_SHARED_MEMORY,
      IE_EPM_OBJECT_WAITABLE_TIMER,
      IE_EPM_OBJECT_FILE,
      IE_EPM_OBJECT_NAMED_PIPE,
      IE_EPM_OBJECT_REGISTRY
   );
   for IEObjectType use (
      IE_EPM_OBJECT_EVENT => 0,
      IE_EPM_OBJECT_MUTEX => 1,
      IE_EPM_OBJECT_SEMAPHORE => 2,
      IE_EPM_OBJECT_SHARED_MEMORY => 3,
      IE_EPM_OBJECT_WAITABLE_TIMER => 4,
      IE_EPM_OBJECT_FILE => 5,
      IE_EPM_OBJECT_NAMED_PIPE => 6,
      IE_EPM_OBJECT_REGISTRY => 7
   );
   for IEObjectType'Size use 32;
   
   -- type LPPERSISTMONIKER is access all IPersistMoniker;
   -- type LPMONIKERPROP is access all IMonikerProp;
   type MIDL_IMonikerProp_0001 is (
      MIMETYPEPROP,
      USE_SRC_URL,
      CLASSIDPROP,
      TRUSTEDDOWNLOADPROP,
      POPUPLEVELPROP
   );
   for MIDL_IMonikerProp_0001 use (
      MIMETYPEPROP => 0,
      USE_SRC_URL => 1,
      CLASSIDPROP => 2,
      TRUSTEDDOWNLOADPROP => 3,
      POPUPLEVELPROP => 4
   );
   for MIDL_IMonikerProp_0001'Size use 32;
   
   -- type LPBINDPROTOCOL is access all IBindProtocol;
   -- type LPBINDING is access all IBinding;
   -- type LPBINDSTATUSCALLBACK is access all IBindStatusCallback;
   type MIDL_IBindStatusCallback_0001 is (
      BINDVERB_GET,
      BINDVERB_POST,
      BINDVERB_PUT,
      BINDVERB_CUSTOM,
      BINDVERB_RESERVED1
   );
   for MIDL_IBindStatusCallback_0001 use (
      BINDVERB_GET => 0,
      BINDVERB_POST => 1,
      BINDVERB_PUT => 2,
      BINDVERB_CUSTOM => 3,
      BINDVERB_RESERVED1 => 4
   );
   for MIDL_IBindStatusCallback_0001'Size use 32;
   
   type MIDL_IBindStatusCallback_0002 is (
      BINDINFOF_URLENCODESTGMEDDATA,
      BINDINFOF_URLENCODEDEXTRAINFO
   );
   for MIDL_IBindStatusCallback_0002 use (
      BINDINFOF_URLENCODESTGMEDDATA => 1,
      BINDINFOF_URLENCODEDEXTRAINFO => 2
   );
   for MIDL_IBindStatusCallback_0002'Size use 32;
   
   type MIDL_IBindStatusCallback_0003 is (
      BINDF_RESERVED_2,
      BINDF_ASYNCHRONOUS,
      BINDF_ASYNCSTORAGE,
      BINDF_NOPROGRESSIVERENDERING,
      BINDF_OFFLINEOPERATION,
      BINDF_GETNEWESTVERSION,
      BINDF_NOWRITECACHE,
      BINDF_NEEDFILE,
      BINDF_PULLDATA,
      BINDF_IGNORESECURITYPROBLEM,
      BINDF_RESYNCHRONIZE,
      BINDF_HYPERLINK,
      BINDF_NO_UI,
      BINDF_SILENTOPERATION,
      BINDF_PRAGMA_NO_CACHE,
      BINDF_GETCLASSOBJECT,
      BINDF_RESERVED_1,
      BINDF_FREE_THREADED,
      BINDF_DIRECT_READ,
      BINDF_FORMS_SUBMIT,
      BINDF_GETFROMCACHE_IF_NET_FAIL,
      BINDF_FROMURLMON,
      BINDF_FWD_BACK,
      BINDF_PREFERDEFAULTHANDLER,
      BINDF_ENFORCERESTRICTED,
      BINDF_RESERVED_3,
      BINDF_RESERVED_4,
      BINDF_RESERVED_5,
      BINDF_RESERVED_6,
      BINDF_RESERVED_8,
      BINDF_RESERVED_7
   );
   for MIDL_IBindStatusCallback_0003 use (
      BINDF_RESERVED_2 => -2147483648,
      BINDF_ASYNCHRONOUS => 1,
      BINDF_ASYNCSTORAGE => 2,
      BINDF_NOPROGRESSIVERENDERING => 4,
      BINDF_OFFLINEOPERATION => 8,
      BINDF_GETNEWESTVERSION => 16,
      BINDF_NOWRITECACHE => 32,
      BINDF_NEEDFILE => 64,
      BINDF_PULLDATA => 128,
      BINDF_IGNORESECURITYPROBLEM => 256,
      BINDF_RESYNCHRONIZE => 512,
      BINDF_HYPERLINK => 1024,
      BINDF_NO_UI => 2048,
      BINDF_SILENTOPERATION => 4096,
      BINDF_PRAGMA_NO_CACHE => 8192,
      BINDF_GETCLASSOBJECT => 16384,
      BINDF_RESERVED_1 => 32768,
      BINDF_FREE_THREADED => 65536,
      BINDF_DIRECT_READ => 131072,
      BINDF_FORMS_SUBMIT => 262144,
      BINDF_GETFROMCACHE_IF_NET_FAIL => 524288,
      BINDF_FROMURLMON => 1048576,
      BINDF_FWD_BACK => 2097152,
      BINDF_PREFERDEFAULTHANDLER => 4194304,
      BINDF_ENFORCERESTRICTED => 8388608,
      BINDF_RESERVED_3 => 16777216,
      BINDF_RESERVED_4 => 33554432,
      BINDF_RESERVED_5 => 67108864,
      BINDF_RESERVED_6 => 134217728,
      BINDF_RESERVED_8 => 536870912,
      BINDF_RESERVED_7 => 1073741824
   );
   for MIDL_IBindStatusCallback_0003'Size use 32;
   
   type MIDL_IBindStatusCallback_0004 is (
      URL_ENCODING_NONE,
      URL_ENCODING_ENABLE_UTF8,
      URL_ENCODING_DISABLE_UTF8
   );
   for MIDL_IBindStatusCallback_0004 use (
      URL_ENCODING_NONE => 0,
      URL_ENCODING_ENABLE_UTF8 => 268435456,
      URL_ENCODING_DISABLE_UTF8 => 536870912
   );
   for MIDL_IBindStatusCallback_0004'Size use 32;
   
   -- type PREMSECURITY_ATTRIBUTES is access all REMSECURITY_ATTRIBUTES;
   -- type LPREMSECURITY_ATTRIBUTES is access all REMSECURITY_ATTRIBUTES;
   -- type LPREMFORMATETC is access all tagRemFORMATETC;
   type MIDL_IBindStatusCallback_0005 is (
      BINDINFO_OPTIONS_SHDOCVW_NAVIGATE,
      BINDINFO_OPTIONS_WININETFLAG,
      BINDINFO_OPTIONS_ENABLE_UTF8,
      BINDINFO_OPTIONS_DISABLE_UTF8,
      BINDINFO_OPTIONS_USE_IE_ENCODING,
      BINDINFO_OPTIONS_BINDTOOBJECT,
      BINDINFO_OPTIONS_SECURITYOPTOUT,
      BINDINFO_OPTIONS_IGNOREMIMETEXTPLAIN,
      BINDINFO_OPTIONS_USEBINDSTRINGCREDS,
      BINDINFO_OPTIONS_IGNOREHTTPHTTPSREDIRECTS,
      BINDINFO_OPTIONS_IGNORE_SSLERRORS_ONCE,
      BINDINFO_WPC_DOWNLOADBLOCKED,
      BINDINFO_WPC_LOGGING_ENABLED,
      BINDINFO_OPTIONS_ALLOWCONNECTDATA,
      BINDINFO_OPTIONS_DISABLEAUTOREDIRECTS
   );
   for MIDL_IBindStatusCallback_0005 use (
      BINDINFO_OPTIONS_SHDOCVW_NAVIGATE => -2147483648,
      BINDINFO_OPTIONS_WININETFLAG => 65536,
      BINDINFO_OPTIONS_ENABLE_UTF8 => 131072,
      BINDINFO_OPTIONS_DISABLE_UTF8 => 262144,
      BINDINFO_OPTIONS_USE_IE_ENCODING => 524288,
      BINDINFO_OPTIONS_BINDTOOBJECT => 1048576,
      BINDINFO_OPTIONS_SECURITYOPTOUT => 2097152,
      BINDINFO_OPTIONS_IGNOREMIMETEXTPLAIN => 4194304,
      BINDINFO_OPTIONS_USEBINDSTRINGCREDS => 8388608,
      BINDINFO_OPTIONS_IGNOREHTTPHTTPSREDIRECTS => 16777216,
      BINDINFO_OPTIONS_IGNORE_SSLERRORS_ONCE => 33554432,
      BINDINFO_WPC_DOWNLOADBLOCKED => 134217728,
      BINDINFO_WPC_LOGGING_ENABLED => 268435456,
      BINDINFO_OPTIONS_ALLOWCONNECTDATA => 536870912,
      BINDINFO_OPTIONS_DISABLEAUTOREDIRECTS => 1073741824
   );
   for MIDL_IBindStatusCallback_0005'Size use 32;
   
   type MIDL_IBindStatusCallback_0006 is (
      BSCF_FIRSTDATANOTIFICATION,
      BSCF_INTERMEDIATEDATANOTIFICATION,
      BSCF_LASTDATANOTIFICATION,
      BSCF_DATAFULLYAVAILABLE,
      BSCF_AVAILABLEDATASIZEUNKNOWN,
      BSCF_SKIPDRAINDATAFORFILEURLS,
      BSCF_64BITLENGTHDOWNLOAD
   );
   for MIDL_IBindStatusCallback_0006 use (
      BSCF_FIRSTDATANOTIFICATION => 1,
      BSCF_INTERMEDIATEDATANOTIFICATION => 2,
      BSCF_LASTDATANOTIFICATION => 4,
      BSCF_DATAFULLYAVAILABLE => 8,
      BSCF_AVAILABLEDATASIZEUNKNOWN => 16,
      BSCF_SKIPDRAINDATAFORFILEURLS => 32,
      BSCF_64BITLENGTHDOWNLOAD => 64
   );
   for MIDL_IBindStatusCallback_0006'Size use 32;
   
   type tagBINDSTATUS is (
      BINDSTATUS_FINDINGRESOURCE,
      BINDSTATUS_CONNECTING,
      BINDSTATUS_REDIRECTING,
      BINDSTATUS_BEGINDOWNLOADDATA,
      BINDSTATUS_DOWNLOADINGDATA,
      BINDSTATUS_ENDDOWNLOADDATA,
      BINDSTATUS_BEGINDOWNLOADCOMPONENTS,
      BINDSTATUS_INSTALLINGCOMPONENTS,
      BINDSTATUS_ENDDOWNLOADCOMPONENTS,
      BINDSTATUS_USINGCACHEDCOPY,
      BINDSTATUS_SENDINGREQUEST,
      BINDSTATUS_CLASSIDAVAILABLE,
      BINDSTATUS_MIMETYPEAVAILABLE,
      BINDSTATUS_CACHEFILENAMEAVAILABLE,
      BINDSTATUS_BEGINSYNCOPERATION,
      BINDSTATUS_ENDSYNCOPERATION,
      BINDSTATUS_BEGINUPLOADDATA,
      BINDSTATUS_UPLOADINGDATA,
      BINDSTATUS_ENDUPLOADDATA,
      BINDSTATUS_PROTOCOLCLASSID,
      BINDSTATUS_ENCODING,
      BINDSTATUS_VERIFIEDMIMETYPEAVAILABLE,
      BINDSTATUS_CLASSINSTALLLOCATION,
      BINDSTATUS_DECODING,
      BINDSTATUS_LOADINGMIMEHANDLER,
      BINDSTATUS_CONTENTDISPOSITIONATTACH,
      BINDSTATUS_FILTERREPORTMIMETYPE,
      BINDSTATUS_CLSIDCANINSTANTIATE,
      BINDSTATUS_IUNKNOWNAVAILABLE,
      BINDSTATUS_DIRECTBIND,
      BINDSTATUS_RAWMIMETYPE,
      BINDSTATUS_PROXYDETECTING,
      BINDSTATUS_ACCEPTRANGES,
      BINDSTATUS_COOKIE_SENT,
      BINDSTATUS_COMPACT_POLICY_RECEIVED,
      BINDSTATUS_COOKIE_SUPPRESSED,
      BINDSTATUS_COOKIE_STATE_UNKNOWN,
      BINDSTATUS_COOKIE_STATE_ACCEPT,
      BINDSTATUS_COOKIE_STATE_REJECT,
      BINDSTATUS_COOKIE_STATE_PROMPT,
      BINDSTATUS_COOKIE_STATE_LEASH,
      BINDSTATUS_COOKIE_STATE_DOWNGRADE,
      BINDSTATUS_POLICY_HREF,
      BINDSTATUS_P3P_HEADER,
      BINDSTATUS_SESSION_COOKIE_RECEIVED,
      BINDSTATUS_PERSISTENT_COOKIE_RECEIVED,
      BINDSTATUS_SESSION_COOKIES_ALLOWED,
      BINDSTATUS_CACHECONTROL,
      BINDSTATUS_CONTENTDISPOSITIONFILENAME,
      BINDSTATUS_MIMETEXTPLAINMISMATCH,
      BINDSTATUS_PUBLISHERAVAILABLE,
      BINDSTATUS_DISPLAYNAMEAVAILABLE,
      BINDSTATUS_SSLUX_NAVBLOCKED,
      BINDSTATUS_SERVER_MIMETYPEAVAILABLE,
      BINDSTATUS_SNIFFED_CLASSIDAVAILABLE,
      BINDSTATUS_64BIT_PROGRESS,
      BINDSTATUS_RESERVED_0,
      BINDSTATUS_RESERVED_1,
      BINDSTATUS_RESERVED_2,
      BINDSTATUS_RESERVED_3,
      BINDSTATUS_RESERVED_4,
      BINDSTATUS_RESERVED_5,
      BINDSTATUS_RESERVED_6,
      BINDSTATUS_RESERVED_7,
      BINDSTATUS_RESERVED_8,
      BINDSTATUS_RESERVED_9,
      BINDSTATUS_RESERVED_A,
      BINDSTATUS_RESERVED_B,
      BINDSTATUS_RESERVED_C,
      BINDSTATUS_RESERVED_D,
      BINDSTATUS_RESERVED_E,
      BINDSTATUS_RESERVED_F,
      BINDSTATUS_RESERVED_10,
      BINDSTATUS_RESERVED_11,
      BINDSTATUS_RESERVED_12
   );
   for tagBINDSTATUS use (
      BINDSTATUS_FINDINGRESOURCE => 1,
      BINDSTATUS_CONNECTING => 2,
      BINDSTATUS_REDIRECTING => 3,
      BINDSTATUS_BEGINDOWNLOADDATA => 4,
      BINDSTATUS_DOWNLOADINGDATA => 5,
      BINDSTATUS_ENDDOWNLOADDATA => 6,
      BINDSTATUS_BEGINDOWNLOADCOMPONENTS => 7,
      BINDSTATUS_INSTALLINGCOMPONENTS => 8,
      BINDSTATUS_ENDDOWNLOADCOMPONENTS => 9,
      BINDSTATUS_USINGCACHEDCOPY => 10,
      BINDSTATUS_SENDINGREQUEST => 11,
      BINDSTATUS_CLASSIDAVAILABLE => 12,
      BINDSTATUS_MIMETYPEAVAILABLE => 13,
      BINDSTATUS_CACHEFILENAMEAVAILABLE => 14,
      BINDSTATUS_BEGINSYNCOPERATION => 15,
      BINDSTATUS_ENDSYNCOPERATION => 16,
      BINDSTATUS_BEGINUPLOADDATA => 17,
      BINDSTATUS_UPLOADINGDATA => 18,
      BINDSTATUS_ENDUPLOADDATA => 19,
      BINDSTATUS_PROTOCOLCLASSID => 20,
      BINDSTATUS_ENCODING => 21,
      BINDSTATUS_VERIFIEDMIMETYPEAVAILABLE => 22,
      BINDSTATUS_CLASSINSTALLLOCATION => 23,
      BINDSTATUS_DECODING => 24,
      BINDSTATUS_LOADINGMIMEHANDLER => 25,
      BINDSTATUS_CONTENTDISPOSITIONATTACH => 26,
      BINDSTATUS_FILTERREPORTMIMETYPE => 27,
      BINDSTATUS_CLSIDCANINSTANTIATE => 28,
      BINDSTATUS_IUNKNOWNAVAILABLE => 29,
      BINDSTATUS_DIRECTBIND => 30,
      BINDSTATUS_RAWMIMETYPE => 31,
      BINDSTATUS_PROXYDETECTING => 32,
      BINDSTATUS_ACCEPTRANGES => 33,
      BINDSTATUS_COOKIE_SENT => 34,
      BINDSTATUS_COMPACT_POLICY_RECEIVED => 35,
      BINDSTATUS_COOKIE_SUPPRESSED => 36,
      BINDSTATUS_COOKIE_STATE_UNKNOWN => 37,
      BINDSTATUS_COOKIE_STATE_ACCEPT => 38,
      BINDSTATUS_COOKIE_STATE_REJECT => 39,
      BINDSTATUS_COOKIE_STATE_PROMPT => 40,
      BINDSTATUS_COOKIE_STATE_LEASH => 41,
      BINDSTATUS_COOKIE_STATE_DOWNGRADE => 42,
      BINDSTATUS_POLICY_HREF => 43,
      BINDSTATUS_P3P_HEADER => 44,
      BINDSTATUS_SESSION_COOKIE_RECEIVED => 45,
      BINDSTATUS_PERSISTENT_COOKIE_RECEIVED => 46,
      BINDSTATUS_SESSION_COOKIES_ALLOWED => 47,
      BINDSTATUS_CACHECONTROL => 48,
      BINDSTATUS_CONTENTDISPOSITIONFILENAME => 49,
      BINDSTATUS_MIMETEXTPLAINMISMATCH => 50,
      BINDSTATUS_PUBLISHERAVAILABLE => 51,
      BINDSTATUS_DISPLAYNAMEAVAILABLE => 52,
      BINDSTATUS_SSLUX_NAVBLOCKED => 53,
      BINDSTATUS_SERVER_MIMETYPEAVAILABLE => 54,
      BINDSTATUS_SNIFFED_CLASSIDAVAILABLE => 55,
      BINDSTATUS_64BIT_PROGRESS => 56,
      BINDSTATUS_RESERVED_0 => 57,
      BINDSTATUS_RESERVED_1 => 58,
      BINDSTATUS_RESERVED_2 => 59,
      BINDSTATUS_RESERVED_3 => 60,
      BINDSTATUS_RESERVED_4 => 61,
      BINDSTATUS_RESERVED_5 => 62,
      BINDSTATUS_RESERVED_6 => 63,
      BINDSTATUS_RESERVED_7 => 64,
      BINDSTATUS_RESERVED_8 => 65,
      BINDSTATUS_RESERVED_9 => 66,
      BINDSTATUS_RESERVED_A => 67,
      BINDSTATUS_RESERVED_B => 68,
      BINDSTATUS_RESERVED_C => 69,
      BINDSTATUS_RESERVED_D => 70,
      BINDSTATUS_RESERVED_E => 71,
      BINDSTATUS_RESERVED_F => 72,
      BINDSTATUS_RESERVED_10 => 73,
      BINDSTATUS_RESERVED_11 => 74,
      BINDSTATUS_RESERVED_12 => 75
   );
   for tagBINDSTATUS'Size use 32;
   
   -- type LPBINDSTATUSCALLBACKEX is access all IBindStatusCallbackEx;
   type MIDL_IBindStatusCallbackEx_0001 is (
      BINDF2_RESERVED_1,
      BINDF2_DISABLEBASICOVERHTTP,
      BINDF2_DISABLEAUTOCOOKIEHANDLING,
      BINDF2_READ_DATA_GREATER_THAN_4GB,
      BINDF2_DISABLE_HTTP_REDIRECT_XSECURITYID,
      BINDF2_SETDOWNLOADMODE,
      BINDF2_DISABLE_HTTP_REDIRECT_CACHING,
      BINDF2_KEEP_CALLBACK_MODULE_LOADED,
      BINDF2_ALLOW_PROXY_CRED_PROMPT,
      BINDF2_RESERVED_17,
      BINDF2_RESERVED_16,
      BINDF2_RESERVED_15,
      BINDF2_RESERVED_14,
      BINDF2_RESERVED_13,
      BINDF2_RESERVED_12,
      BINDF2_RESERVED_11,
      BINDF2_RESERVED_10,
      BINDF2_RESERVED_F,
      BINDF2_RESERVED_E,
      BINDF2_RESERVED_D,
      BINDF2_RESERVED_C,
      BINDF2_RESERVED_B,
      BINDF2_RESERVED_A,
      BINDF2_RESERVED_9,
      BINDF2_RESERVED_8,
      BINDF2_RESERVED_7,
      BINDF2_RESERVED_6,
      BINDF2_RESERVED_5,
      BINDF2_RESERVED_4,
      BINDF2_RESERVED_3,
      BINDF2_RESERVED_2
   );
   for MIDL_IBindStatusCallbackEx_0001 use (
      BINDF2_RESERVED_1 => -2147483648,
      BINDF2_DISABLEBASICOVERHTTP => 1,
      BINDF2_DISABLEAUTOCOOKIEHANDLING => 2,
      BINDF2_READ_DATA_GREATER_THAN_4GB => 4,
      BINDF2_DISABLE_HTTP_REDIRECT_XSECURITYID => 8,
      BINDF2_SETDOWNLOADMODE => 32,
      BINDF2_DISABLE_HTTP_REDIRECT_CACHING => 64,
      BINDF2_KEEP_CALLBACK_MODULE_LOADED => 128,
      BINDF2_ALLOW_PROXY_CRED_PROMPT => 256,
      BINDF2_RESERVED_17 => 512,
      BINDF2_RESERVED_16 => 1024,
      BINDF2_RESERVED_15 => 2048,
      BINDF2_RESERVED_14 => 4096,
      BINDF2_RESERVED_13 => 8192,
      BINDF2_RESERVED_12 => 16384,
      BINDF2_RESERVED_11 => 32768,
      BINDF2_RESERVED_10 => 65536,
      BINDF2_RESERVED_F => 131072,
      BINDF2_RESERVED_E => 262144,
      BINDF2_RESERVED_D => 524288,
      BINDF2_RESERVED_C => 1048576,
      BINDF2_RESERVED_B => 2097152,
      BINDF2_RESERVED_A => 4194304,
      BINDF2_RESERVED_9 => 8388608,
      BINDF2_RESERVED_8 => 16777216,
      BINDF2_RESERVED_7 => 33554432,
      BINDF2_RESERVED_6 => 67108864,
      BINDF2_RESERVED_5 => 134217728,
      BINDF2_RESERVED_4 => 268435456,
      BINDF2_RESERVED_3 => 536870912,
      BINDF2_RESERVED_2 => 1073741824
   );
   for MIDL_IBindStatusCallbackEx_0001'Size use 32;
   
   -- type LPAUTHENTICATION is access all IAuthenticate;
   -- type LPAUTHENTICATIONEX is access all IAuthenticateEx;
   type MIDL_IAuthenticateEx_0001 is (
      AUTHENTICATEF_PROXY,
      AUTHENTICATEF_BASIC,
      AUTHENTICATEF_HTTP
   );
   for MIDL_IAuthenticateEx_0001 use (
      AUTHENTICATEF_PROXY => 1,
      AUTHENTICATEF_BASIC => 2,
      AUTHENTICATEF_HTTP => 4
   );
   for MIDL_IAuthenticateEx_0001'Size use 32;
   
   -- type LPHTTPNEGOTIATE is access all IHttpNegotiate;
   -- type LPHTTPNEGOTIATE2 is access all IHttpNegotiate2;
   -- type LPHTTPNEGOTIATE3 is access all IHttpNegotiate3;
   -- type LPWININETFILESTREAM is access all IWinInetFileStream;
   -- type LPWINDOWFORBINDINGUI is access all IWindowForBindingUI;
   -- type LPCODEINSTALL is access all ICodeInstall;
   type MIDL_ICodeInstall_0001 is (
      CIP_DISK_FULL,
      CIP_ACCESS_DENIED,
      CIP_NEWER_VERSION_EXISTS,
      CIP_OLDER_VERSION_EXISTS,
      CIP_NAME_CONFLICT,
      CIP_TRUST_VERIFICATION_COMPONENT_MISSING,
      CIP_EXE_SELF_REGISTERATION_TIMEOUT,
      CIP_UNSAFE_TO_ABORT,
      CIP_NEED_REBOOT,
      CIP_NEED_REBOOT_UI_PERMISSION
   );
   for MIDL_ICodeInstall_0001 use (
      CIP_DISK_FULL => 0,
      CIP_ACCESS_DENIED => 1,
      CIP_NEWER_VERSION_EXISTS => 2,
      CIP_OLDER_VERSION_EXISTS => 3,
      CIP_NAME_CONFLICT => 4,
      CIP_TRUST_VERIFICATION_COMPONENT_MISSING => 5,
      CIP_EXE_SELF_REGISTERATION_TIMEOUT => 6,
      CIP_UNSAFE_TO_ABORT => 7,
      CIP_NEED_REBOOT => 8,
      CIP_NEED_REBOOT_UI_PERMISSION => 9
   );
   for MIDL_ICodeInstall_0001'Size use 32;
   
   type MIDL_IUri_0001 is (
      Uri_PROPERTY_ABSOLUTE_URI,
      Uri_PROPERTY_AUTHORITY,
      Uri_PROPERTY_DISPLAY_URI,
      Uri_PROPERTY_DOMAIN,
      Uri_PROPERTY_EXTENSION,
      Uri_PROPERTY_FRAGMENT,
      Uri_PROPERTY_HOST,
      Uri_PROPERTY_PASSWORD,
      Uri_PROPERTY_PATH,
      Uri_PROPERTY_PATH_AND_QUERY,
      Uri_PROPERTY_QUERY,
      Uri_PROPERTY_RAW_URI,
      Uri_PROPERTY_SCHEME_NAME,
      Uri_PROPERTY_USER_INFO,
      Uri_PROPERTY_USER_NAME,
      Uri_PROPERTY_HOST_TYPE,
      Uri_PROPERTY_PORT,
      Uri_PROPERTY_SCHEME,
      Uri_PROPERTY_ZONE
   );
   for MIDL_IUri_0001 use (
      Uri_PROPERTY_ABSOLUTE_URI => 0,
      Uri_PROPERTY_AUTHORITY => 1,
      Uri_PROPERTY_DISPLAY_URI => 2,
      Uri_PROPERTY_DOMAIN => 3,
      Uri_PROPERTY_EXTENSION => 4,
      Uri_PROPERTY_FRAGMENT => 5,
      Uri_PROPERTY_HOST => 6,
      Uri_PROPERTY_PASSWORD => 7,
      Uri_PROPERTY_PATH => 8,
      Uri_PROPERTY_PATH_AND_QUERY => 9,
      Uri_PROPERTY_QUERY => 10,
      Uri_PROPERTY_RAW_URI => 11,
      Uri_PROPERTY_SCHEME_NAME => 12,
      Uri_PROPERTY_USER_INFO => 13,
      Uri_PROPERTY_USER_NAME => 14,
      Uri_PROPERTY_HOST_TYPE => 15,
      Uri_PROPERTY_PORT => 16,
      Uri_PROPERTY_SCHEME => 17,
      Uri_PROPERTY_ZONE => 18
   );
   for MIDL_IUri_0001'Size use 32;
   
   type MIDL_IUri_0002 is (
      Uri_HOST_UNKNOWN,
      Uri_HOST_DNS,
      Uri_HOST_IPV4,
      Uri_HOST_IPV6,
      Uri_HOST_IDN
   );
   for MIDL_IUri_0002 use (
      Uri_HOST_UNKNOWN => 0,
      Uri_HOST_DNS => 1,
      Uri_HOST_IPV4 => 2,
      Uri_HOST_IPV6 => 3,
      Uri_HOST_IDN => 4
   );
   for MIDL_IUri_0002'Size use 32;
   
   -- type LPWININETINFO is access all IWinInetInfo;
   -- type LPHTTPSECURITY is access all IHttpSecurity;
   -- type LPWININETHTTPINFO is access all IWinInetHttpInfo;
   -- type LPWININETCACHEHINTS is access all IWinInetCacheHints;
   -- type LPWININETCACHEHINTS2 is access all IWinInetCacheHints2;
   -- type LPBINDHOST is access all IBindHost;
   -- type LPIINTERNET is access all IInternet;
   -- type LPIINTERNETBINDINFO is access all IInternetBindInfo;
   type tagBINDSTRING is (
      BINDSTRING_HEADERS,
      BINDSTRING_ACCEPT_MIMES,
      BINDSTRING_EXTRA_URL,
      BINDSTRING_LANGUAGE,
      BINDSTRING_USERNAME,
      BINDSTRING_PASSWORD,
      BINDSTRING_UA_PIXELS,
      BINDSTRING_UA_COLOR,
      BINDSTRING_OS,
      BINDSTRING_USER_AGENT,
      BINDSTRING_ACCEPT_ENCODINGS,
      BINDSTRING_POST_COOKIE,
      BINDSTRING_POST_DATA_MIME,
      BINDSTRING_URL,
      BINDSTRING_IID,
      BINDSTRING_FLAG_BIND_TO_OBJECT,
      BINDSTRING_PTR_BIND_CONTEXT,
      BINDSTRING_XDR_ORIGIN,
      BINDSTRING_DOWNLOADPATH,
      BINDSTRING_ROOTDOC_URL,
      BINDSTRING_INITIAL_FILENAME,
      BINDSTRING_PROXY_USERNAME,
      BINDSTRING_PROXY_PASSWORD,
      BINDSTRING_ENTERPRISE_ID,
      BINDSTRING_DOC_URL
   );
   for tagBINDSTRING use (
      BINDSTRING_HEADERS => 1,
      BINDSTRING_ACCEPT_MIMES => 2,
      BINDSTRING_EXTRA_URL => 3,
      BINDSTRING_LANGUAGE => 4,
      BINDSTRING_USERNAME => 5,
      BINDSTRING_PASSWORD => 6,
      BINDSTRING_UA_PIXELS => 7,
      BINDSTRING_UA_COLOR => 8,
      BINDSTRING_OS => 9,
      BINDSTRING_USER_AGENT => 10,
      BINDSTRING_ACCEPT_ENCODINGS => 11,
      BINDSTRING_POST_COOKIE => 12,
      BINDSTRING_POST_DATA_MIME => 13,
      BINDSTRING_URL => 14,
      BINDSTRING_IID => 15,
      BINDSTRING_FLAG_BIND_TO_OBJECT => 16,
      BINDSTRING_PTR_BIND_CONTEXT => 17,
      BINDSTRING_XDR_ORIGIN => 18,
      BINDSTRING_DOWNLOADPATH => 19,
      BINDSTRING_ROOTDOC_URL => 20,
      BINDSTRING_INITIAL_FILENAME => 21,
      BINDSTRING_PROXY_USERNAME => 22,
      BINDSTRING_PROXY_PASSWORD => 23,
      BINDSTRING_ENTERPRISE_ID => 24,
      BINDSTRING_DOC_URL => 25
   );
   for tagBINDSTRING'Size use 32;
   
   -- type LPIINTERNETBINDINFOEX is access all IInternetBindInfoEx;
   -- type LPIINTERNETPROTOCOLROOT is access all IInternetProtocolRoot;
   type tagPI_FLAGS is (
      PI_PARSE_URL,
      PI_FILTER_MODE,
      PI_FORCE_ASYNC,
      PI_USE_WORKERTHREAD,
      PI_MIMEVERIFICATION,
      PI_CLSIDLOOKUP,
      PI_DATAPROGRESS,
      PI_SYNCHRONOUS,
      PI_APARTMENTTHREADED,
      PI_CLASSINSTALL,
      PI_PASSONBINDCTX,
      PI_LOADAPPDIRECT,
      PI_NOMIMEHANDLER,
      PD_FORCE_SWITCH,
      PI_PREFERDEFAULTHANDLER
   );
   for tagPI_FLAGS use (
      PI_PARSE_URL => 1,
      PI_FILTER_MODE => 2,
      PI_FORCE_ASYNC => 4,
      PI_USE_WORKERTHREAD => 8,
      PI_MIMEVERIFICATION => 16,
      PI_CLSIDLOOKUP => 32,
      PI_DATAPROGRESS => 64,
      PI_SYNCHRONOUS => 128,
      PI_APARTMENTTHREADED => 256,
      PI_CLASSINSTALL => 512,
      PI_PASSONBINDCTX => 8192,
      PI_LOADAPPDIRECT => 16384,
      PI_NOMIMEHANDLER => 32768,
      PD_FORCE_SWITCH => 65536,
      PI_PREFERDEFAULTHANDLER => 131072
   );
   for tagPI_FLAGS'Size use 32;
   
   -- type LPIINTERNETPROTOCOL is access all IInternetProtocol;
   -- type LPIINTERNETPROTOCOLSINK is access all IInternetProtocolSink;
   -- type LPIINTERNETPROTOCOLSINKStackable is access all IInternetProtocolSinkStackable;
   -- type LPIINTERNETSESSION is access all IInternetSession;
   type tagOIBDG_FLAGS is (
      OIBDG_APARTMENTTHREADED,
      OIBDG_DATAONLY
   );
   for tagOIBDG_FLAGS use (
      OIBDG_APARTMENTTHREADED => 256,
      OIBDG_DATAONLY => 4096
   );
   for tagOIBDG_FLAGS'Size use 32;
   
   -- type LPIINTERNETTHREADSWITCH is access all IInternetThreadSwitch;
   -- type LPIINTERNETPRIORITY is access all IInternetPriority;
   -- type LPIINTERNETPROTOCOLINFO is access all IInternetProtocolInfo;
   type tagPARSEACTION is (
      PARSE_CANONICALIZE,
      PARSE_FRIENDLY,
      PARSE_SECURITY_URL,
      PARSE_ROOTDOCUMENT,
      PARSE_DOCUMENT,
      PARSE_ANCHOR,
      PARSE_ENCODE_IS_UNESCAPE,
      PARSE_DECODE_IS_ESCAPE,
      PARSE_PATH_FROM_URL,
      PARSE_URL_FROM_PATH,
      PARSE_MIME,
      PARSE_SERVER,
      PARSE_SCHEMA,
      PARSE_SITE,
      PARSE_DOMAIN,
      PARSE_LOCATION,
      PARSE_SECURITY_DOMAIN,
      PARSE_ESCAPE,
      PARSE_UNESCAPE
   );
   for tagPARSEACTION use (
      PARSE_CANONICALIZE => 1,
      PARSE_FRIENDLY => 2,
      PARSE_SECURITY_URL => 3,
      PARSE_ROOTDOCUMENT => 4,
      PARSE_DOCUMENT => 5,
      PARSE_ANCHOR => 6,
      PARSE_ENCODE_IS_UNESCAPE => 7,
      PARSE_DECODE_IS_ESCAPE => 8,
      PARSE_PATH_FROM_URL => 9,
      PARSE_URL_FROM_PATH => 10,
      PARSE_MIME => 11,
      PARSE_SERVER => 12,
      PARSE_SCHEMA => 13,
      PARSE_SITE => 14,
      PARSE_DOMAIN => 15,
      PARSE_LOCATION => 16,
      PARSE_SECURITY_DOMAIN => 17,
      PARSE_ESCAPE => 18,
      PARSE_UNESCAPE => 19
   );
   for tagPARSEACTION'Size use 32;
   
   type tagPSUACTION is (
      PSU_DEFAULT,
      PSU_SECURITY_URL_ONLY
   );
   for tagPSUACTION use (
      PSU_DEFAULT => 1,
      PSU_SECURITY_URL_ONLY => 2
   );
   for tagPSUACTION'Size use 32;
   
   type tagQUERYOPTION is (
      QUERY_EXPIRATION_DATE,
      QUERY_TIME_OF_LAST_CHANGE,
      QUERY_CONTENT_ENCODING,
      QUERY_CONTENT_TYPE,
      QUERY_REFRESH,
      QUERY_RECOMBINE,
      QUERY_CAN_NAVIGATE,
      QUERY_USES_NETWORK,
      QUERY_IS_CACHED,
      QUERY_IS_INSTALLEDENTRY,
      QUERY_IS_CACHED_OR_MAPPED,
      QUERY_USES_CACHE,
      QUERY_IS_SECURE,
      QUERY_IS_SAFE,
      QUERY_USES_HISTORYFOLDER,
      QUERY_IS_CACHED_AND_USABLE_OFFLINE
   );
   for tagQUERYOPTION use (
      QUERY_EXPIRATION_DATE => 1,
      QUERY_TIME_OF_LAST_CHANGE => 2,
      QUERY_CONTENT_ENCODING => 3,
      QUERY_CONTENT_TYPE => 4,
      QUERY_REFRESH => 5,
      QUERY_RECOMBINE => 6,
      QUERY_CAN_NAVIGATE => 7,
      QUERY_USES_NETWORK => 8,
      QUERY_IS_CACHED => 9,
      QUERY_IS_INSTALLEDENTRY => 10,
      QUERY_IS_CACHED_OR_MAPPED => 11,
      QUERY_USES_CACHE => 12,
      QUERY_IS_SECURE => 13,
      QUERY_IS_SAFE => 14,
      QUERY_USES_HISTORYFOLDER => 15,
      QUERY_IS_CACHED_AND_USABLE_OFFLINE => 16
   );
   for tagQUERYOPTION'Size use 32;
   
   type tagINTERNETFEATURELIST is (
      FEATURE_OBJECT_CACHING,
      FEATURE_ZONE_ELEVATION,
      FEATURE_MIME_HANDLING,
      FEATURE_MIME_SNIFFING,
      FEATURE_WINDOW_RESTRICTIONS,
      FEATURE_WEBOC_POPUPMANAGEMENT,
      FEATURE_BEHAVIORS,
      FEATURE_DISABLE_MK_PROTOCOL,
      FEATURE_LOCALMACHINE_LOCKDOWN,
      FEATURE_SECURITYBAND,
      FEATURE_RESTRICT_ACTIVEXINSTALL,
      FEATURE_VALIDATE_NAVIGATE_URL,
      FEATURE_RESTRICT_FILEDOWNLOAD,
      FEATURE_ADDON_MANAGEMENT,
      FEATURE_PROTOCOL_LOCKDOWN,
      FEATURE_HTTP_USERNAME_PASSWORD_DISABLE,
      FEATURE_SAFE_BINDTOOBJECT,
      FEATURE_UNC_SAVEDFILECHECK,
      FEATURE_GET_URL_DOM_FILEPATH_UNENCODED,
      FEATURE_TABBED_BROWSING,
      FEATURE_SSLUX,
      FEATURE_DISABLE_NAVIGATION_SOUNDS,
      FEATURE_DISABLE_LEGACY_COMPRESSION,
      FEATURE_FORCE_ADDR_AND_STATUS,
      FEATURE_XMLHTTP,
      FEATURE_DISABLE_TELNET_PROTOCOL,
      FEATURE_FEEDS,
      FEATURE_BLOCK_INPUT_PROMPTS,
      FEATURE_ENTRY_COUNT
   );
   for tagINTERNETFEATURELIST use (
      FEATURE_OBJECT_CACHING => 0,
      FEATURE_ZONE_ELEVATION => 1,
      FEATURE_MIME_HANDLING => 2,
      FEATURE_MIME_SNIFFING => 3,
      FEATURE_WINDOW_RESTRICTIONS => 4,
      FEATURE_WEBOC_POPUPMANAGEMENT => 5,
      FEATURE_BEHAVIORS => 6,
      FEATURE_DISABLE_MK_PROTOCOL => 7,
      FEATURE_LOCALMACHINE_LOCKDOWN => 8,
      FEATURE_SECURITYBAND => 9,
      FEATURE_RESTRICT_ACTIVEXINSTALL => 10,
      FEATURE_VALIDATE_NAVIGATE_URL => 11,
      FEATURE_RESTRICT_FILEDOWNLOAD => 12,
      FEATURE_ADDON_MANAGEMENT => 13,
      FEATURE_PROTOCOL_LOCKDOWN => 14,
      FEATURE_HTTP_USERNAME_PASSWORD_DISABLE => 15,
      FEATURE_SAFE_BINDTOOBJECT => 16,
      FEATURE_UNC_SAVEDFILECHECK => 17,
      FEATURE_GET_URL_DOM_FILEPATH_UNENCODED => 18,
      FEATURE_TABBED_BROWSING => 19,
      FEATURE_SSLUX => 20,
      FEATURE_DISABLE_NAVIGATION_SOUNDS => 21,
      FEATURE_DISABLE_LEGACY_COMPRESSION => 22,
      FEATURE_FORCE_ADDR_AND_STATUS => 23,
      FEATURE_XMLHTTP => 24,
      FEATURE_DISABLE_TELNET_PROTOCOL => 25,
      FEATURE_FEEDS => 26,
      FEATURE_BLOCK_INPUT_PROMPTS => 27,
      FEATURE_ENTRY_COUNT => 28
   );
   for tagINTERNETFEATURELIST'Size use 32;
   
   type MIDL_IInternetSecurityManager_0001 is (
      PUAF_DEFAULT,
      PUAF_NOUI,
      PUAF_ISFILE,
      PUAF_WARN_IF_DENIED,
      PUAF_FORCEUI_FOREGROUND,
      PUAF_CHECK_TIFS,
      PUAF_DONTCHECKBOXINDIALOG,
      PUAF_TRUSTED,
      PUAF_ACCEPT_WILDCARD_SCHEME,
      PUAF_ENFORCERESTRICTED,
      PUAF_NOSAVEDFILECHECK,
      PUAF_REQUIRESAVEDFILECHECK,
      PUAF_DONT_USE_CACHE,
      PUAF_RESERVED1,
      PUAF_RESERVED2,
      PUAF_LMZ_UNLOCKED,
      PUAF_LMZ_LOCKED,
      PUAF_DEFAULTZONEPOL,
      PUAF_NPL_USE_LOCKED_IF_RESTRICTED,
      PUAF_NOUIIFLOCKED,
      PUAF_DRAGPROTOCOLCHECK
   );
   for MIDL_IInternetSecurityManager_0001 use (
      PUAF_DEFAULT => 0,
      PUAF_NOUI => 1,
      PUAF_ISFILE => 2,
      PUAF_WARN_IF_DENIED => 4,
      PUAF_FORCEUI_FOREGROUND => 8,
      PUAF_CHECK_TIFS => 16,
      PUAF_DONTCHECKBOXINDIALOG => 32,
      PUAF_TRUSTED => 64,
      PUAF_ACCEPT_WILDCARD_SCHEME => 128,
      PUAF_ENFORCERESTRICTED => 256,
      PUAF_NOSAVEDFILECHECK => 512,
      PUAF_REQUIRESAVEDFILECHECK => 1024,
      PUAF_DONT_USE_CACHE => 4096,
      PUAF_RESERVED1 => 8192,
      PUAF_RESERVED2 => 16384,
      PUAF_LMZ_UNLOCKED => 65536,
      PUAF_LMZ_LOCKED => 131072,
      PUAF_DEFAULTZONEPOL => 262144,
      PUAF_NPL_USE_LOCKED_IF_RESTRICTED => 524288,
      PUAF_NOUIIFLOCKED => 1048576,
      PUAF_DRAGPROTOCOLCHECK => 2097152
   );
   for MIDL_IInternetSecurityManager_0001'Size use 32;
   
   type MIDL_IInternetSecurityManager_0002 is (
      PUAFOUT_DEFAULT,
      PUAFOUT_ISLOCKZONEPOLICY
   );
   for MIDL_IInternetSecurityManager_0002 use (
      PUAFOUT_DEFAULT => 0,
      PUAFOUT_ISLOCKZONEPOLICY => 1
   );
   for MIDL_IInternetSecurityManager_0002'Size use 32;
   
   type MIDL_IInternetSecurityManager_0003 is (
      SZM_CREATE,
      SZM_DELETE
   );
   for MIDL_IInternetSecurityManager_0003 use (
      SZM_CREATE => 0,
      SZM_DELETE => 1
   );
   for MIDL_IInternetSecurityManager_0003'Size use 32;
   
   -- type LPURLZONEMANAGER is access all IInternetZoneManager;
   type tagURLZONE is (
      URLZONE_INVALID,
      URLZONE_PREDEFINED_MIN,
      URLZONE_INTRANET,
      URLZONE_TRUSTED,
      URLZONE_INTERNET,
      URLZONE_UNTRUSTED,
      URLZONE_PREDEFINED_MAX,
      URLZONE_USER_MIN,
      URLZONE_USER_MAX
   );
   for tagURLZONE use (
      URLZONE_INVALID => -1,
      URLZONE_PREDEFINED_MIN => 0,
      URLZONE_INTRANET => 1,
      URLZONE_TRUSTED => 2,
      URLZONE_INTERNET => 3,
      URLZONE_UNTRUSTED => 4,
      URLZONE_PREDEFINED_MAX => 999,
      URLZONE_USER_MIN => 1000,
      URLZONE_USER_MAX => 10000
   );
   for tagURLZONE'Size use 32;
   
   type tagURLTEMPLATE is (
      URLTEMPLATE_CUSTOM,
      URLTEMPLATE_PREDEFINED_MIN,
      URLTEMPLATE_MEDLOW,
      URLTEMPLATE_MEDIUM,
      URLTEMPLATE_MEDHIGH,
      URLTEMPLATE_HIGH,
      URLTEMPLATE_PREDEFINED_MAX
   );
   for tagURLTEMPLATE use (
      URLTEMPLATE_CUSTOM => 0,
      URLTEMPLATE_PREDEFINED_MIN => 65536,
      URLTEMPLATE_MEDLOW => 66816,
      URLTEMPLATE_MEDIUM => 69632,
      URLTEMPLATE_MEDHIGH => 70912,
      URLTEMPLATE_HIGH => 73728,
      URLTEMPLATE_PREDEFINED_MAX => 131072
   );
   for tagURLTEMPLATE'Size use 32;
   
   type MIDL_IInternetZoneManager_0001 is (
      MAX_ZONE_DESCRIPTION,
      MAX_ZONE_PATH
   );
   for MIDL_IInternetZoneManager_0001 use (
      MAX_ZONE_DESCRIPTION => 200,
      MAX_ZONE_PATH => 260
   );
   for MIDL_IInternetZoneManager_0001'Size use 32;
   
   type MIDL_IInternetZoneManager_0002 is (
      ZAFLAGS_CUSTOM_EDIT,
      ZAFLAGS_ADD_SITES,
      ZAFLAGS_REQUIRE_VERIFICATION,
      ZAFLAGS_INCLUDE_PROXY_OVERRIDE,
      ZAFLAGS_INCLUDE_INTRANET_SITES,
      ZAFLAGS_NO_UI,
      ZAFLAGS_SUPPORTS_VERIFICATION,
      ZAFLAGS_UNC_AS_INTRANET,
      ZAFLAGS_DETECT_INTRANET,
      ZAFLAGS_USE_LOCKED_ZONES,
      ZAFLAGS_VERIFY_TEMPLATE_SETTINGS,
      ZAFLAGS_NO_CACHE
   );
   for MIDL_IInternetZoneManager_0002 use (
      ZAFLAGS_CUSTOM_EDIT => 1,
      ZAFLAGS_ADD_SITES => 2,
      ZAFLAGS_REQUIRE_VERIFICATION => 4,
      ZAFLAGS_INCLUDE_PROXY_OVERRIDE => 8,
      ZAFLAGS_INCLUDE_INTRANET_SITES => 16,
      ZAFLAGS_NO_UI => 32,
      ZAFLAGS_SUPPORTS_VERIFICATION => 64,
      ZAFLAGS_UNC_AS_INTRANET => 128,
      ZAFLAGS_DETECT_INTRANET => 256,
      ZAFLAGS_USE_LOCKED_ZONES => 65536,
      ZAFLAGS_VERIFY_TEMPLATE_SETTINGS => 131072,
      ZAFLAGS_NO_CACHE => 262144
   );
   for MIDL_IInternetZoneManager_0002'Size use 32;
   
   -- type LPZONEATTRIBUTES is access all ZONEATTRIBUTES;
   type URLZONEREG is (
      URLZONEREG_DEFAULT,
      URLZONEREG_HKLM,
      URLZONEREG_HKCU
   );
   for URLZONEREG use (
      URLZONEREG_DEFAULT => 0,
      URLZONEREG_HKLM => 1,
      URLZONEREG_HKCU => 2
   );
   for URLZONEREG'Size use 32;
   
   -- type LPCODEBASEHOLD is access all tagCODEBASEHOLD;
   -- type LPSOFTDISTINFO is access all tagSOFTDISTINFO;
   -- type LPCATALOGFILEINFO is access all ICatalogFileInfo;
   -- type LPDATAFILTER is access all IDataFilter;
   -- type LPENCODINGFILTERFACTORY is access all IEncodingFilterFactory;
   -- type LPHIT_LOGGING_INFO is access all tagHIT_LOGGING_INFO;
   -- type LPIWRAPPEDPROTOCOL is access all IWrappedProtocol;
   -- type LPGETBINDHANDLE is access all IGetBindHandle;
   type MIDL_IGetBindHandle_0001 is (
      BINDHANDLETYPES_APPCACHE,
      BINDHANDLETYPES_DEPENDENCY,
      BINDHANDLETYPES_COUNT
   );
   for MIDL_IGetBindHandle_0001 use (
      BINDHANDLETYPES_APPCACHE => 0,
      BINDHANDLETYPES_DEPENDENCY => 1,
      BINDHANDLETYPES_COUNT => 2
   );
   for MIDL_IGetBindHandle_0001'Size use 32;
   
   -- type LPPROTOCOL_ARGUMENT is access all tagPROTOCOL_ARGUMENT;
   -- type LPBINDCALLBACKREDIRECT is access all IBindCallbackRedirect;
   -- C:\Program Files (x86)\Windows Kits\10\include\10.0.16299.0\um\oleidl.h
   -- type IOleAdviseHolder; -- forward declaration
   -- type IOleCache; -- forward declaration
   -- type IOleCache2; -- forward declaration
   -- type IOleCacheControl; -- forward declaration
   -- type IParseDisplayName; -- forward declaration
   -- type IOleContainer; -- forward declaration
   -- type IOleClientSite; -- forward declaration
   -- type IOleObject; -- forward declaration
   -- type IOleWindow; -- forward declaration
   -- type IOleLink; -- forward declaration
   -- type IOleItemContainer; -- forward declaration
   -- type IOleInPlaceUIWindow; -- forward declaration
   -- type IOleInPlaceActiveObject; -- forward declaration
   -- type IOleInPlaceFrame; -- forward declaration
   -- type IOleInPlaceObject; -- forward declaration
   -- type IOleInPlaceSite; -- forward declaration
   -- type IContinue; -- forward declaration
   -- type IViewObject; -- forward declaration
   -- type IViewObject2; -- forward declaration
   -- type IDropSource; -- forward declaration
   -- type IDropTarget; -- forward declaration
   -- type IDropSourceNotify; -- forward declaration
   -- type IEnterpriseDropTarget; -- forward declaration
   -- type IEnumOLEVERB; -- forward declaration
   -- type LPOLEADVISEHOLDER is access all IOleAdviseHolder;
   -- type LPOLECACHE is access all IOleCache;
   -- type LPOLECACHE2 is access all IOleCache2;
   type tagDISCARDCACHE is (
      DISCARDCACHE_SAVEIFDIRTY,
      DISCARDCACHE_NOSAVE
   );
   for tagDISCARDCACHE use (
      DISCARDCACHE_SAVEIFDIRTY => 0,
      DISCARDCACHE_NOSAVE => 1
   );
   for tagDISCARDCACHE'Size use 32;
   
   -- type LPOLECACHECONTROL is access all IOleCacheControl;
   -- type LPPARSEDISPLAYNAME is access all IParseDisplayName;
   -- type LPOLECONTAINER is access all IOleContainer;
   -- type LPOLECLIENTSITE is access all IOleClientSite;
   -- type LPOLEOBJECT is access all IOleObject;
   type tagOLEGETMONIKER is (
      OLEGETMONIKER_ONLYIFTHERE,
      OLEGETMONIKER_FORCEASSIGN,
      OLEGETMONIKER_UNASSIGN,
      OLEGETMONIKER_TEMPFORUSER
   );
   for tagOLEGETMONIKER use (
      OLEGETMONIKER_ONLYIFTHERE => 1,
      OLEGETMONIKER_FORCEASSIGN => 2,
      OLEGETMONIKER_UNASSIGN => 3,
      OLEGETMONIKER_TEMPFORUSER => 4
   );
   for tagOLEGETMONIKER'Size use 32;
   
   type tagOLEWHICHMK is (
      OLEWHICHMK_CONTAINER,
      OLEWHICHMK_OBJREL,
      OLEWHICHMK_OBJFULL
   );
   for tagOLEWHICHMK use (
      OLEWHICHMK_CONTAINER => 1,
      OLEWHICHMK_OBJREL => 2,
      OLEWHICHMK_OBJFULL => 3
   );
   for tagOLEWHICHMK'Size use 32;
   
   type tagUSERCLASSTYPE is (
      USERCLASSTYPE_FULL,
      USERCLASSTYPE_SHORT,
      USERCLASSTYPE_APPNAME
   );
   for tagUSERCLASSTYPE use (
      USERCLASSTYPE_FULL => 1,
      USERCLASSTYPE_SHORT => 2,
      USERCLASSTYPE_APPNAME => 3
   );
   for tagUSERCLASSTYPE'Size use 32;
   
   type tagOLEMISC is (
      OLEMISC_RECOMPOSEONRESIZE,
      OLEMISC_ONLYICONIC,
      OLEMISC_INSERTNOTREPLACE,
      OLEMISC_STATIC,
      OLEMISC_CANTLINKINSIDE,
      OLEMISC_CANLINKBYOLE1,
      OLEMISC_ISLINKOBJECT,
      OLEMISC_INSIDEOUT,
      OLEMISC_ACTIVATEWHENVISIBLE,
      OLEMISC_RENDERINGISDEVICEINDEPENDENT,
      OLEMISC_INVISIBLEATRUNTIME,
      OLEMISC_ALWAYSRUN,
      OLEMISC_ACTSLIKEBUTTON,
      OLEMISC_ACTSLIKELABEL,
      OLEMISC_NOUIACTIVATE,
      OLEMISC_ALIGNABLE,
      OLEMISC_SIMPLEFRAME,
      OLEMISC_SETCLIENTSITEFIRST,
      OLEMISC_IMEMODE,
      OLEMISC_IGNOREACTIVATEWHENVISIBLE,
      OLEMISC_WANTSTOMENUMERGE,
      OLEMISC_SUPPORTSMULTILEVELUNDO
   );
   for tagOLEMISC use (
      OLEMISC_RECOMPOSEONRESIZE => 1,
      OLEMISC_ONLYICONIC => 2,
      OLEMISC_INSERTNOTREPLACE => 4,
      OLEMISC_STATIC => 8,
      OLEMISC_CANTLINKINSIDE => 16,
      OLEMISC_CANLINKBYOLE1 => 32,
      OLEMISC_ISLINKOBJECT => 64,
      OLEMISC_INSIDEOUT => 128,
      OLEMISC_ACTIVATEWHENVISIBLE => 256,
      OLEMISC_RENDERINGISDEVICEINDEPENDENT => 512,
      OLEMISC_INVISIBLEATRUNTIME => 1024,
      OLEMISC_ALWAYSRUN => 2048,
      OLEMISC_ACTSLIKEBUTTON => 4096,
      OLEMISC_ACTSLIKELABEL => 8192,
      OLEMISC_NOUIACTIVATE => 16384,
      OLEMISC_ALIGNABLE => 32768,
      OLEMISC_SIMPLEFRAME => 65536,
      OLEMISC_SETCLIENTSITEFIRST => 131072,
      OLEMISC_IMEMODE => 262144,
      OLEMISC_IGNOREACTIVATEWHENVISIBLE => 524288,
      OLEMISC_WANTSTOMENUMERGE => 1048576,
      OLEMISC_SUPPORTSMULTILEVELUNDO => 2097152
   );
   for tagOLEMISC'Size use 32;
   
   type tagOLECLOSE is (
      OLECLOSE_SAVEIFDIRTY,
      OLECLOSE_NOSAVE,
      OLECLOSE_PROMPTSAVE
   );
   for tagOLECLOSE use (
      OLECLOSE_SAVEIFDIRTY => 0,
      OLECLOSE_NOSAVE => 1,
      OLECLOSE_PROMPTSAVE => 2
   );
   for tagOLECLOSE'Size use 32;
   
   type tagOLERENDER is (
      OLERENDER_NONE,
      OLERENDER_DRAW,
      OLERENDER_FORMAT,
      OLERENDER_ASIS
   );
   for tagOLERENDER use (
      OLERENDER_NONE => 0,
      OLERENDER_DRAW => 1,
      OLERENDER_FORMAT => 2,
      OLERENDER_ASIS => 3
   );
   for tagOLERENDER'Size use 32;
   
   -- type LPOLERENDER is access all OLERENDER;
   -- type POBJECTDESCRIPTOR is access all tagOBJECTDESCRIPTOR;
   -- type LPOBJECTDESCRIPTOR is access all tagOBJECTDESCRIPTOR;
   -- type PLINKSRCDESCRIPTOR is access all tagOBJECTDESCRIPTOR;
   -- type LPLINKSRCDESCRIPTOR is access all tagOBJECTDESCRIPTOR;
   -- type LPOLEWINDOW is access all IOleWindow;
   -- type LPOLELINK is access all IOleLink;
   type tagOLEUPDATE is (
      OLEUPDATE_ALWAYS,
      OLEUPDATE_ONCALL
   );
   for tagOLEUPDATE use (
      OLEUPDATE_ALWAYS => 1,
      OLEUPDATE_ONCALL => 3
   );
   for tagOLEUPDATE'Size use 32;
   
   -- type LPOLEUPDATE is access all OLEUPDATE;
   -- type POLEUPDATE is access all OLEUPDATE;
   type tagOLELINKBIND is (
      OLELINKBIND_EVENIFCLASSDIFF
   );
   for tagOLELINKBIND use (
      OLELINKBIND_EVENIFCLASSDIFF => 1
   );
   for tagOLELINKBIND'Size use 32;
   
   -- type LPOLEITEMCONTAINER is access all IOleItemContainer;
   type tagBINDSPEED is (
      BINDSPEED_INDEFINITE,
      BINDSPEED_MODERATE,
      BINDSPEED_IMMEDIATE
   );
   for tagBINDSPEED use (
      BINDSPEED_INDEFINITE => 1,
      BINDSPEED_MODERATE => 2,
      BINDSPEED_IMMEDIATE => 3
   );
   for tagBINDSPEED'Size use 32;
   
   type tagOLECONTF is (
      OLECONTF_EMBEDDINGS,
      OLECONTF_LINKS,
      OLECONTF_OTHERS,
      OLECONTF_ONLYUSER,
      OLECONTF_ONLYIFRUNNING
   );
   for tagOLECONTF use (
      OLECONTF_EMBEDDINGS => 1,
      OLECONTF_LINKS => 2,
      OLECONTF_OTHERS => 4,
      OLECONTF_ONLYUSER => 8,
      OLECONTF_ONLYIFRUNNING => 16
   );
   for tagOLECONTF'Size use 32;
   
   -- type LPOLEINPLACEUIWINDOW is access all IOleInPlaceUIWindow;
   -- type LPOLEINPLACEACTIVEOBJECT is access all IOleInPlaceActiveObject;
   -- type LPOLEINPLACEFRAME is access all IOleInPlaceFrame;
   -- type LPOLEINPLACEFRAMEINFO is access all tagOIFI;
   -- type LPOLEMENUGROUPWIDTHS is access all tagOleMenuGroupWidths;
   -- type LPOLEINPLACEOBJECT is access all IOleInPlaceObject;
   -- type LPOLEINPLACESITE is access all IOleInPlaceSite;
   -- type LPVIEWOBJECT is access all IViewObject;
   -- type LPVIEWOBJECT2 is access all IViewObject2;
   -- type LPDROPSOURCE is access all IDropSource;
   -- type LPDROPTARGET is access all IDropTarget;
   -- type LPENUMOLEVERB is access all IEnumOLEVERB;
   -- type LPOLEVERB is access all tagOLEVERB;
   type tagOLEVERBATTRIB is (
      OLEVERBATTRIB_NEVERDIRTIES,
      OLEVERBATTRIB_ONCONTAINERMENU
   );
   for tagOLEVERBATTRIB use (
      OLEVERBATTRIB_NEVERDIRTIES => 1,
      OLEVERBATTRIB_ONCONTAINERMENU => 2
   );
   for tagOLEVERBATTRIB'Size use 32;
   
   -- C:\Program Files (x86)\Windows Kits\10\include\10.0.16299.0\um\servprov.h
   -- type IServiceProvider; -- forward declaration
   -- type LPSERVICEPROVIDER is access all IServiceProvider;
   -- C:\Program Files (x86)\Windows Kits\10\include\10.0.16299.0\um\msxml.h
   -- type IXMLDOMImplementation; -- forward declaration
   -- type IXMLDOMNode; -- forward declaration
   -- type IXMLDOMDocumentFragment; -- forward declaration
   -- type IXMLDOMDocument; -- forward declaration
   -- type IXMLDOMNodeList; -- forward declaration
   -- type IXMLDOMNamedNodeMap; -- forward declaration
   -- type IXMLDOMCharacterData; -- forward declaration
   -- type IXMLDOMAttribute; -- forward declaration
   -- type IXMLDOMElement; -- forward declaration
   -- type IXMLDOMText; -- forward declaration
   -- type IXMLDOMComment; -- forward declaration
   -- type IXMLDOMProcessingInstruction; -- forward declaration
   -- type IXMLDOMCDATASection; -- forward declaration
   -- type IXMLDOMDocumentType; -- forward declaration
   -- type IXMLDOMNotation; -- forward declaration
   -- type IXMLDOMEntity; -- forward declaration
   -- type IXMLDOMEntityReference; -- forward declaration
   -- type IXMLDOMParseError; -- forward declaration
   -- type IXTLRuntime; -- forward declaration
   -- type XMLDOMDocumentEvents; -- forward declaration
   type DOMDocument is null record; -- Incomplete/Opaque Type
   type DOMFreeThreadedDocument is null record; -- Incomplete/Opaque Type
   -- type IXMLHttpRequest; -- forward declaration
   type XMLHTTPRequest is null record; -- Incomplete/Opaque Type
   -- type IXMLDSOControl; -- forward declaration
   type XMLDSOControl is null record; -- Incomplete/Opaque Type
   -- type IXMLElementCollection; -- forward declaration
   -- type IXMLDocument; -- forward declaration
   -- type IXMLDocument2; -- forward declaration
   -- type IXMLElement; -- forward declaration
   -- type IXMLElement2; -- forward declaration
   -- type IXMLAttribute; -- forward declaration
   -- type IXMLError; -- forward declaration
   type XMLDocument is null record; -- Incomplete/Opaque Type
   type tagDOMNodeType is (
      NODE_INVALID,
      NODE_ELEMENT,
      NODE_ATTRIBUTE,
      NODE_TEXT,
      NODE_CDATA_SECTION,
      NODE_ENTITY_REFERENCE,
      NODE_ENTITY,
      NODE_PROCESSING_INSTRUCTION,
      NODE_COMMENT,
      NODE_DOCUMENT,
      NODE_DOCUMENT_TYPE,
      NODE_DOCUMENT_FRAGMENT,
      NODE_NOTATION
   );
   for tagDOMNodeType use (
      NODE_INVALID => 0,
      NODE_ELEMENT => 1,
      NODE_ATTRIBUTE => 2,
      NODE_TEXT => 3,
      NODE_CDATA_SECTION => 4,
      NODE_ENTITY_REFERENCE => 5,
      NODE_ENTITY => 6,
      NODE_PROCESSING_INSTRUCTION => 7,
      NODE_COMMENT => 8,
      NODE_DOCUMENT => 9,
      NODE_DOCUMENT_TYPE => 10,
      NODE_DOCUMENT_FRAGMENT => 11,
      NODE_NOTATION => 12
   );
   for tagDOMNodeType'Size use 32;
   
   type tagXMLEMEM_TYPE is (
      XMLELEMTYPE_ELEMENT,
      XMLELEMTYPE_TEXT,
      XMLELEMTYPE_COMMENT,
      XMLELEMTYPE_DOCUMENT,
      XMLELEMTYPE_DTD,
      XMLELEMTYPE_PI,
      XMLELEMTYPE_OTHER
   );
   for tagXMLEMEM_TYPE use (
      XMLELEMTYPE_ELEMENT => 0,
      XMLELEMTYPE_TEXT => 1,
      XMLELEMTYPE_COMMENT => 2,
      XMLELEMTYPE_DOCUMENT => 3,
      XMLELEMTYPE_DTD => 4,
      XMLELEMTYPE_PI => 5,
      XMLELEMTYPE_OTHER => 6
   );
   for tagXMLEMEM_TYPE'Size use 32;
   
   -- C:\Program Files (x86)\Windows Kits\10\include\10.0.16299.0\um\propidl.h
   type PIDMSI_STATUS_VALUE is (
      PIDMSI_STATUS_NORMAL,
      PIDMSI_STATUS_NEW,
      PIDMSI_STATUS_PRELIM,
      PIDMSI_STATUS_DRAFT,
      PIDMSI_STATUS_INPROGRESS,
      PIDMSI_STATUS_EDIT,
      PIDMSI_STATUS_REVIEW,
      PIDMSI_STATUS_PROOF,
      PIDMSI_STATUS_FINAL,
      PIDMSI_STATUS_OTHER
   );
   for PIDMSI_STATUS_VALUE use (
      PIDMSI_STATUS_NORMAL => 0,
      PIDMSI_STATUS_NEW => 1,
      PIDMSI_STATUS_PRELIM => 2,
      PIDMSI_STATUS_DRAFT => 3,
      PIDMSI_STATUS_INPROGRESS => 4,
      PIDMSI_STATUS_EDIT => 5,
      PIDMSI_STATUS_REVIEW => 6,
      PIDMSI_STATUS_PROOF => 7,
      PIDMSI_STATUS_FINAL => 8,
      PIDMSI_STATUS_OTHER => 32767
   );
   for PIDMSI_STATUS_VALUE'Size use 32;
   
   type PMemoryAllocator is null record; -- Incomplete/Opaque Type
   -- C:\Program Files (x86)\Windows Kits\10\include\10.0.16299.0\um\oleauto.h
   type tagREGKIND is (
      REGKIND_DEFAULT,
      REGKIND_REGISTER,
      REGKIND_NONE
   );
   for tagREGKIND use (
      REGKIND_DEFAULT => 0,
      REGKIND_REGISTER => 1,
      REGKIND_NONE => 2
   );
   for tagREGKIND'Size use 32;
   
   -- type LPPARAMDATA is access all tagPARAMDATA;
   -- type LPMETHODDATA is access all tagMETHODDATA;
   -- type LPINTERFACEDATA is access all tagINTERFACEDATA;
   -- C:\Program Files (x86)\Windows Kits\10\include\10.0.16299.0\um\commdlg.h
   -- type LPOPENFILENAME_NT4A is access all tagOFN_NT4A;
   -- type LPOPENFILENAME_NT4W is access all tagOFN_NT4W;
   -- type LPOPENFILENAMEA is access all tagOFNA;
   -- type LPOPENFILENAMEW is access all tagOFNW;
   -- type LPOFNOTIFYA is access all OFNOTIFYA;
   -- type LPOFNOTIFYW is access all OFNOTIFYW;
   -- type LPOFNOTIFYEXA is access all OFNOTIFYEXA;
   -- type LPOFNOTIFYEXW is access all OFNOTIFYEXW;
   -- type LPCHOOSECOLORA is access all tagCHOOSECOLORA;
   -- type LPCHOOSECOLORW is access all tagCHOOSECOLORW;
   -- type LPFINDREPLACEA is access all tagFINDREPLACEA;
   -- type LPFINDREPLACEW is access all tagFINDREPLACEW;
   -- type LPCHOOSEFONTA is access all CHOOSEFONTA;
   -- type LPCHOOSEFONTW is access all CHOOSEFONTW;
   -- type PCCHOOSEFONTA is access all CHOOSEFONTA;
   -- type PCCHOOSEFONTW is access all CHOOSEFONTW;
   -- type LPPRINTDLGA is access all tagPDA;
   -- type LPPRINTDLGW is access all tagPDW;
   -- type LPPRINTPAGERANGE is access all PRINTPAGERANGE;
   -- type PCPRINTPAGERANGE is access all PRINTPAGERANGE;
   -- type LPPRINTDLGEXA is access all tagPDEXA;
   -- type LPPRINTDLGEXW is access all tagPDEXW;
   -- type LPDEVNAMES is access all DEVNAMES;
   -- type PCDEVNAMES is access all DEVNAMES;
   -- type LPPAGESETUPDLGA is access all tagPSDA;
   -- type LPPAGESETUPDLGW is access all tagPSDW;
   -- C:\Program Files (x86)\Windows Kits\10\include\10.0.16299.0\shared\stralign.h
   -- C:\Program Files (x86)\Windows Kits\10\include\10.0.16299.0\um\winsvc.h
   -- type LPSERVICE_CUSTOM_SYSTEM_STATE_CHANGE_DATA_ITEM is access all SERVICE_CUSTOM_SYSTEM_STATE_CHANGE_DATA_ITEM;
   -- type LPSERVICE_DESCRIPTIONA is access all SERVICE_DESCRIPTIONA;
   -- type LPSERVICE_DESCRIPTIONW is access all SERVICE_DESCRIPTIONW;
   type SC_ACTION_TYPE is (
      SC_ACTION_NONE,
      SC_ACTION_RESTART,
      SC_ACTION_REBOOT,
      SC_ACTION_RUN_COMMAND,
      SC_ACTION_OWN_RESTART
   );
   for SC_ACTION_TYPE use (
      SC_ACTION_NONE => 0,
      SC_ACTION_RESTART => 1,
      SC_ACTION_REBOOT => 2,
      SC_ACTION_RUN_COMMAND => 3,
      SC_ACTION_OWN_RESTART => 4
   );
   for SC_ACTION_TYPE'Size use 32;
   
   -- type LPSC_ACTION is access all SC_ACTION;
   -- type LPSERVICE_FAILURE_ACTIONSA is access all SERVICE_FAILURE_ACTIONSA;
   -- type LPSERVICE_FAILURE_ACTIONSW is access all SERVICE_FAILURE_ACTIONSW;
   -- type LPSERVICE_DELAYED_AUTO_START_INFO is access all SERVICE_DELAYED_AUTO_START_INFO;
   -- type LPSERVICE_FAILURE_ACTIONS_FLAG is access all SERVICE_FAILURE_ACTIONS_FLAG;
   -- type LPSERVICE_SID_INFO is access all SERVICE_SID_INFO;
   -- type LPSERVICE_REQUIRED_PRIVILEGES_INFOA is access all SERVICE_REQUIRED_PRIVILEGES_INFOA;
   -- type LPSERVICE_REQUIRED_PRIVILEGES_INFOW is access all SERVICE_REQUIRED_PRIVILEGES_INFOW;
   -- type LPSERVICE_PRESHUTDOWN_INFO is access all SERVICE_PRESHUTDOWN_INFO;
   -- type PSERVICE_TRIGGER_SPECIFIC_DATA_ITEM is access all SERVICE_TRIGGER_SPECIFIC_DATA_ITEM;
   -- type PSERVICE_TRIGGER is access all SERVICE_TRIGGER;
   -- type PSERVICE_TRIGGER_INFO is access all SERVICE_TRIGGER_INFO;
   -- type LPSERVICE_PREFERRED_NODE_INFO is access all SERVICE_PREFERRED_NODE_INFO;
   -- type PSERVICE_TIMECHANGE_INFO is access all SERVICE_TIMECHANGE_INFO;
   -- type PSERVICE_LAUNCH_PROTECTED_INFO is access all SERVICE_LAUNCH_PROTECTED_INFO;
   -- type SC_HANDLE is access all SC_HANDLE_x;
   -- type LPSC_HANDLE is access all SC_HANDLE;
   -- type SERVICE_STATUS_HANDLE is access all SERVICE_STATUS_HANDLE_x;
   type SC_STATUS_TYPE is (
      SC_STATUS_PROCESS_INFO
   );
   for SC_STATUS_TYPE use (
      SC_STATUS_PROCESS_INFO => 0
   );
   for SC_STATUS_TYPE'Size use 32;
   
   type SC_ENUM_TYPE is (
      SC_ENUM_PROCESS_INFO
   );
   for SC_ENUM_TYPE use (
      SC_ENUM_PROCESS_INFO => 0
   );
   for SC_ENUM_TYPE'Size use 32;
   
   -- type LPSERVICE_STATUS is access all SERVICE_STATUS;
   -- type LPSERVICE_STATUS_PROCESS is access all SERVICE_STATUS_PROCESS;
   -- type LPENUM_SERVICE_STATUSA is access all ENUM_SERVICE_STATUSA;
   -- type LPENUM_SERVICE_STATUSW is access all ENUM_SERVICE_STATUSW;
   -- type LPENUM_SERVICE_STATUS_PROCESSA is access all ENUM_SERVICE_STATUS_PROCESSA;
   -- type LPENUM_SERVICE_STATUS_PROCESSW is access all ENUM_SERVICE_STATUS_PROCESSW;
   -- type LPQUERY_SERVICE_LOCK_STATUSA is access all QUERY_SERVICE_LOCK_STATUSA;
   -- type LPQUERY_SERVICE_LOCK_STATUSW is access all QUERY_SERVICE_LOCK_STATUSW;
   -- type LPQUERY_SERVICE_CONFIGA is access all QUERY_SERVICE_CONFIGA;
   -- type LPQUERY_SERVICE_CONFIGW is access all QUERY_SERVICE_CONFIGW;
   -- type LPSERVICE_TABLE_ENTRYA is access all SERVICE_TABLE_ENTRYA;
   -- type LPSERVICE_TABLE_ENTRYW is access all SERVICE_TABLE_ENTRYW;
   -- type PSERVICE_NOTIFY_1 is access all SERVICE_NOTIFY_1;
   -- type PSERVICE_NOTIFY_2A is access all SERVICE_NOTIFY_2A;
   -- type PSERVICE_NOTIFY_2W is access all SERVICE_NOTIFY_2W;
   -- type PSERVICE_NOTIFYA is access all SERVICE_NOTIFY_2A;
   -- type PSERVICE_NOTIFYW is access all SERVICE_NOTIFY_2W;
   -- type PSERVICE_CONTROL_STATUS_REASON_PARAMSA is access all SERVICE_CONTROL_STATUS_REASON_PARAMSA;
   -- type PSERVICE_CONTROL_STATUS_REASON_PARAMSW is access all SERVICE_CONTROL_STATUS_REASON_PARAMSW;
   -- type PSERVICE_START_REASON is access all SERVICE_START_REASON;
   -- type PSC_EVENT_TYPE is access all SC_EVENT_TYPE;
   type SC_EVENT_TYPE is (
      SC_EVENT_DATABASE_CHANGE,
      SC_EVENT_PROPERTY_CHANGE,
      SC_EVENT_STATUS_CHANGE
   );
   for SC_EVENT_TYPE use (
      SC_EVENT_DATABASE_CHANGE => 0,
      SC_EVENT_PROPERTY_CHANGE => 1,
      SC_EVENT_STATUS_CHANGE => 2
   );
   for SC_EVENT_TYPE'Size use 32;
   
   -- type PSC_NOTIFICATION_CALLBACK is access all SC_NOTIFICATION_CALLBACK;
   -- type PSC_NOTIFICATION_REGISTRATION is access all SC_NOTIFICATION_REGISTRATION;
   type SC_NOTIFICATION_REGISTRATION is null record; -- Incomplete/Opaque Type
   -- C:\Program Files (x86)\Windows Kits\10\include\10.0.16299.0\um\mcx.h
   -- type PMODEMDEVCAPS is access all MODEMDEVCAPS;
   -- type LPMODEMDEVCAPS is access all MODEMDEVCAPS;
   -- type PMODEMSETTINGS is access all MODEMSETTINGS;
   -- type LPMODEMSETTINGS is access all MODEMSETTINGS;
   -- C:\Program Files (x86)\Windows Kits\10\include\10.0.16299.0\um\imm.h
   -- type HIMC is access all HIMC_x;
   -- type HIMCC is access all HIMCC_x;
   -- type LPHKL is access all HKL;
   -- type PCOMPOSITIONFORM is access all tagCOMPOSITIONFORM;
   -- type NPCOMPOSITIONFORM is access all tagCOMPOSITIONFORM;
   -- type LPCOMPOSITIONFORM is access all tagCOMPOSITIONFORM;
   -- type LPCANDIDATEFORM is access all tagCANDIDATEFORM;
   -- type PCANDIDATEFORM is access all tagCANDIDATEFORM;
   -- type NPCANDIDATEFORM is access all tagCANDIDATEFORM;
   -- type PCANDIDATELIST is access all tagCANDIDATELIST;
   -- type NPCANDIDATELIST is access all tagCANDIDATELIST;
   -- type LPCANDIDATELIST is access all tagCANDIDATELIST;
   -- type LPREGISTERWORDA is access all tagREGISTERWORDA;
   -- type NPREGISTERWORDA is access all tagREGISTERWORDA;
   -- type PREGISTERWORDA is access all tagREGISTERWORDA;
   -- type PREGISTERWORDW is access all tagREGISTERWORDW;
   -- type LPREGISTERWORDW is access all tagREGISTERWORDW;
   -- type NPREGISTERWORDW is access all tagREGISTERWORDW;
   -- type PRECONVERTSTRING is access all tagRECONVERTSTRING;
   -- type NPRECONVERTSTRING is access all tagRECONVERTSTRING;
   -- type LPRECONVERTSTRING is access all tagRECONVERTSTRING;
   -- type PSTYLEBUFA is access all tagSTYLEBUFA;
   -- type NPSTYLEBUFA is access all tagSTYLEBUFA;
   -- type LPSTYLEBUFA is access all tagSTYLEBUFA;
   -- type LPSTYLEBUFW is access all tagSTYLEBUFW;
   -- type NPSTYLEBUFW is access all tagSTYLEBUFW;
   -- type PSTYLEBUFW is access all tagSTYLEBUFW;
   -- type PIMEMENUITEMINFOA is access all tagIMEMENUITEMINFOA;
   -- type NPIMEMENUITEMINFOA is access all tagIMEMENUITEMINFOA;
   -- type LPIMEMENUITEMINFOA is access all tagIMEMENUITEMINFOA;
   -- type NPIMEMENUITEMINFOW is access all tagIMEMENUITEMINFOW;
   -- type PIMEMENUITEMINFOW is access all tagIMEMENUITEMINFOW;
   -- type LPIMEMENUITEMINFOW is access all tagIMEMENUITEMINFOW;
   -- type NPIMECHARPOSITION is access all tagIMECHARPOSITION;
   -- type LPIMECHARPOSITION is access all tagIMECHARPOSITION;
   -- type PIMECHARPOSITION is access all tagIMECHARPOSITION;
   -- <invalid>
   type NSConstantString_tag is null record;
   type type_info is null record; -- Incomplete/Opaque Type
   type builtin_va_list is access all Character;
end;
