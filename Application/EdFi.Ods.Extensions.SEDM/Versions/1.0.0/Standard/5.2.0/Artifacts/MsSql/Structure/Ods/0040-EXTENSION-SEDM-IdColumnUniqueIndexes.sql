BEGIN TRANSACTION
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'sedm.IDEAEvent') AND name = N'UX_IDEAEvent_Id')
    CREATE UNIQUE NONCLUSTERED INDEX UX_IDEAEvent_Id ON [sedm].[IDEAEvent]
    (Id) WITH (PAD_INDEX = ON, FILLFACTOR = 75, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
    GO
COMMIT

BEGIN TRANSACTION
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'sedm.StudentIEP') AND name = N'UX_StudentIEP_Id')
    CREATE UNIQUE NONCLUSTERED INDEX UX_StudentIEP_Id ON [sedm].[StudentIEP]
    (Id) WITH (PAD_INDEX = ON, FILLFACTOR = 75, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
    GO
COMMIT

BEGIN TRANSACTION
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'sedm.StudentIEPAccommodationCollection') AND name = N'UX_StudentIEPAccommodationCollection_Id')
    CREATE UNIQUE NONCLUSTERED INDEX UX_StudentIEPAccommodationCollection_Id ON [sedm].[StudentIEPAccommodationCollection]
    (Id) WITH (PAD_INDEX = ON, FILLFACTOR = 75, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
    GO
COMMIT

BEGIN TRANSACTION
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'sedm.StudentIEPDisabilityCollection') AND name = N'UX_StudentIEPDisabilityCollection_Id')
    CREATE UNIQUE NONCLUSTERED INDEX UX_StudentIEPDisabilityCollection_Id ON [sedm].[StudentIEPDisabilityCollection]
    (Id) WITH (PAD_INDEX = ON, FILLFACTOR = 75, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
    GO
COMMIT

BEGIN TRANSACTION
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'sedm.StudentIEPGoal') AND name = N'UX_StudentIEPGoal_Id')
    CREATE UNIQUE NONCLUSTERED INDEX UX_StudentIEPGoal_Id ON [sedm].[StudentIEPGoal]
    (Id) WITH (PAD_INDEX = ON, FILLFACTOR = 75, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
    GO
COMMIT

BEGIN TRANSACTION
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'sedm.StudentIEPServiceDelivery') AND name = N'UX_StudentIEPServiceDelivery_Id')
    CREATE UNIQUE NONCLUSTERED INDEX UX_StudentIEPServiceDelivery_Id ON [sedm].[StudentIEPServiceDelivery]
    (Id) WITH (PAD_INDEX = ON, FILLFACTOR = 75, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
    GO
COMMIT

BEGIN TRANSACTION
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'sedm.StudentIEPServicePrescription') AND name = N'UX_StudentIEPServicePrescription_Id')
    CREATE UNIQUE NONCLUSTERED INDEX UX_StudentIEPServicePrescription_Id ON [sedm].[StudentIEPServicePrescription]
    (Id) WITH (PAD_INDEX = ON, FILLFACTOR = 75, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
    GO
COMMIT

