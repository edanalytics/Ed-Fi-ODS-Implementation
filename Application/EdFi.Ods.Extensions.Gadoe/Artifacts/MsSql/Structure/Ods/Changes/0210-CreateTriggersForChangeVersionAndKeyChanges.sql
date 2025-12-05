DROP TRIGGER IF EXISTS [gadoe].[gadoe_LocalEducationAgencyStatistic_TR_UpdateChangeVersion]
GO

CREATE TRIGGER [gadoe].[gadoe_LocalEducationAgencyStatistic_TR_UpdateChangeVersion] ON [gadoe].[LocalEducationAgencyStatistic] AFTER UPDATE AS
BEGIN
    SET NOCOUNT ON;
    UPDATE [gadoe].[LocalEducationAgencyStatistic]
    SET ChangeVersion = (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM [gadoe].[LocalEducationAgencyStatistic] u
    WHERE EXISTS (SELECT 1 FROM inserted i WHERE i.id = u.id);
END	
GO

DROP TRIGGER IF EXISTS [gadoe].[gadoe_SchoolStatistic_TR_UpdateChangeVersion]
GO

CREATE TRIGGER [gadoe].[gadoe_SchoolStatistic_TR_UpdateChangeVersion] ON [gadoe].[SchoolStatistic] AFTER UPDATE AS
BEGIN
    SET NOCOUNT ON;
    UPDATE [gadoe].[SchoolStatistic]
    SET ChangeVersion = (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM [gadoe].[SchoolStatistic] u
    WHERE EXISTS (SELECT 1 FROM inserted i WHERE i.id = u.id);
END	
GO

DROP TRIGGER IF EXISTS [gadoe].[gadoe_StudentSpecialEducationAssociationEvent_TR_UpdateChangeVersion]
GO

CREATE TRIGGER [gadoe].[gadoe_StudentSpecialEducationAssociationEvent_TR_UpdateChangeVersion] ON [gadoe].[StudentSpecialEducationAssociationEvent] AFTER UPDATE AS
BEGIN
    SET NOCOUNT ON;
    UPDATE [gadoe].[StudentSpecialEducationAssociationEvent]
    SET ChangeVersion = (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM [gadoe].[StudentSpecialEducationAssociationEvent] u
    WHERE EXISTS (SELECT 1 FROM inserted i WHERE i.id = u.id);

    -- Handle key changes
    INSERT INTO tracked_changes_gadoe.StudentSpecialEducationAssociationEvent(
        OldEntryDate, OldEventDate, OldSchoolId, OldSpecialEducationEventTypeDescriptorId, OldSpecialEducationEventTypeDescriptorNamespace, OldSpecialEducationEventTypeDescriptorCodeValue, OldStudentUSI, OldStudentUniqueId, 
        NewEntryDate, NewEventDate, NewSchoolId, NewSpecialEducationEventTypeDescriptorId, NewSpecialEducationEventTypeDescriptorNamespace, NewSpecialEducationEventTypeDescriptorCodeValue, NewStudentUSI, NewStudentUniqueId, 
        Id, ChangeVersion)
    SELECT
        d.EntryDate, d.EventDate, d.SchoolId, d.SpecialEducationEventTypeDescriptorId, dj0.Namespace, dj0.CodeValue, d.StudentUSI, dj1.StudentUniqueId, 
        i.EntryDate, i.EventDate, i.SchoolId, i.SpecialEducationEventTypeDescriptorId, ij0.Namespace, ij0.CodeValue, i.StudentUSI, ij1.StudentUniqueId, 
        d.Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM deleted d INNER JOIN inserted i ON d.Id = i.Id
        INNER JOIN edfi.Descriptor dj0
            ON d.SpecialEducationEventTypeDescriptorId = dj0.DescriptorId
        INNER JOIN edfi.Student dj1
            ON d.StudentUSI = dj1.StudentUSI
        INNER JOIN edfi.Descriptor ij0
            ON i.SpecialEducationEventTypeDescriptorId = ij0.DescriptorId
        INNER JOIN edfi.Student ij1
            ON i.StudentUSI = ij1.StudentUSI

    WHERE
        d.EntryDate <> i.EntryDate OR d.EventDate <> i.EventDate OR d.SchoolId <> i.SchoolId OR d.SpecialEducationEventTypeDescriptorId <> i.SpecialEducationEventTypeDescriptorId OR d.StudentUSI <> i.StudentUSI;
END	
GO

