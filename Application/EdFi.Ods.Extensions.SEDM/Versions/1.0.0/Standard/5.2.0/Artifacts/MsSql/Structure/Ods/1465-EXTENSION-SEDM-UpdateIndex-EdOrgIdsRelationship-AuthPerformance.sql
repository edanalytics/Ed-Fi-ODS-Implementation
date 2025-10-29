
DROP INDEX IF EXISTS IX_IDEAEvent_EducationOrganizationId ON [sedm].[IDEAEvent];
CREATE INDEX IX_IDEAEvent_EducationOrganizationId ON [sedm].[IDEAEvent](EducationOrganizationId) INCLUDE (AggregateId);

IF NOT EXISTS(SELECT * FROM sys.indexes WHERE name='IX_IDEAEvent_StudentUSI' AND object_id = OBJECT_ID('sedm.IDEAEvent')) 
BEGIN
    CREATE INDEX IX_IDEAEvent_StudentUSI ON [sedm].[IDEAEvent](StudentUSI) INCLUDE (AggregateId)
END;

IF NOT EXISTS(SELECT * FROM sys.indexes WHERE name='IX_StudentIEP_StudentUSI' AND object_id = OBJECT_ID('sedm.StudentIEP')) 
BEGIN
    CREATE INDEX IX_StudentIEP_StudentUSI ON [sedm].[StudentIEP](StudentUSI) INCLUDE (AggregateId)
END;

IF NOT EXISTS(SELECT * FROM sys.indexes WHERE name='IX_StudentIEPAccommodationCollection_StudentUSI' AND object_id = OBJECT_ID('sedm.StudentIEPAccommodationCollection')) 
BEGIN
    CREATE INDEX IX_StudentIEPAccommodationCollection_StudentUSI ON [sedm].[StudentIEPAccommodationCollection](StudentUSI) INCLUDE (AggregateId)
END;

IF NOT EXISTS(SELECT * FROM sys.indexes WHERE name='IX_StudentIEPDisabilityCollection_StudentUSI' AND object_id = OBJECT_ID('sedm.StudentIEPDisabilityCollection')) 
BEGIN
    CREATE INDEX IX_StudentIEPDisabilityCollection_StudentUSI ON [sedm].[StudentIEPDisabilityCollection](StudentUSI) INCLUDE (AggregateId)
END;

DROP INDEX IF EXISTS IX_StudentIEPGoal_IEPServicingEducationOrganizationId ON [sedm].[StudentIEPGoal];
CREATE INDEX IX_StudentIEPGoal_IEPServicingEducationOrganizationId ON [sedm].[StudentIEPGoal](IEPServicingEducationOrganizationId) INCLUDE (AggregateId);

IF NOT EXISTS(SELECT * FROM sys.indexes WHERE name='IX_StudentIEPGoal_StudentUSI' AND object_id = OBJECT_ID('sedm.StudentIEPGoal')) 
BEGIN
    CREATE INDEX IX_StudentIEPGoal_StudentUSI ON [sedm].[StudentIEPGoal](StudentUSI) INCLUDE (AggregateId)
END;

DROP INDEX IF EXISTS IX_StudentIEPServiceDelivery_IEPServicingEducationOrganizationId ON [sedm].[StudentIEPServiceDelivery];
CREATE INDEX IX_StudentIEPServiceDelivery_IEPServicingEducationOrganizationId ON [sedm].[StudentIEPServiceDelivery](IEPServicingEducationOrganizationId) INCLUDE (AggregateId);

IF NOT EXISTS(SELECT * FROM sys.indexes WHERE name='IX_StudentIEPServiceDelivery_StudentUSI' AND object_id = OBJECT_ID('sedm.StudentIEPServiceDelivery')) 
BEGIN
    CREATE INDEX IX_StudentIEPServiceDelivery_StudentUSI ON [sedm].[StudentIEPServiceDelivery](StudentUSI) INCLUDE (AggregateId)
END;

DROP INDEX IF EXISTS IX_StudentIEPServicePrescription_IEPServicingEducationOrganizationId ON [sedm].[StudentIEPServicePrescription];
CREATE INDEX IX_StudentIEPServicePrescription_IEPServicingEducationOrganizationId ON [sedm].[StudentIEPServicePrescription](IEPServicingEducationOrganizationId) INCLUDE (AggregateId);

IF NOT EXISTS(SELECT * FROM sys.indexes WHERE name='IX_StudentIEPServicePrescription_StudentUSI' AND object_id = OBJECT_ID('sedm.StudentIEPServicePrescription')) 
BEGIN
    CREATE INDEX IX_StudentIEPServicePrescription_StudentUSI ON [sedm].[StudentIEPServicePrescription](StudentUSI) INCLUDE (AggregateId)
END;

IF NOT EXISTS(SELECT * FROM sys.indexes WHERE name='IX_StudentIEPServicePrescription_StaffUSI' AND object_id = OBJECT_ID('sedm.StudentIEPServicePrescription')) 
BEGIN
    CREATE INDEX IX_StudentIEPServicePrescription_StaffUSI ON [sedm].[StudentIEPServicePrescription](StaffUSI) INCLUDE (AggregateId)
END;
