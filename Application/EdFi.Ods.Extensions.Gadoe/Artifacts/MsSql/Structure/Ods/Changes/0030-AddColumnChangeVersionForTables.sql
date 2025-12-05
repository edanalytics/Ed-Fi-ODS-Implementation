
-- For performance reasons on existing data sets, all existing records will start with ChangeVersion of 0.
IF NOT EXISTS (SELECT * FROM sys.columns WHERE object_id = OBJECT_ID(N'[gadoe].[LocalEducationAgencyStatistic]') AND name = 'ChangeVersion')
BEGIN
ALTER TABLE [gadoe].[LocalEducationAgencyStatistic] ADD [ChangeVersion] [BIGINT] CONSTRAINT LocalEducationAgencyStatistic_DF_ChangeVersion DEFAULT (0) NOT NULL;
ALTER TABLE [gadoe].[LocalEducationAgencyStatistic] DROP CONSTRAINT LocalEducationAgencyStatistic_DF_ChangeVersion;
ALTER TABLE [gadoe].[LocalEducationAgencyStatistic] ADD CONSTRAINT LocalEducationAgencyStatistic_DF_ChangeVersion DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) For [ChangeVersion];
END


IF NOT EXISTS (SELECT * FROM sys.columns WHERE object_id = OBJECT_ID(N'[gadoe].[SchoolStatistic]') AND name = 'ChangeVersion')
BEGIN
ALTER TABLE [gadoe].[SchoolStatistic] ADD [ChangeVersion] [BIGINT] CONSTRAINT SchoolStatistic_DF_ChangeVersion DEFAULT (0) NOT NULL;
ALTER TABLE [gadoe].[SchoolStatistic] DROP CONSTRAINT SchoolStatistic_DF_ChangeVersion;
ALTER TABLE [gadoe].[SchoolStatistic] ADD CONSTRAINT SchoolStatistic_DF_ChangeVersion DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) For [ChangeVersion];
END


IF NOT EXISTS (SELECT * FROM sys.columns WHERE object_id = OBJECT_ID(N'[gadoe].[StudentSpecialEducationAssociationEvent]') AND name = 'ChangeVersion')
BEGIN
ALTER TABLE [gadoe].[StudentSpecialEducationAssociationEvent] ADD [ChangeVersion] [BIGINT] CONSTRAINT StudentSpecialEducationAssociationEvent_DF_ChangeVersion DEFAULT (0) NOT NULL;
ALTER TABLE [gadoe].[StudentSpecialEducationAssociationEvent] DROP CONSTRAINT StudentSpecialEducationAssociationEvent_DF_ChangeVersion;
ALTER TABLE [gadoe].[StudentSpecialEducationAssociationEvent] ADD CONSTRAINT StudentSpecialEducationAssociationEvent_DF_ChangeVersion DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) For [ChangeVersion];
END


