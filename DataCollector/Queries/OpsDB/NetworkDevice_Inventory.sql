﻿SELECT
[SNMPVersion_3E123035_1664_20F4_43ED_875F388621BB] as 'SNMPVersion',
[Description_C79E2645_F509_8EEE_210C_CD6108E2364A] as 'Description',
[SupportsSNMP_D84DEAD4_3A54_52C6_BE26_B43FC589D0A5] as 'SNMPSupport',
[Certification_770F2AEC_DBDA_C9CC_E680_0C3EB68BA002] as 'Certified',
[SNMPAddress_3D25AA04_B3ED_7489_F61C_6A8AD21115FE] as 'SNMPAddress',
[Model_4BD92846_5429_2E69_6653_C6A6F7D9D484] as 'Model',
[AccessMode_2E4EC094_2362_BBF8_123C_141066AD5A78] as 'AccessMode',
[Vendor_16EE4AB2_CBCC_BAD3_B249_A56E6BF207D0] as 'Vendor',
[sysName_EBD2EE76_4A80_E1A2_D2C1_615B586EAD36] as 'SystemName',
[DisplayName] as 'DisplayName'
FROM [MT_System$NetworkManagement$Node] WITH (NOLOCK)