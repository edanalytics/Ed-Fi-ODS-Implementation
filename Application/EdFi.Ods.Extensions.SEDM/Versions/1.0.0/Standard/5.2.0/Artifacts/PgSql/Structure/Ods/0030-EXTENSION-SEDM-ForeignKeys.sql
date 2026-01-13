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

ALTER TABLE sedm.IdeaEvent ADD CONSTRAINT FK_2fdbd1_EducationOrganization FOREIGN KEY (EducationOrganizationId)
REFERENCES edfi.EducationOrganization (EducationOrganizationId)
;

ALTER TABLE sedm.IdeaEvent ADD CONSTRAINT FK_2fdbd1_EventComplianceDescriptor FOREIGN KEY (EventComplianceDescriptorId)
REFERENCES sedm.EventComplianceDescriptor (EventComplianceDescriptorId)
;

CREATE INDEX FK_2fdbd1_EventComplianceDescriptor
ON sedm.IdeaEvent (EventComplianceDescriptorId ASC);

ALTER TABLE sedm.IdeaEvent ADD CONSTRAINT FK_2fdbd1_EventReasonDescriptor FOREIGN KEY (EventReasonDescriptorId)
REFERENCES sedm.EventReasonDescriptor (EventReasonDescriptorId)
;

CREATE INDEX FK_2fdbd1_EventReasonDescriptor
ON sedm.IdeaEvent (EventReasonDescriptorId ASC);

ALTER TABLE sedm.IdeaEvent ADD CONSTRAINT FK_2fdbd1_IdeaEventDescriptor FOREIGN KEY (IdeaEventDescriptorId)
REFERENCES sedm.IdeaEventDescriptor (IdeaEventDescriptorId)
;

CREATE INDEX FK_2fdbd1_IdeaEventDescriptor
ON sedm.IdeaEvent (IdeaEventDescriptorId ASC);

ALTER TABLE sedm.IdeaEvent ADD CONSTRAINT FK_2fdbd1_Student FOREIGN KEY (StudentUSI)
REFERENCES edfi.Student (StudentUSI)
;

ALTER TABLE sedm.IdeaEventDescriptor ADD CONSTRAINT FK_b809cd_Descriptor FOREIGN KEY (IdeaEventDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE sedm.IepGoalDescriptor ADD CONSTRAINT FK_ee5d44_Descriptor FOREIGN KEY (IepGoalDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE sedm.IepStatusDescriptor ADD CONSTRAINT FK_28eed9_Descriptor FOREIGN KEY (IepStatusDescriptorId)
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

ALTER TABLE sedm.StudentIEP ADD CONSTRAINT FK_d153ae_EducationOrganization FOREIGN KEY (EducationOrganizationId)
REFERENCES edfi.EducationOrganization (EducationOrganizationId)
;

ALTER TABLE sedm.StudentIEP ADD CONSTRAINT FK_d153ae_IepStatusDescriptor FOREIGN KEY (IepStatusDescriptorId)
REFERENCES sedm.IepStatusDescriptor (IepStatusDescriptorId)
;

CREATE INDEX FK_d153ae_IepStatusDescriptor
ON sedm.StudentIEP (IepStatusDescriptorId ASC);

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

ALTER TABLE sedm.StudentIEPAccommodationCollection ADD CONSTRAINT FK_1314b5_StudentIEP FOREIGN KEY (EducationOrganizationId, IEPFinalizedDate, StudentIEPAssociationID, StudentUSI)
REFERENCES sedm.StudentIEP (EducationOrganizationId, IEPFinalizedDate, StudentIEPAssociationID, StudentUSI)
;

ALTER TABLE sedm.StudentIEPAccommodationCollectionAccommodation ADD CONSTRAINT FK_dd3bc3_AccommodationDescriptor FOREIGN KEY (AccommodationDescriptorId)
REFERENCES edfi.AccommodationDescriptor (AccommodationDescriptorId)
;

CREATE INDEX FK_dd3bc3_AccommodationDescriptor
ON sedm.StudentIEPAccommodationCollectionAccommodation (AccommodationDescriptorId ASC);

ALTER TABLE sedm.StudentIEPAccommodationCollectionAccommodation ADD CONSTRAINT FK_dd3bc3_StudentIEPAccommodationCollection FOREIGN KEY (EducationOrganizationId, IEPFinalizedDate, StudentIEPAssociationID, StudentUSI)
REFERENCES sedm.StudentIEPAccommodationCollection (EducationOrganizationId, IEPFinalizedDate, StudentIEPAssociationID, StudentUSI)
ON DELETE CASCADE
;

ALTER TABLE sedm.StudentIEPDisabilityCollection ADD CONSTRAINT FK_0f858c_StudentIEP FOREIGN KEY (EducationOrganizationId, IEPFinalizedDate, StudentIEPAssociationID, StudentUSI)
REFERENCES sedm.StudentIEP (EducationOrganizationId, IEPFinalizedDate, StudentIEPAssociationID, StudentUSI)
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

ALTER TABLE sedm.StudentIEPDisabilityCollectionDisability ADD CONSTRAINT FK_00b5ae_StudentIEPDisabilityCollection FOREIGN KEY (EducationOrganizationId, IEPFinalizedDate, StudentIEPAssociationID, StudentUSI)
REFERENCES sedm.StudentIEPDisabilityCollection (EducationOrganizationId, IEPFinalizedDate, StudentIEPAssociationID, StudentUSI)
ON DELETE CASCADE
;

ALTER TABLE sedm.StudentIEPDisabilityCollectionDisabilityDesignation ADD CONSTRAINT FK_0b2722_DisabilityDesignationDescriptor FOREIGN KEY (DisabilityDesignationDescriptorId)
REFERENCES edfi.DisabilityDesignationDescriptor (DisabilityDesignationDescriptorId)
;

CREATE INDEX FK_0b2722_DisabilityDesignationDescriptor
ON sedm.StudentIEPDisabilityCollectionDisabilityDesignation (DisabilityDesignationDescriptorId ASC);

ALTER TABLE sedm.StudentIEPDisabilityCollectionDisabilityDesignation ADD CONSTRAINT FK_0b2722_StudentIEPDisabilityCollectionDisability FOREIGN KEY (EducationOrganizationId, IEPFinalizedDate, StudentIEPAssociationID, StudentUSI, DisabilityDescriptorId)
REFERENCES sedm.StudentIEPDisabilityCollectionDisability (EducationOrganizationId, IEPFinalizedDate, StudentIEPAssociationID, StudentUSI, DisabilityDescriptorId)
ON DELETE CASCADE
;

ALTER TABLE sedm.StudentIEPGoal ADD CONSTRAINT FK_5453a5_IepGoalDescriptor FOREIGN KEY (IepGoalDescriptorId)
REFERENCES sedm.IepGoalDescriptor (IepGoalDescriptorId)
;

CREATE INDEX FK_5453a5_IepGoalDescriptor
ON sedm.StudentIEPGoal (IepGoalDescriptorId ASC);

ALTER TABLE sedm.StudentIEPGoal ADD CONSTRAINT FK_5453a5_StudentIEP FOREIGN KEY (EducationOrganizationId, IEPFinalizedDate, StudentIEPAssociationID, StudentUSI)
REFERENCES sedm.StudentIEP (EducationOrganizationId, IEPFinalizedDate, StudentIEPAssociationID, StudentUSI)
;

CREATE INDEX FK_5453a5_StudentIEP
ON sedm.StudentIEPGoal (EducationOrganizationId ASC, IEPFinalizedDate ASC, StudentIEPAssociationID ASC, StudentUSI ASC);

ALTER TABLE sedm.StudentIEPGoalIdeaEvent ADD CONSTRAINT FK_b841d7_IdeaEvent FOREIGN KEY (EducationOrganizationId, IdeaEventDescriptorId, IDEAEventID, StudentUSI)
REFERENCES sedm.IdeaEvent (EducationOrganizationId, IdeaEventDescriptorId, IDEAEventID, StudentUSI)
;

CREATE INDEX FK_b841d7_IdeaEvent
ON sedm.StudentIEPGoalIdeaEvent (EducationOrganizationId ASC, IdeaEventDescriptorId ASC, IDEAEventID ASC, StudentUSI ASC);

ALTER TABLE sedm.StudentIEPGoalIdeaEvent ADD CONSTRAINT FK_b841d7_StudentIEPGoal FOREIGN KEY (EducationOrganizationId, IEPFinalizedDate, IEPGoalID, StudentIEPAssociationID, StudentUSI)
REFERENCES sedm.StudentIEPGoal (EducationOrganizationId, IEPFinalizedDate, IEPGoalID, StudentIEPAssociationID, StudentUSI)
ON DELETE CASCADE
;

ALTER TABLE sedm.StudentIEPIdeaEvent ADD CONSTRAINT FK_618a2f_IdeaEvent FOREIGN KEY (EducationOrganizationId, IdeaEventDescriptorId, IDEAEventID, StudentUSI)
REFERENCES sedm.IdeaEvent (EducationOrganizationId, IdeaEventDescriptorId, IDEAEventID, StudentUSI)
;

CREATE INDEX FK_618a2f_IdeaEvent
ON sedm.StudentIEPIdeaEvent (EducationOrganizationId ASC, IdeaEventDescriptorId ASC, IDEAEventID ASC, StudentUSI ASC);

ALTER TABLE sedm.StudentIEPIdeaEvent ADD CONSTRAINT FK_618a2f_StudentIEP FOREIGN KEY (EducationOrganizationId, IEPFinalizedDate, StudentIEPAssociationID, StudentUSI)
REFERENCES sedm.StudentIEP (EducationOrganizationId, IEPFinalizedDate, StudentIEPAssociationID, StudentUSI)
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

ALTER TABLE sedm.StudentIEPServiceDelivery ADD CONSTRAINT FK_524fcd_StudentIEP FOREIGN KEY (EducationOrganizationId, IEPFinalizedDate, StudentIEPAssociationID, StudentUSI)
REFERENCES sedm.StudentIEP (EducationOrganizationId, IEPFinalizedDate, StudentIEPAssociationID, StudentUSI)
;

CREATE INDEX FK_524fcd_StudentIEP
ON sedm.StudentIEPServiceDelivery (EducationOrganizationId ASC, IEPFinalizedDate ASC, StudentIEPAssociationID ASC, StudentUSI ASC);

ALTER TABLE sedm.StudentIEPServiceDelivery ADD CONSTRAINT FK_524fcd_StudentIEPServicePrescription FOREIGN KEY (EducationOrganizationId, IEPFinalizedDate, ServicePrescriptionDate, ServicePrescriptionDescriptorId, StudentIEPAssociationID, StudentUSI)
REFERENCES sedm.StudentIEPServicePrescription (EducationOrganizationId, IEPFinalizedDate, ServicePrescriptionDate, ServicePrescriptionDescriptorId, StudentIEPAssociationID, StudentUSI)
;

CREATE INDEX FK_524fcd_StudentIEPServicePrescription
ON sedm.StudentIEPServiceDelivery (EducationOrganizationId ASC, IEPFinalizedDate ASC, ServicePrescriptionDate ASC, ServicePrescriptionDescriptorId ASC, StudentIEPAssociationID ASC, StudentUSI ASC);

ALTER TABLE sedm.StudentIEPServiceDeliveryExternalServiceProvider ADD CONSTRAINT FK_fd62fe_StudentIEPServiceDelivery FOREIGN KEY (EducationOrganizationId, IEPFinalizedDate, IEPServiceDeliveryID, ServiceDeliveryDate, ServiceDeliveryDescriptorId, StudentIEPAssociationID, StudentUSI)
REFERENCES sedm.StudentIEPServiceDelivery (EducationOrganizationId, IEPFinalizedDate, IEPServiceDeliveryID, ServiceDeliveryDate, ServiceDeliveryDescriptorId, StudentIEPAssociationID, StudentUSI)
ON DELETE CASCADE
;

ALTER TABLE sedm.StudentIEPServiceDeliveryIdeaEvent ADD CONSTRAINT FK_999eca_IdeaEvent FOREIGN KEY (EducationOrganizationId, IdeaEventDescriptorId, IDEAEventID, StudentUSI)
REFERENCES sedm.IdeaEvent (EducationOrganizationId, IdeaEventDescriptorId, IDEAEventID, StudentUSI)
;

CREATE INDEX FK_999eca_IdeaEvent
ON sedm.StudentIEPServiceDeliveryIdeaEvent (EducationOrganizationId ASC, IdeaEventDescriptorId ASC, IDEAEventID ASC, StudentUSI ASC);

ALTER TABLE sedm.StudentIEPServiceDeliveryIdeaEvent ADD CONSTRAINT FK_999eca_StudentIEPServiceDelivery FOREIGN KEY (EducationOrganizationId, IEPFinalizedDate, IEPServiceDeliveryID, ServiceDeliveryDate, ServiceDeliveryDescriptorId, StudentIEPAssociationID, StudentUSI)
REFERENCES sedm.StudentIEPServiceDelivery (EducationOrganizationId, IEPFinalizedDate, IEPServiceDeliveryID, ServiceDeliveryDate, ServiceDeliveryDescriptorId, StudentIEPAssociationID, StudentUSI)
ON DELETE CASCADE
;

ALTER TABLE sedm.StudentIEPServiceDeliveryServiceProvider ADD CONSTRAINT FK_2c2936_Staff FOREIGN KEY (StaffUSI)
REFERENCES edfi.Staff (StaffUSI)
;

CREATE INDEX FK_2c2936_Staff
ON sedm.StudentIEPServiceDeliveryServiceProvider (StaffUSI ASC);

ALTER TABLE sedm.StudentIEPServiceDeliveryServiceProvider ADD CONSTRAINT FK_2c2936_StudentIEPServiceDelivery FOREIGN KEY (EducationOrganizationId, IEPFinalizedDate, IEPServiceDeliveryID, ServiceDeliveryDate, ServiceDeliveryDescriptorId, StudentIEPAssociationID, StudentUSI)
REFERENCES sedm.StudentIEPServiceDelivery (EducationOrganizationId, IEPFinalizedDate, IEPServiceDeliveryID, ServiceDeliveryDate, ServiceDeliveryDescriptorId, StudentIEPAssociationID, StudentUSI)
ON DELETE CASCADE
;

ALTER TABLE sedm.StudentIEPServicePrescription ADD CONSTRAINT FK_d0ad1a_DurationPeriodDescriptor FOREIGN KEY (DurationPeriodDescriptorId)
REFERENCES sedm.DurationPeriodDescriptor (DurationPeriodDescriptorId)
;

CREATE INDEX FK_d0ad1a_DurationPeriodDescriptor
ON sedm.StudentIEPServicePrescription (DurationPeriodDescriptorId ASC);

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

ALTER TABLE sedm.StudentIEPServicePrescription ADD CONSTRAINT FK_d0ad1a_StudentIEP FOREIGN KEY (EducationOrganizationId, IEPFinalizedDate, StudentIEPAssociationID, StudentUSI)
REFERENCES sedm.StudentIEP (EducationOrganizationId, IEPFinalizedDate, StudentIEPAssociationID, StudentUSI)
;

CREATE INDEX FK_d0ad1a_StudentIEP
ON sedm.StudentIEPServicePrescription (EducationOrganizationId ASC, IEPFinalizedDate ASC, StudentIEPAssociationID ASC, StudentUSI ASC);

ALTER TABLE sedm.StudentIEPServicePrescriptionIdeaEvent ADD CONSTRAINT FK_440435_IdeaEvent FOREIGN KEY (EducationOrganizationId, IdeaEventDescriptorId, IDEAEventID, StudentUSI)
REFERENCES sedm.IdeaEvent (EducationOrganizationId, IdeaEventDescriptorId, IDEAEventID, StudentUSI)
;

CREATE INDEX FK_440435_IdeaEvent
ON sedm.StudentIEPServicePrescriptionIdeaEvent (EducationOrganizationId ASC, IdeaEventDescriptorId ASC, IDEAEventID ASC, StudentUSI ASC);

ALTER TABLE sedm.StudentIEPServicePrescriptionIdeaEvent ADD CONSTRAINT FK_440435_StudentIEPServicePrescription FOREIGN KEY (EducationOrganizationId, IEPFinalizedDate, ServicePrescriptionDate, ServicePrescriptionDescriptorId, StudentIEPAssociationID, StudentUSI)
REFERENCES sedm.StudentIEPServicePrescription (EducationOrganizationId, IEPFinalizedDate, ServicePrescriptionDate, ServicePrescriptionDescriptorId, StudentIEPAssociationID, StudentUSI)
ON DELETE CASCADE
;

ALTER TABLE sedm.StudentIEPServicePrescriptionStaff ADD CONSTRAINT FK_e04f06_Staff FOREIGN KEY (StaffUSI)
REFERENCES edfi.Staff (StaffUSI)
;

CREATE INDEX FK_e04f06_Staff
ON sedm.StudentIEPServicePrescriptionStaff (StaffUSI ASC);

ALTER TABLE sedm.StudentIEPServicePrescriptionStaff ADD CONSTRAINT FK_e04f06_StudentIEPServicePrescription FOREIGN KEY (EducationOrganizationId, IEPFinalizedDate, ServicePrescriptionDate, ServicePrescriptionDescriptorId, StudentIEPAssociationID, StudentUSI)
REFERENCES sedm.StudentIEPServicePrescription (EducationOrganizationId, IEPFinalizedDate, ServicePrescriptionDate, ServicePrescriptionDescriptorId, StudentIEPAssociationID, StudentUSI)
ON DELETE CASCADE
;

