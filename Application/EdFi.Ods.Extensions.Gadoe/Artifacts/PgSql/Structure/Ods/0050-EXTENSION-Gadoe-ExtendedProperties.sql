-- Extended Properties [gadoe].[BehaviorIncidentDescriptor] --
COMMENT ON TABLE gadoe.BehaviorIncidentDescriptor IS 'Type of incident or behavior that a school-level statistic is captured for.';
COMMENT ON COLUMN gadoe.BehaviorIncidentDescriptor.BehaviorIncidentDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [gadoe].[ChildFindStatusDescriptor] --
COMMENT ON TABLE gadoe.ChildFindStatusDescriptor IS 'Indicates Child Find Status.';
COMMENT ON COLUMN gadoe.ChildFindStatusDescriptor.ChildFindStatusDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [gadoe].[ChwCertFieldCodeDescriptor] --
COMMENT ON TABLE gadoe.ChwCertFieldCodeDescriptor IS 'Only for primary teachers who have a CHW charter certificate waiver';
COMMENT ON COLUMN gadoe.ChwCertFieldCodeDescriptor.ChwCertFieldCodeDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [gadoe].[CountyOfResidenceDescriptor] --
COMMENT ON TABLE gadoe.CountyOfResidenceDescriptor IS 'Indicates Code for the Georgia county the student resides in while attending public school';
COMMENT ON COLUMN gadoe.CountyOfResidenceDescriptor.CountyOfResidenceDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [gadoe].[DataTypeIndicatorDescriptor] --
COMMENT ON TABLE gadoe.DataTypeIndicatorDescriptor IS 'Type of Datatype indicator.';
COMMENT ON COLUMN gadoe.DataTypeIndicatorDescriptor.DataTypeIndicatorDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [gadoe].[DisciplineActionAuxiliaryDescriptor] --
COMMENT ON TABLE gadoe.DisciplineActionAuxiliaryDescriptor IS 'Indicates Discipline Action Auxiliary';
COMMENT ON COLUMN gadoe.DisciplineActionAuxiliaryDescriptor.DisciplineActionAuxiliaryDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [gadoe].[DisciplineActionExtension] --
COMMENT ON TABLE gadoe.DisciplineActionExtension IS '';
COMMENT ON COLUMN gadoe.DisciplineActionExtension.DisciplineActionIdentifier IS 'Identifier assigned by the education organization to the discipline action.';
COMMENT ON COLUMN gadoe.DisciplineActionExtension.DisciplineDate IS 'The date of the discipline action.';
COMMENT ON COLUMN gadoe.DisciplineActionExtension.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN gadoe.DisciplineActionExtension.DisciplineProcessTypeDescriptorId IS 'Indicates Discipline Process';
COMMENT ON COLUMN gadoe.DisciplineActionExtension.IncidentSeverityLevelDescriptorId IS 'Indicates Incident Severity Level';
COMMENT ON COLUMN gadoe.DisciplineActionExtension.DisciplineActionAuxiliaryDescriptorId IS 'Indicates Discipline Action Auxiliary';
COMMENT ON COLUMN gadoe.DisciplineActionExtension.DataTypeIndicatorDescriptorId IS 'Indicates DataType Indicator';
COMMENT ON COLUMN gadoe.DisciplineActionExtension.AlternateSchoolId IS 'Indicates Alternate School Id';
COMMENT ON COLUMN gadoe.DisciplineActionExtension.DisciplineStaffUniqueId IS 'Indicates Discipline Staff uniqueID';

-- Extended Properties [gadoe].[DisciplineIncidentExtension] --
COMMENT ON TABLE gadoe.DisciplineIncidentExtension IS '';
COMMENT ON COLUMN gadoe.DisciplineIncidentExtension.IncidentIdentifier IS 'A locally assigned unique identifier (within the school or school district) to identify each specific DisciplineIncident or occurrence. The same identifier should be used to document the entire discipline incident even if it included multiple offenses and multiple offenders.';
COMMENT ON COLUMN gadoe.DisciplineIncidentExtension.SchoolId IS 'The identifier assigned to a school.';
COMMENT ON COLUMN gadoe.DisciplineIncidentExtension.IncidentTimingDescriptorId IS 'Type of discipline incident timing.';

-- Extended Properties [gadoe].[DisciplineProcessTypeDescriptor] --
COMMENT ON TABLE gadoe.DisciplineProcessTypeDescriptor IS 'Indicates Discipline Process';
COMMENT ON COLUMN gadoe.DisciplineProcessTypeDescriptor.DisciplineProcessTypeDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [gadoe].[EipDeliveryModelDescriptor] --
COMMENT ON TABLE gadoe.EipDeliveryModelDescriptor IS 'Indicates Eip Delivery Model';
COMMENT ON COLUMN gadoe.EipDeliveryModelDescriptor.EipDeliveryModelDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [gadoe].[EmployeeTypeDescriptor] --
COMMENT ON TABLE gadoe.EmployeeTypeDescriptor IS 'Indicates Employee Type';
COMMENT ON COLUMN gadoe.EmployeeTypeDescriptor.EmployeeTypeDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [gadoe].[EnrollmentLocationDescriptor] --
COMMENT ON TABLE gadoe.EnrollmentLocationDescriptor IS 'Indicates Enrollment Location';
COMMENT ON COLUMN gadoe.EnrollmentLocationDescriptor.EnrollmentLocationDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [gadoe].[EsolDeliveryModelDescriptor] --
COMMENT ON TABLE gadoe.EsolDeliveryModelDescriptor IS 'Indicates Esol Delivery Model';
COMMENT ON COLUMN gadoe.EsolDeliveryModelDescriptor.EsolDeliveryModelDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [gadoe].[FteProgramCodeDescriptor] --
COMMENT ON TABLE gadoe.FteProgramCodeDescriptor IS 'Indicates FTE Program for Segment 1 of the school day';
COMMENT ON COLUMN gadoe.FteProgramCodeDescriptor.FteProgramCodeDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [gadoe].[GiftedDeliveryModelDescriptor] --
COMMENT ON TABLE gadoe.GiftedDeliveryModelDescriptor IS 'Indicates Gifted Delivery Model';
COMMENT ON COLUMN gadoe.GiftedDeliveryModelDescriptor.GiftedDeliveryModelDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [gadoe].[GiftedServedDescriptor] --
COMMENT ON TABLE gadoe.GiftedServedDescriptor IS 'Indicates Gifted Served.';
COMMENT ON COLUMN gadoe.GiftedServedDescriptor.GiftedServedDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [gadoe].[IepInclusionTypeDescriptor] --
COMMENT ON TABLE gadoe.IepInclusionTypeDescriptor IS 'Indicates Iep Inclusion Type';
COMMENT ON COLUMN gadoe.IepInclusionTypeDescriptor.IepInclusionTypeDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [gadoe].[IncidentSeverityLevelDescriptor] --
COMMENT ON TABLE gadoe.IncidentSeverityLevelDescriptor IS 'Indicates Incident Severity Level';
COMMENT ON COLUMN gadoe.IncidentSeverityLevelDescriptor.IncidentSeverityLevelDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [gadoe].[IncidentTimingDescriptor] --
COMMENT ON TABLE gadoe.IncidentTimingDescriptor IS 'Type of discipline incident timing.';
COMMENT ON COLUMN gadoe.IncidentTimingDescriptor.IncidentTimingDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [gadoe].[InclusionPersonnelDescriptor] --
COMMENT ON TABLE gadoe.InclusionPersonnelDescriptor IS 'Indicates Inclusion Personnel';
COMMENT ON COLUMN gadoe.InclusionPersonnelDescriptor.InclusionPersonnelDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [gadoe].[LocalEducationAgencyStatistic] --
COMMENT ON TABLE gadoe.LocalEducationAgencyStatistic IS 'The statistics associated with a Local Education Agency.';
COMMENT ON COLUMN gadoe.LocalEducationAgencyStatistic.EducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN gadoe.LocalEducationAgencyStatistic.Tkes90PercentAllTeachersIncluded IS 'Indicates whether all teachers included or consider time taught';

-- Extended Properties [gadoe].[LocalEducationAgencyStatisticPrivateOrHomeSchooledStudentCount] --
COMMENT ON TABLE gadoe.LocalEducationAgencyStatisticPrivateOrHomeSchooledStudentCount IS 'Collection of Private Or HomeSchooled Services';
COMMENT ON COLUMN gadoe.LocalEducationAgencyStatisticPrivateOrHomeSchooledStudentCount.EducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN gadoe.LocalEducationAgencyStatisticPrivateOrHomeSchooledStudentCount.PrivateOrHomeSchooledStudentDescriptorId IS 'Type of Private Or HomeSchooled Students that a local education agency level statistic is captured for.';
COMMENT ON COLUMN gadoe.LocalEducationAgencyStatisticPrivateOrHomeSchooledStudentCount.CollectedCount IS 'The integer representing the number of Private Or HomeSchooled Students';

-- Extended Properties [gadoe].[LocalEducationAgencyStatisticPsychologicalServicesEvalua_bdbe54] --
COMMENT ON TABLE gadoe.LocalEducationAgencyStatisticPsychologicalServicesEvalua_bdbe54 IS 'Collection of Psychological Services';
COMMENT ON COLUMN gadoe.LocalEducationAgencyStatisticPsychologicalServicesEvalua_bdbe54.EducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN gadoe.LocalEducationAgencyStatisticPsychologicalServicesEvalua_bdbe54.PsychologicalServicesEvaluationDescriptorId IS 'Type of Psychological Services Evaluation that a local education agency level statistic is captured for.';
COMMENT ON COLUMN gadoe.LocalEducationAgencyStatisticPsychologicalServicesEvalua_bdbe54.CollectedCount IS 'The integer representing the number of Psychological Services Evaluation';

-- Extended Properties [gadoe].[NonESOLStatusDescriptor] --
COMMENT ON TABLE gadoe.NonESOLStatusDescriptor IS 'Indicates the status of an EL student who is not in ESOL program';
COMMENT ON COLUMN gadoe.NonESOLStatusDescriptor.NonESOLStatusDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [gadoe].[NutritionSchoolDescriptor] --
COMMENT ON TABLE gadoe.NutritionSchoolDescriptor IS 'Type of nutrition services school is offering.';
COMMENT ON COLUMN gadoe.NutritionSchoolDescriptor.NutritionSchoolDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [gadoe].[PrimaryStaffClassificationDescriptor] --
COMMENT ON TABLE gadoe.PrimaryStaffClassificationDescriptor IS 'Type of primary staff classification';
COMMENT ON COLUMN gadoe.PrimaryStaffClassificationDescriptor.PrimaryStaffClassificationDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [gadoe].[PrivateOrHomeSchooledStudentDescriptor] --
COMMENT ON TABLE gadoe.PrivateOrHomeSchooledStudentDescriptor IS 'Private Or HomeSchooled Student statistic are captured at Local Education Agency Level';
COMMENT ON COLUMN gadoe.PrivateOrHomeSchooledStudentDescriptor.PrivateOrHomeSchooledStudentDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [gadoe].[ProgramReferredByDescriptor] --
COMMENT ON TABLE gadoe.ProgramReferredByDescriptor IS 'Method by which the student was referred to the Gifted program this school year.';
COMMENT ON COLUMN gadoe.ProgramReferredByDescriptor.ProgramReferredByDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [gadoe].[PsychologicalServicesEvaluationDescriptor] --
COMMENT ON TABLE gadoe.PsychologicalServicesEvaluationDescriptor IS 'Psychological Services statistic are captured for Local Education Agency Level';
COMMENT ON COLUMN gadoe.PsychologicalServicesEvaluationDescriptor.PsychologicalServicesEvaluationDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [gadoe].[SalaryPayStepDescriptor] --
COMMENT ON TABLE gadoe.SalaryPayStepDescriptor IS 'Indicates Salary Pay Step';
COMMENT ON COLUMN gadoe.SalaryPayStepDescriptor.SalaryPayStepDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [gadoe].[SchoolStatistic] --
COMMENT ON TABLE gadoe.SchoolStatistic IS 'The statistics associated with a School.';
COMMENT ON COLUMN gadoe.SchoolStatistic.SchoolId IS 'The identifier assigned to a school.';
COMMENT ON COLUMN gadoe.SchoolStatistic.StemSteamSchoolDescriptorId IS 'Type of Stem/Steam school.';
COMMENT ON COLUMN gadoe.SchoolStatistic.NutritionSchoolDescriptorId IS 'Type of nutrition services school is offering.';
COMMENT ON COLUMN gadoe.SchoolStatistic.TitleIPartASchoolDesignationDescriptorId IS 'Denotes the Title I Part A designation for the school.';
COMMENT ON COLUMN gadoe.SchoolStatistic.DualEnrollmentAwarenessGrade8 IS 'Indicates the student was made aware of dual enrollment options in grade 8.';
COMMENT ON COLUMN gadoe.SchoolStatistic.DualEnrollmentAwarenessGrade9 IS 'Indicates the student was made aware of dual enrollment options in grade 9.';
COMMENT ON COLUMN gadoe.SchoolStatistic.DualEnrollmentAwarenessGrade10 IS 'Indicates the student was made aware of dual enrollment options in grade 10.';
COMMENT ON COLUMN gadoe.SchoolStatistic.DualEnrollmentAwarenessGrade11 IS 'Indicates the student was made aware of dual enrollment options in grade 11';
COMMENT ON COLUMN gadoe.SchoolStatistic.CprTrainingProvided IS 'Indicates that cardiopulmonary resuscitation (CPR) automated external defibrillator(AED) instruction is available at this school.';
COMMENT ON COLUMN gadoe.SchoolStatistic.OnlineSchool IS 'Indicates that the school offers exclusively on-line instruction.';
COMMENT ON COLUMN gadoe.SchoolStatistic.SocialWorkStudentCount IS 'Indicates social work student count';

-- Extended Properties [gadoe].[SchoolStatisticBehaviorIncidentCount] --
COMMENT ON TABLE gadoe.SchoolStatisticBehaviorIncidentCount IS 'Collection of behaviors and incidents';
COMMENT ON COLUMN gadoe.SchoolStatisticBehaviorIncidentCount.BehaviorIncidentDescriptorId IS 'Type of incident or behavior that a school-level statistic is captured for.';
COMMENT ON COLUMN gadoe.SchoolStatisticBehaviorIncidentCount.SchoolId IS 'The identifier assigned to a school.';
COMMENT ON COLUMN gadoe.SchoolStatisticBehaviorIncidentCount.CollectedCount IS 'The integer representing the number of behavior incidents';

-- Extended Properties [gadoe].[SchoolStatisticSocialWorkCaseCount] --
COMMENT ON TABLE gadoe.SchoolStatisticSocialWorkCaseCount IS 'Count of social work incidents at a school';
COMMENT ON COLUMN gadoe.SchoolStatisticSocialWorkCaseCount.SchoolId IS 'The identifier assigned to a school.';
COMMENT ON COLUMN gadoe.SchoolStatisticSocialWorkCaseCount.SocialWorkCaseDescriptorId IS 'Type of social work case that a school-level statistic is captured for.';
COMMENT ON COLUMN gadoe.SchoolStatisticSocialWorkCaseCount.CollectedCount IS 'The integer representing the number of behavior incidents';

-- Extended Properties [gadoe].[SchoolStatisticSocialWorkReferralCount] --
COMMENT ON TABLE gadoe.SchoolStatisticSocialWorkReferralCount IS 'Count of social work referrals at a school';
COMMENT ON COLUMN gadoe.SchoolStatisticSocialWorkReferralCount.SchoolId IS 'The identifier assigned to a school.';
COMMENT ON COLUMN gadoe.SchoolStatisticSocialWorkReferralCount.SocialWorkReferralDescriptorId IS 'Social work referral type that a school-level statistic is captured for.';
COMMENT ON COLUMN gadoe.SchoolStatisticSocialWorkReferralCount.CollectedCount IS 'The integer representing the number of behavior incidents';

-- Extended Properties [gadoe].[SchoolStatisticSocialWorkServiceInterventionCount] --
COMMENT ON TABLE gadoe.SchoolStatisticSocialWorkServiceInterventionCount IS 'Count of social work services/interventions at a school';
COMMENT ON COLUMN gadoe.SchoolStatisticSocialWorkServiceInterventionCount.SchoolId IS 'The identifier assigned to a school.';
COMMENT ON COLUMN gadoe.SchoolStatisticSocialWorkServiceInterventionCount.SocialWorkServiceInterventionDescriptorId IS 'Type of social work service that a school-level statistic is captured for.';
COMMENT ON COLUMN gadoe.SchoolStatisticSocialWorkServiceInterventionCount.CollectedCount IS 'The integer representing the number of behavior incidents';

-- Extended Properties [gadoe].[Section504PlanDescriptor] --
COMMENT ON TABLE gadoe.Section504PlanDescriptor IS 'Indicates Section 504 Plan';
COMMENT ON COLUMN gadoe.Section504PlanDescriptor.Section504PlanDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [gadoe].[SectionExtension] --
COMMENT ON TABLE gadoe.SectionExtension IS '';
COMMENT ON COLUMN gadoe.SectionExtension.LocalCourseCode IS 'The local code assigned by the School that identifies the course offering provided for the instruction of students.';
COMMENT ON COLUMN gadoe.SectionExtension.SchoolId IS 'The identifier assigned to a school.';
COMMENT ON COLUMN gadoe.SectionExtension.SchoolYear IS 'The identifier for the school year.';
COMMENT ON COLUMN gadoe.SectionExtension.SectionIdentifier IS 'The local identifier assigned to a section.';
COMMENT ON COLUMN gadoe.SectionExtension.SessionName IS 'The identifier for the calendar for the academic session.';
COMMENT ON COLUMN gadoe.SectionExtension.AlternateEducationOrganizationId IS 'Indicates Concurrent enrollment system';
COMMENT ON COLUMN gadoe.SectionExtension.ClassPeriodNumber IS 'Indicates Class period Number';

-- Extended Properties [gadoe].[SocialWorkCaseDescriptor] --
COMMENT ON TABLE gadoe.SocialWorkCaseDescriptor IS 'Type of social work case that a school-level statistic is captured for.';
COMMENT ON COLUMN gadoe.SocialWorkCaseDescriptor.SocialWorkCaseDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [gadoe].[SocialWorkReferralDescriptor] --
COMMENT ON TABLE gadoe.SocialWorkReferralDescriptor IS 'Social work referral type that a school-level statistic is captured for.';
COMMENT ON COLUMN gadoe.SocialWorkReferralDescriptor.SocialWorkReferralDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [gadoe].[SocialWorkServiceInterventionDescriptor] --
COMMENT ON TABLE gadoe.SocialWorkServiceInterventionDescriptor IS 'Type of social work service that a school-level statistic is captured for.';
COMMENT ON COLUMN gadoe.SocialWorkServiceInterventionDescriptor.SocialWorkServiceInterventionDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [gadoe].[SpecialEducationDeliveryModelDescriptor] --
COMMENT ON TABLE gadoe.SpecialEducationDeliveryModelDescriptor IS 'Indicates Special Education Delivery Model';
COMMENT ON COLUMN gadoe.SpecialEducationDeliveryModelDescriptor.SpecialEducationDeliveryModelDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [gadoe].[SpecialEducationEventReasonDescriptor] --
COMMENT ON TABLE gadoe.SpecialEducationEventReasonDescriptor IS 'Indicates Special Education Event Reason';
COMMENT ON COLUMN gadoe.SpecialEducationEventReasonDescriptor.SpecialEducationEventReasonDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [gadoe].[SpecialEducationEventTypeDescriptor] --
COMMENT ON TABLE gadoe.SpecialEducationEventTypeDescriptor IS 'Indicates Special Education Event Type';
COMMENT ON COLUMN gadoe.SpecialEducationEventTypeDescriptor.SpecialEducationEventTypeDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [gadoe].[SpecialEducationNonComplianceDescriptor] --
COMMENT ON TABLE gadoe.SpecialEducationNonComplianceDescriptor IS 'Indicates Special Education NonCompliance';
COMMENT ON COLUMN gadoe.SpecialEducationNonComplianceDescriptor.SpecialEducationNonComplianceDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [gadoe].[StaffAssignmentCertificateTypeDescriptor] --
COMMENT ON TABLE gadoe.StaffAssignmentCertificateTypeDescriptor IS 'Indicates Type of certificate as issued by PSC';
COMMENT ON COLUMN gadoe.StaffAssignmentCertificateTypeDescriptor.StaffAssignmentCertificateTypeDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [gadoe].[StaffAssignmentFieldCodeDescriptor] --
COMMENT ON TABLE gadoe.StaffAssignmentFieldCodeDescriptor IS 'Indicates Field code on current PSC certificate as used for assignment';
COMMENT ON COLUMN gadoe.StaffAssignmentFieldCodeDescriptor.StaffAssignmentFieldCodeDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [gadoe].[StaffAssignmentFundCodeDescriptor] --
COMMENT ON TABLE gadoe.StaffAssignmentFundCodeDescriptor IS 'Indicates source of funding for employee''s salary if other than QBE';
COMMENT ON COLUMN gadoe.StaffAssignmentFundCodeDescriptor.StaffAssignmentFundCodeDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [gadoe].[StaffAssignmentSubjectMatterCodeDescriptor] --
COMMENT ON TABLE gadoe.StaffAssignmentSubjectMatterCodeDescriptor IS 'Indicates Code related to the subject matter';
COMMENT ON COLUMN gadoe.StaffAssignmentSubjectMatterCodeDescriptor.StaffAssignmentSubjectMatterCodeDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [gadoe].[StaffEducationOrganizationAssignmentAssociationExtension] --
COMMENT ON TABLE gadoe.StaffEducationOrganizationAssignmentAssociationExtension IS '';
COMMENT ON COLUMN gadoe.StaffEducationOrganizationAssignmentAssociationExtension.BeginDate IS 'Month, day, and year of the start or effective date of a staff member''s employment, contract, or relationship with the education organization.';
COMMENT ON COLUMN gadoe.StaffEducationOrganizationAssignmentAssociationExtension.EducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN gadoe.StaffEducationOrganizationAssignmentAssociationExtension.StaffClassificationDescriptorId IS 'The titles of employment, official status, or rank of education staff.';
COMMENT ON COLUMN gadoe.StaffEducationOrganizationAssignmentAssociationExtension.StaffUSI IS 'A unique alphanumeric code assigned to a staff.';
COMMENT ON COLUMN gadoe.StaffEducationOrganizationAssignmentAssociationExtension.AssignmentConsolidatedFunded IS 'Indicates if employee should be counted in the Consolidated Funding.';

-- Extended Properties [gadoe].[StaffEducationOrganizationAssignmentAssociationStaffAssi_fb334e] --
COMMENT ON TABLE gadoe.StaffEducationOrganizationAssignmentAssociationStaffAssi_fb334e IS 'Collection of Staff Assignment Details';
COMMENT ON COLUMN gadoe.StaffEducationOrganizationAssignmentAssociationStaffAssi_fb334e.AssignmentCodeEntryNumber IS 'Indicates Assignment Code Entry Number';
COMMENT ON COLUMN gadoe.StaffEducationOrganizationAssignmentAssociationStaffAssi_fb334e.BeginDate IS 'Month, day, and year of the start or effective date of a staff member''s employment, contract, or relationship with the education organization.';
COMMENT ON COLUMN gadoe.StaffEducationOrganizationAssignmentAssociationStaffAssi_fb334e.EducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN gadoe.StaffEducationOrganizationAssignmentAssociationStaffAssi_fb334e.StaffClassificationDescriptorId IS 'The titles of employment, official status, or rank of education staff.';
COMMENT ON COLUMN gadoe.StaffEducationOrganizationAssignmentAssociationStaffAssi_fb334e.StaffUSI IS 'A unique alphanumeric code assigned to a staff.';
COMMENT ON COLUMN gadoe.StaffEducationOrganizationAssignmentAssociationStaffAssi_fb334e.AssignmentPercentOfTime IS 'Indicates Assignment Percent Of Time';
COMMENT ON COLUMN gadoe.StaffEducationOrganizationAssignmentAssociationStaffAssi_fb334e.StaffAssignmentCertificateTypeDescriptorId IS 'Indicates Type of certificate as issued by PSC';
COMMENT ON COLUMN gadoe.StaffEducationOrganizationAssignmentAssociationStaffAssi_fb334e.StaffAssignmentFieldCodeDescriptorId IS 'Indicates Field code on current PSC certificate as used for assignment';
COMMENT ON COLUMN gadoe.StaffEducationOrganizationAssignmentAssociationStaffAssi_fb334e.StaffAssignmentFundCodeDescriptorId IS 'Indicates source of funding for employee''s salary if other than QBE';
COMMENT ON COLUMN gadoe.StaffEducationOrganizationAssignmentAssociationStaffAssi_fb334e.StaffAssignmentSubjectMatterCodeDescriptorId IS 'Indicates Code related to the subject matter';

-- Extended Properties [gadoe].[StaffEducationOrganizationEmploymentAssociationExtension] --
COMMENT ON TABLE gadoe.StaffEducationOrganizationEmploymentAssociationExtension IS '';
COMMENT ON COLUMN gadoe.StaffEducationOrganizationEmploymentAssociationExtension.EducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN gadoe.StaffEducationOrganizationEmploymentAssociationExtension.EmploymentStatusDescriptorId IS 'Reflects the type of employment or contract.';
COMMENT ON COLUMN gadoe.StaffEducationOrganizationEmploymentAssociationExtension.HireDate IS 'The month, day, and year on which an individual was hired for a position.';
COMMENT ON COLUMN gadoe.StaffEducationOrganizationEmploymentAssociationExtension.StaffUSI IS 'A unique alphanumeric code assigned to a staff.';
COMMENT ON COLUMN gadoe.StaffEducationOrganizationEmploymentAssociationExtension.AnnualSalary IS 'Indicates annual salary for certified and classified employees';
COMMENT ON COLUMN gadoe.StaffEducationOrganizationEmploymentAssociationExtension.AnnualContractWorkDays IS 'Indicates annual contract work days for certified and classified employees';
COMMENT ON COLUMN gadoe.StaffEducationOrganizationEmploymentAssociationExtension.EmploymentBasis IS 'Indicates employee basis for certified and classified employees';
COMMENT ON COLUMN gadoe.StaffEducationOrganizationEmploymentAssociationExtension.SalaryPayStepDescriptorId IS 'Indicates Salary Pay Step';
COMMENT ON COLUMN gadoe.StaffEducationOrganizationEmploymentAssociationExtension.PrimaryStaffClassificationDescriptorId IS 'Indicates Primary Staff Classification';

-- Extended Properties [gadoe].[StaffEducationOrganizationEmploymentAssociationStaffEmpl_222c02] --
COMMENT ON TABLE gadoe.StaffEducationOrganizationEmploymentAssociationStaffEmpl_222c02 IS 'Collection of Staff Employment Characteristics';
COMMENT ON COLUMN gadoe.StaffEducationOrganizationEmploymentAssociationStaffEmpl_222c02.EducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN gadoe.StaffEducationOrganizationEmploymentAssociationStaffEmpl_222c02.EmploymentStatusDescriptorId IS 'Reflects the type of employment or contract.';
COMMENT ON COLUMN gadoe.StaffEducationOrganizationEmploymentAssociationStaffEmpl_222c02.HireDate IS 'The month, day, and year on which an individual was hired for a position.';
COMMENT ON COLUMN gadoe.StaffEducationOrganizationEmploymentAssociationStaffEmpl_222c02.StaffEmploymentCharacteristicDescriptorId IS 'Collection of Staff Employment Characteristics';
COMMENT ON COLUMN gadoe.StaffEducationOrganizationEmploymentAssociationStaffEmpl_222c02.StaffUSI IS 'A unique alphanumeric code assigned to a staff.';
COMMENT ON COLUMN gadoe.StaffEducationOrganizationEmploymentAssociationStaffEmpl_222c02.DesignatedBy IS 'Indicates Designated Authority';

-- Extended Properties [gadoe].[StaffEducationOrganizationEmploymentAssociationStaffEmpl_3580a6] --
COMMENT ON TABLE gadoe.StaffEducationOrganizationEmploymentAssociationStaffEmpl_3580a6 IS 'Collection of Staff Employment Indicators';
COMMENT ON COLUMN gadoe.StaffEducationOrganizationEmploymentAssociationStaffEmpl_3580a6.EducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN gadoe.StaffEducationOrganizationEmploymentAssociationStaffEmpl_3580a6.EmploymentStatusDescriptorId IS 'Reflects the type of employment or contract.';
COMMENT ON COLUMN gadoe.StaffEducationOrganizationEmploymentAssociationStaffEmpl_3580a6.HireDate IS 'The month, day, and year on which an individual was hired for a position.';
COMMENT ON COLUMN gadoe.StaffEducationOrganizationEmploymentAssociationStaffEmpl_3580a6.Indicator IS 'Indicates Staff Employment Indicator';
COMMENT ON COLUMN gadoe.StaffEducationOrganizationEmploymentAssociationStaffEmpl_3580a6.IndicatorName IS 'Indicates Staff Employment Indicator Name';
COMMENT ON COLUMN gadoe.StaffEducationOrganizationEmploymentAssociationStaffEmpl_3580a6.StaffUSI IS 'A unique alphanumeric code assigned to a staff.';
COMMENT ON COLUMN gadoe.StaffEducationOrganizationEmploymentAssociationStaffEmpl_3580a6.IndicatorGroup IS 'Indicates Staff Employment Indicator Group';

-- Extended Properties [gadoe].[StaffEmploymentCharacteristicDescriptor] --
COMMENT ON TABLE gadoe.StaffEmploymentCharacteristicDescriptor IS 'Collection of Staff Employment Characteristics';
COMMENT ON COLUMN gadoe.StaffEmploymentCharacteristicDescriptor.StaffEmploymentCharacteristicDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [gadoe].[StaffExtension] --
COMMENT ON TABLE gadoe.StaffExtension IS '';
COMMENT ON COLUMN gadoe.StaffExtension.StaffUSI IS 'A unique alphanumeric code assigned to a staff.';
COMMENT ON COLUMN gadoe.StaffExtension.EmployeeTypeDescriptorId IS 'Indicates Employee Type';

-- Extended Properties [gadoe].[StaffSectionAssociationExtension] --
COMMENT ON TABLE gadoe.StaffSectionAssociationExtension IS '';
COMMENT ON COLUMN gadoe.StaffSectionAssociationExtension.LocalCourseCode IS 'The local code assigned by the School that identifies the course offering provided for the instruction of students.';
COMMENT ON COLUMN gadoe.StaffSectionAssociationExtension.SchoolId IS 'The identifier assigned to a school.';
COMMENT ON COLUMN gadoe.StaffSectionAssociationExtension.SchoolYear IS 'The identifier for the school year.';
COMMENT ON COLUMN gadoe.StaffSectionAssociationExtension.SectionIdentifier IS 'The local identifier assigned to a section.';
COMMENT ON COLUMN gadoe.StaffSectionAssociationExtension.SessionName IS 'The identifier for the calendar for the academic session.';
COMMENT ON COLUMN gadoe.StaffSectionAssociationExtension.StaffUSI IS 'A unique alphanumeric code assigned to a staff.';
COMMENT ON COLUMN gadoe.StaffSectionAssociationExtension.ChwCertFieldCodeDescriptorId IS 'Only for primary teachers who have a CHW charter certificate waiver';
COMMENT ON COLUMN gadoe.StaffSectionAssociationExtension.Attendance90Percent IS 'Indicates staff 90 percent attendance';

-- Extended Properties [gadoe].[StaffServiceTypeDescriptor] --
COMMENT ON TABLE gadoe.StaffServiceTypeDescriptor IS 'Indicates Staff service type';
COMMENT ON COLUMN gadoe.StaffServiceTypeDescriptor.StaffServiceTypeDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [gadoe].[StemSteamSchoolDescriptor] --
COMMENT ON TABLE gadoe.StemSteamSchoolDescriptor IS 'Type of Stem/Steam school.';
COMMENT ON COLUMN gadoe.StemSteamSchoolDescriptor.StemSteamSchoolDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [gadoe].[StudentEducationOrganizationAssociationExtension] --
COMMENT ON TABLE gadoe.StudentEducationOrganizationAssociationExtension IS '';
COMMENT ON COLUMN gadoe.StudentEducationOrganizationAssociationExtension.EducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN gadoe.StudentEducationOrganizationAssociationExtension.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN gadoe.StudentEducationOrganizationAssociationExtension.Biliteracy1LanguageDescriptorId IS 'Indicates the first language in which the student has demonstrated proficiency for the BI-LITERACY LANGUAGE SEAL';
COMMENT ON COLUMN gadoe.StudentEducationOrganizationAssociationExtension.Biliteracy2LanguageDescriptorId IS 'Indicates the second language in which the student has demonstrated proficiency for the BI-LITERACY LANGUAGE SEAL';
COMMENT ON COLUMN gadoe.StudentEducationOrganizationAssociationExtension.Biliteracy3LanguageDescriptorId IS 'Indicates the third language in which the student has demonstrated proficiency for the BI-LITERACY LANGUAGE SEAL';
COMMENT ON COLUMN gadoe.StudentEducationOrganizationAssociationExtension.NonESOLStatusDescriptorId IS 'Indicates the status of an EL student who is not in ESOL program';
COMMENT ON COLUMN gadoe.StudentEducationOrganizationAssociationExtension.ParentCommunicationLanguageDescriptorId IS 'Indicates the language preference of the parent for communication between the school and the student''s parent. Blank is not allowed';
COMMENT ON COLUMN gadoe.StudentEducationOrganizationAssociationExtension.DateStudentEligibleForACS IS 'This indicates the date the student was identified as a student needing an alternate assessment for the ALTERNATE CONTENT STANDARDS (ACS).';
COMMENT ON COLUMN gadoe.StudentEducationOrganizationAssociationExtension.DateStudentNoLongerACS IS 'Indicates the date the student no longer qualifies for the ALTERNATE CONTENT STANDARDS (ACS).';
COMMENT ON COLUMN gadoe.StudentEducationOrganizationAssociationExtension.CountyOfResidenceDescriptorId IS 'Indicates Code for the Georgia county the student resides in while attending public school';
COMMENT ON COLUMN gadoe.StudentEducationOrganizationAssociationExtension.SystemOfResidencyDescriptorId IS 'Code for the Georgia system where the student resides while attending public school. Or the SYSTEM CODE from the district or state the student was displaced due to natural disaster';

-- Extended Properties [gadoe].[StudentLanguageInstructionProgramAssociationExtension] --
COMMENT ON TABLE gadoe.StudentLanguageInstructionProgramAssociationExtension IS '';
COMMENT ON COLUMN gadoe.StudentLanguageInstructionProgramAssociationExtension.BeginDate IS 'The earliest date the student is involved with the program. Typically, this is the date the student becomes eligible for the program.';
COMMENT ON COLUMN gadoe.StudentLanguageInstructionProgramAssociationExtension.EducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN gadoe.StudentLanguageInstructionProgramAssociationExtension.ProgramEducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN gadoe.StudentLanguageInstructionProgramAssociationExtension.ProgramName IS 'The formal name of the program of instruction, training, services, or benefits available through federal, state, or local agencies.';
COMMENT ON COLUMN gadoe.StudentLanguageInstructionProgramAssociationExtension.ProgramTypeDescriptorId IS 'The type of program.';
COMMENT ON COLUMN gadoe.StudentLanguageInstructionProgramAssociationExtension.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN gadoe.StudentLanguageInstructionProgramAssociationExtension.DateofELPScreener IS 'Indicates Date of ELP Screener';

-- Extended Properties [gadoe].[StudentProgramAssociationExtension] --
COMMENT ON TABLE gadoe.StudentProgramAssociationExtension IS '';
COMMENT ON COLUMN gadoe.StudentProgramAssociationExtension.BeginDate IS 'The earliest date the student is involved with the program. Typically, this is the date the student becomes eligible for the program.';
COMMENT ON COLUMN gadoe.StudentProgramAssociationExtension.EducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN gadoe.StudentProgramAssociationExtension.ProgramEducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN gadoe.StudentProgramAssociationExtension.ProgramName IS 'The formal name of the program of instruction, training, services, or benefits available through federal, state, or local agencies.';
COMMENT ON COLUMN gadoe.StudentProgramAssociationExtension.ProgramTypeDescriptorId IS 'The type of program.';
COMMENT ON COLUMN gadoe.StudentProgramAssociationExtension.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN gadoe.StudentProgramAssociationExtension.ProgramReferredByDescriptorId IS 'Method by which the student was referred to the Gifted program this school year.';
COMMENT ON COLUMN gadoe.StudentProgramAssociationExtension.AlternateEducationOrganizationId IS 'Indicates Alternate Education Organization Id';
COMMENT ON COLUMN gadoe.StudentProgramAssociationExtension.NumberofDailyGNETSSegments IS 'Indicates Number of GNETS Segments';
COMMENT ON COLUMN gadoe.StudentProgramAssociationExtension.GiftedEligibilityDate IS 'Indicates Gifted Eligibility Date';

-- Extended Properties [gadoe].[StudentSchoolAssociationExtension] --
COMMENT ON TABLE gadoe.StudentSchoolAssociationExtension IS '';
COMMENT ON COLUMN gadoe.StudentSchoolAssociationExtension.EntryDate IS 'The month, day, and year on which an individual enters and begins to receive instructional services in a school.';
COMMENT ON COLUMN gadoe.StudentSchoolAssociationExtension.SchoolId IS 'The identifier assigned to a school.';
COMMENT ON COLUMN gadoe.StudentSchoolAssociationExtension.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN gadoe.StudentSchoolAssociationExtension.DateEntered9thGrade IS 'Date the student enrolled in the 9th grade for the first time';
COMMENT ON COLUMN gadoe.StudentSchoolAssociationExtension.PriorTenDays IS 'Indicates Prior Ten Days';
COMMENT ON COLUMN gadoe.StudentSchoolAssociationExtension.SummerImmigrantProgramParticipation IS 'Indicates Summer Immigrant Program Participation';
COMMENT ON COLUMN gadoe.StudentSchoolAssociationExtension.SummerTitleIIIServed IS 'Indicates summer TitleIII Served';
COMMENT ON COLUMN gadoe.StudentSchoolAssociationExtension.ASVABScore IS 'Indicates Armed Services Vocational Aptitude Battery (ASVAB) score';
COMMENT ON COLUMN gadoe.StudentSchoolAssociationExtension.EsolSegments IS 'Indicates Esol Segments';
COMMENT ON COLUMN gadoe.StudentSchoolAssociationExtension.NoShowStudent IS 'Indicates No Show Student';
COMMENT ON COLUMN gadoe.StudentSchoolAssociationExtension.ChildFindStatusDescriptorId IS 'Indicates Child Find Status';
COMMENT ON COLUMN gadoe.StudentSchoolAssociationExtension.GiftedServedDescriptorId IS 'Indicates Gifted Served';
COMMENT ON COLUMN gadoe.StudentSchoolAssociationExtension.StudentSupportTeamParticipant IS 'Indicates Student Support Team Participant';
COMMENT ON COLUMN gadoe.StudentSchoolAssociationExtension.DualImmersion IS 'Indicates Dual Immersion';
COMMENT ON COLUMN gadoe.StudentSchoolAssociationExtension.ImmigrantProgramParticipant IS 'Indicates Immigrant Program Participant';
COMMENT ON COLUMN gadoe.StudentSchoolAssociationExtension.SBDualEnrollment IS 'Indicates SB Dual Enrollment';
COMMENT ON COLUMN gadoe.StudentSchoolAssociationExtension.TitleITargetedAssistanceParticipation IS 'Indicates Title I Targeted Assistance Participation';
COMMENT ON COLUMN gadoe.StudentSchoolAssociationExtension.CCANonTraditional IS 'Indicates CCA Non Traditional';

-- Extended Properties [gadoe].[StudentSchoolAssociationFteSegments] --
COMMENT ON TABLE gadoe.StudentSchoolAssociationFteSegments IS 'Collection of FTE Segments';
COMMENT ON COLUMN gadoe.StudentSchoolAssociationFteSegments.EntryDate IS 'The month, day, and year on which an individual enters and begins to receive instructional services in a school.';
COMMENT ON COLUMN gadoe.StudentSchoolAssociationFteSegments.FteProgramCodeDescriptorId IS 'Indicates Fte Program Codes';
COMMENT ON COLUMN gadoe.StudentSchoolAssociationFteSegments.InclusionPersonnelDescriptorId IS 'Indicates Inclusion Personnel';
COMMENT ON COLUMN gadoe.StudentSchoolAssociationFteSegments.SchoolId IS 'The identifier assigned to a school.';
COMMENT ON COLUMN gadoe.StudentSchoolAssociationFteSegments.SegmentNumber IS 'Indicates Segment Number';
COMMENT ON COLUMN gadoe.StudentSchoolAssociationFteSegments.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN gadoe.StudentSchoolAssociationFteSegments.ItinerantTeacherSpecialEducationServices IS 'Indicates Prior Ten Days';
COMMENT ON COLUMN gadoe.StudentSchoolAssociationFteSegments.ReceivedSupplementalSpeechServices IS 'Indicates Prior Ten Days';
COMMENT ON COLUMN gadoe.StudentSchoolAssociationFteSegments.TransportedForSection IS 'Indicates Prior Ten Days';
COMMENT ON COLUMN gadoe.StudentSchoolAssociationFteSegments.EnrollmentLocationDescriptorId IS 'Indicates Enrollment Location';

-- Extended Properties [gadoe].[StudentSection504ProgramAssociation] --
COMMENT ON TABLE gadoe.StudentSection504ProgramAssociation IS 'Include students who meet the definition of children with disabilities under Section 504';
COMMENT ON COLUMN gadoe.StudentSection504ProgramAssociation.BeginDate IS 'The earliest date the student is involved with the program. Typically, this is the date the student becomes eligible for the program.';
COMMENT ON COLUMN gadoe.StudentSection504ProgramAssociation.EducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN gadoe.StudentSection504ProgramAssociation.ProgramEducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN gadoe.StudentSection504ProgramAssociation.ProgramName IS 'The formal name of the program of instruction, training, services, or benefits available through federal, state, or local agencies.';
COMMENT ON COLUMN gadoe.StudentSection504ProgramAssociation.ProgramTypeDescriptorId IS 'The type of program.';
COMMENT ON COLUMN gadoe.StudentSection504ProgramAssociation.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN gadoe.StudentSection504ProgramAssociation.AccommodationPlan IS 'Indicates Accommodation Plan';
COMMENT ON COLUMN gadoe.StudentSection504ProgramAssociation.InitialDNQDate IS 'Indicates the Initial DNQ date of section 504 program.';
COMMENT ON COLUMN gadoe.StudentSection504ProgramAssociation.LastEvaluationDate IS 'Indicates the Last Evaluation Date of section 504 program.';
COMMENT ON COLUMN gadoe.StudentSection504ProgramAssociation.MeetingDate IS 'Indicates the meeting date of section 504 program.';

-- Extended Properties [gadoe].[StudentSection504ProgramAssociationSection504Plan] --
COMMENT ON TABLE gadoe.StudentSection504ProgramAssociationSection504Plan IS 'Indicates Section 504 Plan';
COMMENT ON COLUMN gadoe.StudentSection504ProgramAssociationSection504Plan.BeginDate IS 'The earliest date the student is involved with the program. Typically, this is the date the student becomes eligible for the program.';
COMMENT ON COLUMN gadoe.StudentSection504ProgramAssociationSection504Plan.EducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN gadoe.StudentSection504ProgramAssociationSection504Plan.ProgramEducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN gadoe.StudentSection504ProgramAssociationSection504Plan.ProgramName IS 'The formal name of the program of instruction, training, services, or benefits available through federal, state, or local agencies.';
COMMENT ON COLUMN gadoe.StudentSection504ProgramAssociationSection504Plan.ProgramTypeDescriptorId IS 'The type of program.';
COMMENT ON COLUMN gadoe.StudentSection504ProgramAssociationSection504Plan.Section504PlanDescriptorId IS 'Indicates Section 504 Plan';
COMMENT ON COLUMN gadoe.StudentSection504ProgramAssociationSection504Plan.StudentUSI IS 'A unique alphanumeric code assigned to a student.';

-- Extended Properties [gadoe].[StudentSectionAssociationAdditionalTeacher] --
COMMENT ON TABLE gadoe.StudentSectionAssociationAdditionalTeacher IS 'Collection of Additional Teacher information';
COMMENT ON COLUMN gadoe.StudentSectionAssociationAdditionalTeacher.BeginDate IS 'Month, day, and year of the student''s entry or assignment to the section.';
COMMENT ON COLUMN gadoe.StudentSectionAssociationAdditionalTeacher.LocalCourseCode IS 'The local code assigned by the School that identifies the course offering provided for the instruction of students.';
COMMENT ON COLUMN gadoe.StudentSectionAssociationAdditionalTeacher.SchoolId IS 'The identifier assigned to a school.';
COMMENT ON COLUMN gadoe.StudentSectionAssociationAdditionalTeacher.SchoolYear IS 'The identifier for the school year.';
COMMENT ON COLUMN gadoe.StudentSectionAssociationAdditionalTeacher.SectionIdentifier IS 'The local identifier assigned to a section.';
COMMENT ON COLUMN gadoe.StudentSectionAssociationAdditionalTeacher.SessionName IS 'The identifier for the calendar for the academic session.';
COMMENT ON COLUMN gadoe.StudentSectionAssociationAdditionalTeacher.StaffUSI IS 'A unique alphanumeric code assigned to a staff.';
COMMENT ON COLUMN gadoe.StudentSectionAssociationAdditionalTeacher.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN gadoe.StudentSectionAssociationAdditionalTeacher.StaffServiceTypeDescriptorId IS 'Indicates Staff Service Type';

-- Extended Properties [gadoe].[StudentSectionAssociationExtension] --
COMMENT ON TABLE gadoe.StudentSectionAssociationExtension IS '';
COMMENT ON COLUMN gadoe.StudentSectionAssociationExtension.BeginDate IS 'Month, day, and year of the student''s entry or assignment to the section.';
COMMENT ON COLUMN gadoe.StudentSectionAssociationExtension.LocalCourseCode IS 'The local code assigned by the School that identifies the course offering provided for the instruction of students.';
COMMENT ON COLUMN gadoe.StudentSectionAssociationExtension.SchoolId IS 'The identifier assigned to a school.';
COMMENT ON COLUMN gadoe.StudentSectionAssociationExtension.SchoolYear IS 'The identifier for the school year.';
COMMENT ON COLUMN gadoe.StudentSectionAssociationExtension.SectionIdentifier IS 'The local identifier assigned to a section.';
COMMENT ON COLUMN gadoe.StudentSectionAssociationExtension.SessionName IS 'The identifier for the calendar for the academic session.';
COMMENT ON COLUMN gadoe.StudentSectionAssociationExtension.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN gadoe.StudentSectionAssociationExtension.CreditRecovery IS 'Indicates credit recovery';
COMMENT ON COLUMN gadoe.StudentSectionAssociationExtension.FteProgramCodeDescriptorId IS 'Indicates Fte Program Code';
COMMENT ON COLUMN gadoe.StudentSectionAssociationExtension.IepInclusionTypeDescriptorId IS 'Indicates Iep Inclusion Type';
COMMENT ON COLUMN gadoe.StudentSectionAssociationExtension.InclusionPersonnelDescriptorId IS 'Indicates Inclusion Personnel';
COMMENT ON COLUMN gadoe.StudentSectionAssociationExtension.ItinerantTeacherSpecialEducationServices IS 'Indicates Itinerant Teacher Special Education Services';
COMMENT ON COLUMN gadoe.StudentSectionAssociationExtension.ReceivedSupplementalSpeechServices IS 'Indicates Received Supplemental Speech Services';
COMMENT ON COLUMN gadoe.StudentSectionAssociationExtension.TransportedForSection IS 'Indicates Transported For Section';
COMMENT ON COLUMN gadoe.StudentSectionAssociationExtension.WorkBasedLearningProgramDescriptorId IS 'Indicates Work Based Learning Program';
COMMENT ON COLUMN gadoe.StudentSectionAssociationExtension.EipDeliveryModelDescriptorId IS 'Indicates Eip Delivery Model';
COMMENT ON COLUMN gadoe.StudentSectionAssociationExtension.EsolDeliveryModelDescriptorId IS 'Indicates Esol Delivery Model';
COMMENT ON COLUMN gadoe.StudentSectionAssociationExtension.GiftedDeliveryModelDescriptorId IS 'Indicates Gifted Delivery Model';
COMMENT ON COLUMN gadoe.StudentSectionAssociationExtension.SpecialEducationDeliveryModelDescriptorId IS 'Indicates Special Education Delivery Model';
COMMENT ON COLUMN gadoe.StudentSectionAssociationExtension.NumberParapros IS 'Indicates number of Parapros';
COMMENT ON COLUMN gadoe.StudentSectionAssociationExtension.Attendance90Percent IS 'Indicates Student''s 90 Percent Attendance';
COMMENT ON COLUMN gadoe.StudentSectionAssociationExtension.EnrollmentLocationDescriptorId IS 'Indicates Enrollment Location';

-- Extended Properties [gadoe].[StudentSpecialEducationAssociationEvent] --
COMMENT ON TABLE gadoe.StudentSpecialEducationAssociationEvent IS 'Events associated with a student''s participation special education program';
COMMENT ON COLUMN gadoe.StudentSpecialEducationAssociationEvent.EntryDate IS 'The month, day, and year on which an individual enters and begins to receive instructional services in a school.';
COMMENT ON COLUMN gadoe.StudentSpecialEducationAssociationEvent.EventDate IS 'Indicates event date';
COMMENT ON COLUMN gadoe.StudentSpecialEducationAssociationEvent.SchoolId IS 'The identifier assigned to a school.';
COMMENT ON COLUMN gadoe.StudentSpecialEducationAssociationEvent.SpecialEducationEventTypeDescriptorId IS 'Indicates Special Education Event Type';
COMMENT ON COLUMN gadoe.StudentSpecialEducationAssociationEvent.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN gadoe.StudentSpecialEducationAssociationEvent.SpecialEducationEventReasonDescriptorId IS 'Indicates Special Education Event Reason';
COMMENT ON COLUMN gadoe.StudentSpecialEducationAssociationEvent.SpecialEducationNonComplianceDescriptorId IS 'Indicates Special Education NonCompliance';
COMMENT ON COLUMN gadoe.StudentSpecialEducationAssociationEvent.ParentPresentAtConference IS 'Indicates Parent Present At Conference';
COMMENT ON COLUMN gadoe.StudentSpecialEducationAssociationEvent.StudentPresentAtConference IS 'Indicates Student Present At Conference';

-- Extended Properties [gadoe].[SystemOfResidencyDescriptor] --
COMMENT ON TABLE gadoe.SystemOfResidencyDescriptor IS 'Code for the Georgia system where the student resides while attending public school. Or the SYSTEM CODE from the district or state the student was displaced due to natural disaster';
COMMENT ON COLUMN gadoe.SystemOfResidencyDescriptor.SystemOfResidencyDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [gadoe].[WorkBasedLearningProgramDescriptor] --
COMMENT ON TABLE gadoe.WorkBasedLearningProgramDescriptor IS 'Indicates Work Based Learning Program';
COMMENT ON COLUMN gadoe.WorkBasedLearningProgramDescriptor.WorkBasedLearningProgramDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

