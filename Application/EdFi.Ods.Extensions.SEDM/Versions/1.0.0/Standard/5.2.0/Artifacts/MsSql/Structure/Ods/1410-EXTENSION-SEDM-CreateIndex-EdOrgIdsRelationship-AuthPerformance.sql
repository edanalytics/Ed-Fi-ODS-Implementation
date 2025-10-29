
IF NOT EXISTS(SELECT * FROM sys.indexes WHERE name='IX_IDEAEvent_EducationOrganizationId' AND object_id = OBJECT_ID('sedm.IDEAEvent')) 
BEGIN
    CREATE INDEX IX_IDEAEvent_EducationOrganizationId ON [sedm].[IDEAEvent](EducationOrganizationId) INCLUDE (Id)
END;

IF NOT EXISTS(SELECT * FROM sys.indexes WHERE name='IX_StudentIEPGoal_IEPServicingEducationOrganizationId' AND object_id = OBJECT_ID('sedm.StudentIEPGoal')) 
BEGIN
    CREATE INDEX IX_StudentIEPGoal_IEPServicingEducationOrganizationId ON [sedm].[StudentIEPGoal](IEPServicingEducationOrganizationId) INCLUDE (Id)
END;

IF NOT EXISTS(SELECT * FROM sys.indexes WHERE name='IX_StudentIEPServiceDelivery_IEPServicingEducationOrganizationId' AND object_id = OBJECT_ID('sedm.StudentIEPServiceDelivery')) 
BEGIN
    CREATE INDEX IX_StudentIEPServiceDelivery_IEPServicingEducationOrganizationId ON [sedm].[StudentIEPServiceDelivery](IEPServicingEducationOrganizationId) INCLUDE (Id)
END;

IF NOT EXISTS(SELECT * FROM sys.indexes WHERE name='IX_StudentIEPServicePrescription_IEPServicingEducationOrganizationId' AND object_id = OBJECT_ID('sedm.StudentIEPServicePrescription')) 
BEGIN
    CREATE INDEX IX_StudentIEPServicePrescription_IEPServicingEducationOrganizationId ON [sedm].[StudentIEPServicePrescription](IEPServicingEducationOrganizationId) INCLUDE (Id)
END;
