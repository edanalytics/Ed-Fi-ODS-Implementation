
IF NOT EXISTS(SELECT * FROM sys.indexes WHERE name='IX_EducationOrganizationOtherPersonnel_LocalEducationAgencyId' AND object_id = OBJECT_ID('idoe.EducationOrganizationOtherPersonnel')) 
BEGIN
    CREATE INDEX IX_EducationOrganizationOtherPersonnel_LocalEducationAgencyId ON [idoe].[EducationOrganizationOtherPersonnel](LocalEducationAgencyId) INCLUDE (Id)
END;

IF NOT EXISTS(SELECT * FROM sys.indexes WHERE name='IX_StudentEducationOrganizationAssessmentAccommodation_EducationOrganizationId' AND object_id = OBJECT_ID('idoe.StudentEducationOrganizationAssessmentAccommodation')) 
BEGIN
    CREATE INDEX IX_StudentEducationOrganizationAssessmentAccommodation_EducationOrganizationId ON [idoe].[StudentEducationOrganizationAssessmentAccommodation](EducationOrganizationId) INCLUDE (Id)
END;
