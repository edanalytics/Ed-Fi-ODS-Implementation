
-- For performance reasons on existing data sets, all existing records will start with ChangeVersion of 0.
IF NOT EXISTS (SELECT * FROM sys.columns WHERE object_id = OBJECT_ID(N'[sedm].[IDEAEvent]') AND name = 'ChangeVersion')
BEGIN
ALTER TABLE [sedm].[IDEAEvent] ADD [ChangeVersion] [BIGINT] CONSTRAINT IDEAEvent_DF_ChangeVersion DEFAULT (0) NOT NULL;
ALTER TABLE [sedm].[IDEAEvent] DROP CONSTRAINT IDEAEvent_DF_ChangeVersion;
ALTER TABLE [sedm].[IDEAEvent] ADD CONSTRAINT IDEAEvent_DF_ChangeVersion DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) For [ChangeVersion];
END


IF NOT EXISTS (SELECT * FROM sys.columns WHERE object_id = OBJECT_ID(N'[sedm].[StudentIEP]') AND name = 'ChangeVersion')
BEGIN
ALTER TABLE [sedm].[StudentIEP] ADD [ChangeVersion] [BIGINT] CONSTRAINT StudentIEP_DF_ChangeVersion DEFAULT (0) NOT NULL;
ALTER TABLE [sedm].[StudentIEP] DROP CONSTRAINT StudentIEP_DF_ChangeVersion;
ALTER TABLE [sedm].[StudentIEP] ADD CONSTRAINT StudentIEP_DF_ChangeVersion DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) For [ChangeVersion];
END


IF NOT EXISTS (SELECT * FROM sys.columns WHERE object_id = OBJECT_ID(N'[sedm].[StudentIEPAccommodationCollection]') AND name = 'ChangeVersion')
BEGIN
ALTER TABLE [sedm].[StudentIEPAccommodationCollection] ADD [ChangeVersion] [BIGINT] CONSTRAINT StudentIEPAccommodationCollection_DF_ChangeVersion DEFAULT (0) NOT NULL;
ALTER TABLE [sedm].[StudentIEPAccommodationCollection] DROP CONSTRAINT StudentIEPAccommodationCollection_DF_ChangeVersion;
ALTER TABLE [sedm].[StudentIEPAccommodationCollection] ADD CONSTRAINT StudentIEPAccommodationCollection_DF_ChangeVersion DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) For [ChangeVersion];
END


IF NOT EXISTS (SELECT * FROM sys.columns WHERE object_id = OBJECT_ID(N'[sedm].[StudentIEPDisabilityCollection]') AND name = 'ChangeVersion')
BEGIN
ALTER TABLE [sedm].[StudentIEPDisabilityCollection] ADD [ChangeVersion] [BIGINT] CONSTRAINT StudentIEPDisabilityCollection_DF_ChangeVersion DEFAULT (0) NOT NULL;
ALTER TABLE [sedm].[StudentIEPDisabilityCollection] DROP CONSTRAINT StudentIEPDisabilityCollection_DF_ChangeVersion;
ALTER TABLE [sedm].[StudentIEPDisabilityCollection] ADD CONSTRAINT StudentIEPDisabilityCollection_DF_ChangeVersion DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) For [ChangeVersion];
END


IF NOT EXISTS (SELECT * FROM sys.columns WHERE object_id = OBJECT_ID(N'[sedm].[StudentIEPGoal]') AND name = 'ChangeVersion')
BEGIN
ALTER TABLE [sedm].[StudentIEPGoal] ADD [ChangeVersion] [BIGINT] CONSTRAINT StudentIEPGoal_DF_ChangeVersion DEFAULT (0) NOT NULL;
ALTER TABLE [sedm].[StudentIEPGoal] DROP CONSTRAINT StudentIEPGoal_DF_ChangeVersion;
ALTER TABLE [sedm].[StudentIEPGoal] ADD CONSTRAINT StudentIEPGoal_DF_ChangeVersion DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) For [ChangeVersion];
END


IF NOT EXISTS (SELECT * FROM sys.columns WHERE object_id = OBJECT_ID(N'[sedm].[StudentIEPServiceDelivery]') AND name = 'ChangeVersion')
BEGIN
ALTER TABLE [sedm].[StudentIEPServiceDelivery] ADD [ChangeVersion] [BIGINT] CONSTRAINT StudentIEPServiceDelivery_DF_ChangeVersion DEFAULT (0) NOT NULL;
ALTER TABLE [sedm].[StudentIEPServiceDelivery] DROP CONSTRAINT StudentIEPServiceDelivery_DF_ChangeVersion;
ALTER TABLE [sedm].[StudentIEPServiceDelivery] ADD CONSTRAINT StudentIEPServiceDelivery_DF_ChangeVersion DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) For [ChangeVersion];
END


IF NOT EXISTS (SELECT * FROM sys.columns WHERE object_id = OBJECT_ID(N'[sedm].[StudentIEPServicePrescription]') AND name = 'ChangeVersion')
BEGIN
ALTER TABLE [sedm].[StudentIEPServicePrescription] ADD [ChangeVersion] [BIGINT] CONSTRAINT StudentIEPServicePrescription_DF_ChangeVersion DEFAULT (0) NOT NULL;
ALTER TABLE [sedm].[StudentIEPServicePrescription] DROP CONSTRAINT StudentIEPServicePrescription_DF_ChangeVersion;
ALTER TABLE [sedm].[StudentIEPServicePrescription] ADD CONSTRAINT StudentIEPServicePrescription_DF_ChangeVersion DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) For [ChangeVersion];
END


