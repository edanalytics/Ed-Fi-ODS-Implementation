
-- For performance reasons on existing data sets, all existing records will start with ChangeVersion of 0.
IF NOT EXISTS (SELECT * FROM sys.columns WHERE object_id = OBJECT_ID(N'[idoe].[AssessmentAccommodation]') AND name = 'ChangeVersion')
BEGIN
ALTER TABLE [idoe].[AssessmentAccommodation] ADD [ChangeVersion] [BIGINT] CONSTRAINT AssessmentAccommodation_DF_ChangeVersion DEFAULT (0) NOT NULL;
ALTER TABLE [idoe].[AssessmentAccommodation] DROP CONSTRAINT AssessmentAccommodation_DF_ChangeVersion;
ALTER TABLE [idoe].[AssessmentAccommodation] ADD CONSTRAINT AssessmentAccommodation_DF_ChangeVersion DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) For [ChangeVersion];
END


IF NOT EXISTS (SELECT * FROM sys.columns WHERE object_id = OBJECT_ID(N'[idoe].[EducationOrganizationOtherPersonnel]') AND name = 'ChangeVersion')
BEGIN
ALTER TABLE [idoe].[EducationOrganizationOtherPersonnel] ADD [ChangeVersion] [BIGINT] CONSTRAINT EducationOrganizationOtherPersonnel_DF_ChangeVersion DEFAULT (0) NOT NULL;
ALTER TABLE [idoe].[EducationOrganizationOtherPersonnel] DROP CONSTRAINT EducationOrganizationOtherPersonnel_DF_ChangeVersion;
ALTER TABLE [idoe].[EducationOrganizationOtherPersonnel] ADD CONSTRAINT EducationOrganizationOtherPersonnel_DF_ChangeVersion DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) For [ChangeVersion];
END


IF NOT EXISTS (SELECT * FROM sys.columns WHERE object_id = OBJECT_ID(N'[idoe].[StudentEducationOrganizationAssessmentAccommodation]') AND name = 'ChangeVersion')
BEGIN
ALTER TABLE [idoe].[StudentEducationOrganizationAssessmentAccommodation] ADD [ChangeVersion] [BIGINT] CONSTRAINT StudentEducationOrganizationAssessmentAccommodation_DF_ChangeVersion DEFAULT (0) NOT NULL;
ALTER TABLE [idoe].[StudentEducationOrganizationAssessmentAccommodation] DROP CONSTRAINT StudentEducationOrganizationAssessmentAccommodation_DF_ChangeVersion;
ALTER TABLE [idoe].[StudentEducationOrganizationAssessmentAccommodation] ADD CONSTRAINT StudentEducationOrganizationAssessmentAccommodation_DF_ChangeVersion DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) For [ChangeVersion];
END


