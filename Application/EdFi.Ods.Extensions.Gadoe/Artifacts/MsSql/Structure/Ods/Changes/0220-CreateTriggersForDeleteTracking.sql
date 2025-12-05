DROP TRIGGER IF EXISTS [gadoe].[gadoe_BehaviorIncidentDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [gadoe].[gadoe_BehaviorIncidentDescriptor_TR_DeleteTracking] ON [gadoe].[BehaviorIncidentDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.BehaviorIncidentDescriptorId, b.CodeValue, b.Namespace, b.Id, 'gadoe.BehaviorIncidentDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.BehaviorIncidentDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [gadoe].[BehaviorIncidentDescriptor] ENABLE TRIGGER [gadoe_BehaviorIncidentDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [gadoe].[gadoe_ChildFindStatusDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [gadoe].[gadoe_ChildFindStatusDescriptor_TR_DeleteTracking] ON [gadoe].[ChildFindStatusDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.ChildFindStatusDescriptorId, b.CodeValue, b.Namespace, b.Id, 'gadoe.ChildFindStatusDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.ChildFindStatusDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [gadoe].[ChildFindStatusDescriptor] ENABLE TRIGGER [gadoe_ChildFindStatusDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [gadoe].[gadoe_ChwCertFieldCodeDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [gadoe].[gadoe_ChwCertFieldCodeDescriptor_TR_DeleteTracking] ON [gadoe].[ChwCertFieldCodeDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.ChwCertFieldCodeDescriptorId, b.CodeValue, b.Namespace, b.Id, 'gadoe.ChwCertFieldCodeDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.ChwCertFieldCodeDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [gadoe].[ChwCertFieldCodeDescriptor] ENABLE TRIGGER [gadoe_ChwCertFieldCodeDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [gadoe].[gadoe_CountyOfResidenceDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [gadoe].[gadoe_CountyOfResidenceDescriptor_TR_DeleteTracking] ON [gadoe].[CountyOfResidenceDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.CountyOfResidenceDescriptorId, b.CodeValue, b.Namespace, b.Id, 'gadoe.CountyOfResidenceDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.CountyOfResidenceDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [gadoe].[CountyOfResidenceDescriptor] ENABLE TRIGGER [gadoe_CountyOfResidenceDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [gadoe].[gadoe_DataTypeIndicatorDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [gadoe].[gadoe_DataTypeIndicatorDescriptor_TR_DeleteTracking] ON [gadoe].[DataTypeIndicatorDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.DataTypeIndicatorDescriptorId, b.CodeValue, b.Namespace, b.Id, 'gadoe.DataTypeIndicatorDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.DataTypeIndicatorDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [gadoe].[DataTypeIndicatorDescriptor] ENABLE TRIGGER [gadoe_DataTypeIndicatorDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [gadoe].[gadoe_DisciplineActionAuxiliaryDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [gadoe].[gadoe_DisciplineActionAuxiliaryDescriptor_TR_DeleteTracking] ON [gadoe].[DisciplineActionAuxiliaryDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.DisciplineActionAuxiliaryDescriptorId, b.CodeValue, b.Namespace, b.Id, 'gadoe.DisciplineActionAuxiliaryDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.DisciplineActionAuxiliaryDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [gadoe].[DisciplineActionAuxiliaryDescriptor] ENABLE TRIGGER [gadoe_DisciplineActionAuxiliaryDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [gadoe].[gadoe_DisciplineProcessTypeDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [gadoe].[gadoe_DisciplineProcessTypeDescriptor_TR_DeleteTracking] ON [gadoe].[DisciplineProcessTypeDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.DisciplineProcessTypeDescriptorId, b.CodeValue, b.Namespace, b.Id, 'gadoe.DisciplineProcessTypeDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.DisciplineProcessTypeDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [gadoe].[DisciplineProcessTypeDescriptor] ENABLE TRIGGER [gadoe_DisciplineProcessTypeDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [gadoe].[gadoe_EipDeliveryModelDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [gadoe].[gadoe_EipDeliveryModelDescriptor_TR_DeleteTracking] ON [gadoe].[EipDeliveryModelDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.EipDeliveryModelDescriptorId, b.CodeValue, b.Namespace, b.Id, 'gadoe.EipDeliveryModelDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.EipDeliveryModelDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [gadoe].[EipDeliveryModelDescriptor] ENABLE TRIGGER [gadoe_EipDeliveryModelDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [gadoe].[gadoe_EmployeeTypeDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [gadoe].[gadoe_EmployeeTypeDescriptor_TR_DeleteTracking] ON [gadoe].[EmployeeTypeDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.EmployeeTypeDescriptorId, b.CodeValue, b.Namespace, b.Id, 'gadoe.EmployeeTypeDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.EmployeeTypeDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [gadoe].[EmployeeTypeDescriptor] ENABLE TRIGGER [gadoe_EmployeeTypeDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [gadoe].[gadoe_EnrollmentLocationDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [gadoe].[gadoe_EnrollmentLocationDescriptor_TR_DeleteTracking] ON [gadoe].[EnrollmentLocationDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.EnrollmentLocationDescriptorId, b.CodeValue, b.Namespace, b.Id, 'gadoe.EnrollmentLocationDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.EnrollmentLocationDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [gadoe].[EnrollmentLocationDescriptor] ENABLE TRIGGER [gadoe_EnrollmentLocationDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [gadoe].[gadoe_EsolDeliveryModelDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [gadoe].[gadoe_EsolDeliveryModelDescriptor_TR_DeleteTracking] ON [gadoe].[EsolDeliveryModelDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.EsolDeliveryModelDescriptorId, b.CodeValue, b.Namespace, b.Id, 'gadoe.EsolDeliveryModelDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.EsolDeliveryModelDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [gadoe].[EsolDeliveryModelDescriptor] ENABLE TRIGGER [gadoe_EsolDeliveryModelDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [gadoe].[gadoe_FteProgramCodeDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [gadoe].[gadoe_FteProgramCodeDescriptor_TR_DeleteTracking] ON [gadoe].[FteProgramCodeDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.FteProgramCodeDescriptorId, b.CodeValue, b.Namespace, b.Id, 'gadoe.FteProgramCodeDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.FteProgramCodeDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [gadoe].[FteProgramCodeDescriptor] ENABLE TRIGGER [gadoe_FteProgramCodeDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [gadoe].[gadoe_GiftedDeliveryModelDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [gadoe].[gadoe_GiftedDeliveryModelDescriptor_TR_DeleteTracking] ON [gadoe].[GiftedDeliveryModelDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.GiftedDeliveryModelDescriptorId, b.CodeValue, b.Namespace, b.Id, 'gadoe.GiftedDeliveryModelDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.GiftedDeliveryModelDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [gadoe].[GiftedDeliveryModelDescriptor] ENABLE TRIGGER [gadoe_GiftedDeliveryModelDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [gadoe].[gadoe_GiftedServedDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [gadoe].[gadoe_GiftedServedDescriptor_TR_DeleteTracking] ON [gadoe].[GiftedServedDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.GiftedServedDescriptorId, b.CodeValue, b.Namespace, b.Id, 'gadoe.GiftedServedDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.GiftedServedDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [gadoe].[GiftedServedDescriptor] ENABLE TRIGGER [gadoe_GiftedServedDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [gadoe].[gadoe_IepInclusionTypeDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [gadoe].[gadoe_IepInclusionTypeDescriptor_TR_DeleteTracking] ON [gadoe].[IepInclusionTypeDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.IepInclusionTypeDescriptorId, b.CodeValue, b.Namespace, b.Id, 'gadoe.IepInclusionTypeDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.IepInclusionTypeDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [gadoe].[IepInclusionTypeDescriptor] ENABLE TRIGGER [gadoe_IepInclusionTypeDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [gadoe].[gadoe_IncidentSeverityLevelDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [gadoe].[gadoe_IncidentSeverityLevelDescriptor_TR_DeleteTracking] ON [gadoe].[IncidentSeverityLevelDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.IncidentSeverityLevelDescriptorId, b.CodeValue, b.Namespace, b.Id, 'gadoe.IncidentSeverityLevelDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.IncidentSeverityLevelDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [gadoe].[IncidentSeverityLevelDescriptor] ENABLE TRIGGER [gadoe_IncidentSeverityLevelDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [gadoe].[gadoe_IncidentTimingDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [gadoe].[gadoe_IncidentTimingDescriptor_TR_DeleteTracking] ON [gadoe].[IncidentTimingDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.IncidentTimingDescriptorId, b.CodeValue, b.Namespace, b.Id, 'gadoe.IncidentTimingDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.IncidentTimingDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [gadoe].[IncidentTimingDescriptor] ENABLE TRIGGER [gadoe_IncidentTimingDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [gadoe].[gadoe_InclusionPersonnelDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [gadoe].[gadoe_InclusionPersonnelDescriptor_TR_DeleteTracking] ON [gadoe].[InclusionPersonnelDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.InclusionPersonnelDescriptorId, b.CodeValue, b.Namespace, b.Id, 'gadoe.InclusionPersonnelDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.InclusionPersonnelDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [gadoe].[InclusionPersonnelDescriptor] ENABLE TRIGGER [gadoe_InclusionPersonnelDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [gadoe].[gadoe_LocalEducationAgencyStatistic_TR_DeleteTracking]
GO

CREATE TRIGGER [gadoe].[gadoe_LocalEducationAgencyStatistic_TR_DeleteTracking] ON [gadoe].[LocalEducationAgencyStatistic] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_gadoe].[LocalEducationAgencyStatistic](OldEducationOrganizationId, Id, Discriminator, ChangeVersion)
    SELECT d.EducationOrganizationId, d.Id, d.Discriminator, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
END
GO

ALTER TABLE [gadoe].[LocalEducationAgencyStatistic] ENABLE TRIGGER [gadoe_LocalEducationAgencyStatistic_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [gadoe].[gadoe_NonESOLStatusDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [gadoe].[gadoe_NonESOLStatusDescriptor_TR_DeleteTracking] ON [gadoe].[NonESOLStatusDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.NonESOLStatusDescriptorId, b.CodeValue, b.Namespace, b.Id, 'gadoe.NonESOLStatusDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.NonESOLStatusDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [gadoe].[NonESOLStatusDescriptor] ENABLE TRIGGER [gadoe_NonESOLStatusDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [gadoe].[gadoe_NutritionSchoolDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [gadoe].[gadoe_NutritionSchoolDescriptor_TR_DeleteTracking] ON [gadoe].[NutritionSchoolDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.NutritionSchoolDescriptorId, b.CodeValue, b.Namespace, b.Id, 'gadoe.NutritionSchoolDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.NutritionSchoolDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [gadoe].[NutritionSchoolDescriptor] ENABLE TRIGGER [gadoe_NutritionSchoolDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [gadoe].[gadoe_PrimaryStaffClassificationDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [gadoe].[gadoe_PrimaryStaffClassificationDescriptor_TR_DeleteTracking] ON [gadoe].[PrimaryStaffClassificationDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.PrimaryStaffClassificationDescriptorId, b.CodeValue, b.Namespace, b.Id, 'gadoe.PrimaryStaffClassificationDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.PrimaryStaffClassificationDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [gadoe].[PrimaryStaffClassificationDescriptor] ENABLE TRIGGER [gadoe_PrimaryStaffClassificationDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [gadoe].[gadoe_PrivateOrHomeSchooledStudentDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [gadoe].[gadoe_PrivateOrHomeSchooledStudentDescriptor_TR_DeleteTracking] ON [gadoe].[PrivateOrHomeSchooledStudentDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.PrivateOrHomeSchooledStudentDescriptorId, b.CodeValue, b.Namespace, b.Id, 'gadoe.PrivateOrHomeSchooledStudentDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.PrivateOrHomeSchooledStudentDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [gadoe].[PrivateOrHomeSchooledStudentDescriptor] ENABLE TRIGGER [gadoe_PrivateOrHomeSchooledStudentDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [gadoe].[gadoe_ProgramReferredByDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [gadoe].[gadoe_ProgramReferredByDescriptor_TR_DeleteTracking] ON [gadoe].[ProgramReferredByDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.ProgramReferredByDescriptorId, b.CodeValue, b.Namespace, b.Id, 'gadoe.ProgramReferredByDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.ProgramReferredByDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [gadoe].[ProgramReferredByDescriptor] ENABLE TRIGGER [gadoe_ProgramReferredByDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [gadoe].[gadoe_PsychologicalServicesEvaluationDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [gadoe].[gadoe_PsychologicalServicesEvaluationDescriptor_TR_DeleteTracking] ON [gadoe].[PsychologicalServicesEvaluationDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.PsychologicalServicesEvaluationDescriptorId, b.CodeValue, b.Namespace, b.Id, 'gadoe.PsychologicalServicesEvaluationDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.PsychologicalServicesEvaluationDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [gadoe].[PsychologicalServicesEvaluationDescriptor] ENABLE TRIGGER [gadoe_PsychologicalServicesEvaluationDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [gadoe].[gadoe_SalaryPayStepDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [gadoe].[gadoe_SalaryPayStepDescriptor_TR_DeleteTracking] ON [gadoe].[SalaryPayStepDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.SalaryPayStepDescriptorId, b.CodeValue, b.Namespace, b.Id, 'gadoe.SalaryPayStepDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.SalaryPayStepDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [gadoe].[SalaryPayStepDescriptor] ENABLE TRIGGER [gadoe_SalaryPayStepDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [gadoe].[gadoe_SchoolStatistic_TR_DeleteTracking]
GO

CREATE TRIGGER [gadoe].[gadoe_SchoolStatistic_TR_DeleteTracking] ON [gadoe].[SchoolStatistic] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_gadoe].[SchoolStatistic](OldSchoolId, Id, Discriminator, ChangeVersion)
    SELECT d.SchoolId, d.Id, d.Discriminator, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
END
GO

ALTER TABLE [gadoe].[SchoolStatistic] ENABLE TRIGGER [gadoe_SchoolStatistic_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [gadoe].[gadoe_Section504PlanDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [gadoe].[gadoe_Section504PlanDescriptor_TR_DeleteTracking] ON [gadoe].[Section504PlanDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.Section504PlanDescriptorId, b.CodeValue, b.Namespace, b.Id, 'gadoe.Section504PlanDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.Section504PlanDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [gadoe].[Section504PlanDescriptor] ENABLE TRIGGER [gadoe_Section504PlanDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [gadoe].[gadoe_SocialWorkCaseDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [gadoe].[gadoe_SocialWorkCaseDescriptor_TR_DeleteTracking] ON [gadoe].[SocialWorkCaseDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.SocialWorkCaseDescriptorId, b.CodeValue, b.Namespace, b.Id, 'gadoe.SocialWorkCaseDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.SocialWorkCaseDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [gadoe].[SocialWorkCaseDescriptor] ENABLE TRIGGER [gadoe_SocialWorkCaseDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [gadoe].[gadoe_SocialWorkReferralDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [gadoe].[gadoe_SocialWorkReferralDescriptor_TR_DeleteTracking] ON [gadoe].[SocialWorkReferralDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.SocialWorkReferralDescriptorId, b.CodeValue, b.Namespace, b.Id, 'gadoe.SocialWorkReferralDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.SocialWorkReferralDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [gadoe].[SocialWorkReferralDescriptor] ENABLE TRIGGER [gadoe_SocialWorkReferralDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [gadoe].[gadoe_SocialWorkServiceInterventionDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [gadoe].[gadoe_SocialWorkServiceInterventionDescriptor_TR_DeleteTracking] ON [gadoe].[SocialWorkServiceInterventionDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.SocialWorkServiceInterventionDescriptorId, b.CodeValue, b.Namespace, b.Id, 'gadoe.SocialWorkServiceInterventionDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.SocialWorkServiceInterventionDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [gadoe].[SocialWorkServiceInterventionDescriptor] ENABLE TRIGGER [gadoe_SocialWorkServiceInterventionDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [gadoe].[gadoe_SpecialEducationDeliveryModelDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [gadoe].[gadoe_SpecialEducationDeliveryModelDescriptor_TR_DeleteTracking] ON [gadoe].[SpecialEducationDeliveryModelDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.SpecialEducationDeliveryModelDescriptorId, b.CodeValue, b.Namespace, b.Id, 'gadoe.SpecialEducationDeliveryModelDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.SpecialEducationDeliveryModelDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [gadoe].[SpecialEducationDeliveryModelDescriptor] ENABLE TRIGGER [gadoe_SpecialEducationDeliveryModelDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [gadoe].[gadoe_SpecialEducationEventReasonDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [gadoe].[gadoe_SpecialEducationEventReasonDescriptor_TR_DeleteTracking] ON [gadoe].[SpecialEducationEventReasonDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.SpecialEducationEventReasonDescriptorId, b.CodeValue, b.Namespace, b.Id, 'gadoe.SpecialEducationEventReasonDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.SpecialEducationEventReasonDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [gadoe].[SpecialEducationEventReasonDescriptor] ENABLE TRIGGER [gadoe_SpecialEducationEventReasonDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [gadoe].[gadoe_SpecialEducationEventTypeDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [gadoe].[gadoe_SpecialEducationEventTypeDescriptor_TR_DeleteTracking] ON [gadoe].[SpecialEducationEventTypeDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.SpecialEducationEventTypeDescriptorId, b.CodeValue, b.Namespace, b.Id, 'gadoe.SpecialEducationEventTypeDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.SpecialEducationEventTypeDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [gadoe].[SpecialEducationEventTypeDescriptor] ENABLE TRIGGER [gadoe_SpecialEducationEventTypeDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [gadoe].[gadoe_SpecialEducationNonComplianceDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [gadoe].[gadoe_SpecialEducationNonComplianceDescriptor_TR_DeleteTracking] ON [gadoe].[SpecialEducationNonComplianceDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.SpecialEducationNonComplianceDescriptorId, b.CodeValue, b.Namespace, b.Id, 'gadoe.SpecialEducationNonComplianceDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.SpecialEducationNonComplianceDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [gadoe].[SpecialEducationNonComplianceDescriptor] ENABLE TRIGGER [gadoe_SpecialEducationNonComplianceDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [gadoe].[gadoe_StaffAssignmentCertificateTypeDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [gadoe].[gadoe_StaffAssignmentCertificateTypeDescriptor_TR_DeleteTracking] ON [gadoe].[StaffAssignmentCertificateTypeDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.StaffAssignmentCertificateTypeDescriptorId, b.CodeValue, b.Namespace, b.Id, 'gadoe.StaffAssignmentCertificateTypeDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.StaffAssignmentCertificateTypeDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [gadoe].[StaffAssignmentCertificateTypeDescriptor] ENABLE TRIGGER [gadoe_StaffAssignmentCertificateTypeDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [gadoe].[gadoe_StaffAssignmentFieldCodeDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [gadoe].[gadoe_StaffAssignmentFieldCodeDescriptor_TR_DeleteTracking] ON [gadoe].[StaffAssignmentFieldCodeDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.StaffAssignmentFieldCodeDescriptorId, b.CodeValue, b.Namespace, b.Id, 'gadoe.StaffAssignmentFieldCodeDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.StaffAssignmentFieldCodeDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [gadoe].[StaffAssignmentFieldCodeDescriptor] ENABLE TRIGGER [gadoe_StaffAssignmentFieldCodeDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [gadoe].[gadoe_StaffAssignmentFundCodeDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [gadoe].[gadoe_StaffAssignmentFundCodeDescriptor_TR_DeleteTracking] ON [gadoe].[StaffAssignmentFundCodeDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.StaffAssignmentFundCodeDescriptorId, b.CodeValue, b.Namespace, b.Id, 'gadoe.StaffAssignmentFundCodeDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.StaffAssignmentFundCodeDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [gadoe].[StaffAssignmentFundCodeDescriptor] ENABLE TRIGGER [gadoe_StaffAssignmentFundCodeDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [gadoe].[gadoe_StaffAssignmentSubjectMatterCodeDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [gadoe].[gadoe_StaffAssignmentSubjectMatterCodeDescriptor_TR_DeleteTracking] ON [gadoe].[StaffAssignmentSubjectMatterCodeDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.StaffAssignmentSubjectMatterCodeDescriptorId, b.CodeValue, b.Namespace, b.Id, 'gadoe.StaffAssignmentSubjectMatterCodeDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.StaffAssignmentSubjectMatterCodeDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [gadoe].[StaffAssignmentSubjectMatterCodeDescriptor] ENABLE TRIGGER [gadoe_StaffAssignmentSubjectMatterCodeDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [gadoe].[gadoe_StaffEmploymentCharacteristicDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [gadoe].[gadoe_StaffEmploymentCharacteristicDescriptor_TR_DeleteTracking] ON [gadoe].[StaffEmploymentCharacteristicDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.StaffEmploymentCharacteristicDescriptorId, b.CodeValue, b.Namespace, b.Id, 'gadoe.StaffEmploymentCharacteristicDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.StaffEmploymentCharacteristicDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [gadoe].[StaffEmploymentCharacteristicDescriptor] ENABLE TRIGGER [gadoe_StaffEmploymentCharacteristicDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [gadoe].[gadoe_StaffServiceTypeDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [gadoe].[gadoe_StaffServiceTypeDescriptor_TR_DeleteTracking] ON [gadoe].[StaffServiceTypeDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.StaffServiceTypeDescriptorId, b.CodeValue, b.Namespace, b.Id, 'gadoe.StaffServiceTypeDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.StaffServiceTypeDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [gadoe].[StaffServiceTypeDescriptor] ENABLE TRIGGER [gadoe_StaffServiceTypeDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [gadoe].[gadoe_StemSteamSchoolDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [gadoe].[gadoe_StemSteamSchoolDescriptor_TR_DeleteTracking] ON [gadoe].[StemSteamSchoolDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.StemSteamSchoolDescriptorId, b.CodeValue, b.Namespace, b.Id, 'gadoe.StemSteamSchoolDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.StemSteamSchoolDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [gadoe].[StemSteamSchoolDescriptor] ENABLE TRIGGER [gadoe_StemSteamSchoolDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [gadoe].[gadoe_StudentSpecialEducationAssociationEvent_TR_DeleteTracking]
GO

CREATE TRIGGER [gadoe].[gadoe_StudentSpecialEducationAssociationEvent_TR_DeleteTracking] ON [gadoe].[StudentSpecialEducationAssociationEvent] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_gadoe].[StudentSpecialEducationAssociationEvent](OldEntryDate, OldEventDate, OldSchoolId, OldSpecialEducationEventTypeDescriptorId, OldSpecialEducationEventTypeDescriptorNamespace, OldSpecialEducationEventTypeDescriptorCodeValue, OldStudentUSI, OldStudentUniqueId, Id, Discriminator, ChangeVersion)
    SELECT d.EntryDate, d.EventDate, d.SchoolId, d.SpecialEducationEventTypeDescriptorId, j0.Namespace, j0.CodeValue, d.StudentUSI, j1.StudentUniqueId, d.Id, d.Discriminator, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
        INNER JOIN edfi.Descriptor j0
            ON d.SpecialEducationEventTypeDescriptorId = j0.DescriptorId
        INNER JOIN edfi.Student j1
            ON d.StudentUSI = j1.StudentUSI
END
GO

ALTER TABLE [gadoe].[StudentSpecialEducationAssociationEvent] ENABLE TRIGGER [gadoe_StudentSpecialEducationAssociationEvent_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [gadoe].[gadoe_SystemOfResidencyDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [gadoe].[gadoe_SystemOfResidencyDescriptor_TR_DeleteTracking] ON [gadoe].[SystemOfResidencyDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.SystemOfResidencyDescriptorId, b.CodeValue, b.Namespace, b.Id, 'gadoe.SystemOfResidencyDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.SystemOfResidencyDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [gadoe].[SystemOfResidencyDescriptor] ENABLE TRIGGER [gadoe_SystemOfResidencyDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [gadoe].[gadoe_WorkBasedLearningProgramDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [gadoe].[gadoe_WorkBasedLearningProgramDescriptor_TR_DeleteTracking] ON [gadoe].[WorkBasedLearningProgramDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.WorkBasedLearningProgramDescriptorId, b.CodeValue, b.Namespace, b.Id, 'gadoe.WorkBasedLearningProgramDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.WorkBasedLearningProgramDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [gadoe].[WorkBasedLearningProgramDescriptor] ENABLE TRIGGER [gadoe_WorkBasedLearningProgramDescriptor_TR_DeleteTracking]
GO


