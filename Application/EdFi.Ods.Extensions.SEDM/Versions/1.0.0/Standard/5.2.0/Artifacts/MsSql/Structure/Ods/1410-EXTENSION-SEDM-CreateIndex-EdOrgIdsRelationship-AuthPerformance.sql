
IF NOT EXISTS(SELECT * FROM sys.indexes WHERE name='IX_IdeaEvent_EducationOrganizationId' AND object_id = OBJECT_ID('sedm.IdeaEvent')) 
BEGIN
    CREATE INDEX IX_IdeaEvent_EducationOrganizationId ON [sedm].[IdeaEvent](EducationOrganizationId) INCLUDE (Id)
END;

IF NOT EXISTS(SELECT * FROM sys.indexes WHERE name='IX_StudentIEP_EducationOrganizationId' AND object_id = OBJECT_ID('sedm.StudentIEP')) 
BEGIN
    CREATE INDEX IX_StudentIEP_EducationOrganizationId ON [sedm].[StudentIEP](EducationOrganizationId) INCLUDE (Id)
END;

IF NOT EXISTS(SELECT * FROM sys.indexes WHERE name='IX_StudentIEPAccommodationCollection_EducationOrganizationId' AND object_id = OBJECT_ID('sedm.StudentIEPAccommodationCollection')) 
BEGIN
    CREATE INDEX IX_StudentIEPAccommodationCollection_EducationOrganizationId ON [sedm].[StudentIEPAccommodationCollection](EducationOrganizationId) INCLUDE (Id)
END;

IF NOT EXISTS(SELECT * FROM sys.indexes WHERE name='IX_StudentIEPDisabilityCollection_EducationOrganizationId' AND object_id = OBJECT_ID('sedm.StudentIEPDisabilityCollection')) 
BEGIN
    CREATE INDEX IX_StudentIEPDisabilityCollection_EducationOrganizationId ON [sedm].[StudentIEPDisabilityCollection](EducationOrganizationId) INCLUDE (Id)
END;

IF NOT EXISTS(SELECT * FROM sys.indexes WHERE name='IX_StudentIEPGoal_EducationOrganizationId' AND object_id = OBJECT_ID('sedm.StudentIEPGoal')) 
BEGIN
    CREATE INDEX IX_StudentIEPGoal_EducationOrganizationId ON [sedm].[StudentIEPGoal](EducationOrganizationId) INCLUDE (Id)
END;

IF NOT EXISTS(SELECT * FROM sys.indexes WHERE name='IX_StudentIEPServiceDelivery_EducationOrganizationId' AND object_id = OBJECT_ID('sedm.StudentIEPServiceDelivery')) 
BEGIN
    CREATE INDEX IX_StudentIEPServiceDelivery_EducationOrganizationId ON [sedm].[StudentIEPServiceDelivery](EducationOrganizationId) INCLUDE (Id)
END;

IF NOT EXISTS(SELECT * FROM sys.indexes WHERE name='IX_StudentIEPServicePrescription_EducationOrganizationId' AND object_id = OBJECT_ID('sedm.StudentIEPServicePrescription')) 
BEGIN
    CREATE INDEX IX_StudentIEPServicePrescription_EducationOrganizationId ON [sedm].[StudentIEPServicePrescription](EducationOrganizationId) INCLUDE (Id)
END;
