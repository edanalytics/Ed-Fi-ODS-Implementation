BEGIN TRANSACTION
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'gadoe.LocalEducationAgencyStatistic') AND name = N'UX_LocalEducationAgencyStatistic_ChangeVersion')
    CREATE INDEX [UX_LocalEducationAgencyStatistic_ChangeVersion] ON [gadoe].[LocalEducationAgencyStatistic] ([ChangeVersion] ASC)
    GO
COMMIT

BEGIN TRANSACTION
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'gadoe.SchoolStatistic') AND name = N'UX_SchoolStatistic_ChangeVersion')
    CREATE INDEX [UX_SchoolStatistic_ChangeVersion] ON [gadoe].[SchoolStatistic] ([ChangeVersion] ASC)
    GO
COMMIT

BEGIN TRANSACTION
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'gadoe.StudentSpecialEducationAssociationEvent') AND name = N'UX_StudentSpecialEducationAssociationEvent_ChangeVersion')
    CREATE INDEX [UX_StudentSpecialEducationAssociationEvent_ChangeVersion] ON [gadoe].[StudentSpecialEducationAssociationEvent] ([ChangeVersion] ASC)
    GO
COMMIT

