BEGIN TRANSACTION
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'idoe.AssessmentAccommodation') AND name = N'UX_AssessmentAccommodation_ChangeVersion')
    CREATE INDEX [UX_AssessmentAccommodation_ChangeVersion] ON [idoe].[AssessmentAccommodation] ([ChangeVersion] ASC)
    GO
COMMIT

BEGIN TRANSACTION
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'idoe.EducationOrganizationOtherPersonnel') AND name = N'UX_EducationOrganizationOtherPersonnel_ChangeVersion')
    CREATE INDEX [UX_EducationOrganizationOtherPersonnel_ChangeVersion] ON [idoe].[EducationOrganizationOtherPersonnel] ([ChangeVersion] ASC)
    GO
COMMIT

BEGIN TRANSACTION
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'idoe.StudentEducationOrganizationAssessmentAccommodation') AND name = N'UX_StudentEducationOrganizationAssessmentAccommodation_ChangeVersion')
    CREATE INDEX [UX_StudentEducationOrganizationAssessmentAccommodation_ChangeVersion] ON [idoe].[StudentEducationOrganizationAssessmentAccommodation] ([ChangeVersion] ASC)
    GO
COMMIT

