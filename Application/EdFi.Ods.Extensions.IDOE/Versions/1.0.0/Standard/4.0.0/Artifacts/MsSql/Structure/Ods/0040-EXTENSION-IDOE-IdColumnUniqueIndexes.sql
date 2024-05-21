BEGIN TRANSACTION
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'idoe.AssessmentAccommodation') AND name = N'UX_AssessmentAccommodation_Id')
    CREATE UNIQUE NONCLUSTERED INDEX UX_AssessmentAccommodation_Id ON [idoe].[AssessmentAccommodation]
    (Id) WITH (PAD_INDEX = ON, FILLFACTOR = 75, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
    GO
COMMIT

BEGIN TRANSACTION
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'idoe.EducationOrganizationOtherPersonnel') AND name = N'UX_EducationOrganizationOtherPersonnel_Id')
    CREATE UNIQUE NONCLUSTERED INDEX UX_EducationOrganizationOtherPersonnel_Id ON [idoe].[EducationOrganizationOtherPersonnel]
    (Id) WITH (PAD_INDEX = ON, FILLFACTOR = 75, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
    GO
COMMIT

BEGIN TRANSACTION
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'idoe.StudentEducationOrganizationAssessmentAccommodation') AND name = N'UX_StudentEducationOrganizationAssessmentAccommodation_Id')
    CREATE UNIQUE NONCLUSTERED INDEX UX_StudentEducationOrganizationAssessmentAccommodation_Id ON [idoe].[StudentEducationOrganizationAssessmentAccommodation]
    (Id) WITH (PAD_INDEX = ON, FILLFACTOR = 75, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
    GO
COMMIT

