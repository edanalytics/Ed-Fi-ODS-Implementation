ALTER TABLE [sedm].[DurationPeriodDescriptor] WITH CHECK ADD CONSTRAINT [FK_DurationPeriodDescriptor_Descriptor] FOREIGN KEY ([DurationPeriodDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [sedm].[EventComplianceDescriptor] WITH CHECK ADD CONSTRAINT [FK_EventComplianceDescriptor_Descriptor] FOREIGN KEY ([EventComplianceDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [sedm].[EventReasonDescriptor] WITH CHECK ADD CONSTRAINT [FK_EventReasonDescriptor_Descriptor] FOREIGN KEY ([EventReasonDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [sedm].[FrequencyPeriodDescriptor] WITH CHECK ADD CONSTRAINT [FK_FrequencyPeriodDescriptor_Descriptor] FOREIGN KEY ([FrequencyPeriodDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [sedm].[IdeaEvent] WITH CHECK ADD CONSTRAINT [FK_IdeaEvent_EducationOrganization] FOREIGN KEY ([EducationOrganizationId])
REFERENCES [edfi].[EducationOrganization] ([EducationOrganizationId])
GO

ALTER TABLE [sedm].[IdeaEvent] WITH CHECK ADD CONSTRAINT [FK_IdeaEvent_EventComplianceDescriptor] FOREIGN KEY ([EventComplianceDescriptorId])
REFERENCES [sedm].[EventComplianceDescriptor] ([EventComplianceDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_IdeaEvent_EventComplianceDescriptor]
ON [sedm].[IdeaEvent] ([EventComplianceDescriptorId] ASC)
GO

ALTER TABLE [sedm].[IdeaEvent] WITH CHECK ADD CONSTRAINT [FK_IdeaEvent_EventReasonDescriptor] FOREIGN KEY ([EventReasonDescriptorId])
REFERENCES [sedm].[EventReasonDescriptor] ([EventReasonDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_IdeaEvent_EventReasonDescriptor]
ON [sedm].[IdeaEvent] ([EventReasonDescriptorId] ASC)
GO

ALTER TABLE [sedm].[IdeaEvent] WITH CHECK ADD CONSTRAINT [FK_IdeaEvent_IdeaEventDescriptor] FOREIGN KEY ([IdeaEventDescriptorId])
REFERENCES [sedm].[IdeaEventDescriptor] ([IdeaEventDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_IdeaEvent_IdeaEventDescriptor]
ON [sedm].[IdeaEvent] ([IdeaEventDescriptorId] ASC)
GO

ALTER TABLE [sedm].[IdeaEvent] WITH CHECK ADD CONSTRAINT [FK_IdeaEvent_Student] FOREIGN KEY ([StudentUSI])
REFERENCES [edfi].[Student] ([StudentUSI])
GO

ALTER TABLE [sedm].[IdeaEventDescriptor] WITH CHECK ADD CONSTRAINT [FK_IdeaEventDescriptor_Descriptor] FOREIGN KEY ([IdeaEventDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [sedm].[IepGoalDescriptor] WITH CHECK ADD CONSTRAINT [FK_IepGoalDescriptor_Descriptor] FOREIGN KEY ([IepGoalDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [sedm].[IepStatusDescriptor] WITH CHECK ADD CONSTRAINT [FK_IepStatusDescriptor_Descriptor] FOREIGN KEY ([IepStatusDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [sedm].[ServiceComplianceDescriptor] WITH CHECK ADD CONSTRAINT [FK_ServiceComplianceDescriptor_Descriptor] FOREIGN KEY ([ServiceComplianceDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [sedm].[ServiceDeliveryDescriptor] WITH CHECK ADD CONSTRAINT [FK_ServiceDeliveryDescriptor_Descriptor] FOREIGN KEY ([ServiceDeliveryDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [sedm].[ServiceLocationTypeDescriptor] WITH CHECK ADD CONSTRAINT [FK_ServiceLocationTypeDescriptor_Descriptor] FOREIGN KEY ([ServiceLocationTypeDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [sedm].[ServicePrescriptionDescriptor] WITH CHECK ADD CONSTRAINT [FK_ServicePrescriptionDescriptor_Descriptor] FOREIGN KEY ([ServicePrescriptionDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [sedm].[ServiceProviderTypeDescriptor] WITH CHECK ADD CONSTRAINT [FK_ServiceProviderTypeDescriptor_Descriptor] FOREIGN KEY ([ServiceProviderTypeDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [sedm].[ServiceReasonDescriptor] WITH CHECK ADD CONSTRAINT [FK_ServiceReasonDescriptor_Descriptor] FOREIGN KEY ([ServiceReasonDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [sedm].[StudentIEP] WITH CHECK ADD CONSTRAINT [FK_StudentIEP_EducationOrganization] FOREIGN KEY ([EducationOrganizationId])
REFERENCES [edfi].[EducationOrganization] ([EducationOrganizationId])
GO

ALTER TABLE [sedm].[StudentIEP] WITH CHECK ADD CONSTRAINT [FK_StudentIEP_IepStatusDescriptor] FOREIGN KEY ([IepStatusDescriptorId])
REFERENCES [sedm].[IepStatusDescriptor] ([IepStatusDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StudentIEP_IepStatusDescriptor]
ON [sedm].[StudentIEP] ([IepStatusDescriptorId] ASC)
GO

ALTER TABLE [sedm].[StudentIEP] WITH CHECK ADD CONSTRAINT [FK_StudentIEP_ReasonExitedDescriptor] FOREIGN KEY ([ReasonExitedDescriptorId])
REFERENCES [edfi].[ReasonExitedDescriptor] ([ReasonExitedDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StudentIEP_ReasonExitedDescriptor]
ON [sedm].[StudentIEP] ([ReasonExitedDescriptorId] ASC)
GO

ALTER TABLE [sedm].[StudentIEP] WITH CHECK ADD CONSTRAINT [FK_StudentIEP_SpecialEducationSettingDescriptor] FOREIGN KEY ([SpecialEducationSettingDescriptorId])
REFERENCES [edfi].[SpecialEducationSettingDescriptor] ([SpecialEducationSettingDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StudentIEP_SpecialEducationSettingDescriptor]
ON [sedm].[StudentIEP] ([SpecialEducationSettingDescriptorId] ASC)
GO

ALTER TABLE [sedm].[StudentIEP] WITH CHECK ADD CONSTRAINT [FK_StudentIEP_Student] FOREIGN KEY ([StudentUSI])
REFERENCES [edfi].[Student] ([StudentUSI])
GO

ALTER TABLE [sedm].[StudentIEPAccommodationCollection] WITH CHECK ADD CONSTRAINT [FK_StudentIEPAccommodationCollection_StudentIEP] FOREIGN KEY ([EducationOrganizationId], [IEPFinalizedDate], [StudentIEPAssociationID], [StudentUSI])
REFERENCES [sedm].[StudentIEP] ([EducationOrganizationId], [IEPFinalizedDate], [StudentIEPAssociationID], [StudentUSI])
GO

ALTER TABLE [sedm].[StudentIEPAccommodationCollectionAccommodation] WITH CHECK ADD CONSTRAINT [FK_StudentIEPAccommodationCollectionAccommodation_AccommodationDescriptor] FOREIGN KEY ([AccommodationDescriptorId])
REFERENCES [edfi].[AccommodationDescriptor] ([AccommodationDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StudentIEPAccommodationCollectionAccommodation_AccommodationDescriptor]
ON [sedm].[StudentIEPAccommodationCollectionAccommodation] ([AccommodationDescriptorId] ASC)
GO

ALTER TABLE [sedm].[StudentIEPAccommodationCollectionAccommodation] WITH CHECK ADD CONSTRAINT [FK_StudentIEPAccommodationCollectionAccommodation_StudentIEPAccommodationCollection] FOREIGN KEY ([EducationOrganizationId], [IEPFinalizedDate], [StudentIEPAssociationID], [StudentUSI])
REFERENCES [sedm].[StudentIEPAccommodationCollection] ([EducationOrganizationId], [IEPFinalizedDate], [StudentIEPAssociationID], [StudentUSI])
ON DELETE CASCADE
GO

ALTER TABLE [sedm].[StudentIEPDisabilityCollection] WITH CHECK ADD CONSTRAINT [FK_StudentIEPDisabilityCollection_StudentIEP] FOREIGN KEY ([EducationOrganizationId], [IEPFinalizedDate], [StudentIEPAssociationID], [StudentUSI])
REFERENCES [sedm].[StudentIEP] ([EducationOrganizationId], [IEPFinalizedDate], [StudentIEPAssociationID], [StudentUSI])
GO

ALTER TABLE [sedm].[StudentIEPDisabilityCollectionDisability] WITH CHECK ADD CONSTRAINT [FK_StudentIEPDisabilityCollectionDisability_DisabilityDescriptor] FOREIGN KEY ([DisabilityDescriptorId])
REFERENCES [edfi].[DisabilityDescriptor] ([DisabilityDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StudentIEPDisabilityCollectionDisability_DisabilityDescriptor]
ON [sedm].[StudentIEPDisabilityCollectionDisability] ([DisabilityDescriptorId] ASC)
GO

ALTER TABLE [sedm].[StudentIEPDisabilityCollectionDisability] WITH CHECK ADD CONSTRAINT [FK_StudentIEPDisabilityCollectionDisability_DisabilityDeterminationSourceTypeDescriptor] FOREIGN KEY ([DisabilityDeterminationSourceTypeDescriptorId])
REFERENCES [edfi].[DisabilityDeterminationSourceTypeDescriptor] ([DisabilityDeterminationSourceTypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StudentIEPDisabilityCollectionDisability_DisabilityDeterminationSourceTypeDescriptor]
ON [sedm].[StudentIEPDisabilityCollectionDisability] ([DisabilityDeterminationSourceTypeDescriptorId] ASC)
GO

ALTER TABLE [sedm].[StudentIEPDisabilityCollectionDisability] WITH CHECK ADD CONSTRAINT [FK_StudentIEPDisabilityCollectionDisability_StudentIEPDisabilityCollection] FOREIGN KEY ([EducationOrganizationId], [IEPFinalizedDate], [StudentIEPAssociationID], [StudentUSI])
REFERENCES [sedm].[StudentIEPDisabilityCollection] ([EducationOrganizationId], [IEPFinalizedDate], [StudentIEPAssociationID], [StudentUSI])
ON DELETE CASCADE
GO

ALTER TABLE [sedm].[StudentIEPDisabilityCollectionDisabilityDesignation] WITH CHECK ADD CONSTRAINT [FK_StudentIEPDisabilityCollectionDisabilityDesignation_DisabilityDesignationDescriptor] FOREIGN KEY ([DisabilityDesignationDescriptorId])
REFERENCES [edfi].[DisabilityDesignationDescriptor] ([DisabilityDesignationDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StudentIEPDisabilityCollectionDisabilityDesignation_DisabilityDesignationDescriptor]
ON [sedm].[StudentIEPDisabilityCollectionDisabilityDesignation] ([DisabilityDesignationDescriptorId] ASC)
GO

ALTER TABLE [sedm].[StudentIEPDisabilityCollectionDisabilityDesignation] WITH CHECK ADD CONSTRAINT [FK_StudentIEPDisabilityCollectionDisabilityDesignation_StudentIEPDisabilityCollectionDisability] FOREIGN KEY ([EducationOrganizationId], [IEPFinalizedDate], [StudentIEPAssociationID], [StudentUSI], [DisabilityDescriptorId])
REFERENCES [sedm].[StudentIEPDisabilityCollectionDisability] ([EducationOrganizationId], [IEPFinalizedDate], [StudentIEPAssociationID], [StudentUSI], [DisabilityDescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [sedm].[StudentIEPGoal] WITH CHECK ADD CONSTRAINT [FK_StudentIEPGoal_IepGoalDescriptor] FOREIGN KEY ([IepGoalDescriptorId])
REFERENCES [sedm].[IepGoalDescriptor] ([IepGoalDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StudentIEPGoal_IepGoalDescriptor]
ON [sedm].[StudentIEPGoal] ([IepGoalDescriptorId] ASC)
GO

ALTER TABLE [sedm].[StudentIEPGoal] WITH CHECK ADD CONSTRAINT [FK_StudentIEPGoal_StudentIEP] FOREIGN KEY ([EducationOrganizationId], [IEPFinalizedDate], [StudentIEPAssociationID], [StudentUSI])
REFERENCES [sedm].[StudentIEP] ([EducationOrganizationId], [IEPFinalizedDate], [StudentIEPAssociationID], [StudentUSI])
GO

CREATE NONCLUSTERED INDEX [FK_StudentIEPGoal_StudentIEP]
ON [sedm].[StudentIEPGoal] ([EducationOrganizationId] ASC, [IEPFinalizedDate] ASC, [StudentIEPAssociationID] ASC, [StudentUSI] ASC)
GO

ALTER TABLE [sedm].[StudentIEPGoalIdeaEvent] WITH CHECK ADD CONSTRAINT [FK_StudentIEPGoalIdeaEvent_IdeaEvent] FOREIGN KEY ([EducationOrganizationId], [IdeaEventDescriptorId], [IDEAEventID], [StudentUSI])
REFERENCES [sedm].[IdeaEvent] ([EducationOrganizationId], [IdeaEventDescriptorId], [IDEAEventID], [StudentUSI])
GO

CREATE NONCLUSTERED INDEX [FK_StudentIEPGoalIdeaEvent_IdeaEvent]
ON [sedm].[StudentIEPGoalIdeaEvent] ([EducationOrganizationId] ASC, [IdeaEventDescriptorId] ASC, [IDEAEventID] ASC, [StudentUSI] ASC)
GO

ALTER TABLE [sedm].[StudentIEPGoalIdeaEvent] WITH CHECK ADD CONSTRAINT [FK_StudentIEPGoalIdeaEvent_StudentIEPGoal] FOREIGN KEY ([EducationOrganizationId], [IEPFinalizedDate], [IEPGoalID], [StudentIEPAssociationID], [StudentUSI])
REFERENCES [sedm].[StudentIEPGoal] ([EducationOrganizationId], [IEPFinalizedDate], [IEPGoalID], [StudentIEPAssociationID], [StudentUSI])
ON DELETE CASCADE
GO

ALTER TABLE [sedm].[StudentIEPIdeaEvent] WITH CHECK ADD CONSTRAINT [FK_StudentIEPIdeaEvent_IdeaEvent] FOREIGN KEY ([EducationOrganizationId], [IdeaEventDescriptorId], [IDEAEventID], [StudentUSI])
REFERENCES [sedm].[IdeaEvent] ([EducationOrganizationId], [IdeaEventDescriptorId], [IDEAEventID], [StudentUSI])
GO

CREATE NONCLUSTERED INDEX [FK_StudentIEPIdeaEvent_IdeaEvent]
ON [sedm].[StudentIEPIdeaEvent] ([EducationOrganizationId] ASC, [IdeaEventDescriptorId] ASC, [IDEAEventID] ASC, [StudentUSI] ASC)
GO

ALTER TABLE [sedm].[StudentIEPIdeaEvent] WITH CHECK ADD CONSTRAINT [FK_StudentIEPIdeaEvent_StudentIEP] FOREIGN KEY ([EducationOrganizationId], [IEPFinalizedDate], [StudentIEPAssociationID], [StudentUSI])
REFERENCES [sedm].[StudentIEP] ([EducationOrganizationId], [IEPFinalizedDate], [StudentIEPAssociationID], [StudentUSI])
ON DELETE CASCADE
GO

ALTER TABLE [sedm].[StudentIEPServiceDelivery] WITH CHECK ADD CONSTRAINT [FK_StudentIEPServiceDelivery_ServiceDeliveryDescriptor] FOREIGN KEY ([ServiceDeliveryDescriptorId])
REFERENCES [sedm].[ServiceDeliveryDescriptor] ([ServiceDeliveryDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StudentIEPServiceDelivery_ServiceDeliveryDescriptor]
ON [sedm].[StudentIEPServiceDelivery] ([ServiceDeliveryDescriptorId] ASC)
GO

ALTER TABLE [sedm].[StudentIEPServiceDelivery] WITH CHECK ADD CONSTRAINT [FK_StudentIEPServiceDelivery_ServiceProviderTypeDescriptor] FOREIGN KEY ([ServiceProviderTypeDescriptorId])
REFERENCES [sedm].[ServiceProviderTypeDescriptor] ([ServiceProviderTypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StudentIEPServiceDelivery_ServiceProviderTypeDescriptor]
ON [sedm].[StudentIEPServiceDelivery] ([ServiceProviderTypeDescriptorId] ASC)
GO

ALTER TABLE [sedm].[StudentIEPServiceDelivery] WITH CHECK ADD CONSTRAINT [FK_StudentIEPServiceDelivery_StudentIEP] FOREIGN KEY ([EducationOrganizationId], [IEPFinalizedDate], [StudentIEPAssociationID], [StudentUSI])
REFERENCES [sedm].[StudentIEP] ([EducationOrganizationId], [IEPFinalizedDate], [StudentIEPAssociationID], [StudentUSI])
GO

CREATE NONCLUSTERED INDEX [FK_StudentIEPServiceDelivery_StudentIEP]
ON [sedm].[StudentIEPServiceDelivery] ([EducationOrganizationId] ASC, [IEPFinalizedDate] ASC, [StudentIEPAssociationID] ASC, [StudentUSI] ASC)
GO

ALTER TABLE [sedm].[StudentIEPServiceDelivery] WITH CHECK ADD CONSTRAINT [FK_StudentIEPServiceDelivery_StudentIEPServicePrescription] FOREIGN KEY ([EducationOrganizationId], [IEPFinalizedDate], [ServicePrescriptionDate], [ServicePrescriptionDescriptorId], [StudentIEPAssociationID], [StudentUSI])
REFERENCES [sedm].[StudentIEPServicePrescription] ([EducationOrganizationId], [IEPFinalizedDate], [ServicePrescriptionDate], [ServicePrescriptionDescriptorId], [StudentIEPAssociationID], [StudentUSI])
GO

CREATE NONCLUSTERED INDEX [FK_StudentIEPServiceDelivery_StudentIEPServicePrescription]
ON [sedm].[StudentIEPServiceDelivery] ([EducationOrganizationId] ASC, [IEPFinalizedDate] ASC, [ServicePrescriptionDate] ASC, [ServicePrescriptionDescriptorId] ASC, [StudentIEPAssociationID] ASC, [StudentUSI] ASC)
GO

ALTER TABLE [sedm].[StudentIEPServiceDeliveryExternalServiceProvider] WITH CHECK ADD CONSTRAINT [FK_StudentIEPServiceDeliveryExternalServiceProvider_StudentIEPServiceDelivery] FOREIGN KEY ([EducationOrganizationId], [IEPFinalizedDate], [IEPServiceDeliveryID], [ServiceDeliveryDate], [ServiceDeliveryDescriptorId], [StudentIEPAssociationID], [StudentUSI])
REFERENCES [sedm].[StudentIEPServiceDelivery] ([EducationOrganizationId], [IEPFinalizedDate], [IEPServiceDeliveryID], [ServiceDeliveryDate], [ServiceDeliveryDescriptorId], [StudentIEPAssociationID], [StudentUSI])
ON DELETE CASCADE
GO

ALTER TABLE [sedm].[StudentIEPServiceDeliveryIdeaEvent] WITH CHECK ADD CONSTRAINT [FK_StudentIEPServiceDeliveryIdeaEvent_IdeaEvent] FOREIGN KEY ([EducationOrganizationId], [IdeaEventDescriptorId], [IDEAEventID], [StudentUSI])
REFERENCES [sedm].[IdeaEvent] ([EducationOrganizationId], [IdeaEventDescriptorId], [IDEAEventID], [StudentUSI])
GO

CREATE NONCLUSTERED INDEX [FK_StudentIEPServiceDeliveryIdeaEvent_IdeaEvent]
ON [sedm].[StudentIEPServiceDeliveryIdeaEvent] ([EducationOrganizationId] ASC, [IdeaEventDescriptorId] ASC, [IDEAEventID] ASC, [StudentUSI] ASC)
GO

ALTER TABLE [sedm].[StudentIEPServiceDeliveryIdeaEvent] WITH CHECK ADD CONSTRAINT [FK_StudentIEPServiceDeliveryIdeaEvent_StudentIEPServiceDelivery] FOREIGN KEY ([EducationOrganizationId], [IEPFinalizedDate], [IEPServiceDeliveryID], [ServiceDeliveryDate], [ServiceDeliveryDescriptorId], [StudentIEPAssociationID], [StudentUSI])
REFERENCES [sedm].[StudentIEPServiceDelivery] ([EducationOrganizationId], [IEPFinalizedDate], [IEPServiceDeliveryID], [ServiceDeliveryDate], [ServiceDeliveryDescriptorId], [StudentIEPAssociationID], [StudentUSI])
ON DELETE CASCADE
GO

ALTER TABLE [sedm].[StudentIEPServiceDeliveryServiceProvider] WITH CHECK ADD CONSTRAINT [FK_StudentIEPServiceDeliveryServiceProvider_Staff] FOREIGN KEY ([StaffUSI])
REFERENCES [edfi].[Staff] ([StaffUSI])
GO

CREATE NONCLUSTERED INDEX [FK_StudentIEPServiceDeliveryServiceProvider_Staff]
ON [sedm].[StudentIEPServiceDeliveryServiceProvider] ([StaffUSI] ASC)
GO

ALTER TABLE [sedm].[StudentIEPServiceDeliveryServiceProvider] WITH CHECK ADD CONSTRAINT [FK_StudentIEPServiceDeliveryServiceProvider_StudentIEPServiceDelivery] FOREIGN KEY ([EducationOrganizationId], [IEPFinalizedDate], [IEPServiceDeliveryID], [ServiceDeliveryDate], [ServiceDeliveryDescriptorId], [StudentIEPAssociationID], [StudentUSI])
REFERENCES [sedm].[StudentIEPServiceDelivery] ([EducationOrganizationId], [IEPFinalizedDate], [IEPServiceDeliveryID], [ServiceDeliveryDate], [ServiceDeliveryDescriptorId], [StudentIEPAssociationID], [StudentUSI])
ON DELETE CASCADE
GO

ALTER TABLE [sedm].[StudentIEPServicePrescription] WITH CHECK ADD CONSTRAINT [FK_StudentIEPServicePrescription_DurationPeriodDescriptor] FOREIGN KEY ([DurationPeriodDescriptorId])
REFERENCES [sedm].[DurationPeriodDescriptor] ([DurationPeriodDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StudentIEPServicePrescription_DurationPeriodDescriptor]
ON [sedm].[StudentIEPServicePrescription] ([DurationPeriodDescriptorId] ASC)
GO

ALTER TABLE [sedm].[StudentIEPServicePrescription] WITH CHECK ADD CONSTRAINT [FK_StudentIEPServicePrescription_FrequencyPeriodDescriptor] FOREIGN KEY ([FrequencyPeriodDescriptorId])
REFERENCES [sedm].[FrequencyPeriodDescriptor] ([FrequencyPeriodDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StudentIEPServicePrescription_FrequencyPeriodDescriptor]
ON [sedm].[StudentIEPServicePrescription] ([FrequencyPeriodDescriptorId] ASC)
GO

ALTER TABLE [sedm].[StudentIEPServicePrescription] WITH CHECK ADD CONSTRAINT [FK_StudentIEPServicePrescription_ServiceLocationTypeDescriptor] FOREIGN KEY ([ServiceLocationTypeDescriptorId])
REFERENCES [sedm].[ServiceLocationTypeDescriptor] ([ServiceLocationTypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StudentIEPServicePrescription_ServiceLocationTypeDescriptor]
ON [sedm].[StudentIEPServicePrescription] ([ServiceLocationTypeDescriptorId] ASC)
GO

ALTER TABLE [sedm].[StudentIEPServicePrescription] WITH CHECK ADD CONSTRAINT [FK_StudentIEPServicePrescription_ServicePrescriptionDescriptor] FOREIGN KEY ([ServicePrescriptionDescriptorId])
REFERENCES [sedm].[ServicePrescriptionDescriptor] ([ServicePrescriptionDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StudentIEPServicePrescription_ServicePrescriptionDescriptor]
ON [sedm].[StudentIEPServicePrescription] ([ServicePrescriptionDescriptorId] ASC)
GO

ALTER TABLE [sedm].[StudentIEPServicePrescription] WITH CHECK ADD CONSTRAINT [FK_StudentIEPServicePrescription_StudentIEP] FOREIGN KEY ([EducationOrganizationId], [IEPFinalizedDate], [StudentIEPAssociationID], [StudentUSI])
REFERENCES [sedm].[StudentIEP] ([EducationOrganizationId], [IEPFinalizedDate], [StudentIEPAssociationID], [StudentUSI])
GO

CREATE NONCLUSTERED INDEX [FK_StudentIEPServicePrescription_StudentIEP]
ON [sedm].[StudentIEPServicePrescription] ([EducationOrganizationId] ASC, [IEPFinalizedDate] ASC, [StudentIEPAssociationID] ASC, [StudentUSI] ASC)
GO

ALTER TABLE [sedm].[StudentIEPServicePrescriptionIdeaEvent] WITH CHECK ADD CONSTRAINT [FK_StudentIEPServicePrescriptionIdeaEvent_IdeaEvent] FOREIGN KEY ([EducationOrganizationId], [IdeaEventDescriptorId], [IDEAEventID], [StudentUSI])
REFERENCES [sedm].[IdeaEvent] ([EducationOrganizationId], [IdeaEventDescriptorId], [IDEAEventID], [StudentUSI])
GO

CREATE NONCLUSTERED INDEX [FK_StudentIEPServicePrescriptionIdeaEvent_IdeaEvent]
ON [sedm].[StudentIEPServicePrescriptionIdeaEvent] ([EducationOrganizationId] ASC, [IdeaEventDescriptorId] ASC, [IDEAEventID] ASC, [StudentUSI] ASC)
GO

ALTER TABLE [sedm].[StudentIEPServicePrescriptionIdeaEvent] WITH CHECK ADD CONSTRAINT [FK_StudentIEPServicePrescriptionIdeaEvent_StudentIEPServicePrescription] FOREIGN KEY ([EducationOrganizationId], [IEPFinalizedDate], [ServicePrescriptionDate], [ServicePrescriptionDescriptorId], [StudentIEPAssociationID], [StudentUSI])
REFERENCES [sedm].[StudentIEPServicePrescription] ([EducationOrganizationId], [IEPFinalizedDate], [ServicePrescriptionDate], [ServicePrescriptionDescriptorId], [StudentIEPAssociationID], [StudentUSI])
ON DELETE CASCADE
GO

ALTER TABLE [sedm].[StudentIEPServicePrescriptionStaff] WITH CHECK ADD CONSTRAINT [FK_StudentIEPServicePrescriptionStaff_Staff] FOREIGN KEY ([StaffUSI])
REFERENCES [edfi].[Staff] ([StaffUSI])
GO

CREATE NONCLUSTERED INDEX [FK_StudentIEPServicePrescriptionStaff_Staff]
ON [sedm].[StudentIEPServicePrescriptionStaff] ([StaffUSI] ASC)
GO

ALTER TABLE [sedm].[StudentIEPServicePrescriptionStaff] WITH CHECK ADD CONSTRAINT [FK_StudentIEPServicePrescriptionStaff_StudentIEPServicePrescription] FOREIGN KEY ([EducationOrganizationId], [IEPFinalizedDate], [ServicePrescriptionDate], [ServicePrescriptionDescriptorId], [StudentIEPAssociationID], [StudentUSI])
REFERENCES [sedm].[StudentIEPServicePrescription] ([EducationOrganizationId], [IEPFinalizedDate], [ServicePrescriptionDate], [ServicePrescriptionDescriptorId], [StudentIEPAssociationID], [StudentUSI])
ON DELETE CASCADE
GO

