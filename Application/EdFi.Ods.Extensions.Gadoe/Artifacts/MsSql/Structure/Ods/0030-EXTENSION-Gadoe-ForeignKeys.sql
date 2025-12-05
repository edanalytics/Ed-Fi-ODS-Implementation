ALTER TABLE [gadoe].[BehaviorIncidentDescriptor] WITH CHECK ADD CONSTRAINT [FK_BehaviorIncidentDescriptor_Descriptor] FOREIGN KEY ([BehaviorIncidentDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [gadoe].[ChildFindStatusDescriptor] WITH CHECK ADD CONSTRAINT [FK_ChildFindStatusDescriptor_Descriptor] FOREIGN KEY ([ChildFindStatusDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [gadoe].[ChwCertFieldCodeDescriptor] WITH CHECK ADD CONSTRAINT [FK_ChwCertFieldCodeDescriptor_Descriptor] FOREIGN KEY ([ChwCertFieldCodeDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [gadoe].[CountyOfResidenceDescriptor] WITH CHECK ADD CONSTRAINT [FK_CountyOfResidenceDescriptor_Descriptor] FOREIGN KEY ([CountyOfResidenceDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [gadoe].[DataTypeIndicatorDescriptor] WITH CHECK ADD CONSTRAINT [FK_DataTypeIndicatorDescriptor_Descriptor] FOREIGN KEY ([DataTypeIndicatorDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [gadoe].[DisciplineActionAuxiliaryDescriptor] WITH CHECK ADD CONSTRAINT [FK_DisciplineActionAuxiliaryDescriptor_Descriptor] FOREIGN KEY ([DisciplineActionAuxiliaryDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [gadoe].[DisciplineActionExtension] WITH CHECK ADD CONSTRAINT [FK_DisciplineActionExtension_DataTypeIndicatorDescriptor] FOREIGN KEY ([DataTypeIndicatorDescriptorId])
REFERENCES [gadoe].[DataTypeIndicatorDescriptor] ([DataTypeIndicatorDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_DisciplineActionExtension_DataTypeIndicatorDescriptor]
ON [gadoe].[DisciplineActionExtension] ([DataTypeIndicatorDescriptorId] ASC)
GO

ALTER TABLE [gadoe].[DisciplineActionExtension] WITH CHECK ADD CONSTRAINT [FK_DisciplineActionExtension_DisciplineAction] FOREIGN KEY ([DisciplineActionIdentifier], [DisciplineDate], [StudentUSI])
REFERENCES [edfi].[DisciplineAction] ([DisciplineActionIdentifier], [DisciplineDate], [StudentUSI])
ON DELETE CASCADE
GO

ALTER TABLE [gadoe].[DisciplineActionExtension] WITH CHECK ADD CONSTRAINT [FK_DisciplineActionExtension_DisciplineActionAuxiliaryDescriptor] FOREIGN KEY ([DisciplineActionAuxiliaryDescriptorId])
REFERENCES [gadoe].[DisciplineActionAuxiliaryDescriptor] ([DisciplineActionAuxiliaryDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_DisciplineActionExtension_DisciplineActionAuxiliaryDescriptor]
ON [gadoe].[DisciplineActionExtension] ([DisciplineActionAuxiliaryDescriptorId] ASC)
GO

ALTER TABLE [gadoe].[DisciplineActionExtension] WITH CHECK ADD CONSTRAINT [FK_DisciplineActionExtension_DisciplineProcessTypeDescriptor] FOREIGN KEY ([DisciplineProcessTypeDescriptorId])
REFERENCES [gadoe].[DisciplineProcessTypeDescriptor] ([DisciplineProcessTypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_DisciplineActionExtension_DisciplineProcessTypeDescriptor]
ON [gadoe].[DisciplineActionExtension] ([DisciplineProcessTypeDescriptorId] ASC)
GO

ALTER TABLE [gadoe].[DisciplineActionExtension] WITH CHECK ADD CONSTRAINT [FK_DisciplineActionExtension_IncidentSeverityLevelDescriptor] FOREIGN KEY ([IncidentSeverityLevelDescriptorId])
REFERENCES [gadoe].[IncidentSeverityLevelDescriptor] ([IncidentSeverityLevelDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_DisciplineActionExtension_IncidentSeverityLevelDescriptor]
ON [gadoe].[DisciplineActionExtension] ([IncidentSeverityLevelDescriptorId] ASC)
GO

ALTER TABLE [gadoe].[DisciplineIncidentExtension] WITH CHECK ADD CONSTRAINT [FK_DisciplineIncidentExtension_DisciplineIncident] FOREIGN KEY ([IncidentIdentifier], [SchoolId])
REFERENCES [edfi].[DisciplineIncident] ([IncidentIdentifier], [SchoolId])
ON DELETE CASCADE
GO

ALTER TABLE [gadoe].[DisciplineIncidentExtension] WITH CHECK ADD CONSTRAINT [FK_DisciplineIncidentExtension_IncidentTimingDescriptor] FOREIGN KEY ([IncidentTimingDescriptorId])
REFERENCES [gadoe].[IncidentTimingDescriptor] ([IncidentTimingDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_DisciplineIncidentExtension_IncidentTimingDescriptor]
ON [gadoe].[DisciplineIncidentExtension] ([IncidentTimingDescriptorId] ASC)
GO

ALTER TABLE [gadoe].[DisciplineProcessTypeDescriptor] WITH CHECK ADD CONSTRAINT [FK_DisciplineProcessTypeDescriptor_Descriptor] FOREIGN KEY ([DisciplineProcessTypeDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [gadoe].[EipDeliveryModelDescriptor] WITH CHECK ADD CONSTRAINT [FK_EipDeliveryModelDescriptor_Descriptor] FOREIGN KEY ([EipDeliveryModelDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [gadoe].[EmployeeTypeDescriptor] WITH CHECK ADD CONSTRAINT [FK_EmployeeTypeDescriptor_Descriptor] FOREIGN KEY ([EmployeeTypeDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [gadoe].[EnrollmentLocationDescriptor] WITH CHECK ADD CONSTRAINT [FK_EnrollmentLocationDescriptor_Descriptor] FOREIGN KEY ([EnrollmentLocationDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [gadoe].[EsolDeliveryModelDescriptor] WITH CHECK ADD CONSTRAINT [FK_EsolDeliveryModelDescriptor_Descriptor] FOREIGN KEY ([EsolDeliveryModelDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [gadoe].[FteProgramCodeDescriptor] WITH CHECK ADD CONSTRAINT [FK_FteProgramCodeDescriptor_Descriptor] FOREIGN KEY ([FteProgramCodeDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [gadoe].[GiftedDeliveryModelDescriptor] WITH CHECK ADD CONSTRAINT [FK_GiftedDeliveryModelDescriptor_Descriptor] FOREIGN KEY ([GiftedDeliveryModelDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [gadoe].[GiftedServedDescriptor] WITH CHECK ADD CONSTRAINT [FK_GiftedServedDescriptor_Descriptor] FOREIGN KEY ([GiftedServedDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [gadoe].[IepInclusionTypeDescriptor] WITH CHECK ADD CONSTRAINT [FK_IepInclusionTypeDescriptor_Descriptor] FOREIGN KEY ([IepInclusionTypeDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [gadoe].[IncidentSeverityLevelDescriptor] WITH CHECK ADD CONSTRAINT [FK_IncidentSeverityLevelDescriptor_Descriptor] FOREIGN KEY ([IncidentSeverityLevelDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [gadoe].[IncidentTimingDescriptor] WITH CHECK ADD CONSTRAINT [FK_IncidentTimingDescriptor_Descriptor] FOREIGN KEY ([IncidentTimingDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [gadoe].[InclusionPersonnelDescriptor] WITH CHECK ADD CONSTRAINT [FK_InclusionPersonnelDescriptor_Descriptor] FOREIGN KEY ([InclusionPersonnelDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [gadoe].[LocalEducationAgencyStatistic] WITH CHECK ADD CONSTRAINT [FK_LocalEducationAgencyStatistic_EducationOrganization] FOREIGN KEY ([EducationOrganizationId])
REFERENCES [edfi].[EducationOrganization] ([EducationOrganizationId])
GO

ALTER TABLE [gadoe].[LocalEducationAgencyStatisticPrivateOrHomeSchooledStudentCount] WITH CHECK ADD CONSTRAINT [FK_LocalEducationAgencyStatisticPrivateOrHomeSchooledStudentCount_LocalEducationAgencyStatistic] FOREIGN KEY ([EducationOrganizationId])
REFERENCES [gadoe].[LocalEducationAgencyStatistic] ([EducationOrganizationId])
ON DELETE CASCADE
GO

CREATE NONCLUSTERED INDEX [FK_LocalEducationAgencyStatisticPrivateOrHomeSchooledStudentCount_LocalEducationAgencyStatistic]
ON [gadoe].[LocalEducationAgencyStatisticPrivateOrHomeSchooledStudentCount] ([EducationOrganizationId] ASC)
GO

ALTER TABLE [gadoe].[LocalEducationAgencyStatisticPrivateOrHomeSchooledStudentCount] WITH CHECK ADD CONSTRAINT [FK_LocalEducationAgencyStatisticPrivateOrHomeSchooledStudentCount_PrivateOrHomeSchooledStudentDescriptor] FOREIGN KEY ([PrivateOrHomeSchooledStudentDescriptorId])
REFERENCES [gadoe].[PrivateOrHomeSchooledStudentDescriptor] ([PrivateOrHomeSchooledStudentDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_LocalEducationAgencyStatisticPrivateOrHomeSchooledStudentCount_PrivateOrHomeSchooledStudentDescriptor]
ON [gadoe].[LocalEducationAgencyStatisticPrivateOrHomeSchooledStudentCount] ([PrivateOrHomeSchooledStudentDescriptorId] ASC)
GO

ALTER TABLE [gadoe].[LocalEducationAgencyStatisticPsychologicalServicesEvaluationCount] WITH CHECK ADD CONSTRAINT [FK_LocalEducationAgencyStatisticPsychologicalServicesEvaluationCount_LocalEducationAgencyStatistic] FOREIGN KEY ([EducationOrganizationId])
REFERENCES [gadoe].[LocalEducationAgencyStatistic] ([EducationOrganizationId])
ON DELETE CASCADE
GO

CREATE NONCLUSTERED INDEX [FK_LocalEducationAgencyStatisticPsychologicalServicesEvaluationCount_LocalEducationAgencyStatistic]
ON [gadoe].[LocalEducationAgencyStatisticPsychologicalServicesEvaluationCount] ([EducationOrganizationId] ASC)
GO

ALTER TABLE [gadoe].[LocalEducationAgencyStatisticPsychologicalServicesEvaluationCount] WITH CHECK ADD CONSTRAINT [FK_LocalEducationAgencyStatisticPsychologicalServicesEvaluationCount_PsychologicalServicesEvaluationDescriptor] FOREIGN KEY ([PsychologicalServicesEvaluationDescriptorId])
REFERENCES [gadoe].[PsychologicalServicesEvaluationDescriptor] ([PsychologicalServicesEvaluationDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_LocalEducationAgencyStatisticPsychologicalServicesEvaluationCount_PsychologicalServicesEvaluationDescriptor]
ON [gadoe].[LocalEducationAgencyStatisticPsychologicalServicesEvaluationCount] ([PsychologicalServicesEvaluationDescriptorId] ASC)
GO

ALTER TABLE [gadoe].[NonESOLStatusDescriptor] WITH CHECK ADD CONSTRAINT [FK_NonESOLStatusDescriptor_Descriptor] FOREIGN KEY ([NonESOLStatusDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [gadoe].[NutritionSchoolDescriptor] WITH CHECK ADD CONSTRAINT [FK_NutritionSchoolDescriptor_Descriptor] FOREIGN KEY ([NutritionSchoolDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [gadoe].[PrimaryStaffClassificationDescriptor] WITH CHECK ADD CONSTRAINT [FK_PrimaryStaffClassificationDescriptor_Descriptor] FOREIGN KEY ([PrimaryStaffClassificationDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [gadoe].[PrivateOrHomeSchooledStudentDescriptor] WITH CHECK ADD CONSTRAINT [FK_PrivateOrHomeSchooledStudentDescriptor_Descriptor] FOREIGN KEY ([PrivateOrHomeSchooledStudentDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [gadoe].[ProgramReferredByDescriptor] WITH CHECK ADD CONSTRAINT [FK_ProgramReferredByDescriptor_Descriptor] FOREIGN KEY ([ProgramReferredByDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [gadoe].[PsychologicalServicesEvaluationDescriptor] WITH CHECK ADD CONSTRAINT [FK_PsychologicalServicesEvaluationDescriptor_Descriptor] FOREIGN KEY ([PsychologicalServicesEvaluationDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [gadoe].[SalaryPayStepDescriptor] WITH CHECK ADD CONSTRAINT [FK_SalaryPayStepDescriptor_Descriptor] FOREIGN KEY ([SalaryPayStepDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [gadoe].[SchoolStatistic] WITH CHECK ADD CONSTRAINT [FK_SchoolStatistic_NutritionSchoolDescriptor] FOREIGN KEY ([NutritionSchoolDescriptorId])
REFERENCES [gadoe].[NutritionSchoolDescriptor] ([NutritionSchoolDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_SchoolStatistic_NutritionSchoolDescriptor]
ON [gadoe].[SchoolStatistic] ([NutritionSchoolDescriptorId] ASC)
GO

ALTER TABLE [gadoe].[SchoolStatistic] WITH CHECK ADD CONSTRAINT [FK_SchoolStatistic_School] FOREIGN KEY ([SchoolId])
REFERENCES [edfi].[School] ([SchoolId])
GO

ALTER TABLE [gadoe].[SchoolStatistic] WITH CHECK ADD CONSTRAINT [FK_SchoolStatistic_StemSteamSchoolDescriptor] FOREIGN KEY ([StemSteamSchoolDescriptorId])
REFERENCES [gadoe].[StemSteamSchoolDescriptor] ([StemSteamSchoolDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_SchoolStatistic_StemSteamSchoolDescriptor]
ON [gadoe].[SchoolStatistic] ([StemSteamSchoolDescriptorId] ASC)
GO

ALTER TABLE [gadoe].[SchoolStatistic] WITH CHECK ADD CONSTRAINT [FK_SchoolStatistic_TitleIPartASchoolDesignationDescriptor] FOREIGN KEY ([TitleIPartASchoolDesignationDescriptorId])
REFERENCES [edfi].[TitleIPartASchoolDesignationDescriptor] ([TitleIPartASchoolDesignationDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_SchoolStatistic_TitleIPartASchoolDesignationDescriptor]
ON [gadoe].[SchoolStatistic] ([TitleIPartASchoolDesignationDescriptorId] ASC)
GO

ALTER TABLE [gadoe].[SchoolStatisticBehaviorIncidentCount] WITH CHECK ADD CONSTRAINT [FK_SchoolStatisticBehaviorIncidentCount_BehaviorIncidentDescriptor] FOREIGN KEY ([BehaviorIncidentDescriptorId])
REFERENCES [gadoe].[BehaviorIncidentDescriptor] ([BehaviorIncidentDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_SchoolStatisticBehaviorIncidentCount_BehaviorIncidentDescriptor]
ON [gadoe].[SchoolStatisticBehaviorIncidentCount] ([BehaviorIncidentDescriptorId] ASC)
GO

ALTER TABLE [gadoe].[SchoolStatisticBehaviorIncidentCount] WITH CHECK ADD CONSTRAINT [FK_SchoolStatisticBehaviorIncidentCount_SchoolStatistic] FOREIGN KEY ([SchoolId])
REFERENCES [gadoe].[SchoolStatistic] ([SchoolId])
ON DELETE CASCADE
GO

CREATE NONCLUSTERED INDEX [FK_SchoolStatisticBehaviorIncidentCount_SchoolStatistic]
ON [gadoe].[SchoolStatisticBehaviorIncidentCount] ([SchoolId] ASC)
GO

ALTER TABLE [gadoe].[SchoolStatisticSocialWorkCaseCount] WITH CHECK ADD CONSTRAINT [FK_SchoolStatisticSocialWorkCaseCount_SchoolStatistic] FOREIGN KEY ([SchoolId])
REFERENCES [gadoe].[SchoolStatistic] ([SchoolId])
ON DELETE CASCADE
GO

CREATE NONCLUSTERED INDEX [FK_SchoolStatisticSocialWorkCaseCount_SchoolStatistic]
ON [gadoe].[SchoolStatisticSocialWorkCaseCount] ([SchoolId] ASC)
GO

ALTER TABLE [gadoe].[SchoolStatisticSocialWorkCaseCount] WITH CHECK ADD CONSTRAINT [FK_SchoolStatisticSocialWorkCaseCount_SocialWorkCaseDescriptor] FOREIGN KEY ([SocialWorkCaseDescriptorId])
REFERENCES [gadoe].[SocialWorkCaseDescriptor] ([SocialWorkCaseDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_SchoolStatisticSocialWorkCaseCount_SocialWorkCaseDescriptor]
ON [gadoe].[SchoolStatisticSocialWorkCaseCount] ([SocialWorkCaseDescriptorId] ASC)
GO

ALTER TABLE [gadoe].[SchoolStatisticSocialWorkReferralCount] WITH CHECK ADD CONSTRAINT [FK_SchoolStatisticSocialWorkReferralCount_SchoolStatistic] FOREIGN KEY ([SchoolId])
REFERENCES [gadoe].[SchoolStatistic] ([SchoolId])
ON DELETE CASCADE
GO

CREATE NONCLUSTERED INDEX [FK_SchoolStatisticSocialWorkReferralCount_SchoolStatistic]
ON [gadoe].[SchoolStatisticSocialWorkReferralCount] ([SchoolId] ASC)
GO

ALTER TABLE [gadoe].[SchoolStatisticSocialWorkReferralCount] WITH CHECK ADD CONSTRAINT [FK_SchoolStatisticSocialWorkReferralCount_SocialWorkReferralDescriptor] FOREIGN KEY ([SocialWorkReferralDescriptorId])
REFERENCES [gadoe].[SocialWorkReferralDescriptor] ([SocialWorkReferralDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_SchoolStatisticSocialWorkReferralCount_SocialWorkReferralDescriptor]
ON [gadoe].[SchoolStatisticSocialWorkReferralCount] ([SocialWorkReferralDescriptorId] ASC)
GO

ALTER TABLE [gadoe].[SchoolStatisticSocialWorkServiceInterventionCount] WITH CHECK ADD CONSTRAINT [FK_SchoolStatisticSocialWorkServiceInterventionCount_SchoolStatistic] FOREIGN KEY ([SchoolId])
REFERENCES [gadoe].[SchoolStatistic] ([SchoolId])
ON DELETE CASCADE
GO

CREATE NONCLUSTERED INDEX [FK_SchoolStatisticSocialWorkServiceInterventionCount_SchoolStatistic]
ON [gadoe].[SchoolStatisticSocialWorkServiceInterventionCount] ([SchoolId] ASC)
GO

ALTER TABLE [gadoe].[SchoolStatisticSocialWorkServiceInterventionCount] WITH CHECK ADD CONSTRAINT [FK_SchoolStatisticSocialWorkServiceInterventionCount_SocialWorkServiceInterventionDescriptor] FOREIGN KEY ([SocialWorkServiceInterventionDescriptorId])
REFERENCES [gadoe].[SocialWorkServiceInterventionDescriptor] ([SocialWorkServiceInterventionDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_SchoolStatisticSocialWorkServiceInterventionCount_SocialWorkServiceInterventionDescriptor]
ON [gadoe].[SchoolStatisticSocialWorkServiceInterventionCount] ([SocialWorkServiceInterventionDescriptorId] ASC)
GO

ALTER TABLE [gadoe].[Section504PlanDescriptor] WITH CHECK ADD CONSTRAINT [FK_Section504PlanDescriptor_Descriptor] FOREIGN KEY ([Section504PlanDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [gadoe].[SectionExtension] WITH CHECK ADD CONSTRAINT [FK_SectionExtension_Section] FOREIGN KEY ([LocalCourseCode], [SchoolId], [SchoolYear], [SectionIdentifier], [SessionName])
REFERENCES [edfi].[Section] ([LocalCourseCode], [SchoolId], [SchoolYear], [SectionIdentifier], [SessionName])
ON DELETE CASCADE
ON UPDATE CASCADE
GO

ALTER TABLE [gadoe].[SocialWorkCaseDescriptor] WITH CHECK ADD CONSTRAINT [FK_SocialWorkCaseDescriptor_Descriptor] FOREIGN KEY ([SocialWorkCaseDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [gadoe].[SocialWorkReferralDescriptor] WITH CHECK ADD CONSTRAINT [FK_SocialWorkReferralDescriptor_Descriptor] FOREIGN KEY ([SocialWorkReferralDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [gadoe].[SocialWorkServiceInterventionDescriptor] WITH CHECK ADD CONSTRAINT [FK_SocialWorkServiceInterventionDescriptor_Descriptor] FOREIGN KEY ([SocialWorkServiceInterventionDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [gadoe].[SpecialEducationDeliveryModelDescriptor] WITH CHECK ADD CONSTRAINT [FK_SpecialEducationDeliveryModelDescriptor_Descriptor] FOREIGN KEY ([SpecialEducationDeliveryModelDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [gadoe].[SpecialEducationEventReasonDescriptor] WITH CHECK ADD CONSTRAINT [FK_SpecialEducationEventReasonDescriptor_Descriptor] FOREIGN KEY ([SpecialEducationEventReasonDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [gadoe].[SpecialEducationEventTypeDescriptor] WITH CHECK ADD CONSTRAINT [FK_SpecialEducationEventTypeDescriptor_Descriptor] FOREIGN KEY ([SpecialEducationEventTypeDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [gadoe].[SpecialEducationNonComplianceDescriptor] WITH CHECK ADD CONSTRAINT [FK_SpecialEducationNonComplianceDescriptor_Descriptor] FOREIGN KEY ([SpecialEducationNonComplianceDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [gadoe].[StaffAssignmentCertificateTypeDescriptor] WITH CHECK ADD CONSTRAINT [FK_StaffAssignmentCertificateTypeDescriptor_Descriptor] FOREIGN KEY ([StaffAssignmentCertificateTypeDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [gadoe].[StaffAssignmentFieldCodeDescriptor] WITH CHECK ADD CONSTRAINT [FK_StaffAssignmentFieldCodeDescriptor_Descriptor] FOREIGN KEY ([StaffAssignmentFieldCodeDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [gadoe].[StaffAssignmentFundCodeDescriptor] WITH CHECK ADD CONSTRAINT [FK_StaffAssignmentFundCodeDescriptor_Descriptor] FOREIGN KEY ([StaffAssignmentFundCodeDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [gadoe].[StaffAssignmentSubjectMatterCodeDescriptor] WITH CHECK ADD CONSTRAINT [FK_StaffAssignmentSubjectMatterCodeDescriptor_Descriptor] FOREIGN KEY ([StaffAssignmentSubjectMatterCodeDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [gadoe].[StaffEducationOrganizationAssignmentAssociationExtension] WITH CHECK ADD CONSTRAINT [FK_StaffEducationOrganizationAssignmentAssociationExtension_StaffEducationOrganizationAssignmentAssociation] FOREIGN KEY ([BeginDate], [EducationOrganizationId], [StaffClassificationDescriptorId], [StaffUSI])
REFERENCES [edfi].[StaffEducationOrganizationAssignmentAssociation] ([BeginDate], [EducationOrganizationId], [StaffClassificationDescriptorId], [StaffUSI])
ON DELETE CASCADE
GO

ALTER TABLE [gadoe].[StaffEducationOrganizationAssignmentAssociationStaffAssignmentDetail] WITH CHECK ADD CONSTRAINT [FK_StaffEducationOrganizationAssignmentAssociationStaffAssignmentDetail_StaffAssignmentCertificateTypeDescriptor] FOREIGN KEY ([StaffAssignmentCertificateTypeDescriptorId])
REFERENCES [gadoe].[StaffAssignmentCertificateTypeDescriptor] ([StaffAssignmentCertificateTypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StaffEducationOrganizationAssignmentAssociationStaffAssignmentDetail_StaffAssignmentCertificateTypeDescriptor]
ON [gadoe].[StaffEducationOrganizationAssignmentAssociationStaffAssignmentDetail] ([StaffAssignmentCertificateTypeDescriptorId] ASC)
GO

ALTER TABLE [gadoe].[StaffEducationOrganizationAssignmentAssociationStaffAssignmentDetail] WITH CHECK ADD CONSTRAINT [FK_StaffEducationOrganizationAssignmentAssociationStaffAssignmentDetail_StaffAssignmentFieldCodeDescriptor] FOREIGN KEY ([StaffAssignmentFieldCodeDescriptorId])
REFERENCES [gadoe].[StaffAssignmentFieldCodeDescriptor] ([StaffAssignmentFieldCodeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StaffEducationOrganizationAssignmentAssociationStaffAssignmentDetail_StaffAssignmentFieldCodeDescriptor]
ON [gadoe].[StaffEducationOrganizationAssignmentAssociationStaffAssignmentDetail] ([StaffAssignmentFieldCodeDescriptorId] ASC)
GO

ALTER TABLE [gadoe].[StaffEducationOrganizationAssignmentAssociationStaffAssignmentDetail] WITH CHECK ADD CONSTRAINT [FK_StaffEducationOrganizationAssignmentAssociationStaffAssignmentDetail_StaffAssignmentFundCodeDescriptor] FOREIGN KEY ([StaffAssignmentFundCodeDescriptorId])
REFERENCES [gadoe].[StaffAssignmentFundCodeDescriptor] ([StaffAssignmentFundCodeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StaffEducationOrganizationAssignmentAssociationStaffAssignmentDetail_StaffAssignmentFundCodeDescriptor]
ON [gadoe].[StaffEducationOrganizationAssignmentAssociationStaffAssignmentDetail] ([StaffAssignmentFundCodeDescriptorId] ASC)
GO

ALTER TABLE [gadoe].[StaffEducationOrganizationAssignmentAssociationStaffAssignmentDetail] WITH CHECK ADD CONSTRAINT [FK_StaffEducationOrganizationAssignmentAssociationStaffAssignmentDetail_StaffAssignmentSubjectMatterCodeDescriptor] FOREIGN KEY ([StaffAssignmentSubjectMatterCodeDescriptorId])
REFERENCES [gadoe].[StaffAssignmentSubjectMatterCodeDescriptor] ([StaffAssignmentSubjectMatterCodeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StaffEducationOrganizationAssignmentAssociationStaffAssignmentDetail_StaffAssignmentSubjectMatterCodeDescriptor]
ON [gadoe].[StaffEducationOrganizationAssignmentAssociationStaffAssignmentDetail] ([StaffAssignmentSubjectMatterCodeDescriptorId] ASC)
GO

ALTER TABLE [gadoe].[StaffEducationOrganizationAssignmentAssociationStaffAssignmentDetail] WITH CHECK ADD CONSTRAINT [FK_StaffEducationOrganizationAssignmentAssociationStaffAssignmentDetail_StaffEducationOrganizationAssignmentAssociation] FOREIGN KEY ([BeginDate], [EducationOrganizationId], [StaffClassificationDescriptorId], [StaffUSI])
REFERENCES [edfi].[StaffEducationOrganizationAssignmentAssociation] ([BeginDate], [EducationOrganizationId], [StaffClassificationDescriptorId], [StaffUSI])
ON DELETE CASCADE
GO

CREATE NONCLUSTERED INDEX [FK_StaffEducationOrganizationAssignmentAssociationStaffAssignmentDetail_StaffEducationOrganizationAssignmentAssociation]
ON [gadoe].[StaffEducationOrganizationAssignmentAssociationStaffAssignmentDetail] ([BeginDate] ASC, [EducationOrganizationId] ASC, [StaffClassificationDescriptorId] ASC, [StaffUSI] ASC)
GO

ALTER TABLE [gadoe].[StaffEducationOrganizationEmploymentAssociationExtension] WITH CHECK ADD CONSTRAINT [FK_StaffEducationOrganizationEmploymentAssociationExtension_PrimaryStaffClassificationDescriptor] FOREIGN KEY ([PrimaryStaffClassificationDescriptorId])
REFERENCES [gadoe].[PrimaryStaffClassificationDescriptor] ([PrimaryStaffClassificationDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StaffEducationOrganizationEmploymentAssociationExtension_PrimaryStaffClassificationDescriptor]
ON [gadoe].[StaffEducationOrganizationEmploymentAssociationExtension] ([PrimaryStaffClassificationDescriptorId] ASC)
GO

ALTER TABLE [gadoe].[StaffEducationOrganizationEmploymentAssociationExtension] WITH CHECK ADD CONSTRAINT [FK_StaffEducationOrganizationEmploymentAssociationExtension_SalaryPayStepDescriptor] FOREIGN KEY ([SalaryPayStepDescriptorId])
REFERENCES [gadoe].[SalaryPayStepDescriptor] ([SalaryPayStepDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StaffEducationOrganizationEmploymentAssociationExtension_SalaryPayStepDescriptor]
ON [gadoe].[StaffEducationOrganizationEmploymentAssociationExtension] ([SalaryPayStepDescriptorId] ASC)
GO

ALTER TABLE [gadoe].[StaffEducationOrganizationEmploymentAssociationExtension] WITH CHECK ADD CONSTRAINT [FK_StaffEducationOrganizationEmploymentAssociationExtension_StaffEducationOrganizationEmploymentAssociation] FOREIGN KEY ([EducationOrganizationId], [EmploymentStatusDescriptorId], [HireDate], [StaffUSI])
REFERENCES [edfi].[StaffEducationOrganizationEmploymentAssociation] ([EducationOrganizationId], [EmploymentStatusDescriptorId], [HireDate], [StaffUSI])
ON DELETE CASCADE
GO

ALTER TABLE [gadoe].[StaffEducationOrganizationEmploymentAssociationStaffEmploymentCharacteristic] WITH CHECK ADD CONSTRAINT [FK_StaffEducationOrganizationEmploymentAssociationStaffEmploymentCharacteristic_StaffEducationOrganizationEmploymentAssociation] FOREIGN KEY ([EducationOrganizationId], [EmploymentStatusDescriptorId], [HireDate], [StaffUSI])
REFERENCES [edfi].[StaffEducationOrganizationEmploymentAssociation] ([EducationOrganizationId], [EmploymentStatusDescriptorId], [HireDate], [StaffUSI])
ON DELETE CASCADE
GO

CREATE NONCLUSTERED INDEX [FK_StaffEducationOrganizationEmploymentAssociationStaffEmploymentCharacteristic_StaffEducationOrganizationEmploymentAssociation]
ON [gadoe].[StaffEducationOrganizationEmploymentAssociationStaffEmploymentCharacteristic] ([EducationOrganizationId] ASC, [EmploymentStatusDescriptorId] ASC, [HireDate] ASC, [StaffUSI] ASC)
GO

ALTER TABLE [gadoe].[StaffEducationOrganizationEmploymentAssociationStaffEmploymentCharacteristic] WITH CHECK ADD CONSTRAINT [FK_StaffEducationOrganizationEmploymentAssociationStaffEmploymentCharacteristic_StaffEmploymentCharacteristicDescriptor] FOREIGN KEY ([StaffEmploymentCharacteristicDescriptorId])
REFERENCES [gadoe].[StaffEmploymentCharacteristicDescriptor] ([StaffEmploymentCharacteristicDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StaffEducationOrganizationEmploymentAssociationStaffEmploymentCharacteristic_StaffEmploymentCharacteristicDescriptor]
ON [gadoe].[StaffEducationOrganizationEmploymentAssociationStaffEmploymentCharacteristic] ([StaffEmploymentCharacteristicDescriptorId] ASC)
GO

ALTER TABLE [gadoe].[StaffEducationOrganizationEmploymentAssociationStaffEmploymentIndicator] WITH CHECK ADD CONSTRAINT [FK_StaffEducationOrganizationEmploymentAssociationStaffEmploymentIndicator_StaffEducationOrganizationEmploymentAssociation] FOREIGN KEY ([EducationOrganizationId], [EmploymentStatusDescriptorId], [HireDate], [StaffUSI])
REFERENCES [edfi].[StaffEducationOrganizationEmploymentAssociation] ([EducationOrganizationId], [EmploymentStatusDescriptorId], [HireDate], [StaffUSI])
ON DELETE CASCADE
GO

CREATE NONCLUSTERED INDEX [FK_StaffEducationOrganizationEmploymentAssociationStaffEmploymentIndicator_StaffEducationOrganizationEmploymentAssociation]
ON [gadoe].[StaffEducationOrganizationEmploymentAssociationStaffEmploymentIndicator] ([EducationOrganizationId] ASC, [EmploymentStatusDescriptorId] ASC, [HireDate] ASC, [StaffUSI] ASC)
GO

ALTER TABLE [gadoe].[StaffEmploymentCharacteristicDescriptor] WITH CHECK ADD CONSTRAINT [FK_StaffEmploymentCharacteristicDescriptor_Descriptor] FOREIGN KEY ([StaffEmploymentCharacteristicDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [gadoe].[StaffExtension] WITH CHECK ADD CONSTRAINT [FK_StaffExtension_EmployeeTypeDescriptor] FOREIGN KEY ([EmployeeTypeDescriptorId])
REFERENCES [gadoe].[EmployeeTypeDescriptor] ([EmployeeTypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StaffExtension_EmployeeTypeDescriptor]
ON [gadoe].[StaffExtension] ([EmployeeTypeDescriptorId] ASC)
GO

ALTER TABLE [gadoe].[StaffExtension] WITH CHECK ADD CONSTRAINT [FK_StaffExtension_Staff] FOREIGN KEY ([StaffUSI])
REFERENCES [edfi].[Staff] ([StaffUSI])
ON DELETE CASCADE
GO

ALTER TABLE [gadoe].[StaffSectionAssociationExtension] WITH CHECK ADD CONSTRAINT [FK_StaffSectionAssociationExtension_ChwCertFieldCodeDescriptor] FOREIGN KEY ([ChwCertFieldCodeDescriptorId])
REFERENCES [gadoe].[ChwCertFieldCodeDescriptor] ([ChwCertFieldCodeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StaffSectionAssociationExtension_ChwCertFieldCodeDescriptor]
ON [gadoe].[StaffSectionAssociationExtension] ([ChwCertFieldCodeDescriptorId] ASC)
GO

ALTER TABLE [gadoe].[StaffSectionAssociationExtension] WITH CHECK ADD CONSTRAINT [FK_StaffSectionAssociationExtension_StaffSectionAssociation] FOREIGN KEY ([LocalCourseCode], [SchoolId], [SchoolYear], [SectionIdentifier], [SessionName], [StaffUSI])
REFERENCES [edfi].[StaffSectionAssociation] ([LocalCourseCode], [SchoolId], [SchoolYear], [SectionIdentifier], [SessionName], [StaffUSI])
ON DELETE CASCADE
ON UPDATE CASCADE
GO

ALTER TABLE [gadoe].[StaffServiceTypeDescriptor] WITH CHECK ADD CONSTRAINT [FK_StaffServiceTypeDescriptor_Descriptor] FOREIGN KEY ([StaffServiceTypeDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [gadoe].[StemSteamSchoolDescriptor] WITH CHECK ADD CONSTRAINT [FK_StemSteamSchoolDescriptor_Descriptor] FOREIGN KEY ([StemSteamSchoolDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [gadoe].[StudentEducationOrganizationAssociationExtension] WITH CHECK ADD CONSTRAINT [FK_StudentEducationOrganizationAssociationExtension_CountyOfResidenceDescriptor] FOREIGN KEY ([CountyOfResidenceDescriptorId])
REFERENCES [gadoe].[CountyOfResidenceDescriptor] ([CountyOfResidenceDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StudentEducationOrganizationAssociationExtension_CountyOfResidenceDescriptor]
ON [gadoe].[StudentEducationOrganizationAssociationExtension] ([CountyOfResidenceDescriptorId] ASC)
GO

ALTER TABLE [gadoe].[StudentEducationOrganizationAssociationExtension] WITH CHECK ADD CONSTRAINT [FK_StudentEducationOrganizationAssociationExtension_LanguageDescriptor] FOREIGN KEY ([Biliteracy1LanguageDescriptorId])
REFERENCES [edfi].[LanguageDescriptor] ([LanguageDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StudentEducationOrganizationAssociationExtension_LanguageDescriptor]
ON [gadoe].[StudentEducationOrganizationAssociationExtension] ([Biliteracy1LanguageDescriptorId] ASC)
GO

ALTER TABLE [gadoe].[StudentEducationOrganizationAssociationExtension] WITH CHECK ADD CONSTRAINT [FK_StudentEducationOrganizationAssociationExtension_LanguageDescriptor1] FOREIGN KEY ([Biliteracy2LanguageDescriptorId])
REFERENCES [edfi].[LanguageDescriptor] ([LanguageDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StudentEducationOrganizationAssociationExtension_LanguageDescriptor1]
ON [gadoe].[StudentEducationOrganizationAssociationExtension] ([Biliteracy2LanguageDescriptorId] ASC)
GO

ALTER TABLE [gadoe].[StudentEducationOrganizationAssociationExtension] WITH CHECK ADD CONSTRAINT [FK_StudentEducationOrganizationAssociationExtension_LanguageDescriptor2] FOREIGN KEY ([Biliteracy3LanguageDescriptorId])
REFERENCES [edfi].[LanguageDescriptor] ([LanguageDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StudentEducationOrganizationAssociationExtension_LanguageDescriptor2]
ON [gadoe].[StudentEducationOrganizationAssociationExtension] ([Biliteracy3LanguageDescriptorId] ASC)
GO

ALTER TABLE [gadoe].[StudentEducationOrganizationAssociationExtension] WITH CHECK ADD CONSTRAINT [FK_StudentEducationOrganizationAssociationExtension_LanguageDescriptor3] FOREIGN KEY ([ParentCommunicationLanguageDescriptorId])
REFERENCES [edfi].[LanguageDescriptor] ([LanguageDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StudentEducationOrganizationAssociationExtension_LanguageDescriptor3]
ON [gadoe].[StudentEducationOrganizationAssociationExtension] ([ParentCommunicationLanguageDescriptorId] ASC)
GO

ALTER TABLE [gadoe].[StudentEducationOrganizationAssociationExtension] WITH CHECK ADD CONSTRAINT [FK_StudentEducationOrganizationAssociationExtension_NonESOLStatusDescriptor] FOREIGN KEY ([NonESOLStatusDescriptorId])
REFERENCES [gadoe].[NonESOLStatusDescriptor] ([NonESOLStatusDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StudentEducationOrganizationAssociationExtension_NonESOLStatusDescriptor]
ON [gadoe].[StudentEducationOrganizationAssociationExtension] ([NonESOLStatusDescriptorId] ASC)
GO

ALTER TABLE [gadoe].[StudentEducationOrganizationAssociationExtension] WITH CHECK ADD CONSTRAINT [FK_StudentEducationOrganizationAssociationExtension_StudentEducationOrganizationAssociation] FOREIGN KEY ([EducationOrganizationId], [StudentUSI])
REFERENCES [edfi].[StudentEducationOrganizationAssociation] ([EducationOrganizationId], [StudentUSI])
ON DELETE CASCADE
GO

ALTER TABLE [gadoe].[StudentEducationOrganizationAssociationExtension] WITH CHECK ADD CONSTRAINT [FK_StudentEducationOrganizationAssociationExtension_SystemOfResidencyDescriptor] FOREIGN KEY ([SystemOfResidencyDescriptorId])
REFERENCES [gadoe].[SystemOfResidencyDescriptor] ([SystemOfResidencyDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StudentEducationOrganizationAssociationExtension_SystemOfResidencyDescriptor]
ON [gadoe].[StudentEducationOrganizationAssociationExtension] ([SystemOfResidencyDescriptorId] ASC)
GO

ALTER TABLE [gadoe].[StudentLanguageInstructionProgramAssociationExtension] WITH CHECK ADD CONSTRAINT [FK_StudentLanguageInstructionProgramAssociationExtension_StudentLanguageInstructionProgramAssociation] FOREIGN KEY ([BeginDate], [EducationOrganizationId], [ProgramEducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId], [StudentUSI])
REFERENCES [edfi].[StudentLanguageInstructionProgramAssociation] ([BeginDate], [EducationOrganizationId], [ProgramEducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId], [StudentUSI])
ON DELETE CASCADE
GO

ALTER TABLE [gadoe].[StudentProgramAssociationExtension] WITH CHECK ADD CONSTRAINT [FK_StudentProgramAssociationExtension_ProgramReferredByDescriptor] FOREIGN KEY ([ProgramReferredByDescriptorId])
REFERENCES [gadoe].[ProgramReferredByDescriptor] ([ProgramReferredByDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StudentProgramAssociationExtension_ProgramReferredByDescriptor]
ON [gadoe].[StudentProgramAssociationExtension] ([ProgramReferredByDescriptorId] ASC)
GO

ALTER TABLE [gadoe].[StudentProgramAssociationExtension] WITH CHECK ADD CONSTRAINT [FK_StudentProgramAssociationExtension_StudentProgramAssociation] FOREIGN KEY ([BeginDate], [EducationOrganizationId], [ProgramEducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId], [StudentUSI])
REFERENCES [edfi].[StudentProgramAssociation] ([BeginDate], [EducationOrganizationId], [ProgramEducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId], [StudentUSI])
ON DELETE CASCADE
GO

ALTER TABLE [gadoe].[StudentSchoolAssociationExtension] WITH CHECK ADD CONSTRAINT [FK_StudentSchoolAssociationExtension_ChildFindStatusDescriptor] FOREIGN KEY ([ChildFindStatusDescriptorId])
REFERENCES [gadoe].[ChildFindStatusDescriptor] ([ChildFindStatusDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StudentSchoolAssociationExtension_ChildFindStatusDescriptor]
ON [gadoe].[StudentSchoolAssociationExtension] ([ChildFindStatusDescriptorId] ASC)
GO

ALTER TABLE [gadoe].[StudentSchoolAssociationExtension] WITH CHECK ADD CONSTRAINT [FK_StudentSchoolAssociationExtension_GiftedServedDescriptor] FOREIGN KEY ([GiftedServedDescriptorId])
REFERENCES [gadoe].[GiftedServedDescriptor] ([GiftedServedDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StudentSchoolAssociationExtension_GiftedServedDescriptor]
ON [gadoe].[StudentSchoolAssociationExtension] ([GiftedServedDescriptorId] ASC)
GO

ALTER TABLE [gadoe].[StudentSchoolAssociationExtension] WITH CHECK ADD CONSTRAINT [FK_StudentSchoolAssociationExtension_StudentSchoolAssociation] FOREIGN KEY ([EntryDate], [SchoolId], [StudentUSI])
REFERENCES [edfi].[StudentSchoolAssociation] ([EntryDate], [SchoolId], [StudentUSI])
ON DELETE CASCADE
ON UPDATE CASCADE
GO

ALTER TABLE [gadoe].[StudentSchoolAssociationFteSegments] WITH CHECK ADD CONSTRAINT [FK_StudentSchoolAssociationFteSegments_EnrollmentLocationDescriptor] FOREIGN KEY ([EnrollmentLocationDescriptorId])
REFERENCES [gadoe].[EnrollmentLocationDescriptor] ([EnrollmentLocationDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StudentSchoolAssociationFteSegments_EnrollmentLocationDescriptor]
ON [gadoe].[StudentSchoolAssociationFteSegments] ([EnrollmentLocationDescriptorId] ASC)
GO

ALTER TABLE [gadoe].[StudentSchoolAssociationFteSegments] WITH CHECK ADD CONSTRAINT [FK_StudentSchoolAssociationFteSegments_FteProgramCodeDescriptor] FOREIGN KEY ([FteProgramCodeDescriptorId])
REFERENCES [gadoe].[FteProgramCodeDescriptor] ([FteProgramCodeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StudentSchoolAssociationFteSegments_FteProgramCodeDescriptor]
ON [gadoe].[StudentSchoolAssociationFteSegments] ([FteProgramCodeDescriptorId] ASC)
GO

ALTER TABLE [gadoe].[StudentSchoolAssociationFteSegments] WITH CHECK ADD CONSTRAINT [FK_StudentSchoolAssociationFteSegments_InclusionPersonnelDescriptor] FOREIGN KEY ([InclusionPersonnelDescriptorId])
REFERENCES [gadoe].[InclusionPersonnelDescriptor] ([InclusionPersonnelDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StudentSchoolAssociationFteSegments_InclusionPersonnelDescriptor]
ON [gadoe].[StudentSchoolAssociationFteSegments] ([InclusionPersonnelDescriptorId] ASC)
GO

ALTER TABLE [gadoe].[StudentSchoolAssociationFteSegments] WITH CHECK ADD CONSTRAINT [FK_StudentSchoolAssociationFteSegments_StudentSchoolAssociation] FOREIGN KEY ([EntryDate], [SchoolId], [StudentUSI])
REFERENCES [edfi].[StudentSchoolAssociation] ([EntryDate], [SchoolId], [StudentUSI])
ON DELETE CASCADE
ON UPDATE CASCADE
GO

CREATE NONCLUSTERED INDEX [FK_StudentSchoolAssociationFteSegments_StudentSchoolAssociation]
ON [gadoe].[StudentSchoolAssociationFteSegments] ([EntryDate] ASC, [SchoolId] ASC, [StudentUSI] ASC)
GO

ALTER TABLE [gadoe].[StudentSection504ProgramAssociation] WITH CHECK ADD CONSTRAINT [FK_StudentSection504ProgramAssociation_GeneralStudentProgramAssociation] FOREIGN KEY ([BeginDate], [EducationOrganizationId], [ProgramEducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId], [StudentUSI])
REFERENCES [edfi].[GeneralStudentProgramAssociation] ([BeginDate], [EducationOrganizationId], [ProgramEducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId], [StudentUSI])
ON DELETE CASCADE
GO

ALTER TABLE [gadoe].[StudentSection504ProgramAssociationSection504Plan] WITH CHECK ADD CONSTRAINT [FK_StudentSection504ProgramAssociationSection504Plan_Section504PlanDescriptor] FOREIGN KEY ([Section504PlanDescriptorId])
REFERENCES [gadoe].[Section504PlanDescriptor] ([Section504PlanDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StudentSection504ProgramAssociationSection504Plan_Section504PlanDescriptor]
ON [gadoe].[StudentSection504ProgramAssociationSection504Plan] ([Section504PlanDescriptorId] ASC)
GO

ALTER TABLE [gadoe].[StudentSection504ProgramAssociationSection504Plan] WITH CHECK ADD CONSTRAINT [FK_StudentSection504ProgramAssociationSection504Plan_StudentSection504ProgramAssociation] FOREIGN KEY ([BeginDate], [EducationOrganizationId], [ProgramEducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId], [StudentUSI])
REFERENCES [gadoe].[StudentSection504ProgramAssociation] ([BeginDate], [EducationOrganizationId], [ProgramEducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId], [StudentUSI])
ON DELETE CASCADE
GO

CREATE NONCLUSTERED INDEX [FK_StudentSection504ProgramAssociationSection504Plan_StudentSection504ProgramAssociation]
ON [gadoe].[StudentSection504ProgramAssociationSection504Plan] ([BeginDate] ASC, [EducationOrganizationId] ASC, [ProgramEducationOrganizationId] ASC, [ProgramName] ASC, [ProgramTypeDescriptorId] ASC, [StudentUSI] ASC)
GO

ALTER TABLE [gadoe].[StudentSectionAssociationAdditionalTeacher] WITH CHECK ADD CONSTRAINT [FK_StudentSectionAssociationAdditionalTeacher_Staff] FOREIGN KEY ([StaffUSI])
REFERENCES [edfi].[Staff] ([StaffUSI])
GO

CREATE NONCLUSTERED INDEX [FK_StudentSectionAssociationAdditionalTeacher_Staff]
ON [gadoe].[StudentSectionAssociationAdditionalTeacher] ([StaffUSI] ASC)
GO

ALTER TABLE [gadoe].[StudentSectionAssociationAdditionalTeacher] WITH CHECK ADD CONSTRAINT [FK_StudentSectionAssociationAdditionalTeacher_StaffServiceTypeDescriptor] FOREIGN KEY ([StaffServiceTypeDescriptorId])
REFERENCES [gadoe].[StaffServiceTypeDescriptor] ([StaffServiceTypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StudentSectionAssociationAdditionalTeacher_StaffServiceTypeDescriptor]
ON [gadoe].[StudentSectionAssociationAdditionalTeacher] ([StaffServiceTypeDescriptorId] ASC)
GO

ALTER TABLE [gadoe].[StudentSectionAssociationAdditionalTeacher] WITH CHECK ADD CONSTRAINT [FK_StudentSectionAssociationAdditionalTeacher_StudentSectionAssociation] FOREIGN KEY ([BeginDate], [LocalCourseCode], [SchoolId], [SchoolYear], [SectionIdentifier], [SessionName], [StudentUSI])
REFERENCES [edfi].[StudentSectionAssociation] ([BeginDate], [LocalCourseCode], [SchoolId], [SchoolYear], [SectionIdentifier], [SessionName], [StudentUSI])
ON DELETE CASCADE
ON UPDATE CASCADE
GO

CREATE NONCLUSTERED INDEX [FK_StudentSectionAssociationAdditionalTeacher_StudentSectionAssociation]
ON [gadoe].[StudentSectionAssociationAdditionalTeacher] ([BeginDate] ASC, [LocalCourseCode] ASC, [SchoolId] ASC, [SchoolYear] ASC, [SectionIdentifier] ASC, [SessionName] ASC, [StudentUSI] ASC)
GO

ALTER TABLE [gadoe].[StudentSectionAssociationExtension] WITH CHECK ADD CONSTRAINT [FK_StudentSectionAssociationExtension_EipDeliveryModelDescriptor] FOREIGN KEY ([EipDeliveryModelDescriptorId])
REFERENCES [gadoe].[EipDeliveryModelDescriptor] ([EipDeliveryModelDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StudentSectionAssociationExtension_EipDeliveryModelDescriptor]
ON [gadoe].[StudentSectionAssociationExtension] ([EipDeliveryModelDescriptorId] ASC)
GO

ALTER TABLE [gadoe].[StudentSectionAssociationExtension] WITH CHECK ADD CONSTRAINT [FK_StudentSectionAssociationExtension_EnrollmentLocationDescriptor] FOREIGN KEY ([EnrollmentLocationDescriptorId])
REFERENCES [gadoe].[EnrollmentLocationDescriptor] ([EnrollmentLocationDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StudentSectionAssociationExtension_EnrollmentLocationDescriptor]
ON [gadoe].[StudentSectionAssociationExtension] ([EnrollmentLocationDescriptorId] ASC)
GO

ALTER TABLE [gadoe].[StudentSectionAssociationExtension] WITH CHECK ADD CONSTRAINT [FK_StudentSectionAssociationExtension_EsolDeliveryModelDescriptor] FOREIGN KEY ([EsolDeliveryModelDescriptorId])
REFERENCES [gadoe].[EsolDeliveryModelDescriptor] ([EsolDeliveryModelDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StudentSectionAssociationExtension_EsolDeliveryModelDescriptor]
ON [gadoe].[StudentSectionAssociationExtension] ([EsolDeliveryModelDescriptorId] ASC)
GO

ALTER TABLE [gadoe].[StudentSectionAssociationExtension] WITH CHECK ADD CONSTRAINT [FK_StudentSectionAssociationExtension_FteProgramCodeDescriptor] FOREIGN KEY ([FteProgramCodeDescriptorId])
REFERENCES [gadoe].[FteProgramCodeDescriptor] ([FteProgramCodeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StudentSectionAssociationExtension_FteProgramCodeDescriptor]
ON [gadoe].[StudentSectionAssociationExtension] ([FteProgramCodeDescriptorId] ASC)
GO

ALTER TABLE [gadoe].[StudentSectionAssociationExtension] WITH CHECK ADD CONSTRAINT [FK_StudentSectionAssociationExtension_GiftedDeliveryModelDescriptor] FOREIGN KEY ([GiftedDeliveryModelDescriptorId])
REFERENCES [gadoe].[GiftedDeliveryModelDescriptor] ([GiftedDeliveryModelDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StudentSectionAssociationExtension_GiftedDeliveryModelDescriptor]
ON [gadoe].[StudentSectionAssociationExtension] ([GiftedDeliveryModelDescriptorId] ASC)
GO

ALTER TABLE [gadoe].[StudentSectionAssociationExtension] WITH CHECK ADD CONSTRAINT [FK_StudentSectionAssociationExtension_IepInclusionTypeDescriptor] FOREIGN KEY ([IepInclusionTypeDescriptorId])
REFERENCES [gadoe].[IepInclusionTypeDescriptor] ([IepInclusionTypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StudentSectionAssociationExtension_IepInclusionTypeDescriptor]
ON [gadoe].[StudentSectionAssociationExtension] ([IepInclusionTypeDescriptorId] ASC)
GO

ALTER TABLE [gadoe].[StudentSectionAssociationExtension] WITH CHECK ADD CONSTRAINT [FK_StudentSectionAssociationExtension_InclusionPersonnelDescriptor] FOREIGN KEY ([InclusionPersonnelDescriptorId])
REFERENCES [gadoe].[InclusionPersonnelDescriptor] ([InclusionPersonnelDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StudentSectionAssociationExtension_InclusionPersonnelDescriptor]
ON [gadoe].[StudentSectionAssociationExtension] ([InclusionPersonnelDescriptorId] ASC)
GO

ALTER TABLE [gadoe].[StudentSectionAssociationExtension] WITH CHECK ADD CONSTRAINT [FK_StudentSectionAssociationExtension_SpecialEducationDeliveryModelDescriptor] FOREIGN KEY ([SpecialEducationDeliveryModelDescriptorId])
REFERENCES [gadoe].[SpecialEducationDeliveryModelDescriptor] ([SpecialEducationDeliveryModelDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StudentSectionAssociationExtension_SpecialEducationDeliveryModelDescriptor]
ON [gadoe].[StudentSectionAssociationExtension] ([SpecialEducationDeliveryModelDescriptorId] ASC)
GO

ALTER TABLE [gadoe].[StudentSectionAssociationExtension] WITH CHECK ADD CONSTRAINT [FK_StudentSectionAssociationExtension_StudentSectionAssociation] FOREIGN KEY ([BeginDate], [LocalCourseCode], [SchoolId], [SchoolYear], [SectionIdentifier], [SessionName], [StudentUSI])
REFERENCES [edfi].[StudentSectionAssociation] ([BeginDate], [LocalCourseCode], [SchoolId], [SchoolYear], [SectionIdentifier], [SessionName], [StudentUSI])
ON DELETE CASCADE
ON UPDATE CASCADE
GO

ALTER TABLE [gadoe].[StudentSectionAssociationExtension] WITH CHECK ADD CONSTRAINT [FK_StudentSectionAssociationExtension_WorkBasedLearningProgramDescriptor] FOREIGN KEY ([WorkBasedLearningProgramDescriptorId])
REFERENCES [gadoe].[WorkBasedLearningProgramDescriptor] ([WorkBasedLearningProgramDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StudentSectionAssociationExtension_WorkBasedLearningProgramDescriptor]
ON [gadoe].[StudentSectionAssociationExtension] ([WorkBasedLearningProgramDescriptorId] ASC)
GO

ALTER TABLE [gadoe].[StudentSpecialEducationAssociationEvent] WITH CHECK ADD CONSTRAINT [FK_StudentSpecialEducationAssociationEvent_SpecialEducationEventReasonDescriptor] FOREIGN KEY ([SpecialEducationEventReasonDescriptorId])
REFERENCES [gadoe].[SpecialEducationEventReasonDescriptor] ([SpecialEducationEventReasonDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StudentSpecialEducationAssociationEvent_SpecialEducationEventReasonDescriptor]
ON [gadoe].[StudentSpecialEducationAssociationEvent] ([SpecialEducationEventReasonDescriptorId] ASC)
GO

ALTER TABLE [gadoe].[StudentSpecialEducationAssociationEvent] WITH CHECK ADD CONSTRAINT [FK_StudentSpecialEducationAssociationEvent_SpecialEducationEventTypeDescriptor] FOREIGN KEY ([SpecialEducationEventTypeDescriptorId])
REFERENCES [gadoe].[SpecialEducationEventTypeDescriptor] ([SpecialEducationEventTypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StudentSpecialEducationAssociationEvent_SpecialEducationEventTypeDescriptor]
ON [gadoe].[StudentSpecialEducationAssociationEvent] ([SpecialEducationEventTypeDescriptorId] ASC)
GO

ALTER TABLE [gadoe].[StudentSpecialEducationAssociationEvent] WITH CHECK ADD CONSTRAINT [FK_StudentSpecialEducationAssociationEvent_SpecialEducationNonComplianceDescriptor] FOREIGN KEY ([SpecialEducationNonComplianceDescriptorId])
REFERENCES [gadoe].[SpecialEducationNonComplianceDescriptor] ([SpecialEducationNonComplianceDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StudentSpecialEducationAssociationEvent_SpecialEducationNonComplianceDescriptor]
ON [gadoe].[StudentSpecialEducationAssociationEvent] ([SpecialEducationNonComplianceDescriptorId] ASC)
GO

ALTER TABLE [gadoe].[StudentSpecialEducationAssociationEvent] WITH CHECK ADD CONSTRAINT [FK_StudentSpecialEducationAssociationEvent_StudentSchoolAssociation] FOREIGN KEY ([EntryDate], [SchoolId], [StudentUSI])
REFERENCES [edfi].[StudentSchoolAssociation] ([EntryDate], [SchoolId], [StudentUSI])
ON UPDATE CASCADE
GO

CREATE NONCLUSTERED INDEX [FK_StudentSpecialEducationAssociationEvent_StudentSchoolAssociation]
ON [gadoe].[StudentSpecialEducationAssociationEvent] ([EntryDate] ASC, [SchoolId] ASC, [StudentUSI] ASC)
GO

ALTER TABLE [gadoe].[SystemOfResidencyDescriptor] WITH CHECK ADD CONSTRAINT [FK_SystemOfResidencyDescriptor_Descriptor] FOREIGN KEY ([SystemOfResidencyDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [gadoe].[WorkBasedLearningProgramDescriptor] WITH CHECK ADD CONSTRAINT [FK_WorkBasedLearningProgramDescriptor_Descriptor] FOREIGN KEY ([WorkBasedLearningProgramDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

