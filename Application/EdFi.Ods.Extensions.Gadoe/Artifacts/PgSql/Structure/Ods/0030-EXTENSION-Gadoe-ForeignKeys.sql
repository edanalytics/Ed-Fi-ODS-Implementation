ALTER TABLE gadoe.BehaviorIncidentDescriptor ADD CONSTRAINT FK_864fe4_Descriptor FOREIGN KEY (BehaviorIncidentDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE gadoe.ChildFindStatusDescriptor ADD CONSTRAINT FK_26d111_Descriptor FOREIGN KEY (ChildFindStatusDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE gadoe.ChwCertFieldCodeDescriptor ADD CONSTRAINT FK_b739a8_Descriptor FOREIGN KEY (ChwCertFieldCodeDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE gadoe.CountyOfResidenceDescriptor ADD CONSTRAINT FK_c087bc_Descriptor FOREIGN KEY (CountyOfResidenceDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE gadoe.DataTypeIndicatorDescriptor ADD CONSTRAINT FK_27d35a_Descriptor FOREIGN KEY (DataTypeIndicatorDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE gadoe.DisciplineActionAuxiliaryDescriptor ADD CONSTRAINT FK_1f0ed2_Descriptor FOREIGN KEY (DisciplineActionAuxiliaryDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE gadoe.DisciplineActionExtension ADD CONSTRAINT FK_699fda_DataTypeIndicatorDescriptor FOREIGN KEY (DataTypeIndicatorDescriptorId)
REFERENCES gadoe.DataTypeIndicatorDescriptor (DataTypeIndicatorDescriptorId)
;

CREATE INDEX FK_699fda_DataTypeIndicatorDescriptor
ON gadoe.DisciplineActionExtension (DataTypeIndicatorDescriptorId ASC);

ALTER TABLE gadoe.DisciplineActionExtension ADD CONSTRAINT FK_699fda_DisciplineAction FOREIGN KEY (DisciplineActionIdentifier, DisciplineDate, StudentUSI)
REFERENCES edfi.DisciplineAction (DisciplineActionIdentifier, DisciplineDate, StudentUSI)
ON DELETE CASCADE
;

ALTER TABLE gadoe.DisciplineActionExtension ADD CONSTRAINT FK_699fda_DisciplineActionAuxiliaryDescriptor FOREIGN KEY (DisciplineActionAuxiliaryDescriptorId)
REFERENCES gadoe.DisciplineActionAuxiliaryDescriptor (DisciplineActionAuxiliaryDescriptorId)
;

CREATE INDEX FK_699fda_DisciplineActionAuxiliaryDescriptor
ON gadoe.DisciplineActionExtension (DisciplineActionAuxiliaryDescriptorId ASC);

ALTER TABLE gadoe.DisciplineActionExtension ADD CONSTRAINT FK_699fda_DisciplineProcessTypeDescriptor FOREIGN KEY (DisciplineProcessTypeDescriptorId)
REFERENCES gadoe.DisciplineProcessTypeDescriptor (DisciplineProcessTypeDescriptorId)
;

CREATE INDEX FK_699fda_DisciplineProcessTypeDescriptor
ON gadoe.DisciplineActionExtension (DisciplineProcessTypeDescriptorId ASC);

ALTER TABLE gadoe.DisciplineActionExtension ADD CONSTRAINT FK_699fda_IncidentSeverityLevelDescriptor FOREIGN KEY (IncidentSeverityLevelDescriptorId)
REFERENCES gadoe.IncidentSeverityLevelDescriptor (IncidentSeverityLevelDescriptorId)
;

CREATE INDEX FK_699fda_IncidentSeverityLevelDescriptor
ON gadoe.DisciplineActionExtension (IncidentSeverityLevelDescriptorId ASC);

ALTER TABLE gadoe.DisciplineIncidentExtension ADD CONSTRAINT FK_cde8b8_DisciplineIncident FOREIGN KEY (IncidentIdentifier, SchoolId)
REFERENCES edfi.DisciplineIncident (IncidentIdentifier, SchoolId)
ON DELETE CASCADE
;

ALTER TABLE gadoe.DisciplineIncidentExtension ADD CONSTRAINT FK_cde8b8_IncidentTimingDescriptor FOREIGN KEY (IncidentTimingDescriptorId)
REFERENCES gadoe.IncidentTimingDescriptor (IncidentTimingDescriptorId)
;

CREATE INDEX FK_cde8b8_IncidentTimingDescriptor
ON gadoe.DisciplineIncidentExtension (IncidentTimingDescriptorId ASC);

ALTER TABLE gadoe.DisciplineProcessTypeDescriptor ADD CONSTRAINT FK_adfca5_Descriptor FOREIGN KEY (DisciplineProcessTypeDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE gadoe.EipDeliveryModelDescriptor ADD CONSTRAINT FK_77a360_Descriptor FOREIGN KEY (EipDeliveryModelDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE gadoe.EmployeeTypeDescriptor ADD CONSTRAINT FK_4bc0aa_Descriptor FOREIGN KEY (EmployeeTypeDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE gadoe.EnrollmentLocationDescriptor ADD CONSTRAINT FK_a758cf_Descriptor FOREIGN KEY (EnrollmentLocationDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE gadoe.EsolDeliveryModelDescriptor ADD CONSTRAINT FK_3b08b5_Descriptor FOREIGN KEY (EsolDeliveryModelDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE gadoe.FteProgramCodeDescriptor ADD CONSTRAINT FK_1bcec3_Descriptor FOREIGN KEY (FteProgramCodeDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE gadoe.GiftedDeliveryModelDescriptor ADD CONSTRAINT FK_111bfe_Descriptor FOREIGN KEY (GiftedDeliveryModelDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE gadoe.GiftedServedDescriptor ADD CONSTRAINT FK_547c06_Descriptor FOREIGN KEY (GiftedServedDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE gadoe.IepInclusionTypeDescriptor ADD CONSTRAINT FK_aa4f07_Descriptor FOREIGN KEY (IepInclusionTypeDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE gadoe.IncidentSeverityLevelDescriptor ADD CONSTRAINT FK_29b1cf_Descriptor FOREIGN KEY (IncidentSeverityLevelDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE gadoe.IncidentTimingDescriptor ADD CONSTRAINT FK_d9ad1e_Descriptor FOREIGN KEY (IncidentTimingDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE gadoe.InclusionPersonnelDescriptor ADD CONSTRAINT FK_97e9dc_Descriptor FOREIGN KEY (InclusionPersonnelDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE gadoe.LocalEducationAgencyStatistic ADD CONSTRAINT FK_c511a5_EducationOrganization FOREIGN KEY (EducationOrganizationId)
REFERENCES edfi.EducationOrganization (EducationOrganizationId)
;

ALTER TABLE gadoe.LocalEducationAgencyStatisticPrivateOrHomeSchooledStudentCount ADD CONSTRAINT FK_e9498a_LocalEducationAgencyStatistic FOREIGN KEY (EducationOrganizationId)
REFERENCES gadoe.LocalEducationAgencyStatistic (EducationOrganizationId)
ON DELETE CASCADE
;

CREATE INDEX FK_e9498a_LocalEducationAgencyStatistic
ON gadoe.LocalEducationAgencyStatisticPrivateOrHomeSchooledStudentCount (EducationOrganizationId ASC);

ALTER TABLE gadoe.LocalEducationAgencyStatisticPrivateOrHomeSchooledStudentCount ADD CONSTRAINT FK_e9498a_PrivateOrHomeSchooledStudentDescriptor FOREIGN KEY (PrivateOrHomeSchooledStudentDescriptorId)
REFERENCES gadoe.PrivateOrHomeSchooledStudentDescriptor (PrivateOrHomeSchooledStudentDescriptorId)
;

CREATE INDEX FK_e9498a_PrivateOrHomeSchooledStudentDescriptor
ON gadoe.LocalEducationAgencyStatisticPrivateOrHomeSchooledStudentCount (PrivateOrHomeSchooledStudentDescriptorId ASC);

ALTER TABLE gadoe.LocalEducationAgencyStatisticPsychologicalServicesEvalua_bdbe54 ADD CONSTRAINT FK_bdbe54_LocalEducationAgencyStatistic FOREIGN KEY (EducationOrganizationId)
REFERENCES gadoe.LocalEducationAgencyStatistic (EducationOrganizationId)
ON DELETE CASCADE
;

CREATE INDEX FK_bdbe54_LocalEducationAgencyStatistic
ON gadoe.LocalEducationAgencyStatisticPsychologicalServicesEvalua_bdbe54 (EducationOrganizationId ASC);

ALTER TABLE gadoe.LocalEducationAgencyStatisticPsychologicalServicesEvalua_bdbe54 ADD CONSTRAINT FK_bdbe54_PsychologicalServicesEvaluationDescriptor FOREIGN KEY (PsychologicalServicesEvaluationDescriptorId)
REFERENCES gadoe.PsychologicalServicesEvaluationDescriptor (PsychologicalServicesEvaluationDescriptorId)
;

CREATE INDEX FK_bdbe54_PsychologicalServicesEvaluationDescriptor
ON gadoe.LocalEducationAgencyStatisticPsychologicalServicesEvalua_bdbe54 (PsychologicalServicesEvaluationDescriptorId ASC);

ALTER TABLE gadoe.NonESOLStatusDescriptor ADD CONSTRAINT FK_f5331d_Descriptor FOREIGN KEY (NonESOLStatusDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE gadoe.NutritionSchoolDescriptor ADD CONSTRAINT FK_0724fd_Descriptor FOREIGN KEY (NutritionSchoolDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE gadoe.PrimaryStaffClassificationDescriptor ADD CONSTRAINT FK_33d763_Descriptor FOREIGN KEY (PrimaryStaffClassificationDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE gadoe.PrivateOrHomeSchooledStudentDescriptor ADD CONSTRAINT FK_ec8dfb_Descriptor FOREIGN KEY (PrivateOrHomeSchooledStudentDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE gadoe.ProgramReferredByDescriptor ADD CONSTRAINT FK_bb9054_Descriptor FOREIGN KEY (ProgramReferredByDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE gadoe.PsychologicalServicesEvaluationDescriptor ADD CONSTRAINT FK_4e6dca_Descriptor FOREIGN KEY (PsychologicalServicesEvaluationDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE gadoe.SalaryPayStepDescriptor ADD CONSTRAINT FK_bbf6b9_Descriptor FOREIGN KEY (SalaryPayStepDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE gadoe.SchoolStatistic ADD CONSTRAINT FK_ff7a71_NutritionSchoolDescriptor FOREIGN KEY (NutritionSchoolDescriptorId)
REFERENCES gadoe.NutritionSchoolDescriptor (NutritionSchoolDescriptorId)
;

CREATE INDEX FK_ff7a71_NutritionSchoolDescriptor
ON gadoe.SchoolStatistic (NutritionSchoolDescriptorId ASC);

ALTER TABLE gadoe.SchoolStatistic ADD CONSTRAINT FK_ff7a71_School FOREIGN KEY (SchoolId)
REFERENCES edfi.School (SchoolId)
;

ALTER TABLE gadoe.SchoolStatistic ADD CONSTRAINT FK_ff7a71_StemSteamSchoolDescriptor FOREIGN KEY (StemSteamSchoolDescriptorId)
REFERENCES gadoe.StemSteamSchoolDescriptor (StemSteamSchoolDescriptorId)
;

CREATE INDEX FK_ff7a71_StemSteamSchoolDescriptor
ON gadoe.SchoolStatistic (StemSteamSchoolDescriptorId ASC);

ALTER TABLE gadoe.SchoolStatistic ADD CONSTRAINT FK_ff7a71_TitleIPartASchoolDesignationDescriptor FOREIGN KEY (TitleIPartASchoolDesignationDescriptorId)
REFERENCES edfi.TitleIPartASchoolDesignationDescriptor (TitleIPartASchoolDesignationDescriptorId)
;

CREATE INDEX FK_ff7a71_TitleIPartASchoolDesignationDescriptor
ON gadoe.SchoolStatistic (TitleIPartASchoolDesignationDescriptorId ASC);

ALTER TABLE gadoe.SchoolStatisticBehaviorIncidentCount ADD CONSTRAINT FK_0eac00_BehaviorIncidentDescriptor FOREIGN KEY (BehaviorIncidentDescriptorId)
REFERENCES gadoe.BehaviorIncidentDescriptor (BehaviorIncidentDescriptorId)
;

CREATE INDEX FK_0eac00_BehaviorIncidentDescriptor
ON gadoe.SchoolStatisticBehaviorIncidentCount (BehaviorIncidentDescriptorId ASC);

ALTER TABLE gadoe.SchoolStatisticBehaviorIncidentCount ADD CONSTRAINT FK_0eac00_SchoolStatistic FOREIGN KEY (SchoolId)
REFERENCES gadoe.SchoolStatistic (SchoolId)
ON DELETE CASCADE
;

CREATE INDEX FK_0eac00_SchoolStatistic
ON gadoe.SchoolStatisticBehaviorIncidentCount (SchoolId ASC);

ALTER TABLE gadoe.SchoolStatisticSocialWorkCaseCount ADD CONSTRAINT FK_608ec5_SchoolStatistic FOREIGN KEY (SchoolId)
REFERENCES gadoe.SchoolStatistic (SchoolId)
ON DELETE CASCADE
;

CREATE INDEX FK_608ec5_SchoolStatistic
ON gadoe.SchoolStatisticSocialWorkCaseCount (SchoolId ASC);

ALTER TABLE gadoe.SchoolStatisticSocialWorkCaseCount ADD CONSTRAINT FK_608ec5_SocialWorkCaseDescriptor FOREIGN KEY (SocialWorkCaseDescriptorId)
REFERENCES gadoe.SocialWorkCaseDescriptor (SocialWorkCaseDescriptorId)
;

CREATE INDEX FK_608ec5_SocialWorkCaseDescriptor
ON gadoe.SchoolStatisticSocialWorkCaseCount (SocialWorkCaseDescriptorId ASC);

ALTER TABLE gadoe.SchoolStatisticSocialWorkReferralCount ADD CONSTRAINT FK_cf1b97_SchoolStatistic FOREIGN KEY (SchoolId)
REFERENCES gadoe.SchoolStatistic (SchoolId)
ON DELETE CASCADE
;

CREATE INDEX FK_cf1b97_SchoolStatistic
ON gadoe.SchoolStatisticSocialWorkReferralCount (SchoolId ASC);

ALTER TABLE gadoe.SchoolStatisticSocialWorkReferralCount ADD CONSTRAINT FK_cf1b97_SocialWorkReferralDescriptor FOREIGN KEY (SocialWorkReferralDescriptorId)
REFERENCES gadoe.SocialWorkReferralDescriptor (SocialWorkReferralDescriptorId)
;

CREATE INDEX FK_cf1b97_SocialWorkReferralDescriptor
ON gadoe.SchoolStatisticSocialWorkReferralCount (SocialWorkReferralDescriptorId ASC);

ALTER TABLE gadoe.SchoolStatisticSocialWorkServiceInterventionCount ADD CONSTRAINT FK_386ccc_SchoolStatistic FOREIGN KEY (SchoolId)
REFERENCES gadoe.SchoolStatistic (SchoolId)
ON DELETE CASCADE
;

CREATE INDEX FK_386ccc_SchoolStatistic
ON gadoe.SchoolStatisticSocialWorkServiceInterventionCount (SchoolId ASC);

ALTER TABLE gadoe.SchoolStatisticSocialWorkServiceInterventionCount ADD CONSTRAINT FK_386ccc_SocialWorkServiceInterventionDescriptor FOREIGN KEY (SocialWorkServiceInterventionDescriptorId)
REFERENCES gadoe.SocialWorkServiceInterventionDescriptor (SocialWorkServiceInterventionDescriptorId)
;

CREATE INDEX FK_386ccc_SocialWorkServiceInterventionDescriptor
ON gadoe.SchoolStatisticSocialWorkServiceInterventionCount (SocialWorkServiceInterventionDescriptorId ASC);

ALTER TABLE gadoe.Section504PlanDescriptor ADD CONSTRAINT FK_df3665_Descriptor FOREIGN KEY (Section504PlanDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE gadoe.SectionExtension ADD CONSTRAINT FK_86dfb3_Section FOREIGN KEY (LocalCourseCode, SchoolId, SchoolYear, SectionIdentifier, SessionName)
REFERENCES edfi.Section (LocalCourseCode, SchoolId, SchoolYear, SectionIdentifier, SessionName)
ON DELETE CASCADE
ON UPDATE CASCADE
;

ALTER TABLE gadoe.SocialWorkCaseDescriptor ADD CONSTRAINT FK_f63d29_Descriptor FOREIGN KEY (SocialWorkCaseDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE gadoe.SocialWorkReferralDescriptor ADD CONSTRAINT FK_cb08ef_Descriptor FOREIGN KEY (SocialWorkReferralDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE gadoe.SocialWorkServiceInterventionDescriptor ADD CONSTRAINT FK_02d9b5_Descriptor FOREIGN KEY (SocialWorkServiceInterventionDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE gadoe.SpecialEducationDeliveryModelDescriptor ADD CONSTRAINT FK_559b3b_Descriptor FOREIGN KEY (SpecialEducationDeliveryModelDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE gadoe.SpecialEducationEventReasonDescriptor ADD CONSTRAINT FK_08a218_Descriptor FOREIGN KEY (SpecialEducationEventReasonDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE gadoe.SpecialEducationEventTypeDescriptor ADD CONSTRAINT FK_53c615_Descriptor FOREIGN KEY (SpecialEducationEventTypeDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE gadoe.SpecialEducationNonComplianceDescriptor ADD CONSTRAINT FK_a0d1be_Descriptor FOREIGN KEY (SpecialEducationNonComplianceDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE gadoe.StaffAssignmentCertificateTypeDescriptor ADD CONSTRAINT FK_8ec7b4_Descriptor FOREIGN KEY (StaffAssignmentCertificateTypeDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE gadoe.StaffAssignmentFieldCodeDescriptor ADD CONSTRAINT FK_393473_Descriptor FOREIGN KEY (StaffAssignmentFieldCodeDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE gadoe.StaffAssignmentFundCodeDescriptor ADD CONSTRAINT FK_a92899_Descriptor FOREIGN KEY (StaffAssignmentFundCodeDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE gadoe.StaffAssignmentSubjectMatterCodeDescriptor ADD CONSTRAINT FK_9995b9_Descriptor FOREIGN KEY (StaffAssignmentSubjectMatterCodeDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE gadoe.StaffEducationOrganizationAssignmentAssociationExtension ADD CONSTRAINT FK_6ea356_StaffEducationOrganizationAssignmentAssociation FOREIGN KEY (BeginDate, EducationOrganizationId, StaffClassificationDescriptorId, StaffUSI)
REFERENCES edfi.StaffEducationOrganizationAssignmentAssociation (BeginDate, EducationOrganizationId, StaffClassificationDescriptorId, StaffUSI)
ON DELETE CASCADE
;

ALTER TABLE gadoe.StaffEducationOrganizationAssignmentAssociationStaffAssi_fb334e ADD CONSTRAINT FK_fb334e_StaffAssignmentCertificateTypeDescriptor FOREIGN KEY (StaffAssignmentCertificateTypeDescriptorId)
REFERENCES gadoe.StaffAssignmentCertificateTypeDescriptor (StaffAssignmentCertificateTypeDescriptorId)
;

CREATE INDEX FK_fb334e_StaffAssignmentCertificateTypeDescriptor
ON gadoe.StaffEducationOrganizationAssignmentAssociationStaffAssi_fb334e (StaffAssignmentCertificateTypeDescriptorId ASC);

ALTER TABLE gadoe.StaffEducationOrganizationAssignmentAssociationStaffAssi_fb334e ADD CONSTRAINT FK_fb334e_StaffAssignmentFieldCodeDescriptor FOREIGN KEY (StaffAssignmentFieldCodeDescriptorId)
REFERENCES gadoe.StaffAssignmentFieldCodeDescriptor (StaffAssignmentFieldCodeDescriptorId)
;

CREATE INDEX FK_fb334e_StaffAssignmentFieldCodeDescriptor
ON gadoe.StaffEducationOrganizationAssignmentAssociationStaffAssi_fb334e (StaffAssignmentFieldCodeDescriptorId ASC);

ALTER TABLE gadoe.StaffEducationOrganizationAssignmentAssociationStaffAssi_fb334e ADD CONSTRAINT FK_fb334e_StaffAssignmentFundCodeDescriptor FOREIGN KEY (StaffAssignmentFundCodeDescriptorId)
REFERENCES gadoe.StaffAssignmentFundCodeDescriptor (StaffAssignmentFundCodeDescriptorId)
;

CREATE INDEX FK_fb334e_StaffAssignmentFundCodeDescriptor
ON gadoe.StaffEducationOrganizationAssignmentAssociationStaffAssi_fb334e (StaffAssignmentFundCodeDescriptorId ASC);

ALTER TABLE gadoe.StaffEducationOrganizationAssignmentAssociationStaffAssi_fb334e ADD CONSTRAINT FK_fb334e_StaffAssignmentSubjectMatterCodeDescriptor FOREIGN KEY (StaffAssignmentSubjectMatterCodeDescriptorId)
REFERENCES gadoe.StaffAssignmentSubjectMatterCodeDescriptor (StaffAssignmentSubjectMatterCodeDescriptorId)
;

CREATE INDEX FK_fb334e_StaffAssignmentSubjectMatterCodeDescriptor
ON gadoe.StaffEducationOrganizationAssignmentAssociationStaffAssi_fb334e (StaffAssignmentSubjectMatterCodeDescriptorId ASC);

ALTER TABLE gadoe.StaffEducationOrganizationAssignmentAssociationStaffAssi_fb334e ADD CONSTRAINT FK_fb334e_StaffEducationOrganizationAssignmentAssociation FOREIGN KEY (BeginDate, EducationOrganizationId, StaffClassificationDescriptorId, StaffUSI)
REFERENCES edfi.StaffEducationOrganizationAssignmentAssociation (BeginDate, EducationOrganizationId, StaffClassificationDescriptorId, StaffUSI)
ON DELETE CASCADE
;

CREATE INDEX FK_fb334e_StaffEducationOrganizationAssignmentAssociation
ON gadoe.StaffEducationOrganizationAssignmentAssociationStaffAssi_fb334e (BeginDate ASC, EducationOrganizationId ASC, StaffClassificationDescriptorId ASC, StaffUSI ASC);

ALTER TABLE gadoe.StaffEducationOrganizationEmploymentAssociationExtension ADD CONSTRAINT FK_ec4394_PrimaryStaffClassificationDescriptor FOREIGN KEY (PrimaryStaffClassificationDescriptorId)
REFERENCES gadoe.PrimaryStaffClassificationDescriptor (PrimaryStaffClassificationDescriptorId)
;

CREATE INDEX FK_ec4394_PrimaryStaffClassificationDescriptor
ON gadoe.StaffEducationOrganizationEmploymentAssociationExtension (PrimaryStaffClassificationDescriptorId ASC);

ALTER TABLE gadoe.StaffEducationOrganizationEmploymentAssociationExtension ADD CONSTRAINT FK_ec4394_SalaryPayStepDescriptor FOREIGN KEY (SalaryPayStepDescriptorId)
REFERENCES gadoe.SalaryPayStepDescriptor (SalaryPayStepDescriptorId)
;

CREATE INDEX FK_ec4394_SalaryPayStepDescriptor
ON gadoe.StaffEducationOrganizationEmploymentAssociationExtension (SalaryPayStepDescriptorId ASC);

ALTER TABLE gadoe.StaffEducationOrganizationEmploymentAssociationExtension ADD CONSTRAINT FK_ec4394_StaffEducationOrganizationEmploymentAssociation FOREIGN KEY (EducationOrganizationId, EmploymentStatusDescriptorId, HireDate, StaffUSI)
REFERENCES edfi.StaffEducationOrganizationEmploymentAssociation (EducationOrganizationId, EmploymentStatusDescriptorId, HireDate, StaffUSI)
ON DELETE CASCADE
;

ALTER TABLE gadoe.StaffEducationOrganizationEmploymentAssociationStaffEmpl_222c02 ADD CONSTRAINT FK_222c02_StaffEducationOrganizationEmploymentAssociation FOREIGN KEY (EducationOrganizationId, EmploymentStatusDescriptorId, HireDate, StaffUSI)
REFERENCES edfi.StaffEducationOrganizationEmploymentAssociation (EducationOrganizationId, EmploymentStatusDescriptorId, HireDate, StaffUSI)
ON DELETE CASCADE
;

CREATE INDEX FK_222c02_StaffEducationOrganizationEmploymentAssociation
ON gadoe.StaffEducationOrganizationEmploymentAssociationStaffEmpl_222c02 (EducationOrganizationId ASC, EmploymentStatusDescriptorId ASC, HireDate ASC, StaffUSI ASC);

ALTER TABLE gadoe.StaffEducationOrganizationEmploymentAssociationStaffEmpl_222c02 ADD CONSTRAINT FK_222c02_StaffEmploymentCharacteristicDescriptor FOREIGN KEY (StaffEmploymentCharacteristicDescriptorId)
REFERENCES gadoe.StaffEmploymentCharacteristicDescriptor (StaffEmploymentCharacteristicDescriptorId)
;

CREATE INDEX FK_222c02_StaffEmploymentCharacteristicDescriptor
ON gadoe.StaffEducationOrganizationEmploymentAssociationStaffEmpl_222c02 (StaffEmploymentCharacteristicDescriptorId ASC);

ALTER TABLE gadoe.StaffEducationOrganizationEmploymentAssociationStaffEmpl_3580a6 ADD CONSTRAINT FK_3580a6_StaffEducationOrganizationEmploymentAssociation FOREIGN KEY (EducationOrganizationId, EmploymentStatusDescriptorId, HireDate, StaffUSI)
REFERENCES edfi.StaffEducationOrganizationEmploymentAssociation (EducationOrganizationId, EmploymentStatusDescriptorId, HireDate, StaffUSI)
ON DELETE CASCADE
;

CREATE INDEX FK_3580a6_StaffEducationOrganizationEmploymentAssociation
ON gadoe.StaffEducationOrganizationEmploymentAssociationStaffEmpl_3580a6 (EducationOrganizationId ASC, EmploymentStatusDescriptorId ASC, HireDate ASC, StaffUSI ASC);

ALTER TABLE gadoe.StaffEmploymentCharacteristicDescriptor ADD CONSTRAINT FK_e6fd72_Descriptor FOREIGN KEY (StaffEmploymentCharacteristicDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE gadoe.StaffExtension ADD CONSTRAINT FK_d7b81a_EmployeeTypeDescriptor FOREIGN KEY (EmployeeTypeDescriptorId)
REFERENCES gadoe.EmployeeTypeDescriptor (EmployeeTypeDescriptorId)
;

CREATE INDEX FK_d7b81a_EmployeeTypeDescriptor
ON gadoe.StaffExtension (EmployeeTypeDescriptorId ASC);

ALTER TABLE gadoe.StaffExtension ADD CONSTRAINT FK_d7b81a_Staff FOREIGN KEY (StaffUSI)
REFERENCES edfi.Staff (StaffUSI)
ON DELETE CASCADE
;

ALTER TABLE gadoe.StaffSectionAssociationExtension ADD CONSTRAINT FK_2dc783_ChwCertFieldCodeDescriptor FOREIGN KEY (ChwCertFieldCodeDescriptorId)
REFERENCES gadoe.ChwCertFieldCodeDescriptor (ChwCertFieldCodeDescriptorId)
;

CREATE INDEX FK_2dc783_ChwCertFieldCodeDescriptor
ON gadoe.StaffSectionAssociationExtension (ChwCertFieldCodeDescriptorId ASC);

ALTER TABLE gadoe.StaffSectionAssociationExtension ADD CONSTRAINT FK_2dc783_StaffSectionAssociation FOREIGN KEY (LocalCourseCode, SchoolId, SchoolYear, SectionIdentifier, SessionName, StaffUSI)
REFERENCES edfi.StaffSectionAssociation (LocalCourseCode, SchoolId, SchoolYear, SectionIdentifier, SessionName, StaffUSI)
ON DELETE CASCADE
ON UPDATE CASCADE
;

ALTER TABLE gadoe.StaffServiceTypeDescriptor ADD CONSTRAINT FK_e6550e_Descriptor FOREIGN KEY (StaffServiceTypeDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE gadoe.StemSteamSchoolDescriptor ADD CONSTRAINT FK_9e51ad_Descriptor FOREIGN KEY (StemSteamSchoolDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE gadoe.StudentEducationOrganizationAssociationExtension ADD CONSTRAINT FK_2c2930_CountyOfResidenceDescriptor FOREIGN KEY (CountyOfResidenceDescriptorId)
REFERENCES gadoe.CountyOfResidenceDescriptor (CountyOfResidenceDescriptorId)
;

CREATE INDEX FK_2c2930_CountyOfResidenceDescriptor
ON gadoe.StudentEducationOrganizationAssociationExtension (CountyOfResidenceDescriptorId ASC);

ALTER TABLE gadoe.StudentEducationOrganizationAssociationExtension ADD CONSTRAINT FK_2c2930_LanguageDescriptor FOREIGN KEY (Biliteracy1LanguageDescriptorId)
REFERENCES edfi.LanguageDescriptor (LanguageDescriptorId)
;

CREATE INDEX FK_2c2930_LanguageDescriptor
ON gadoe.StudentEducationOrganizationAssociationExtension (Biliteracy1LanguageDescriptorId ASC);

ALTER TABLE gadoe.StudentEducationOrganizationAssociationExtension ADD CONSTRAINT FK_2c2930_LanguageDescriptor1 FOREIGN KEY (Biliteracy2LanguageDescriptorId)
REFERENCES edfi.LanguageDescriptor (LanguageDescriptorId)
;

CREATE INDEX FK_2c2930_LanguageDescriptor1
ON gadoe.StudentEducationOrganizationAssociationExtension (Biliteracy2LanguageDescriptorId ASC);

ALTER TABLE gadoe.StudentEducationOrganizationAssociationExtension ADD CONSTRAINT FK_2c2930_LanguageDescriptor2 FOREIGN KEY (Biliteracy3LanguageDescriptorId)
REFERENCES edfi.LanguageDescriptor (LanguageDescriptorId)
;

CREATE INDEX FK_2c2930_LanguageDescriptor2
ON gadoe.StudentEducationOrganizationAssociationExtension (Biliteracy3LanguageDescriptorId ASC);

ALTER TABLE gadoe.StudentEducationOrganizationAssociationExtension ADD CONSTRAINT FK_2c2930_LanguageDescriptor3 FOREIGN KEY (ParentCommunicationLanguageDescriptorId)
REFERENCES edfi.LanguageDescriptor (LanguageDescriptorId)
;

CREATE INDEX FK_2c2930_LanguageDescriptor3
ON gadoe.StudentEducationOrganizationAssociationExtension (ParentCommunicationLanguageDescriptorId ASC);

ALTER TABLE gadoe.StudentEducationOrganizationAssociationExtension ADD CONSTRAINT FK_2c2930_NonESOLStatusDescriptor FOREIGN KEY (NonESOLStatusDescriptorId)
REFERENCES gadoe.NonESOLStatusDescriptor (NonESOLStatusDescriptorId)
;

CREATE INDEX FK_2c2930_NonESOLStatusDescriptor
ON gadoe.StudentEducationOrganizationAssociationExtension (NonESOLStatusDescriptorId ASC);

ALTER TABLE gadoe.StudentEducationOrganizationAssociationExtension ADD CONSTRAINT FK_2c2930_StudentEducationOrganizationAssociation FOREIGN KEY (EducationOrganizationId, StudentUSI)
REFERENCES edfi.StudentEducationOrganizationAssociation (EducationOrganizationId, StudentUSI)
ON DELETE CASCADE
;

ALTER TABLE gadoe.StudentEducationOrganizationAssociationExtension ADD CONSTRAINT FK_2c2930_SystemOfResidencyDescriptor FOREIGN KEY (SystemOfResidencyDescriptorId)
REFERENCES gadoe.SystemOfResidencyDescriptor (SystemOfResidencyDescriptorId)
;

CREATE INDEX FK_2c2930_SystemOfResidencyDescriptor
ON gadoe.StudentEducationOrganizationAssociationExtension (SystemOfResidencyDescriptorId ASC);

ALTER TABLE gadoe.StudentLanguageInstructionProgramAssociationExtension ADD CONSTRAINT FK_438c5c_StudentLanguageInstructionProgramAssociation FOREIGN KEY (BeginDate, EducationOrganizationId, ProgramEducationOrganizationId, ProgramName, ProgramTypeDescriptorId, StudentUSI)
REFERENCES edfi.StudentLanguageInstructionProgramAssociation (BeginDate, EducationOrganizationId, ProgramEducationOrganizationId, ProgramName, ProgramTypeDescriptorId, StudentUSI)
ON DELETE CASCADE
;

ALTER TABLE gadoe.StudentProgramAssociationExtension ADD CONSTRAINT FK_0c120d_ProgramReferredByDescriptor FOREIGN KEY (ProgramReferredByDescriptorId)
REFERENCES gadoe.ProgramReferredByDescriptor (ProgramReferredByDescriptorId)
;

CREATE INDEX FK_0c120d_ProgramReferredByDescriptor
ON gadoe.StudentProgramAssociationExtension (ProgramReferredByDescriptorId ASC);

ALTER TABLE gadoe.StudentProgramAssociationExtension ADD CONSTRAINT FK_0c120d_StudentProgramAssociation FOREIGN KEY (BeginDate, EducationOrganizationId, ProgramEducationOrganizationId, ProgramName, ProgramTypeDescriptorId, StudentUSI)
REFERENCES edfi.StudentProgramAssociation (BeginDate, EducationOrganizationId, ProgramEducationOrganizationId, ProgramName, ProgramTypeDescriptorId, StudentUSI)
ON DELETE CASCADE
;

ALTER TABLE gadoe.StudentSchoolAssociationExtension ADD CONSTRAINT FK_880cb1_ChildFindStatusDescriptor FOREIGN KEY (ChildFindStatusDescriptorId)
REFERENCES gadoe.ChildFindStatusDescriptor (ChildFindStatusDescriptorId)
;

CREATE INDEX FK_880cb1_ChildFindStatusDescriptor
ON gadoe.StudentSchoolAssociationExtension (ChildFindStatusDescriptorId ASC);

ALTER TABLE gadoe.StudentSchoolAssociationExtension ADD CONSTRAINT FK_880cb1_GiftedServedDescriptor FOREIGN KEY (GiftedServedDescriptorId)
REFERENCES gadoe.GiftedServedDescriptor (GiftedServedDescriptorId)
;

CREATE INDEX FK_880cb1_GiftedServedDescriptor
ON gadoe.StudentSchoolAssociationExtension (GiftedServedDescriptorId ASC);

ALTER TABLE gadoe.StudentSchoolAssociationExtension ADD CONSTRAINT FK_880cb1_StudentSchoolAssociation FOREIGN KEY (EntryDate, SchoolId, StudentUSI)
REFERENCES edfi.StudentSchoolAssociation (EntryDate, SchoolId, StudentUSI)
ON DELETE CASCADE
ON UPDATE CASCADE
;

ALTER TABLE gadoe.StudentSchoolAssociationFteSegments ADD CONSTRAINT FK_eeccbe_EnrollmentLocationDescriptor FOREIGN KEY (EnrollmentLocationDescriptorId)
REFERENCES gadoe.EnrollmentLocationDescriptor (EnrollmentLocationDescriptorId)
;

CREATE INDEX FK_eeccbe_EnrollmentLocationDescriptor
ON gadoe.StudentSchoolAssociationFteSegments (EnrollmentLocationDescriptorId ASC);

ALTER TABLE gadoe.StudentSchoolAssociationFteSegments ADD CONSTRAINT FK_eeccbe_FteProgramCodeDescriptor FOREIGN KEY (FteProgramCodeDescriptorId)
REFERENCES gadoe.FteProgramCodeDescriptor (FteProgramCodeDescriptorId)
;

CREATE INDEX FK_eeccbe_FteProgramCodeDescriptor
ON gadoe.StudentSchoolAssociationFteSegments (FteProgramCodeDescriptorId ASC);

ALTER TABLE gadoe.StudentSchoolAssociationFteSegments ADD CONSTRAINT FK_eeccbe_InclusionPersonnelDescriptor FOREIGN KEY (InclusionPersonnelDescriptorId)
REFERENCES gadoe.InclusionPersonnelDescriptor (InclusionPersonnelDescriptorId)
;

CREATE INDEX FK_eeccbe_InclusionPersonnelDescriptor
ON gadoe.StudentSchoolAssociationFteSegments (InclusionPersonnelDescriptorId ASC);

ALTER TABLE gadoe.StudentSchoolAssociationFteSegments ADD CONSTRAINT FK_eeccbe_StudentSchoolAssociation FOREIGN KEY (EntryDate, SchoolId, StudentUSI)
REFERENCES edfi.StudentSchoolAssociation (EntryDate, SchoolId, StudentUSI)
ON DELETE CASCADE
ON UPDATE CASCADE
;

CREATE INDEX FK_eeccbe_StudentSchoolAssociation
ON gadoe.StudentSchoolAssociationFteSegments (EntryDate ASC, SchoolId ASC, StudentUSI ASC);

ALTER TABLE gadoe.StudentSection504ProgramAssociation ADD CONSTRAINT FK_6e41ee_GeneralStudentProgramAssociation FOREIGN KEY (BeginDate, EducationOrganizationId, ProgramEducationOrganizationId, ProgramName, ProgramTypeDescriptorId, StudentUSI)
REFERENCES edfi.GeneralStudentProgramAssociation (BeginDate, EducationOrganizationId, ProgramEducationOrganizationId, ProgramName, ProgramTypeDescriptorId, StudentUSI)
ON DELETE CASCADE
;

ALTER TABLE gadoe.StudentSection504ProgramAssociationSection504Plan ADD CONSTRAINT FK_16f89c_Section504PlanDescriptor FOREIGN KEY (Section504PlanDescriptorId)
REFERENCES gadoe.Section504PlanDescriptor (Section504PlanDescriptorId)
;

CREATE INDEX FK_16f89c_Section504PlanDescriptor
ON gadoe.StudentSection504ProgramAssociationSection504Plan (Section504PlanDescriptorId ASC);

ALTER TABLE gadoe.StudentSection504ProgramAssociationSection504Plan ADD CONSTRAINT FK_16f89c_StudentSection504ProgramAssociation FOREIGN KEY (BeginDate, EducationOrganizationId, ProgramEducationOrganizationId, ProgramName, ProgramTypeDescriptorId, StudentUSI)
REFERENCES gadoe.StudentSection504ProgramAssociation (BeginDate, EducationOrganizationId, ProgramEducationOrganizationId, ProgramName, ProgramTypeDescriptorId, StudentUSI)
ON DELETE CASCADE
;

CREATE INDEX FK_16f89c_StudentSection504ProgramAssociation
ON gadoe.StudentSection504ProgramAssociationSection504Plan (BeginDate ASC, EducationOrganizationId ASC, ProgramEducationOrganizationId ASC, ProgramName ASC, ProgramTypeDescriptorId ASC, StudentUSI ASC);

ALTER TABLE gadoe.StudentSectionAssociationAdditionalTeacher ADD CONSTRAINT FK_f4d3bb_Staff FOREIGN KEY (StaffUSI)
REFERENCES edfi.Staff (StaffUSI)
;

CREATE INDEX FK_f4d3bb_Staff
ON gadoe.StudentSectionAssociationAdditionalTeacher (StaffUSI ASC);

ALTER TABLE gadoe.StudentSectionAssociationAdditionalTeacher ADD CONSTRAINT FK_f4d3bb_StaffServiceTypeDescriptor FOREIGN KEY (StaffServiceTypeDescriptorId)
REFERENCES gadoe.StaffServiceTypeDescriptor (StaffServiceTypeDescriptorId)
;

CREATE INDEX FK_f4d3bb_StaffServiceTypeDescriptor
ON gadoe.StudentSectionAssociationAdditionalTeacher (StaffServiceTypeDescriptorId ASC);

ALTER TABLE gadoe.StudentSectionAssociationAdditionalTeacher ADD CONSTRAINT FK_f4d3bb_StudentSectionAssociation FOREIGN KEY (BeginDate, LocalCourseCode, SchoolId, SchoolYear, SectionIdentifier, SessionName, StudentUSI)
REFERENCES edfi.StudentSectionAssociation (BeginDate, LocalCourseCode, SchoolId, SchoolYear, SectionIdentifier, SessionName, StudentUSI)
ON DELETE CASCADE
ON UPDATE CASCADE
;

CREATE INDEX FK_f4d3bb_StudentSectionAssociation
ON gadoe.StudentSectionAssociationAdditionalTeacher (BeginDate ASC, LocalCourseCode ASC, SchoolId ASC, SchoolYear ASC, SectionIdentifier ASC, SessionName ASC, StudentUSI ASC);

ALTER TABLE gadoe.StudentSectionAssociationExtension ADD CONSTRAINT FK_a77484_EipDeliveryModelDescriptor FOREIGN KEY (EipDeliveryModelDescriptorId)
REFERENCES gadoe.EipDeliveryModelDescriptor (EipDeliveryModelDescriptorId)
;

CREATE INDEX FK_a77484_EipDeliveryModelDescriptor
ON gadoe.StudentSectionAssociationExtension (EipDeliveryModelDescriptorId ASC);

ALTER TABLE gadoe.StudentSectionAssociationExtension ADD CONSTRAINT FK_a77484_EnrollmentLocationDescriptor FOREIGN KEY (EnrollmentLocationDescriptorId)
REFERENCES gadoe.EnrollmentLocationDescriptor (EnrollmentLocationDescriptorId)
;

CREATE INDEX FK_a77484_EnrollmentLocationDescriptor
ON gadoe.StudentSectionAssociationExtension (EnrollmentLocationDescriptorId ASC);

ALTER TABLE gadoe.StudentSectionAssociationExtension ADD CONSTRAINT FK_a77484_EsolDeliveryModelDescriptor FOREIGN KEY (EsolDeliveryModelDescriptorId)
REFERENCES gadoe.EsolDeliveryModelDescriptor (EsolDeliveryModelDescriptorId)
;

CREATE INDEX FK_a77484_EsolDeliveryModelDescriptor
ON gadoe.StudentSectionAssociationExtension (EsolDeliveryModelDescriptorId ASC);

ALTER TABLE gadoe.StudentSectionAssociationExtension ADD CONSTRAINT FK_a77484_FteProgramCodeDescriptor FOREIGN KEY (FteProgramCodeDescriptorId)
REFERENCES gadoe.FteProgramCodeDescriptor (FteProgramCodeDescriptorId)
;

CREATE INDEX FK_a77484_FteProgramCodeDescriptor
ON gadoe.StudentSectionAssociationExtension (FteProgramCodeDescriptorId ASC);

ALTER TABLE gadoe.StudentSectionAssociationExtension ADD CONSTRAINT FK_a77484_GiftedDeliveryModelDescriptor FOREIGN KEY (GiftedDeliveryModelDescriptorId)
REFERENCES gadoe.GiftedDeliveryModelDescriptor (GiftedDeliveryModelDescriptorId)
;

CREATE INDEX FK_a77484_GiftedDeliveryModelDescriptor
ON gadoe.StudentSectionAssociationExtension (GiftedDeliveryModelDescriptorId ASC);

ALTER TABLE gadoe.StudentSectionAssociationExtension ADD CONSTRAINT FK_a77484_IepInclusionTypeDescriptor FOREIGN KEY (IepInclusionTypeDescriptorId)
REFERENCES gadoe.IepInclusionTypeDescriptor (IepInclusionTypeDescriptorId)
;

CREATE INDEX FK_a77484_IepInclusionTypeDescriptor
ON gadoe.StudentSectionAssociationExtension (IepInclusionTypeDescriptorId ASC);

ALTER TABLE gadoe.StudentSectionAssociationExtension ADD CONSTRAINT FK_a77484_InclusionPersonnelDescriptor FOREIGN KEY (InclusionPersonnelDescriptorId)
REFERENCES gadoe.InclusionPersonnelDescriptor (InclusionPersonnelDescriptorId)
;

CREATE INDEX FK_a77484_InclusionPersonnelDescriptor
ON gadoe.StudentSectionAssociationExtension (InclusionPersonnelDescriptorId ASC);

ALTER TABLE gadoe.StudentSectionAssociationExtension ADD CONSTRAINT FK_a77484_SpecialEducationDeliveryModelDescriptor FOREIGN KEY (SpecialEducationDeliveryModelDescriptorId)
REFERENCES gadoe.SpecialEducationDeliveryModelDescriptor (SpecialEducationDeliveryModelDescriptorId)
;

CREATE INDEX FK_a77484_SpecialEducationDeliveryModelDescriptor
ON gadoe.StudentSectionAssociationExtension (SpecialEducationDeliveryModelDescriptorId ASC);

ALTER TABLE gadoe.StudentSectionAssociationExtension ADD CONSTRAINT FK_a77484_StudentSectionAssociation FOREIGN KEY (BeginDate, LocalCourseCode, SchoolId, SchoolYear, SectionIdentifier, SessionName, StudentUSI)
REFERENCES edfi.StudentSectionAssociation (BeginDate, LocalCourseCode, SchoolId, SchoolYear, SectionIdentifier, SessionName, StudentUSI)
ON DELETE CASCADE
ON UPDATE CASCADE
;

ALTER TABLE gadoe.StudentSectionAssociationExtension ADD CONSTRAINT FK_a77484_WorkBasedLearningProgramDescriptor FOREIGN KEY (WorkBasedLearningProgramDescriptorId)
REFERENCES gadoe.WorkBasedLearningProgramDescriptor (WorkBasedLearningProgramDescriptorId)
;

CREATE INDEX FK_a77484_WorkBasedLearningProgramDescriptor
ON gadoe.StudentSectionAssociationExtension (WorkBasedLearningProgramDescriptorId ASC);

ALTER TABLE gadoe.StudentSpecialEducationAssociationEvent ADD CONSTRAINT FK_1d3500_SpecialEducationEventReasonDescriptor FOREIGN KEY (SpecialEducationEventReasonDescriptorId)
REFERENCES gadoe.SpecialEducationEventReasonDescriptor (SpecialEducationEventReasonDescriptorId)
;

CREATE INDEX FK_1d3500_SpecialEducationEventReasonDescriptor
ON gadoe.StudentSpecialEducationAssociationEvent (SpecialEducationEventReasonDescriptorId ASC);

ALTER TABLE gadoe.StudentSpecialEducationAssociationEvent ADD CONSTRAINT FK_1d3500_SpecialEducationEventTypeDescriptor FOREIGN KEY (SpecialEducationEventTypeDescriptorId)
REFERENCES gadoe.SpecialEducationEventTypeDescriptor (SpecialEducationEventTypeDescriptorId)
;

CREATE INDEX FK_1d3500_SpecialEducationEventTypeDescriptor
ON gadoe.StudentSpecialEducationAssociationEvent (SpecialEducationEventTypeDescriptorId ASC);

ALTER TABLE gadoe.StudentSpecialEducationAssociationEvent ADD CONSTRAINT FK_1d3500_SpecialEducationNonComplianceDescriptor FOREIGN KEY (SpecialEducationNonComplianceDescriptorId)
REFERENCES gadoe.SpecialEducationNonComplianceDescriptor (SpecialEducationNonComplianceDescriptorId)
;

CREATE INDEX FK_1d3500_SpecialEducationNonComplianceDescriptor
ON gadoe.StudentSpecialEducationAssociationEvent (SpecialEducationNonComplianceDescriptorId ASC);

ALTER TABLE gadoe.StudentSpecialEducationAssociationEvent ADD CONSTRAINT FK_1d3500_StudentSchoolAssociation FOREIGN KEY (EntryDate, SchoolId, StudentUSI)
REFERENCES edfi.StudentSchoolAssociation (EntryDate, SchoolId, StudentUSI)
ON UPDATE CASCADE
;

CREATE INDEX FK_1d3500_StudentSchoolAssociation
ON gadoe.StudentSpecialEducationAssociationEvent (EntryDate ASC, SchoolId ASC, StudentUSI ASC);

ALTER TABLE gadoe.SystemOfResidencyDescriptor ADD CONSTRAINT FK_a52ab3_Descriptor FOREIGN KEY (SystemOfResidencyDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE gadoe.WorkBasedLearningProgramDescriptor ADD CONSTRAINT FK_58fdc1_Descriptor FOREIGN KEY (WorkBasedLearningProgramDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

