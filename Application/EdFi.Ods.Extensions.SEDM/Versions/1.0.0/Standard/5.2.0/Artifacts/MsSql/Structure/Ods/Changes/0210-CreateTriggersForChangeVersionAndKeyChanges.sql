DROP TRIGGER IF EXISTS [sedm].[sedm_IDEAEvent_TR_UpdateChangeVersion]
GO

CREATE TRIGGER [sedm].[sedm_IDEAEvent_TR_UpdateChangeVersion] ON [sedm].[IDEAEvent] AFTER UPDATE AS
BEGIN
    SET NOCOUNT ON;
    UPDATE [sedm].[IDEAEvent]
    SET ChangeVersion = (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM [sedm].[IDEAEvent] u
    WHERE EXISTS (SELECT 1 FROM inserted i WHERE i.id = u.id);
END	
GO

DROP TRIGGER IF EXISTS [sedm].[sedm_StudentIEP_TR_UpdateChangeVersion]
GO

CREATE TRIGGER [sedm].[sedm_StudentIEP_TR_UpdateChangeVersion] ON [sedm].[StudentIEP] AFTER UPDATE AS
BEGIN
    SET NOCOUNT ON;
    UPDATE [sedm].[StudentIEP]
    SET ChangeVersion = (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM [sedm].[StudentIEP] u
    WHERE EXISTS (SELECT 1 FROM inserted i WHERE i.id = u.id);
END	
GO

DROP TRIGGER IF EXISTS [sedm].[sedm_StudentIEPAccommodationCollection_TR_UpdateChangeVersion]
GO

CREATE TRIGGER [sedm].[sedm_StudentIEPAccommodationCollection_TR_UpdateChangeVersion] ON [sedm].[StudentIEPAccommodationCollection] AFTER UPDATE AS
BEGIN
    SET NOCOUNT ON;
    UPDATE [sedm].[StudentIEPAccommodationCollection]
    SET ChangeVersion = (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM [sedm].[StudentIEPAccommodationCollection] u
    WHERE EXISTS (SELECT 1 FROM inserted i WHERE i.id = u.id);
END	
GO

DROP TRIGGER IF EXISTS [sedm].[sedm_StudentIEPDisabilityCollection_TR_UpdateChangeVersion]
GO

CREATE TRIGGER [sedm].[sedm_StudentIEPDisabilityCollection_TR_UpdateChangeVersion] ON [sedm].[StudentIEPDisabilityCollection] AFTER UPDATE AS
BEGIN
    SET NOCOUNT ON;
    UPDATE [sedm].[StudentIEPDisabilityCollection]
    SET ChangeVersion = (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM [sedm].[StudentIEPDisabilityCollection] u
    WHERE EXISTS (SELECT 1 FROM inserted i WHERE i.id = u.id);
END	
GO

DROP TRIGGER IF EXISTS [sedm].[sedm_StudentIEPGoal_TR_UpdateChangeVersion]
GO

CREATE TRIGGER [sedm].[sedm_StudentIEPGoal_TR_UpdateChangeVersion] ON [sedm].[StudentIEPGoal] AFTER UPDATE AS
BEGIN
    SET NOCOUNT ON;
    UPDATE [sedm].[StudentIEPGoal]
    SET ChangeVersion = (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM [sedm].[StudentIEPGoal] u
    WHERE EXISTS (SELECT 1 FROM inserted i WHERE i.id = u.id);
END	
GO

DROP TRIGGER IF EXISTS [sedm].[sedm_StudentIEPServiceDelivery_TR_UpdateChangeVersion]
GO

CREATE TRIGGER [sedm].[sedm_StudentIEPServiceDelivery_TR_UpdateChangeVersion] ON [sedm].[StudentIEPServiceDelivery] AFTER UPDATE AS
BEGIN
    SET NOCOUNT ON;
    UPDATE [sedm].[StudentIEPServiceDelivery]
    SET ChangeVersion = (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM [sedm].[StudentIEPServiceDelivery] u
    WHERE EXISTS (SELECT 1 FROM inserted i WHERE i.id = u.id);
END	
GO

DROP TRIGGER IF EXISTS [sedm].[sedm_StudentIEPServicePrescription_TR_UpdateChangeVersion]
GO

CREATE TRIGGER [sedm].[sedm_StudentIEPServicePrescription_TR_UpdateChangeVersion] ON [sedm].[StudentIEPServicePrescription] AFTER UPDATE AS
BEGIN
    SET NOCOUNT ON;
    UPDATE [sedm].[StudentIEPServicePrescription]
    SET ChangeVersion = (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM [sedm].[StudentIEPServicePrescription] u
    WHERE EXISTS (SELECT 1 FROM inserted i WHERE i.id = u.id);
END	
GO

