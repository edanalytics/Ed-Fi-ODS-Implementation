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

ALTER TABLE [sedm].[IDEAEvent] WITH CHECK ADD CONSTRAINT [FK_IDEAEvent_EducationOrganization] FOREIGN KEY ([EducationOrganizationId])
REFERENCES [edfi].[EducationOrganization] ([EducationOrganizationId])
GO

ALTER TABLE [sedm].[IDEAEvent] WITH CHECK ADD CONSTRAINT [FK_IDEAEvent_EventComplianceDescriptor] FOREIGN KEY ([EventComplianceDescriptorId])
REFERENCES [sedm].[EventComplianceDescriptor] ([EventComplianceDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_IDEAEvent_EventComplianceDescriptor]
ON [sedm].[IDEAEvent] ([EventComplianceDescriptorId] ASC)
GO

ALTER TABLE [sedm].[IDEAEvent] WITH CHECK ADD CONSTRAINT [FK_IDEAEvent_EventReasonDescriptor] FOREIGN KEY ([EventReasonDescriptorId])
REFERENCES [sedm].[EventReasonDescriptor] ([EventReasonDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_IDEAEvent_EventReasonDescriptor]
ON [sedm].[IDEAEvent] ([EventReasonDescriptorId] ASC)
GO

ALTER TABLE [sedm].[IDEAEvent] WITH CHECK ADD CONSTRAINT [FK_IDEAEvent_IDEAEventDescriptor] FOREIGN KEY ([IDEAEventDescriptorId])
REFERENCES [sedm].[IDEAEventDescriptor] ([IDEAEventDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_IDEAEvent_IDEAEventDescriptor]
ON [sedm].[IDEAEvent] ([IDEAEventDescriptorId] ASC)
GO

ALTER TABLE [sedm].[IDEAEvent] WITH CHECK ADD CONSTRAINT [FK_IDEAEvent_Student] FOREIGN KEY ([StudentUSI])
REFERENCES [edfi].[Student] ([StudentUSI])
GO

ALTER TABLE [sedm].[IDEAEventDescriptor] WITH CHECK ADD CONSTRAINT [FK_IDEAEventDescriptor_Descriptor] FOREIGN KEY ([IDEAEventDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [sedm].[IEPGoalDescriptor] WITH CHECK ADD CONSTRAINT [FK_IEPGoalDescriptor_Descriptor] FOREIGN KEY ([IEPGoalDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [sedm].[IEPStatusDescriptor] WITH CHECK ADD CONSTRAINT [FK_IEPStatusDescriptor_Descriptor] FOREIGN KEY ([IEPStatusDescriptorId])
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

ALTER TABLE [sedm].[StudentIEP] WITH CHECK ADD CONSTRAINT [FK_StudentIEP_IEPStatusDescriptor] FOREIGN KEY ([IEPStatusDescriptorId])
REFERENCES [sedm].[IEPStatusDescriptor] ([IEPStatusDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StudentIEP_IEPStatusDescriptor]
ON [sedm].[StudentIEP] ([IEPStatusDescriptorId] ASC)
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

ALTER TABLE [sedm].[StudentIEPAccommodationCollection] WITH CHECK ADD CONSTRAINT [FK_StudentIEPAccommodationCollection_EducationOrganization] FOREIGN KEY ([EducationOrganizationId])
REFERENCES [edfi].[EducationOrganization] ([EducationOrganizationId])
GO

ALTER TABLE [sedm].[StudentIEPAccommodationCollection] WITH CHECK ADD CONSTRAINT [FK_StudentIEPAccommodationCollection_Student] FOREIGN KEY ([StudentUSI])
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

ALTER TABLE [sedm].[StudentIEPDisabilityCollection] WITH CHECK ADD CONSTRAINT [FK_StudentIEPDisabilityCollection_EducationOrganization] FOREIGN KEY ([EducationOrganizationId])
REFERENCES [edfi].[EducationOrganization] ([EducationOrganizationId])
GO

ALTER TABLE [sedm].[StudentIEPDisabilityCollection] WITH CHECK ADD CONSTRAINT [FK_StudentIEPDisabilityCollection_Student] FOREIGN KEY ([StudentUSI])
REFERENCES [edfi].[Student] ([StudentUSI])
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

ALTER TABLE [sedm].[StudentIEPGoal] WITH CHECK ADD CONSTRAINT [FK_StudentIEPGoal_EducationOrganization] FOREIGN KEY ([EducationOrganizationId])
REFERENCES [edfi].[EducationOrganization] ([EducationOrganizationId])
GO

ALTER TABLE [sedm].[StudentIEPGoal] WITH CHECK ADD CONSTRAINT [FK_StudentIEPGoal_IEPGoalDescriptor] FOREIGN KEY ([IEPGoalDescriptorId])
REFERENCES [sedm].[IEPGoalDescriptor] ([IEPGoalDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StudentIEPGoal_IEPGoalDescriptor]
ON [sedm].[StudentIEPGoal] ([IEPGoalDescriptorId] ASC)
GO

ALTER TABLE [sedm].[StudentIEPGoal] WITH CHECK ADD CONSTRAINT [FK_StudentIEPGoal_Student] FOREIGN KEY ([StudentUSI])
REFERENCES [edfi].[Student] ([StudentUSI])
GO

ALTER TABLE [sedm].[StudentIEPGoal] WITH CHECK ADD CONSTRAINT [FK_StudentIEPGoal_StudentIEP] FOREIGN KEY ([EducationOrganizationId], [IEPFinalizedDate], [StudentIEPAssociationID], [StudentUSI])
REFERENCES [sedm].[StudentIEP] ([EducationOrganizationId], [IEPFinalizedDate], [StudentIEPAssociationID], [StudentUSI])
GO

CREATE NONCLUSTERED INDEX [FK_StudentIEPGoal_StudentIEP]
ON [sedm].[StudentIEPGoal] ([EducationOrganizationId] ASC, [IEPFinalizedDate] ASC, [StudentIEPAssociationID] ASC, [StudentUSI] ASC)
GO

ALTER TABLE [sedm].[StudentIEPGoalIDEAEvent] WITH CHECK ADD CONSTRAINT [FK_StudentIEPGoalIDEAEvent_IDEAEvent] FOREIGN KEY ([EducationOrganizationId], [IDEAEventDescriptorId], [IDEAEventID], [StudentUSI])
REFERENCES [sedm].[IDEAEvent] ([EducationOrganizationId], [IDEAEventDescriptorId], [IDEAEventID], [StudentUSI])
GO

CREATE NONCLUSTERED INDEX [FK_StudentIEPGoalIDEAEvent_IDEAEvent]
ON [sedm].[StudentIEPGoalIDEAEvent] ([EducationOrganizationId] ASC, [IDEAEventDescriptorId] ASC, [IDEAEventID] ASC, [StudentUSI] ASC)
GO

ALTER TABLE [sedm].[StudentIEPGoalIDEAEvent] WITH CHECK ADD CONSTRAINT [FK_StudentIEPGoalIDEAEvent_StudentIEPGoal] FOREIGN KEY ([EducationOrganizationId], [IEPFinalizedDate], [IEPGoalID], [StudentIEPAssociationID], [StudentUSI])
REFERENCES [sedm].[StudentIEPGoal] ([EducationOrganizationId], [IEPFinalizedDate], [IEPGoalID], [StudentIEPAssociationID], [StudentUSI])
ON DELETE CASCADE
GO

ALTER TABLE [sedm].[StudentIEPIDEAEvent] WITH CHECK ADD CONSTRAINT [FK_StudentIEPIDEAEvent_IDEAEvent] FOREIGN KEY ([EducationOrganizationId], [IDEAEventDescriptorId], [IDEAEventID], [StudentUSI])
REFERENCES [sedm].[IDEAEvent] ([EducationOrganizationId], [IDEAEventDescriptorId], [IDEAEventID], [StudentUSI])
GO

CREATE NONCLUSTERED INDEX [FK_StudentIEPIDEAEvent_IDEAEvent]
ON [sedm].[StudentIEPIDEAEvent] ([EducationOrganizationId] ASC, [IDEAEventDescriptorId] ASC, [IDEAEventID] ASC, [StudentUSI] ASC)
GO

ALTER TABLE [sedm].[StudentIEPIDEAEvent] WITH CHECK ADD CONSTRAINT [FK_StudentIEPIDEAEvent_StudentIEP] FOREIGN KEY ([EducationOrganizationId], [IEPFinalizedDate], [StudentIEPAssociationID], [StudentUSI])
REFERENCES [sedm].[StudentIEP] ([EducationOrganizationId], [IEPFinalizedDate], [StudentIEPAssociationID], [StudentUSI])
ON DELETE CASCADE
GO

ALTER TABLE [sedm].[StudentIEPServiceDelivery] WITH CHECK ADD CONSTRAINT [FK_StudentIEPServiceDelivery_EducationOrganization] FOREIGN KEY ([EducationOrganizationId])
REFERENCES [edfi].[EducationOrganization] ([EducationOrganizationId])
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

ALTER TABLE [sedm].[StudentIEPServiceDelivery] WITH CHECK ADD CONSTRAINT [FK_StudentIEPServiceDelivery_Student] FOREIGN KEY ([StudentUSI])
REFERENCES [edfi].[Student] ([StudentUSI])
GO

ALTER TABLE [sedm].[StudentIEPServiceDelivery] WITH CHECK ADD CONSTRAINT [FK_StudentIEPServiceDelivery_StudentIEP] FOREIGN KEY ([EducationOrganizationId], [IEPFinalizedDate], [StudentIEPAssociationID], [StudentUSI])
REFERENCES [sedm].[StudentIEP] ([EducationOrganizationId], [IEPFinalizedDate], [StudentIEPAssociationID], [StudentUSI])
GO

CREATE NONCLUSTERED INDEX [FK_StudentIEPServiceDelivery_StudentIEP]
ON [sedm].[StudentIEPServiceDelivery] ([EducationOrganizationId] ASC, [IEPFinalizedDate] ASC, [StudentIEPAssociationID] ASC, [StudentUSI] ASC)
GO

ALTER TABLE [sedm].[StudentIEPServiceDelivery] WITH CHECK ADD CONSTRAINT [FK_StudentIEPServiceDelivery_StudentIEPServicePrescription] FOREIGN KEY ([EducationOrganizationId], [ServicePrescriptionDate], [ServicePrescriptionDescriptorId], [StudentUSI])
REFERENCES [sedm].[StudentIEPServicePrescription] ([EducationOrganizationId], [ServicePrescriptionDate], [ServicePrescriptionDescriptorId], [StudentUSI])
GO

CREATE NONCLUSTERED INDEX [FK_StudentIEPServiceDelivery_StudentIEPServicePrescription]
ON [sedm].[StudentIEPServiceDelivery] ([EducationOrganizationId] ASC, [ServicePrescriptionDate] ASC, [ServicePrescriptionDescriptorId] ASC, [StudentUSI] ASC)
GO

ALTER TABLE [sedm].[StudentIEPServiceDeliveryExternalServiceProvider] WITH CHECK ADD CONSTRAINT [FK_StudentIEPServiceDeliveryExternalServiceProvider_StudentIEPServiceDelivery] FOREIGN KEY ([EducationOrganizationId], [IEPServiceDeliveryID], [ServiceDeliveryDate], [ServiceDeliveryDescriptorId], [StudentUSI])
REFERENCES [sedm].[StudentIEPServiceDelivery] ([EducationOrganizationId], [IEPServiceDeliveryID], [ServiceDeliveryDate], [ServiceDeliveryDescriptorId], [StudentUSI])
ON DELETE CASCADE
GO

ALTER TABLE [sedm].[StudentIEPServiceDeliveryIDEAEvent] WITH CHECK ADD CONSTRAINT [FK_StudentIEPServiceDeliveryIDEAEvent_IDEAEvent] FOREIGN KEY ([EducationOrganizationId], [IDEAEventDescriptorId], [IDEAEventID], [StudentUSI])
REFERENCES [sedm].[IDEAEvent] ([EducationOrganizationId], [IDEAEventDescriptorId], [IDEAEventID], [StudentUSI])
GO

CREATE NONCLUSTERED INDEX [FK_StudentIEPServiceDeliveryIDEAEvent_IDEAEvent]
ON [sedm].[StudentIEPServiceDeliveryIDEAEvent] ([EducationOrganizationId] ASC, [IDEAEventDescriptorId] ASC, [IDEAEventID] ASC, [StudentUSI] ASC)
GO

ALTER TABLE [sedm].[StudentIEPServiceDeliveryIDEAEvent] WITH CHECK ADD CONSTRAINT [FK_StudentIEPServiceDeliveryIDEAEvent_StudentIEPServiceDelivery] FOREIGN KEY ([EducationOrganizationId], [IEPServiceDeliveryID], [ServiceDeliveryDate], [ServiceDeliveryDescriptorId], [StudentUSI])
REFERENCES [sedm].[StudentIEPServiceDelivery] ([EducationOrganizationId], [IEPServiceDeliveryID], [ServiceDeliveryDate], [ServiceDeliveryDescriptorId], [StudentUSI])
ON DELETE CASCADE
GO

ALTER TABLE [sedm].[StudentIEPServiceDeliveryServiceProvider] WITH CHECK ADD CONSTRAINT [FK_StudentIEPServiceDeliveryServiceProvider_Staff] FOREIGN KEY ([StaffUSI])
REFERENCES [edfi].[Staff] ([StaffUSI])
GO

CREATE NONCLUSTERED INDEX [FK_StudentIEPServiceDeliveryServiceProvider_Staff]
ON [sedm].[StudentIEPServiceDeliveryServiceProvider] ([StaffUSI] ASC)
GO

ALTER TABLE [sedm].[StudentIEPServiceDeliveryServiceProvider] WITH CHECK ADD CONSTRAINT [FK_StudentIEPServiceDeliveryServiceProvider_StudentIEPServiceDelivery] FOREIGN KEY ([EducationOrganizationId], [IEPServiceDeliveryID], [ServiceDeliveryDate], [ServiceDeliveryDescriptorId], [StudentUSI])
REFERENCES [sedm].[StudentIEPServiceDelivery] ([EducationOrganizationId], [IEPServiceDeliveryID], [ServiceDeliveryDate], [ServiceDeliveryDescriptorId], [StudentUSI])
ON DELETE CASCADE
GO

ALTER TABLE [sedm].[StudentIEPServicePrescription] WITH CHECK ADD CONSTRAINT [FK_StudentIEPServicePrescription_DurationPeriodDescriptor] FOREIGN KEY ([DurationPeriodDescriptorId])
REFERENCES [sedm].[DurationPeriodDescriptor] ([DurationPeriodDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StudentIEPServicePrescription_DurationPeriodDescriptor]
ON [sedm].[StudentIEPServicePrescription] ([DurationPeriodDescriptorId] ASC)
GO

ALTER TABLE [sedm].[StudentIEPServicePrescription] WITH CHECK ADD CONSTRAINT [FK_StudentIEPServicePrescription_EducationOrganization] FOREIGN KEY ([EducationOrganizationId])
REFERENCES [edfi].[EducationOrganization] ([EducationOrganizationId])
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

ALTER TABLE [sedm].[StudentIEPServicePrescription] WITH CHECK ADD CONSTRAINT [FK_StudentIEPServicePrescription_Staff] FOREIGN KEY ([StaffUSI])
REFERENCES [edfi].[Staff] ([StaffUSI])
GO

CREATE NONCLUSTERED INDEX [FK_StudentIEPServicePrescription_Staff]
ON [sedm].[StudentIEPServicePrescription] ([StaffUSI] ASC)
GO

ALTER TABLE [sedm].[StudentIEPServicePrescription] WITH CHECK ADD CONSTRAINT [FK_StudentIEPServicePrescription_Student] FOREIGN KEY ([StudentUSI])
REFERENCES [edfi].[Student] ([StudentUSI])
GO

CREATE NONCLUSTERED INDEX [FK_StudentIEPServicePrescription_Student]
ON [sedm].[StudentIEPServicePrescription] ([StudentUSI] ASC)
GO

ALTER TABLE [sedm].[StudentIEPServicePrescription] WITH CHECK ADD CONSTRAINT [FK_StudentIEPServicePrescription_StudentIEP] FOREIGN KEY ([EducationOrganizationId], [IEPFinalizedDate], [StudentIEPAssociationID], [StudentUSI])
REFERENCES [sedm].[StudentIEP] ([EducationOrganizationId], [IEPFinalizedDate], [StudentIEPAssociationID], [StudentUSI])
GO

CREATE NONCLUSTERED INDEX [FK_StudentIEPServicePrescription_StudentIEP]
ON [sedm].[StudentIEPServicePrescription] ([EducationOrganizationId] ASC, [IEPFinalizedDate] ASC, [StudentIEPAssociationID] ASC, [StudentUSI] ASC)
GO

ALTER TABLE [sedm].[StudentIEPServicePrescriptionIDEAEvent] WITH CHECK ADD CONSTRAINT [FK_StudentIEPServicePrescriptionIDEAEvent_IDEAEvent] FOREIGN KEY ([EducationOrganizationId], [IDEAEventDescriptorId], [IDEAEventID], [StudentUSI])
REFERENCES [sedm].[IDEAEvent] ([EducationOrganizationId], [IDEAEventDescriptorId], [IDEAEventID], [StudentUSI])
GO

CREATE NONCLUSTERED INDEX [FK_StudentIEPServicePrescriptionIDEAEvent_IDEAEvent]
ON [sedm].[StudentIEPServicePrescriptionIDEAEvent] ([EducationOrganizationId] ASC, [IDEAEventDescriptorId] ASC, [IDEAEventID] ASC, [StudentUSI] ASC)
GO

ALTER TABLE [sedm].[StudentIEPServicePrescriptionIDEAEvent] WITH CHECK ADD CONSTRAINT [FK_StudentIEPServicePrescriptionIDEAEvent_StudentIEPServicePrescription] FOREIGN KEY ([EducationOrganizationId], [ServicePrescriptionDate], [ServicePrescriptionDescriptorId], [StudentUSI])
REFERENCES [sedm].[StudentIEPServicePrescription] ([EducationOrganizationId], [ServicePrescriptionDate], [ServicePrescriptionDescriptorId], [StudentUSI])
ON DELETE CASCADE
GO

