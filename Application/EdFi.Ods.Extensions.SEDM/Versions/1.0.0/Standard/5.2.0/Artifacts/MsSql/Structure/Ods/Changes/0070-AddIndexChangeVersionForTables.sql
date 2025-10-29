BEGIN TRANSACTION
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'sedm.IDEAEvent') AND name = N'UX_IDEAEvent_ChangeVersion')
    CREATE INDEX [UX_IDEAEvent_ChangeVersion] ON [sedm].[IDEAEvent] ([ChangeVersion] ASC)
    GO
COMMIT

BEGIN TRANSACTION
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'sedm.StudentIEP') AND name = N'UX_StudentIEP_ChangeVersion')
    CREATE INDEX [UX_StudentIEP_ChangeVersion] ON [sedm].[StudentIEP] ([ChangeVersion] ASC)
    GO
COMMIT

BEGIN TRANSACTION
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'sedm.StudentIEPAccommodationCollection') AND name = N'UX_StudentIEPAccommodationCollection_ChangeVersion')
    CREATE INDEX [UX_StudentIEPAccommodationCollection_ChangeVersion] ON [sedm].[StudentIEPAccommodationCollection] ([ChangeVersion] ASC)
    GO
COMMIT

BEGIN TRANSACTION
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'sedm.StudentIEPDisabilityCollection') AND name = N'UX_StudentIEPDisabilityCollection_ChangeVersion')
    CREATE INDEX [UX_StudentIEPDisabilityCollection_ChangeVersion] ON [sedm].[StudentIEPDisabilityCollection] ([ChangeVersion] ASC)
    GO
COMMIT

BEGIN TRANSACTION
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'sedm.StudentIEPGoal') AND name = N'UX_StudentIEPGoal_ChangeVersion')
    CREATE INDEX [UX_StudentIEPGoal_ChangeVersion] ON [sedm].[StudentIEPGoal] ([ChangeVersion] ASC)
    GO
COMMIT

BEGIN TRANSACTION
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'sedm.StudentIEPServiceDelivery') AND name = N'UX_StudentIEPServiceDelivery_ChangeVersion')
    CREATE INDEX [UX_StudentIEPServiceDelivery_ChangeVersion] ON [sedm].[StudentIEPServiceDelivery] ([ChangeVersion] ASC)
    GO
COMMIT

BEGIN TRANSACTION
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'sedm.StudentIEPServicePrescription') AND name = N'UX_StudentIEPServicePrescription_ChangeVersion')
    CREATE INDEX [UX_StudentIEPServicePrescription_ChangeVersion] ON [sedm].[StudentIEPServicePrescription] ([ChangeVersion] ASC)
    GO
COMMIT

