ALTER TABLE sedm.DurationPeriodDescriptor ADD CONSTRAINT FK_d4922a_Descriptor FOREIGN KEY (DurationPeriodDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE sedm.EventComplianceDescriptor ADD CONSTRAINT FK_dd7d39_Descriptor FOREIGN KEY (EventComplianceDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE sedm.EventReasonDescriptor ADD CONSTRAINT FK_ee5ffc_Descriptor FOREIGN KEY (EventReasonDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE sedm.FrequencyPeriodDescriptor ADD CONSTRAINT FK_2a4712_Descriptor FOREIGN KEY (FrequencyPeriodDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE sedm.IDEAEvent ADD CONSTRAINT FK_a16a88_EducationOrganization FOREIGN KEY (EducationOrganizationId)
REFERENCES edfi.EducationOrganization (EducationOrganizationId)
;

ALTER TABLE sedm.IDEAEvent ADD CONSTRAINT FK_a16a88_EventComplianceDescriptor FOREIGN KEY (EventComplianceDescriptorId)
REFERENCES sedm.EventComplianceDescriptor (EventComplianceDescriptorId)
;

CREATE INDEX FK_a16a88_EventComplianceDescriptor
ON sedm.IDEAEvent (EventComplianceDescriptorId ASC);

ALTER TABLE sedm.IDEAEvent ADD CONSTRAINT FK_a16a88_EventReasonDescriptor FOREIGN KEY (EventReasonDescriptorId)
REFERENCES sedm.EventReasonDescriptor (EventReasonDescriptorId)
;

CREATE INDEX FK_a16a88_EventReasonDescriptor
ON sedm.IDEAEvent (EventReasonDescriptorId ASC);

ALTER TABLE sedm.IDEAEvent ADD CONSTRAINT FK_a16a88_IDEAEventDescriptor FOREIGN KEY (IDEAEventDescriptorId)
REFERENCES sedm.IDEAEventDescriptor (IDEAEventDescriptorId)
;

CREATE INDEX FK_a16a88_IDEAEventDescriptor
ON sedm.IDEAEvent (IDEAEventDescriptorId ASC);

ALTER TABLE sedm.IDEAEvent ADD CONSTRAINT FK_a16a88_Student FOREIGN KEY (StudentUSI)
REFERENCES edfi.Student (StudentUSI)
;

ALTER TABLE sedm.IDEAEventDescriptor ADD CONSTRAINT FK_cbac23_Descriptor FOREIGN KEY (IDEAEventDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE sedm.IEPGoalDescriptor ADD CONSTRAINT FK_9eedd8_Descriptor FOREIGN KEY (IEPGoalDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE sedm.IEPStatusDescriptor ADD CONSTRAINT FK_275df5_Descriptor FOREIGN KEY (IEPStatusDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE sedm.ServiceComplianceDescriptor ADD CONSTRAINT FK_437395_Descriptor FOREIGN KEY (ServiceComplianceDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE sedm.ServiceDeliveryDescriptor ADD CONSTRAINT FK_f9317e_Descriptor FOREIGN KEY (ServiceDeliveryDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE sedm.ServiceLocationTypeDescriptor ADD CONSTRAINT FK_b52e9c_Descriptor FOREIGN KEY (ServiceLocationTypeDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE sedm.ServicePrescriptionDescriptor ADD CONSTRAINT FK_e93574_Descriptor FOREIGN KEY (ServicePrescriptionDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE sedm.ServiceProviderTypeDescriptor ADD CONSTRAINT FK_29f0da_Descriptor FOREIGN KEY (ServiceProviderTypeDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE sedm.ServiceReasonDescriptor ADD CONSTRAINT FK_c706a9_Descriptor FOREIGN KEY (ServiceReasonDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE sedm.StudentIEP ADD CONSTRAINT FK_d153ae_EducationOrganization FOREIGN KEY (IEPServicingEducationOrganizationId)
REFERENCES edfi.EducationOrganization (EducationOrganizationId)
;

CREATE INDEX FK_d153ae_EducationOrganization
ON sedm.StudentIEP (IEPServicingEducationOrganizationId ASC);

ALTER TABLE sedm.StudentIEP ADD CONSTRAINT FK_d153ae_IEPStatusDescriptor FOREIGN KEY (IEPStatusDescriptorId)
REFERENCES sedm.IEPStatusDescriptor (IEPStatusDescriptorId)
;

CREATE INDEX FK_d153ae_IEPStatusDescriptor
ON sedm.StudentIEP (IEPStatusDescriptorId ASC);

ALTER TABLE sedm.StudentIEP ADD CONSTRAINT FK_d153ae_ReasonExitedDescriptor FOREIGN KEY (ReasonExitedDescriptorId)
REFERENCES edfi.ReasonExitedDescriptor (ReasonExitedDescriptorId)
;

CREATE INDEX FK_d153ae_ReasonExitedDescriptor
ON sedm.StudentIEP (ReasonExitedDescriptorId ASC);

ALTER TABLE sedm.StudentIEP ADD CONSTRAINT FK_d153ae_SpecialEducationSettingDescriptor FOREIGN KEY (SpecialEducationSettingDescriptorId)
REFERENCES edfi.SpecialEducationSettingDescriptor (SpecialEducationSettingDescriptorId)
;

CREATE INDEX FK_d153ae_SpecialEducationSettingDescriptor
ON sedm.StudentIEP (SpecialEducationSettingDescriptorId ASC);

ALTER TABLE sedm.StudentIEP ADD CONSTRAINT FK_d153ae_Student FOREIGN KEY (StudentUSI)
REFERENCES edfi.Student (StudentUSI)
;

ALTER TABLE sedm.StudentIEPAccommodationCollection ADD CONSTRAINT FK_1314b5_EducationOrganization FOREIGN KEY (IEPServicingEducationOrganizationId)
REFERENCES edfi.EducationOrganization (EducationOrganizationId)
;

CREATE INDEX FK_1314b5_EducationOrganization
ON sedm.StudentIEPAccommodationCollection (IEPServicingEducationOrganizationId ASC);

ALTER TABLE sedm.StudentIEPAccommodationCollection ADD CONSTRAINT FK_1314b5_Student FOREIGN KEY (StudentUSI)
REFERENCES edfi.Student (StudentUSI)
;

ALTER TABLE sedm.StudentIEPAccommodationCollection ADD CONSTRAINT FK_1314b5_StudentIEP FOREIGN KEY (IEPFinalizedDate, IEPServicingEducationOrganizationId, StudentIEPAssociationID, StudentUSI)
REFERENCES sedm.StudentIEP (IEPFinalizedDate, IEPServicingEducationOrganizationId, StudentIEPAssociationID, StudentUSI)
;

ALTER TABLE sedm.StudentIEPAccommodationCollectionIEPAccommodation ADD CONSTRAINT FK_ece2af_AccommodationDescriptor FOREIGN KEY (AccommodationDescriptorId)
REFERENCES edfi.AccommodationDescriptor (AccommodationDescriptorId)
;

CREATE INDEX FK_ece2af_AccommodationDescriptor
ON sedm.StudentIEPAccommodationCollectionIEPAccommodation (AccommodationDescriptorId ASC);

ALTER TABLE sedm.StudentIEPAccommodationCollectionIEPAccommodation ADD CONSTRAINT FK_ece2af_StudentIEPAccommodationCollection FOREIGN KEY (IEPFinalizedDate, IEPServicingEducationOrganizationId, StudentIEPAssociationID, StudentUSI)
REFERENCES sedm.StudentIEPAccommodationCollection (IEPFinalizedDate, IEPServicingEducationOrganizationId, StudentIEPAssociationID, StudentUSI)
ON DELETE CASCADE
;

ALTER TABLE sedm.StudentIEPDisabilityCollection ADD CONSTRAINT FK_0f858c_EducationOrganization FOREIGN KEY (IEPServicingEducationOrganizationId)
REFERENCES edfi.EducationOrganization (EducationOrganizationId)
;

CREATE INDEX FK_0f858c_EducationOrganization
ON sedm.StudentIEPDisabilityCollection (IEPServicingEducationOrganizationId ASC);

ALTER TABLE sedm.StudentIEPDisabilityCollection ADD CONSTRAINT FK_0f858c_Student FOREIGN KEY (StudentUSI)
REFERENCES edfi.Student (StudentUSI)
;

ALTER TABLE sedm.StudentIEPDisabilityCollection ADD CONSTRAINT FK_0f858c_StudentIEP FOREIGN KEY (IEPFinalizedDate, IEPServicingEducationOrganizationId, StudentIEPAssociationID, StudentUSI)
REFERENCES sedm.StudentIEP (IEPFinalizedDate, IEPServicingEducationOrganizationId, StudentIEPAssociationID, StudentUSI)
;

ALTER TABLE sedm.StudentIEPDisabilityCollectionDisability ADD CONSTRAINT FK_00b5ae_DisabilityDescriptor FOREIGN KEY (DisabilityDescriptorId)
REFERENCES edfi.DisabilityDescriptor (DisabilityDescriptorId)
;

CREATE INDEX FK_00b5ae_DisabilityDescriptor
ON sedm.StudentIEPDisabilityCollectionDisability (DisabilityDescriptorId ASC);

ALTER TABLE sedm.StudentIEPDisabilityCollectionDisability ADD CONSTRAINT FK_00b5ae_DisabilityDeterminationSourceTypeDescriptor FOREIGN KEY (DisabilityDeterminationSourceTypeDescriptorId)
REFERENCES edfi.DisabilityDeterminationSourceTypeDescriptor (DisabilityDeterminationSourceTypeDescriptorId)
;

CREATE INDEX FK_00b5ae_DisabilityDeterminationSourceTypeDescriptor
ON sedm.StudentIEPDisabilityCollectionDisability (DisabilityDeterminationSourceTypeDescriptorId ASC);

ALTER TABLE sedm.StudentIEPDisabilityCollectionDisability ADD CONSTRAINT FK_00b5ae_StudentIEPDisabilityCollection FOREIGN KEY (IEPFinalizedDate, IEPServicingEducationOrganizationId, StudentIEPAssociationID, StudentUSI)
REFERENCES sedm.StudentIEPDisabilityCollection (IEPFinalizedDate, IEPServicingEducationOrganizationId, StudentIEPAssociationID, StudentUSI)
ON DELETE CASCADE
;

ALTER TABLE sedm.StudentIEPDisabilityCollectionDisabilityDesignation ADD CONSTRAINT FK_0b2722_DisabilityDesignationDescriptor FOREIGN KEY (DisabilityDesignationDescriptorId)
REFERENCES edfi.DisabilityDesignationDescriptor (DisabilityDesignationDescriptorId)
;

CREATE INDEX FK_0b2722_DisabilityDesignationDescriptor
ON sedm.StudentIEPDisabilityCollectionDisabilityDesignation (DisabilityDesignationDescriptorId ASC);

ALTER TABLE sedm.StudentIEPDisabilityCollectionDisabilityDesignation ADD CONSTRAINT FK_0b2722_StudentIEPDisabilityCollectionDisability FOREIGN KEY (IEPFinalizedDate, IEPServicingEducationOrganizationId, StudentIEPAssociationID, StudentUSI, DisabilityDescriptorId)
REFERENCES sedm.StudentIEPDisabilityCollectionDisability (IEPFinalizedDate, IEPServicingEducationOrganizationId, StudentIEPAssociationID, StudentUSI, DisabilityDescriptorId)
ON DELETE CASCADE
;

ALTER TABLE sedm.StudentIEPGoal ADD CONSTRAINT FK_5453a5_IEPGoalDescriptor FOREIGN KEY (IEPGoalDescriptorId)
REFERENCES sedm.IEPGoalDescriptor (IEPGoalDescriptorId)
;

CREATE INDEX FK_5453a5_IEPGoalDescriptor
ON sedm.StudentIEPGoal (IEPGoalDescriptorId ASC);

ALTER TABLE sedm.StudentIEPGoal ADD CONSTRAINT FK_5453a5_Student FOREIGN KEY (StudentUSI)
REFERENCES edfi.Student (StudentUSI)
;

ALTER TABLE sedm.StudentIEPGoal ADD CONSTRAINT FK_5453a5_StudentIEP FOREIGN KEY (IEPFinalizedDate, IEPServicingEducationOrganizationId, StudentIEPAssociationID, StudentUSI)
REFERENCES sedm.StudentIEP (IEPFinalizedDate, IEPServicingEducationOrganizationId, StudentIEPAssociationID, StudentUSI)
;

CREATE INDEX FK_5453a5_StudentIEP
ON sedm.StudentIEPGoal (IEPFinalizedDate ASC, IEPServicingEducationOrganizationId ASC, StudentIEPAssociationID ASC, StudentUSI ASC);

ALTER TABLE sedm.StudentIEPGoalIDEAEvent ADD CONSTRAINT FK_77bb8b_IDEAEvent FOREIGN KEY (EducationOrganizationId, IDEAEventDescriptorId, IDEAEventID, StudentUSI)
REFERENCES sedm.IDEAEvent (EducationOrganizationId, IDEAEventDescriptorId, IDEAEventID, StudentUSI)
;

CREATE INDEX FK_77bb8b_IDEAEvent
ON sedm.StudentIEPGoalIDEAEvent (EducationOrganizationId ASC, IDEAEventDescriptorId ASC, IDEAEventID ASC, StudentUSI ASC);

ALTER TABLE sedm.StudentIEPGoalIDEAEvent ADD CONSTRAINT FK_77bb8b_StudentIEPGoal FOREIGN KEY (IEPFinalizedDate, IEPGoalID, IEPServicingEducationOrganizationId, StudentIEPAssociationID, StudentUSI)
REFERENCES sedm.StudentIEPGoal (IEPFinalizedDate, IEPGoalID, IEPServicingEducationOrganizationId, StudentIEPAssociationID, StudentUSI)
ON DELETE CASCADE
;

ALTER TABLE sedm.StudentIEPIDEAEvent ADD CONSTRAINT FK_879a3f_IDEAEvent FOREIGN KEY (EducationOrganizationId, IDEAEventDescriptorId, IDEAEventID, StudentUSI)
REFERENCES sedm.IDEAEvent (EducationOrganizationId, IDEAEventDescriptorId, IDEAEventID, StudentUSI)
;

CREATE INDEX FK_879a3f_IDEAEvent
ON sedm.StudentIEPIDEAEvent (EducationOrganizationId ASC, IDEAEventDescriptorId ASC, IDEAEventID ASC, StudentUSI ASC);

ALTER TABLE sedm.StudentIEPIDEAEvent ADD CONSTRAINT FK_879a3f_StudentIEP FOREIGN KEY (IEPFinalizedDate, IEPServicingEducationOrganizationId, StudentIEPAssociationID, StudentUSI)
REFERENCES sedm.StudentIEP (IEPFinalizedDate, IEPServicingEducationOrganizationId, StudentIEPAssociationID, StudentUSI)
ON DELETE CASCADE
;

ALTER TABLE sedm.StudentIEPServiceDelivery ADD CONSTRAINT FK_524fcd_ServiceDeliveryDescriptor FOREIGN KEY (ServiceDeliveryDescriptorId)
REFERENCES sedm.ServiceDeliveryDescriptor (ServiceDeliveryDescriptorId)
;

CREATE INDEX FK_524fcd_ServiceDeliveryDescriptor
ON sedm.StudentIEPServiceDelivery (ServiceDeliveryDescriptorId ASC);

ALTER TABLE sedm.StudentIEPServiceDelivery ADD CONSTRAINT FK_524fcd_ServiceProviderTypeDescriptor FOREIGN KEY (ServiceProviderTypeDescriptorId)
REFERENCES sedm.ServiceProviderTypeDescriptor (ServiceProviderTypeDescriptorId)
;

CREATE INDEX FK_524fcd_ServiceProviderTypeDescriptor
ON sedm.StudentIEPServiceDelivery (ServiceProviderTypeDescriptorId ASC);

ALTER TABLE sedm.StudentIEPServiceDelivery ADD CONSTRAINT FK_524fcd_Student FOREIGN KEY (StudentUSI)
REFERENCES edfi.Student (StudentUSI)
;

ALTER TABLE sedm.StudentIEPServiceDelivery ADD CONSTRAINT FK_524fcd_StudentIEP FOREIGN KEY (IEPFinalizedDate, IEPServicingEducationOrganizationId, StudentIEPAssociationID, StudentUSI)
REFERENCES sedm.StudentIEP (IEPFinalizedDate, IEPServicingEducationOrganizationId, StudentIEPAssociationID, StudentUSI)
;

CREATE INDEX FK_524fcd_StudentIEP
ON sedm.StudentIEPServiceDelivery (IEPFinalizedDate ASC, IEPServicingEducationOrganizationId ASC, StudentIEPAssociationID ASC, StudentUSI ASC);

ALTER TABLE sedm.StudentIEPServiceDelivery ADD CONSTRAINT FK_524fcd_StudentIEPServicePrescription FOREIGN KEY (IEPFinalizedDate, IEPServicingEducationOrganizationId, ServicePrescriptionDate, ServicePrescriptionDescriptorId, StudentIEPAssociationID, StudentUSI)
REFERENCES sedm.StudentIEPServicePrescription (IEPFinalizedDate, IEPServicingEducationOrganizationId, ServicePrescriptionDate, ServicePrescriptionDescriptorId, StudentIEPAssociationID, StudentUSI)
;

CREATE INDEX FK_524fcd_StudentIEPServicePrescription
ON sedm.StudentIEPServiceDelivery (IEPFinalizedDate ASC, IEPServicingEducationOrganizationId ASC, ServicePrescriptionDate ASC, ServicePrescriptionDescriptorId ASC, StudentIEPAssociationID ASC, StudentUSI ASC);

ALTER TABLE sedm.StudentIEPServiceDeliveryExternalServiceProvider ADD CONSTRAINT FK_fd62fe_StudentIEPServiceDelivery FOREIGN KEY (IEPFinalizedDate, IEPServiceDeliveryID, IEPServicingEducationOrganizationId, ServiceDeliveryDate, ServiceDeliveryDescriptorId, StudentIEPAssociationID, StudentUSI)
REFERENCES sedm.StudentIEPServiceDelivery (IEPFinalizedDate, IEPServiceDeliveryID, IEPServicingEducationOrganizationId, ServiceDeliveryDate, ServiceDeliveryDescriptorId, StudentIEPAssociationID, StudentUSI)
ON DELETE CASCADE
;

ALTER TABLE sedm.StudentIEPServiceDeliveryIDEAEvent ADD CONSTRAINT FK_a62d81_IDEAEvent FOREIGN KEY (EducationOrganizationId, IDEAEventDescriptorId, IDEAEventID, StudentUSI)
REFERENCES sedm.IDEAEvent (EducationOrganizationId, IDEAEventDescriptorId, IDEAEventID, StudentUSI)
;

CREATE INDEX FK_a62d81_IDEAEvent
ON sedm.StudentIEPServiceDeliveryIDEAEvent (EducationOrganizationId ASC, IDEAEventDescriptorId ASC, IDEAEventID ASC, StudentUSI ASC);

ALTER TABLE sedm.StudentIEPServiceDeliveryIDEAEvent ADD CONSTRAINT FK_a62d81_StudentIEPServiceDelivery FOREIGN KEY (IEPFinalizedDate, IEPServiceDeliveryID, IEPServicingEducationOrganizationId, ServiceDeliveryDate, ServiceDeliveryDescriptorId, StudentIEPAssociationID, StudentUSI)
REFERENCES sedm.StudentIEPServiceDelivery (IEPFinalizedDate, IEPServiceDeliveryID, IEPServicingEducationOrganizationId, ServiceDeliveryDate, ServiceDeliveryDescriptorId, StudentIEPAssociationID, StudentUSI)
ON DELETE CASCADE
;

ALTER TABLE sedm.StudentIEPServiceDeliveryServiceProvider ADD CONSTRAINT FK_2c2936_Staff FOREIGN KEY (StaffUSI)
REFERENCES edfi.Staff (StaffUSI)
;

CREATE INDEX FK_2c2936_Staff
ON sedm.StudentIEPServiceDeliveryServiceProvider (StaffUSI ASC);

ALTER TABLE sedm.StudentIEPServiceDeliveryServiceProvider ADD CONSTRAINT FK_2c2936_StudentIEPServiceDelivery FOREIGN KEY (IEPFinalizedDate, IEPServiceDeliveryID, IEPServicingEducationOrganizationId, ServiceDeliveryDate, ServiceDeliveryDescriptorId, StudentIEPAssociationID, StudentUSI)
REFERENCES sedm.StudentIEPServiceDelivery (IEPFinalizedDate, IEPServiceDeliveryID, IEPServicingEducationOrganizationId, ServiceDeliveryDate, ServiceDeliveryDescriptorId, StudentIEPAssociationID, StudentUSI)
ON DELETE CASCADE
;

ALTER TABLE sedm.StudentIEPServicePrescription ADD CONSTRAINT FK_d0ad1a_DurationPeriodDescriptor FOREIGN KEY (DurationPeriodDescriptorId)
REFERENCES sedm.DurationPeriodDescriptor (DurationPeriodDescriptorId)
;

CREATE INDEX FK_d0ad1a_DurationPeriodDescriptor
ON sedm.StudentIEPServicePrescription (DurationPeriodDescriptorId ASC);

ALTER TABLE sedm.StudentIEPServicePrescription ADD CONSTRAINT FK_d0ad1a_EducationOrganization FOREIGN KEY (ServiceProvidingEducationOrganizationId)
REFERENCES edfi.EducationOrganization (EducationOrganizationId)
;

CREATE INDEX FK_d0ad1a_EducationOrganization
ON sedm.StudentIEPServicePrescription (ServiceProvidingEducationOrganizationId ASC);

ALTER TABLE sedm.StudentIEPServicePrescription ADD CONSTRAINT FK_d0ad1a_FrequencyPeriodDescriptor FOREIGN KEY (FrequencyPeriodDescriptorId)
REFERENCES sedm.FrequencyPeriodDescriptor (FrequencyPeriodDescriptorId)
;

CREATE INDEX FK_d0ad1a_FrequencyPeriodDescriptor
ON sedm.StudentIEPServicePrescription (FrequencyPeriodDescriptorId ASC);

ALTER TABLE sedm.StudentIEPServicePrescription ADD CONSTRAINT FK_d0ad1a_ServiceLocationTypeDescriptor FOREIGN KEY (ServiceLocationTypeDescriptorId)
REFERENCES sedm.ServiceLocationTypeDescriptor (ServiceLocationTypeDescriptorId)
;

CREATE INDEX FK_d0ad1a_ServiceLocationTypeDescriptor
ON sedm.StudentIEPServicePrescription (ServiceLocationTypeDescriptorId ASC);

ALTER TABLE sedm.StudentIEPServicePrescription ADD CONSTRAINT FK_d0ad1a_ServicePrescriptionDescriptor FOREIGN KEY (ServicePrescriptionDescriptorId)
REFERENCES sedm.ServicePrescriptionDescriptor (ServicePrescriptionDescriptorId)
;

CREATE INDEX FK_d0ad1a_ServicePrescriptionDescriptor
ON sedm.StudentIEPServicePrescription (ServicePrescriptionDescriptorId ASC);

ALTER TABLE sedm.StudentIEPServicePrescription ADD CONSTRAINT FK_d0ad1a_Staff FOREIGN KEY (StaffUSI)
REFERENCES edfi.Staff (StaffUSI)
;

CREATE INDEX FK_d0ad1a_Staff
ON sedm.StudentIEPServicePrescription (StaffUSI ASC);

ALTER TABLE sedm.StudentIEPServicePrescription ADD CONSTRAINT FK_d0ad1a_Student FOREIGN KEY (StudentUSI)
REFERENCES edfi.Student (StudentUSI)
;

CREATE INDEX FK_d0ad1a_Student
ON sedm.StudentIEPServicePrescription (StudentUSI ASC);

ALTER TABLE sedm.StudentIEPServicePrescription ADD CONSTRAINT FK_d0ad1a_StudentIEP FOREIGN KEY (IEPFinalizedDate, IEPServicingEducationOrganizationId, StudentIEPAssociationID, StudentUSI)
REFERENCES sedm.StudentIEP (IEPFinalizedDate, IEPServicingEducationOrganizationId, StudentIEPAssociationID, StudentUSI)
;

CREATE INDEX FK_d0ad1a_StudentIEP
ON sedm.StudentIEPServicePrescription (IEPFinalizedDate ASC, IEPServicingEducationOrganizationId ASC, StudentIEPAssociationID ASC, StudentUSI ASC);

ALTER TABLE sedm.StudentIEPServicePrescriptionIDEAEvent ADD CONSTRAINT FK_cf3b90_IDEAEvent FOREIGN KEY (EducationOrganizationId, IDEAEventDescriptorId, IDEAEventID, StudentUSI)
REFERENCES sedm.IDEAEvent (EducationOrganizationId, IDEAEventDescriptorId, IDEAEventID, StudentUSI)
;

CREATE INDEX FK_cf3b90_IDEAEvent
ON sedm.StudentIEPServicePrescriptionIDEAEvent (EducationOrganizationId ASC, IDEAEventDescriptorId ASC, IDEAEventID ASC, StudentUSI ASC);

ALTER TABLE sedm.StudentIEPServicePrescriptionIDEAEvent ADD CONSTRAINT FK_cf3b90_StudentIEPServicePrescription FOREIGN KEY (IEPFinalizedDate, IEPServicingEducationOrganizationId, ServicePrescriptionDate, ServicePrescriptionDescriptorId, StudentIEPAssociationID, StudentUSI)
REFERENCES sedm.StudentIEPServicePrescription (IEPFinalizedDate, IEPServicingEducationOrganizationId, ServicePrescriptionDate, ServicePrescriptionDescriptorId, StudentIEPAssociationID, StudentUSI)
ON DELETE CASCADE
;

