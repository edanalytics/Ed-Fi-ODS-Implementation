DROP TRIGGER IF EXISTS [sedm].[sedm_DurationPeriodDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [sedm].[sedm_DurationPeriodDescriptor_TR_DeleteTracking] ON [sedm].[DurationPeriodDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.DurationPeriodDescriptorId, b.CodeValue, b.Namespace, b.Id, 'sedm.DurationPeriodDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.DurationPeriodDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [sedm].[DurationPeriodDescriptor] ENABLE TRIGGER [sedm_DurationPeriodDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [sedm].[sedm_EventComplianceDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [sedm].[sedm_EventComplianceDescriptor_TR_DeleteTracking] ON [sedm].[EventComplianceDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.EventComplianceDescriptorId, b.CodeValue, b.Namespace, b.Id, 'sedm.EventComplianceDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.EventComplianceDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [sedm].[EventComplianceDescriptor] ENABLE TRIGGER [sedm_EventComplianceDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [sedm].[sedm_EventReasonDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [sedm].[sedm_EventReasonDescriptor_TR_DeleteTracking] ON [sedm].[EventReasonDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.EventReasonDescriptorId, b.CodeValue, b.Namespace, b.Id, 'sedm.EventReasonDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.EventReasonDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [sedm].[EventReasonDescriptor] ENABLE TRIGGER [sedm_EventReasonDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [sedm].[sedm_FrequencyPeriodDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [sedm].[sedm_FrequencyPeriodDescriptor_TR_DeleteTracking] ON [sedm].[FrequencyPeriodDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.FrequencyPeriodDescriptorId, b.CodeValue, b.Namespace, b.Id, 'sedm.FrequencyPeriodDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.FrequencyPeriodDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [sedm].[FrequencyPeriodDescriptor] ENABLE TRIGGER [sedm_FrequencyPeriodDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [sedm].[sedm_IDEAEvent_TR_DeleteTracking]
GO

CREATE TRIGGER [sedm].[sedm_IDEAEvent_TR_DeleteTracking] ON [sedm].[IDEAEvent] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_sedm].[IDEAEvent](OldEducationOrganizationId, OldIDEAEventDescriptorId, OldIDEAEventDescriptorNamespace, OldIDEAEventDescriptorCodeValue, OldIDEAEventID, OldStudentUSI, OldStudentUniqueId, Id, Discriminator, ChangeVersion)
    SELECT d.EducationOrganizationId, d.IDEAEventDescriptorId, j0.Namespace, j0.CodeValue, d.IDEAEventID, d.StudentUSI, j1.StudentUniqueId, d.Id, d.Discriminator, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
        INNER JOIN edfi.Descriptor j0
            ON d.IDEAEventDescriptorId = j0.DescriptorId
        INNER JOIN edfi.Student j1
            ON d.StudentUSI = j1.StudentUSI
END
GO

ALTER TABLE [sedm].[IDEAEvent] ENABLE TRIGGER [sedm_IDEAEvent_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [sedm].[sedm_IDEAEventDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [sedm].[sedm_IDEAEventDescriptor_TR_DeleteTracking] ON [sedm].[IDEAEventDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.IDEAEventDescriptorId, b.CodeValue, b.Namespace, b.Id, 'sedm.IDEAEventDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.IDEAEventDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [sedm].[IDEAEventDescriptor] ENABLE TRIGGER [sedm_IDEAEventDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [sedm].[sedm_IEPGoalDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [sedm].[sedm_IEPGoalDescriptor_TR_DeleteTracking] ON [sedm].[IEPGoalDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.IEPGoalDescriptorId, b.CodeValue, b.Namespace, b.Id, 'sedm.IEPGoalDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.IEPGoalDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [sedm].[IEPGoalDescriptor] ENABLE TRIGGER [sedm_IEPGoalDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [sedm].[sedm_IEPStatusDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [sedm].[sedm_IEPStatusDescriptor_TR_DeleteTracking] ON [sedm].[IEPStatusDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.IEPStatusDescriptorId, b.CodeValue, b.Namespace, b.Id, 'sedm.IEPStatusDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.IEPStatusDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [sedm].[IEPStatusDescriptor] ENABLE TRIGGER [sedm_IEPStatusDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [sedm].[sedm_ServiceComplianceDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [sedm].[sedm_ServiceComplianceDescriptor_TR_DeleteTracking] ON [sedm].[ServiceComplianceDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.ServiceComplianceDescriptorId, b.CodeValue, b.Namespace, b.Id, 'sedm.ServiceComplianceDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.ServiceComplianceDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [sedm].[ServiceComplianceDescriptor] ENABLE TRIGGER [sedm_ServiceComplianceDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [sedm].[sedm_ServiceDeliveryDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [sedm].[sedm_ServiceDeliveryDescriptor_TR_DeleteTracking] ON [sedm].[ServiceDeliveryDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.ServiceDeliveryDescriptorId, b.CodeValue, b.Namespace, b.Id, 'sedm.ServiceDeliveryDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.ServiceDeliveryDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [sedm].[ServiceDeliveryDescriptor] ENABLE TRIGGER [sedm_ServiceDeliveryDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [sedm].[sedm_ServiceLocationTypeDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [sedm].[sedm_ServiceLocationTypeDescriptor_TR_DeleteTracking] ON [sedm].[ServiceLocationTypeDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.ServiceLocationTypeDescriptorId, b.CodeValue, b.Namespace, b.Id, 'sedm.ServiceLocationTypeDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.ServiceLocationTypeDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [sedm].[ServiceLocationTypeDescriptor] ENABLE TRIGGER [sedm_ServiceLocationTypeDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [sedm].[sedm_ServicePrescriptionDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [sedm].[sedm_ServicePrescriptionDescriptor_TR_DeleteTracking] ON [sedm].[ServicePrescriptionDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.ServicePrescriptionDescriptorId, b.CodeValue, b.Namespace, b.Id, 'sedm.ServicePrescriptionDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.ServicePrescriptionDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [sedm].[ServicePrescriptionDescriptor] ENABLE TRIGGER [sedm_ServicePrescriptionDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [sedm].[sedm_ServiceProviderTypeDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [sedm].[sedm_ServiceProviderTypeDescriptor_TR_DeleteTracking] ON [sedm].[ServiceProviderTypeDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.ServiceProviderTypeDescriptorId, b.CodeValue, b.Namespace, b.Id, 'sedm.ServiceProviderTypeDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.ServiceProviderTypeDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [sedm].[ServiceProviderTypeDescriptor] ENABLE TRIGGER [sedm_ServiceProviderTypeDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [sedm].[sedm_ServiceReasonDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [sedm].[sedm_ServiceReasonDescriptor_TR_DeleteTracking] ON [sedm].[ServiceReasonDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.ServiceReasonDescriptorId, b.CodeValue, b.Namespace, b.Id, 'sedm.ServiceReasonDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.ServiceReasonDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [sedm].[ServiceReasonDescriptor] ENABLE TRIGGER [sedm_ServiceReasonDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [sedm].[sedm_StudentIEP_TR_DeleteTracking]
GO

CREATE TRIGGER [sedm].[sedm_StudentIEP_TR_DeleteTracking] ON [sedm].[StudentIEP] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_sedm].[StudentIEP](OldEducationOrganizationId, OldIEPFinalizedDate, OldStudentIEPAssociationID, OldStudentUSI, OldStudentUniqueId, Id, Discriminator, ChangeVersion)
    SELECT d.EducationOrganizationId, d.IEPFinalizedDate, d.StudentIEPAssociationID, d.StudentUSI, j0.StudentUniqueId, d.Id, d.Discriminator, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
        INNER JOIN edfi.Student j0
            ON d.StudentUSI = j0.StudentUSI
END
GO

ALTER TABLE [sedm].[StudentIEP] ENABLE TRIGGER [sedm_StudentIEP_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [sedm].[sedm_StudentIEPAccommodationCollection_TR_DeleteTracking]
GO

CREATE TRIGGER [sedm].[sedm_StudentIEPAccommodationCollection_TR_DeleteTracking] ON [sedm].[StudentIEPAccommodationCollection] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_sedm].[StudentIEPAccommodationCollection](OldEducationOrganizationId, OldIEPFinalizedDate, OldStudentIEPAssociationID, OldStudentUSI, OldStudentUniqueId, Id, Discriminator, ChangeVersion)
    SELECT d.EducationOrganizationId, d.IEPFinalizedDate, d.StudentIEPAssociationID, d.StudentUSI, j0.StudentUniqueId, d.Id, d.Discriminator, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
        INNER JOIN edfi.Student j0
            ON d.StudentUSI = j0.StudentUSI
END
GO

ALTER TABLE [sedm].[StudentIEPAccommodationCollection] ENABLE TRIGGER [sedm_StudentIEPAccommodationCollection_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [sedm].[sedm_StudentIEPDisabilityCollection_TR_DeleteTracking]
GO

CREATE TRIGGER [sedm].[sedm_StudentIEPDisabilityCollection_TR_DeleteTracking] ON [sedm].[StudentIEPDisabilityCollection] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_sedm].[StudentIEPDisabilityCollection](OldEducationOrganizationId, OldIEPFinalizedDate, OldStudentIEPAssociationID, OldStudentUSI, OldStudentUniqueId, Id, Discriminator, ChangeVersion)
    SELECT d.EducationOrganizationId, d.IEPFinalizedDate, d.StudentIEPAssociationID, d.StudentUSI, j0.StudentUniqueId, d.Id, d.Discriminator, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
        INNER JOIN edfi.Student j0
            ON d.StudentUSI = j0.StudentUSI
END
GO

ALTER TABLE [sedm].[StudentIEPDisabilityCollection] ENABLE TRIGGER [sedm_StudentIEPDisabilityCollection_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [sedm].[sedm_StudentIEPGoal_TR_DeleteTracking]
GO

CREATE TRIGGER [sedm].[sedm_StudentIEPGoal_TR_DeleteTracking] ON [sedm].[StudentIEPGoal] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_sedm].[StudentIEPGoal](OldEducationOrganizationId, OldIEPFinalizedDate, OldIEPGoalID, OldStudentIEPAssociationID, OldStudentUSI, OldStudentUniqueId, Id, Discriminator, ChangeVersion)
    SELECT d.EducationOrganizationId, d.IEPFinalizedDate, d.IEPGoalID, d.StudentIEPAssociationID, d.StudentUSI, j0.StudentUniqueId, d.Id, d.Discriminator, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
        INNER JOIN edfi.Student j0
            ON d.StudentUSI = j0.StudentUSI
END
GO

ALTER TABLE [sedm].[StudentIEPGoal] ENABLE TRIGGER [sedm_StudentIEPGoal_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [sedm].[sedm_StudentIEPServiceDelivery_TR_DeleteTracking]
GO

CREATE TRIGGER [sedm].[sedm_StudentIEPServiceDelivery_TR_DeleteTracking] ON [sedm].[StudentIEPServiceDelivery] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_sedm].[StudentIEPServiceDelivery](OldEducationOrganizationId, OldIEPServiceDeliveryID, OldServiceDeliveryDate, OldServiceDeliveryDescriptorId, OldServiceDeliveryDescriptorNamespace, OldServiceDeliveryDescriptorCodeValue, OldStudentUSI, OldStudentUniqueId, Id, Discriminator, ChangeVersion)
    SELECT d.EducationOrganizationId, d.IEPServiceDeliveryID, d.ServiceDeliveryDate, d.ServiceDeliveryDescriptorId, j0.Namespace, j0.CodeValue, d.StudentUSI, j1.StudentUniqueId, d.Id, d.Discriminator, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
        INNER JOIN edfi.Descriptor j0
            ON d.ServiceDeliveryDescriptorId = j0.DescriptorId
        INNER JOIN edfi.Student j1
            ON d.StudentUSI = j1.StudentUSI
END
GO

ALTER TABLE [sedm].[StudentIEPServiceDelivery] ENABLE TRIGGER [sedm_StudentIEPServiceDelivery_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [sedm].[sedm_StudentIEPServicePrescription_TR_DeleteTracking]
GO

CREATE TRIGGER [sedm].[sedm_StudentIEPServicePrescription_TR_DeleteTracking] ON [sedm].[StudentIEPServicePrescription] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_sedm].[StudentIEPServicePrescription](OldEducationOrganizationId, OldServicePrescriptionDate, OldServicePrescriptionDescriptorId, OldServicePrescriptionDescriptorNamespace, OldServicePrescriptionDescriptorCodeValue, OldStudentUSI, OldStudentUniqueId, Id, Discriminator, ChangeVersion)
    SELECT d.EducationOrganizationId, d.ServicePrescriptionDate, d.ServicePrescriptionDescriptorId, j0.Namespace, j0.CodeValue, d.StudentUSI, j1.StudentUniqueId, d.Id, d.Discriminator, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
        INNER JOIN edfi.Descriptor j0
            ON d.ServicePrescriptionDescriptorId = j0.DescriptorId
        INNER JOIN edfi.Student j1
            ON d.StudentUSI = j1.StudentUSI
END
GO

ALTER TABLE [sedm].[StudentIEPServicePrescription] ENABLE TRIGGER [sedm_StudentIEPServicePrescription_TR_DeleteTracking]
GO


