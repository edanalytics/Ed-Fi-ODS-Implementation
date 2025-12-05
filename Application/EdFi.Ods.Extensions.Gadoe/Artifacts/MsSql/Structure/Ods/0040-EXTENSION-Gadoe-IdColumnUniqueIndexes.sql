BEGIN TRANSACTION
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'gadoe.LocalEducationAgencyStatistic') AND name = N'UX_LocalEducationAgencyStatistic_Id')
    CREATE UNIQUE NONCLUSTERED INDEX UX_LocalEducationAgencyStatistic_Id ON [gadoe].[LocalEducationAgencyStatistic]
    (Id) WITH (PAD_INDEX = ON, FILLFACTOR = 75, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
    GO
COMMIT

BEGIN TRANSACTION
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'gadoe.SchoolStatistic') AND name = N'UX_SchoolStatistic_Id')
    CREATE UNIQUE NONCLUSTERED INDEX UX_SchoolStatistic_Id ON [gadoe].[SchoolStatistic]
    (Id) WITH (PAD_INDEX = ON, FILLFACTOR = 75, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
    GO
COMMIT

BEGIN TRANSACTION
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'gadoe.StudentSpecialEducationAssociationEvent') AND name = N'UX_StudentSpecialEducationAssociationEvent_Id')
    CREATE UNIQUE NONCLUSTERED INDEX UX_StudentSpecialEducationAssociationEvent_Id ON [gadoe].[StudentSpecialEducationAssociationEvent]
    (Id) WITH (PAD_INDEX = ON, FILLFACTOR = 75, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
    GO
COMMIT

