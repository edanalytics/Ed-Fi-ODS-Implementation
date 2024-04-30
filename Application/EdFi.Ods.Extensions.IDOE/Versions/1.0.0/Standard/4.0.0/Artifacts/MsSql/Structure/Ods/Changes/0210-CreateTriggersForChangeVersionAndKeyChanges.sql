DROP TRIGGER IF EXISTS [idoe].[idoe_AssessmentAccommodation_TR_UpdateChangeVersion]
GO

CREATE TRIGGER [idoe].[idoe_AssessmentAccommodation_TR_UpdateChangeVersion] ON [idoe].[AssessmentAccommodation] AFTER UPDATE AS
BEGIN
    SET NOCOUNT ON;
    UPDATE [idoe].[AssessmentAccommodation]
    SET ChangeVersion = (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM [idoe].[AssessmentAccommodation] u
    WHERE EXISTS (SELECT 1 FROM inserted i WHERE i.id = u.id);
END	
GO

DROP TRIGGER IF EXISTS [idoe].[idoe_EducationOrganizationOtherPersonnel_TR_UpdateChangeVersion]
GO

CREATE TRIGGER [idoe].[idoe_EducationOrganizationOtherPersonnel_TR_UpdateChangeVersion] ON [idoe].[EducationOrganizationOtherPersonnel] AFTER UPDATE AS
BEGIN
    SET NOCOUNT ON;
    UPDATE [idoe].[EducationOrganizationOtherPersonnel]
    SET ChangeVersion = (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM [idoe].[EducationOrganizationOtherPersonnel] u
    WHERE EXISTS (SELECT 1 FROM inserted i WHERE i.id = u.id);
END	
GO

DROP TRIGGER IF EXISTS [idoe].[idoe_StudentEducationOrganizationAssessmentAccommodation_TR_UpdateChangeVersion]
GO

CREATE TRIGGER [idoe].[idoe_StudentEducationOrganizationAssessmentAccommodation_TR_UpdateChangeVersion] ON [idoe].[StudentEducationOrganizationAssessmentAccommodation] AFTER UPDATE AS
BEGIN
    SET NOCOUNT ON;
    UPDATE [idoe].[StudentEducationOrganizationAssessmentAccommodation]
    SET ChangeVersion = (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM [idoe].[StudentEducationOrganizationAssessmentAccommodation] u
    WHERE EXISTS (SELECT 1 FROM inserted i WHERE i.id = u.id);
END	
GO

