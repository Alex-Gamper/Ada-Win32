package Win32 is
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
   
   type COMPARTMENT_ID is (
      UNSPECIFIED_COMPARTMENT_ID,
      DEFAULT_COMPARTMENT_ID
   );
   for COMPARTMENT_ID use (
      UNSPECIFIED_COMPARTMENT_ID => 0,
      DEFAULT_COMPARTMENT_ID => 1
   );
   for COMPARTMENT_ID'Size use 32;
   
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
   
   type ACL_INFORMATION_CLASS is (
      AclRevisionInformation,
      AclSizeInformation
   );
   for ACL_INFORMATION_CLASS use (
      AclRevisionInformation => 1,
      AclSizeInformation => 2
   );
   for ACL_INFORMATION_CLASS'Size use 32;
   
   type AUDIT_EVENT_TYPE is (
      AuditEventObjectAccess,
      AuditEventDirectoryServiceAccess
   );
   for AUDIT_EVENT_TYPE use (
      AuditEventObjectAccess => 0,
      AuditEventDirectoryServiceAccess => 1
   );
   for AUDIT_EVENT_TYPE'Size use 32;
   
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
   
   type TOKEN_TYPE is (
      TokenPrimary,
      TokenImpersonation
   );
   for TOKEN_TYPE use (
      TokenPrimary => 1,
      TokenImpersonation => 2
   );
   for TOKEN_TYPE'Size use 32;
   
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
   
   type HARDWARE_COUNTER_TYPE is (
      PMCCounter,
      MaxHardwareCounterType
   );
   for HARDWARE_COUNTER_TYPE use (
      PMCCounter => 0,
      MaxHardwareCounterType => 1
   );
   for HARDWARE_COUNTER_TYPE'Size use 32;
   
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
   
   type CPU_SET_INFORMATION_TYPE is (
      CpuSetInformation
   );
   for CPU_SET_INFORMATION_TYPE use (
      CpuSetInformation => 0
   );
   for CPU_SET_INFORMATION_TYPE'Size use 32;
   
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
   
   type IMAGE_AUX_SYMBOL_TYPE is (
      IMAGE_AUX_SYMBOL_TYPE_TOKEN_DEF
   );
   for IMAGE_AUX_SYMBOL_TYPE use (
      IMAGE_AUX_SYMBOL_TYPE_TOKEN_DEF => 1
   );
   for IMAGE_AUX_SYMBOL_TYPE'Size use 32;
   
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
   
   type OS_DEPLOYEMENT_STATE_VALUES is (
      OS_DEPLOYMENT_STANDARD,
      OS_DEPLOYMENT_COMPACT
   );
   for OS_DEPLOYEMENT_STATE_VALUES use (
      OS_DEPLOYMENT_STANDARD => 1,
      OS_DEPLOYMENT_COMPACT => 2
   );
   for OS_DEPLOYEMENT_STATE_VALUES'Size use 32;
   
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
   
   type GET_FILEEX_INFO_LEVELS is (
      GetFileExInfoStandard,
      GetFileExMaxInfoLevel
   );
   for GET_FILEEX_INFO_LEVELS use (
      GetFileExInfoStandard => 0,
      GetFileExMaxInfoLevel => 1
   );
   for GET_FILEEX_INFO_LEVELS'Size use 32;
   
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
   
   type STREAM_INFO_LEVELS is (
      FindStreamInfoStandard,
      FindStreamInfoMaxInfoLevel
   );
   for STREAM_INFO_LEVELS use (
      FindStreamInfoStandard => 0,
      FindStreamInfoMaxInfoLevel => 1
   );
   for STREAM_INFO_LEVELS'Size use 32;
   
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
   
   type PROCESS_MEMORY_EXHAUSTION_TYPE is (
      PMETypeFailFastOnCommitFailure,
      PMETypeMax
   );
   for PROCESS_MEMORY_EXHAUSTION_TYPE use (
      PMETypeFailFastOnCommitFailure => 0,
      PMETypeMax => 1
   );
   for PROCESS_MEMORY_EXHAUSTION_TYPE'Size use 32;
   
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
   
   type MEMORY_RESOURCE_NOTIFICATION_TYPE is (
      LowMemoryResourceNotification,
      HighMemoryResourceNotification
   );
   for MEMORY_RESOURCE_NOTIFICATION_TYPE use (
      LowMemoryResourceNotification => 0,
      HighMemoryResourceNotification => 1
   );
   for MEMORY_RESOURCE_NOTIFICATION_TYPE'Size use 32;
   
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
   
   type EDIT_CONTROL_FEATURE is (
      EDIT_CONTROL_FEATURE_ENTERPRISE_DATA_PROTECTION_PASTE_SUPPORT,
      EDIT_CONTROL_FEATURE_PASTE_NOTIFICATIONS
   );
   for EDIT_CONTROL_FEATURE use (
      EDIT_CONTROL_FEATURE_ENTERPRISE_DATA_PROTECTION_PASTE_SUPPORT => 0,
      EDIT_CONTROL_FEATURE_PASTE_NOTIFICATIONS => 1
   );
   for EDIT_CONTROL_FEATURE'Size use 32;
   
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
   
   type SYSNLS_FUNCTION is (
      COMPARE_STRING
   );
   for SYSNLS_FUNCTION use (
      COMPARE_STRING => 1
   );
   for SYSNLS_FUNCTION'Size use 32;
   
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
   
   type LRPC_SYSTEM_HANDLE_MARSHAL_DIRECTION is (
      MarshalDirectionMarshal,
      MarshalDirectionUnmarshal
   );
   for LRPC_SYSTEM_HANDLE_MARSHAL_DIRECTION use (
      MarshalDirectionMarshal => 0,
      MarshalDirectionUnmarshal => 1
   );
   for LRPC_SYSTEM_HANDLE_MARSHAL_DIRECTION'Size use 32;
   
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
   
   type XLAT_SIDE is (
      XLAT_SERVER,
      XLAT_CLIENT
   );
   for XLAT_SIDE use (
      XLAT_SERVER => 1,
      XLAT_CLIENT => 2
   );
   for XLAT_SIDE'Size use 32;
   
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
   
   type STORAGE_DIAGNOSTIC_LEVEL is (
      StorageDiagnosticLevelDefault,
      StorageDiagnosticLevelMax
   );
   for STORAGE_DIAGNOSTIC_LEVEL use (
      StorageDiagnosticLevelDefault => 0,
      StorageDiagnosticLevelMax => 1
   );
   for STORAGE_DIAGNOSTIC_LEVEL'Size use 32;
   
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
   
   type STORAGE_DEVICE_POWER_CAP_UNITS is (
      StorageDevicePowerCapUnitsPercent,
      StorageDevicePowerCapUnitsMilliwatts
   );
   for STORAGE_DEVICE_POWER_CAP_UNITS use (
      StorageDevicePowerCapUnitsPercent => 0,
      StorageDevicePowerCapUnitsMilliwatts => 1
   );
   for STORAGE_DEVICE_POWER_CAP_UNITS'Size use 32;
   
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
   
   type BIN_TYPES is (
      RequestSize,
      RequestLocation
   );
   for BIN_TYPES use (
      RequestSize => 0,
      RequestLocation => 1
   );
   for BIN_TYPES'Size use 32;
   
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
   
   type tagSTDMSHLFLAGS is (
      SMEXF_SERVER,
      SMEXF_HANDLER
   );
   for tagSTDMSHLFLAGS use (
      SMEXF_SERVER => 1,
      SMEXF_HANDLER => 2
   );
   for tagSTDMSHLFLAGS'Size use 32;
   
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
   
   type tagBIND_FLAGS is (
      BIND_MAYBOTHERUSER,
      BIND_JUSTTESTEXISTENCE
   );
   for tagBIND_FLAGS use (
      BIND_MAYBOTHERUSER => 1,
      BIND_JUSTTESTEXISTENCE => 2
   );
   for tagBIND_FLAGS'Size use 32;
   
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
   
   type tagDATADIR is (
      DATADIR_GET,
      DATADIR_SET
   );
   for tagDATADIR use (
      DATADIR_GET => 1,
      DATADIR_SET => 2
   );
   for tagDATADIR'Size use 32;
   
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
   
   type tagOIBDG_FLAGS is (
      OIBDG_APARTMENTTHREADED,
      OIBDG_DATAONLY
   );
   for tagOIBDG_FLAGS use (
      OIBDG_APARTMENTTHREADED => 256,
      OIBDG_DATAONLY => 4096
   );
   for tagOIBDG_FLAGS'Size use 32;
   
   type tagPSUACTION is (
      PSU_DEFAULT,
      PSU_SECURITY_URL_ONLY
   );
   for tagPSUACTION use (
      PSU_DEFAULT => 1,
      PSU_SECURITY_URL_ONLY => 2
   );
   for tagPSUACTION'Size use 32;
   
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
   
   type tagDISCARDCACHE is (
      DISCARDCACHE_SAVEIFDIRTY,
      DISCARDCACHE_NOSAVE
   );
   for tagDISCARDCACHE use (
      DISCARDCACHE_SAVEIFDIRTY => 0,
      DISCARDCACHE_NOSAVE => 1
   );
   for tagDISCARDCACHE'Size use 32;
   
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
   
   type tagOLEUPDATE is (
      OLEUPDATE_ALWAYS,
      OLEUPDATE_ONCALL
   );
   for tagOLEUPDATE use (
      OLEUPDATE_ALWAYS => 1,
      OLEUPDATE_ONCALL => 3
   );
   for tagOLEUPDATE'Size use 32;
   
   type tagOLELINKBIND is (
      OLELINKBIND_EVENIFCLASSDIFF
   );
   for tagOLELINKBIND use (
      OLELINKBIND_EVENIFCLASSDIFF => 1
   );
   for tagOLELINKBIND'Size use 32;
   
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
   
   type tagOLEVERBATTRIB is (
      OLEVERBATTRIB_NEVERDIRTIES,
      OLEVERBATTRIB_ONCONTAINERMENU
   );
   for tagOLEVERBATTRIB use (
      OLEVERBATTRIB_NEVERDIRTIES => 1,
      OLEVERBATTRIB_ONCONTAINERMENU => 2
   );
   for tagOLEVERBATTRIB'Size use 32;
   
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
   
end;
