DROP TRIGGER IF EXISTS [vt].[vt_CTECredentialDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [vt].[vt_CTECredentialDescriptor_TR_DeleteTracking] ON [vt].[CTECredentialDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.CTECredentialDescriptorId, b.CodeValue, b.Namespace, b.Id, 'vt.CTECredentialDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.CTECredentialDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [vt].[CTECredentialDescriptor] ENABLE TRIGGER [vt_CTECredentialDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [vt].[vt_CTEFundCategoryDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [vt].[vt_CTEFundCategoryDescriptor_TR_DeleteTracking] ON [vt].[CTEFundCategoryDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.CTEFundCategoryDescriptorId, b.CodeValue, b.Namespace, b.Id, 'vt.CTEFundCategoryDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.CTEFundCategoryDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [vt].[CTEFundCategoryDescriptor] ENABLE TRIGGER [vt_CTEFundCategoryDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [vt].[vt_CTSODescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [vt].[vt_CTSODescriptor_TR_DeleteTracking] ON [vt].[CTSODescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.CTSODescriptorId, b.CodeValue, b.Namespace, b.Id, 'vt.CTSODescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.CTSODescriptorId = b.DescriptorId
END
GO

ALTER TABLE [vt].[CTSODescriptor] ENABLE TRIGGER [vt_CTSODescriptor_TR_DeleteTracking]
GO


