-- Table gadoe.BehaviorIncidentDescriptor --
CREATE TABLE gadoe.BehaviorIncidentDescriptor (
    BehaviorIncidentDescriptorId INT NOT NULL,
    CONSTRAINT BehaviorIncidentDescriptor_PK PRIMARY KEY (BehaviorIncidentDescriptorId)
);

-- Table gadoe.ChildFindStatusDescriptor --
CREATE TABLE gadoe.ChildFindStatusDescriptor (
    ChildFindStatusDescriptorId INT NOT NULL,
    CONSTRAINT ChildFindStatusDescriptor_PK PRIMARY KEY (ChildFindStatusDescriptorId)
);

-- Table gadoe.ChwCertFieldCodeDescriptor --
CREATE TABLE gadoe.ChwCertFieldCodeDescriptor (
    ChwCertFieldCodeDescriptorId INT NOT NULL,
    CONSTRAINT ChwCertFieldCodeDescriptor_PK PRIMARY KEY (ChwCertFieldCodeDescriptorId)
);

-- Table gadoe.CountyOfResidenceDescriptor --
CREATE TABLE gadoe.CountyOfResidenceDescriptor (
    CountyOfResidenceDescriptorId INT NOT NULL,
    CONSTRAINT CountyOfResidenceDescriptor_PK PRIMARY KEY (CountyOfResidenceDescriptorId)
);

-- Table gadoe.DataTypeIndicatorDescriptor --
CREATE TABLE gadoe.DataTypeIndicatorDescriptor (
    DataTypeIndicatorDescriptorId INT NOT NULL,
    CONSTRAINT DataTypeIndicatorDescriptor_PK PRIMARY KEY (DataTypeIndicatorDescriptorId)
);

-- Table gadoe.DisciplineActionAuxiliaryDescriptor --
CREATE TABLE gadoe.DisciplineActionAuxiliaryDescriptor (
    DisciplineActionAuxiliaryDescriptorId INT NOT NULL,
    CONSTRAINT DisciplineActionAuxiliaryDescriptor_PK PRIMARY KEY (DisciplineActionAuxiliaryDescriptorId)
);

-- Table gadoe.DisciplineActionExtension --
CREATE TABLE gadoe.DisciplineActionExtension (
    DisciplineActionIdentifier VARCHAR(32) NOT NULL,
    DisciplineDate DATE NOT NULL,
    StudentUSI INT NOT NULL,
    DisciplineProcessTypeDescriptorId INT NULL,
    IncidentSeverityLevelDescriptorId INT NULL,
    DisciplineActionAuxiliaryDescriptorId INT NULL,
    DataTypeIndicatorDescriptorId INT NULL,
    AlternateSchoolId INT NULL,
    DisciplineStaffUniqueId VARCHAR(32) NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT DisciplineActionExtension_PK PRIMARY KEY (DisciplineActionIdentifier, DisciplineDate, StudentUSI)
);
ALTER TABLE gadoe.DisciplineActionExtension ALTER COLUMN CreateDate SET DEFAULT current_timestamp;

-- Table gadoe.DisciplineIncidentExtension --
CREATE TABLE gadoe.DisciplineIncidentExtension (
    IncidentIdentifier VARCHAR(20) NOT NULL,
    SchoolId INT NOT NULL,
    IncidentTimingDescriptorId INT NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT DisciplineIncidentExtension_PK PRIMARY KEY (IncidentIdentifier, SchoolId)
);
ALTER TABLE gadoe.DisciplineIncidentExtension ALTER COLUMN CreateDate SET DEFAULT current_timestamp;

-- Table gadoe.DisciplineProcessTypeDescriptor --
CREATE TABLE gadoe.DisciplineProcessTypeDescriptor (
    DisciplineProcessTypeDescriptorId INT NOT NULL,
    CONSTRAINT DisciplineProcessTypeDescriptor_PK PRIMARY KEY (DisciplineProcessTypeDescriptorId)
);

-- Table gadoe.EipDeliveryModelDescriptor --
CREATE TABLE gadoe.EipDeliveryModelDescriptor (
    EipDeliveryModelDescriptorId INT NOT NULL,
    CONSTRAINT EipDeliveryModelDescriptor_PK PRIMARY KEY (EipDeliveryModelDescriptorId)
);

-- Table gadoe.EmployeeTypeDescriptor --
CREATE TABLE gadoe.EmployeeTypeDescriptor (
    EmployeeTypeDescriptorId INT NOT NULL,
    CONSTRAINT EmployeeTypeDescriptor_PK PRIMARY KEY (EmployeeTypeDescriptorId)
);

-- Table gadoe.EnrollmentLocationDescriptor --
CREATE TABLE gadoe.EnrollmentLocationDescriptor (
    EnrollmentLocationDescriptorId INT NOT NULL,
    CONSTRAINT EnrollmentLocationDescriptor_PK PRIMARY KEY (EnrollmentLocationDescriptorId)
);

-- Table gadoe.EsolDeliveryModelDescriptor --
CREATE TABLE gadoe.EsolDeliveryModelDescriptor (
    EsolDeliveryModelDescriptorId INT NOT NULL,
    CONSTRAINT EsolDeliveryModelDescriptor_PK PRIMARY KEY (EsolDeliveryModelDescriptorId)
);

-- Table gadoe.FteProgramCodeDescriptor --
CREATE TABLE gadoe.FteProgramCodeDescriptor (
    FteProgramCodeDescriptorId INT NOT NULL,
    CONSTRAINT FteProgramCodeDescriptor_PK PRIMARY KEY (FteProgramCodeDescriptorId)
);

-- Table gadoe.GiftedDeliveryModelDescriptor --
CREATE TABLE gadoe.GiftedDeliveryModelDescriptor (
    GiftedDeliveryModelDescriptorId INT NOT NULL,
    CONSTRAINT GiftedDeliveryModelDescriptor_PK PRIMARY KEY (GiftedDeliveryModelDescriptorId)
);

-- Table gadoe.GiftedServedDescriptor --
CREATE TABLE gadoe.GiftedServedDescriptor (
    GiftedServedDescriptorId INT NOT NULL,
    CONSTRAINT GiftedServedDescriptor_PK PRIMARY KEY (GiftedServedDescriptorId)
);

-- Table gadoe.IepInclusionTypeDescriptor --
CREATE TABLE gadoe.IepInclusionTypeDescriptor (
    IepInclusionTypeDescriptorId INT NOT NULL,
    CONSTRAINT IepInclusionTypeDescriptor_PK PRIMARY KEY (IepInclusionTypeDescriptorId)
);

-- Table gadoe.IncidentSeverityLevelDescriptor --
CREATE TABLE gadoe.IncidentSeverityLevelDescriptor (
    IncidentSeverityLevelDescriptorId INT NOT NULL,
    CONSTRAINT IncidentSeverityLevelDescriptor_PK PRIMARY KEY (IncidentSeverityLevelDescriptorId)
);

-- Table gadoe.IncidentTimingDescriptor --
CREATE TABLE gadoe.IncidentTimingDescriptor (
    IncidentTimingDescriptorId INT NOT NULL,
    CONSTRAINT IncidentTimingDescriptor_PK PRIMARY KEY (IncidentTimingDescriptorId)
);

-- Table gadoe.InclusionPersonnelDescriptor --
CREATE TABLE gadoe.InclusionPersonnelDescriptor (
    InclusionPersonnelDescriptorId INT NOT NULL,
    CONSTRAINT InclusionPersonnelDescriptor_PK PRIMARY KEY (InclusionPersonnelDescriptorId)
);

-- Table gadoe.LocalEducationAgencyStatistic --
CREATE TABLE gadoe.LocalEducationAgencyStatistic (
    EducationOrganizationId INT NOT NULL,
    Tkes90PercentAllTeachersIncluded BOOLEAN NULL,
    Discriminator VARCHAR(128) NULL,
    CreateDate TIMESTAMP NOT NULL,
    LastModifiedDate TIMESTAMP NOT NULL,
    Id UUID NOT NULL,
    CONSTRAINT LocalEducationAgencyStatistic_PK PRIMARY KEY (EducationOrganizationId)
);
ALTER TABLE gadoe.LocalEducationAgencyStatistic ALTER COLUMN CreateDate SET DEFAULT current_timestamp;
ALTER TABLE gadoe.LocalEducationAgencyStatistic ALTER COLUMN Id SET DEFAULT gen_random_uuid();
ALTER TABLE gadoe.LocalEducationAgencyStatistic ALTER COLUMN LastModifiedDate SET DEFAULT current_timestamp;

-- Table gadoe.LocalEducationAgencyStatisticPrivateOrHomeSchooledStudentCount --
CREATE TABLE gadoe.LocalEducationAgencyStatisticPrivateOrHomeSchooledStudentCount (
    EducationOrganizationId INT NOT NULL,
    PrivateOrHomeSchooledStudentDescriptorId INT NOT NULL,
    CollectedCount INT NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT LocalEducationAgencyStatisticPrivateOrHomeSchooled_e9498a_PK PRIMARY KEY (EducationOrganizationId, PrivateOrHomeSchooledStudentDescriptorId)
);
ALTER TABLE gadoe.LocalEducationAgencyStatisticPrivateOrHomeSchooledStudentCount ALTER COLUMN CreateDate SET DEFAULT current_timestamp;

-- Table gadoe.LocalEducationAgencyStatisticPsychologicalServicesEvalua_bdbe54 --
CREATE TABLE gadoe.LocalEducationAgencyStatisticPsychologicalServicesEvalua_bdbe54 (
    EducationOrganizationId INT NOT NULL,
    PsychologicalServicesEvaluationDescriptorId INT NOT NULL,
    CollectedCount INT NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT LocalEducationAgencyStatisticPsychologicalServices_bdbe54_PK PRIMARY KEY (EducationOrganizationId, PsychologicalServicesEvaluationDescriptorId)
);
ALTER TABLE gadoe.LocalEducationAgencyStatisticPsychologicalServicesEvalua_bdbe54 ALTER COLUMN CreateDate SET DEFAULT current_timestamp;

-- Table gadoe.NonESOLStatusDescriptor --
CREATE TABLE gadoe.NonESOLStatusDescriptor (
    NonESOLStatusDescriptorId INT NOT NULL,
    CONSTRAINT NonESOLStatusDescriptor_PK PRIMARY KEY (NonESOLStatusDescriptorId)
);

-- Table gadoe.NutritionSchoolDescriptor --
CREATE TABLE gadoe.NutritionSchoolDescriptor (
    NutritionSchoolDescriptorId INT NOT NULL,
    CONSTRAINT NutritionSchoolDescriptor_PK PRIMARY KEY (NutritionSchoolDescriptorId)
);

-- Table gadoe.PrimaryStaffClassificationDescriptor --
CREATE TABLE gadoe.PrimaryStaffClassificationDescriptor (
    PrimaryStaffClassificationDescriptorId INT NOT NULL,
    CONSTRAINT PrimaryStaffClassificationDescriptor_PK PRIMARY KEY (PrimaryStaffClassificationDescriptorId)
);

-- Table gadoe.PrivateOrHomeSchooledStudentDescriptor --
CREATE TABLE gadoe.PrivateOrHomeSchooledStudentDescriptor (
    PrivateOrHomeSchooledStudentDescriptorId INT NOT NULL,
    CONSTRAINT PrivateOrHomeSchooledStudentDescriptor_PK PRIMARY KEY (PrivateOrHomeSchooledStudentDescriptorId)
);

-- Table gadoe.ProgramReferredByDescriptor --
CREATE TABLE gadoe.ProgramReferredByDescriptor (
    ProgramReferredByDescriptorId INT NOT NULL,
    CONSTRAINT ProgramReferredByDescriptor_PK PRIMARY KEY (ProgramReferredByDescriptorId)
);

-- Table gadoe.PsychologicalServicesEvaluationDescriptor --
CREATE TABLE gadoe.PsychologicalServicesEvaluationDescriptor (
    PsychologicalServicesEvaluationDescriptorId INT NOT NULL,
    CONSTRAINT PsychologicalServicesEvaluationDescriptor_PK PRIMARY KEY (PsychologicalServicesEvaluationDescriptorId)
);

-- Table gadoe.SalaryPayStepDescriptor --
CREATE TABLE gadoe.SalaryPayStepDescriptor (
    SalaryPayStepDescriptorId INT NOT NULL,
    CONSTRAINT SalaryPayStepDescriptor_PK PRIMARY KEY (SalaryPayStepDescriptorId)
);

-- Table gadoe.SchoolStatistic --
CREATE TABLE gadoe.SchoolStatistic (
    SchoolId INT NOT NULL,
    StemSteamSchoolDescriptorId INT NULL,
    NutritionSchoolDescriptorId INT NULL,
    TitleIPartASchoolDesignationDescriptorId INT NULL,
    DualEnrollmentAwarenessGrade8 BOOLEAN NULL,
    DualEnrollmentAwarenessGrade9 BOOLEAN NULL,
    DualEnrollmentAwarenessGrade10 BOOLEAN NULL,
    DualEnrollmentAwarenessGrade11 BOOLEAN NULL,
    CprTrainingProvided BOOLEAN NULL,
    OnlineSchool BOOLEAN NULL,
    SocialWorkStudentCount INT NULL,
    Discriminator VARCHAR(128) NULL,
    CreateDate TIMESTAMP NOT NULL,
    LastModifiedDate TIMESTAMP NOT NULL,
    Id UUID NOT NULL,
    CONSTRAINT SchoolStatistic_PK PRIMARY KEY (SchoolId)
);
ALTER TABLE gadoe.SchoolStatistic ALTER COLUMN CreateDate SET DEFAULT current_timestamp;
ALTER TABLE gadoe.SchoolStatistic ALTER COLUMN Id SET DEFAULT gen_random_uuid();
ALTER TABLE gadoe.SchoolStatistic ALTER COLUMN LastModifiedDate SET DEFAULT current_timestamp;

-- Table gadoe.SchoolStatisticBehaviorIncidentCount --
CREATE TABLE gadoe.SchoolStatisticBehaviorIncidentCount (
    BehaviorIncidentDescriptorId INT NOT NULL,
    SchoolId INT NOT NULL,
    CollectedCount INT NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT SchoolStatisticBehaviorIncidentCount_PK PRIMARY KEY (BehaviorIncidentDescriptorId, SchoolId)
);
ALTER TABLE gadoe.SchoolStatisticBehaviorIncidentCount ALTER COLUMN CreateDate SET DEFAULT current_timestamp;

-- Table gadoe.SchoolStatisticSocialWorkCaseCount --
CREATE TABLE gadoe.SchoolStatisticSocialWorkCaseCount (
    SchoolId INT NOT NULL,
    SocialWorkCaseDescriptorId INT NOT NULL,
    CollectedCount INT NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT SchoolStatisticSocialWorkCaseCount_PK PRIMARY KEY (SchoolId, SocialWorkCaseDescriptorId)
);
ALTER TABLE gadoe.SchoolStatisticSocialWorkCaseCount ALTER COLUMN CreateDate SET DEFAULT current_timestamp;

-- Table gadoe.SchoolStatisticSocialWorkReferralCount --
CREATE TABLE gadoe.SchoolStatisticSocialWorkReferralCount (
    SchoolId INT NOT NULL,
    SocialWorkReferralDescriptorId INT NOT NULL,
    CollectedCount INT NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT SchoolStatisticSocialWorkReferralCount_PK PRIMARY KEY (SchoolId, SocialWorkReferralDescriptorId)
);
ALTER TABLE gadoe.SchoolStatisticSocialWorkReferralCount ALTER COLUMN CreateDate SET DEFAULT current_timestamp;

-- Table gadoe.SchoolStatisticSocialWorkServiceInterventionCount --
CREATE TABLE gadoe.SchoolStatisticSocialWorkServiceInterventionCount (
    SchoolId INT NOT NULL,
    SocialWorkServiceInterventionDescriptorId INT NOT NULL,
    CollectedCount INT NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT SchoolStatisticSocialWorkServiceInterventionCount_PK PRIMARY KEY (SchoolId, SocialWorkServiceInterventionDescriptorId)
);
ALTER TABLE gadoe.SchoolStatisticSocialWorkServiceInterventionCount ALTER COLUMN CreateDate SET DEFAULT current_timestamp;

-- Table gadoe.Section504PlanDescriptor --
CREATE TABLE gadoe.Section504PlanDescriptor (
    Section504PlanDescriptorId INT NOT NULL,
    CONSTRAINT Section504PlanDescriptor_PK PRIMARY KEY (Section504PlanDescriptorId)
);

-- Table gadoe.SectionExtension --
CREATE TABLE gadoe.SectionExtension (
    LocalCourseCode VARCHAR(60) NOT NULL,
    SchoolId INT NOT NULL,
    SchoolYear SMALLINT NOT NULL,
    SectionIdentifier VARCHAR(255) NOT NULL,
    SessionName VARCHAR(60) NOT NULL,
    AlternateEducationOrganizationId INT NULL,
    ClassPeriodNumber VARCHAR(2) NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT SectionExtension_PK PRIMARY KEY (LocalCourseCode, SchoolId, SchoolYear, SectionIdentifier, SessionName)
);
ALTER TABLE gadoe.SectionExtension ALTER COLUMN CreateDate SET DEFAULT current_timestamp;

-- Table gadoe.SocialWorkCaseDescriptor --
CREATE TABLE gadoe.SocialWorkCaseDescriptor (
    SocialWorkCaseDescriptorId INT NOT NULL,
    CONSTRAINT SocialWorkCaseDescriptor_PK PRIMARY KEY (SocialWorkCaseDescriptorId)
);

-- Table gadoe.SocialWorkReferralDescriptor --
CREATE TABLE gadoe.SocialWorkReferralDescriptor (
    SocialWorkReferralDescriptorId INT NOT NULL,
    CONSTRAINT SocialWorkReferralDescriptor_PK PRIMARY KEY (SocialWorkReferralDescriptorId)
);

-- Table gadoe.SocialWorkServiceInterventionDescriptor --
CREATE TABLE gadoe.SocialWorkServiceInterventionDescriptor (
    SocialWorkServiceInterventionDescriptorId INT NOT NULL,
    CONSTRAINT SocialWorkServiceInterventionDescriptor_PK PRIMARY KEY (SocialWorkServiceInterventionDescriptorId)
);

-- Table gadoe.SpecialEducationDeliveryModelDescriptor --
CREATE TABLE gadoe.SpecialEducationDeliveryModelDescriptor (
    SpecialEducationDeliveryModelDescriptorId INT NOT NULL,
    CONSTRAINT SpecialEducationDeliveryModelDescriptor_PK PRIMARY KEY (SpecialEducationDeliveryModelDescriptorId)
);

-- Table gadoe.SpecialEducationEventReasonDescriptor --
CREATE TABLE gadoe.SpecialEducationEventReasonDescriptor (
    SpecialEducationEventReasonDescriptorId INT NOT NULL,
    CONSTRAINT SpecialEducationEventReasonDescriptor_PK PRIMARY KEY (SpecialEducationEventReasonDescriptorId)
);

-- Table gadoe.SpecialEducationEventTypeDescriptor --
CREATE TABLE gadoe.SpecialEducationEventTypeDescriptor (
    SpecialEducationEventTypeDescriptorId INT NOT NULL,
    CONSTRAINT SpecialEducationEventTypeDescriptor_PK PRIMARY KEY (SpecialEducationEventTypeDescriptorId)
);

-- Table gadoe.SpecialEducationNonComplianceDescriptor --
CREATE TABLE gadoe.SpecialEducationNonComplianceDescriptor (
    SpecialEducationNonComplianceDescriptorId INT NOT NULL,
    CONSTRAINT SpecialEducationNonComplianceDescriptor_PK PRIMARY KEY (SpecialEducationNonComplianceDescriptorId)
);

-- Table gadoe.StaffAssignmentCertificateTypeDescriptor --
CREATE TABLE gadoe.StaffAssignmentCertificateTypeDescriptor (
    StaffAssignmentCertificateTypeDescriptorId INT NOT NULL,
    CONSTRAINT StaffAssignmentCertificateTypeDescriptor_PK PRIMARY KEY (StaffAssignmentCertificateTypeDescriptorId)
);

-- Table gadoe.StaffAssignmentFieldCodeDescriptor --
CREATE TABLE gadoe.StaffAssignmentFieldCodeDescriptor (
    StaffAssignmentFieldCodeDescriptorId INT NOT NULL,
    CONSTRAINT StaffAssignmentFieldCodeDescriptor_PK PRIMARY KEY (StaffAssignmentFieldCodeDescriptorId)
);

-- Table gadoe.StaffAssignmentFundCodeDescriptor --
CREATE TABLE gadoe.StaffAssignmentFundCodeDescriptor (
    StaffAssignmentFundCodeDescriptorId INT NOT NULL,
    CONSTRAINT StaffAssignmentFundCodeDescriptor_PK PRIMARY KEY (StaffAssignmentFundCodeDescriptorId)
);

-- Table gadoe.StaffAssignmentSubjectMatterCodeDescriptor --
CREATE TABLE gadoe.StaffAssignmentSubjectMatterCodeDescriptor (
    StaffAssignmentSubjectMatterCodeDescriptorId INT NOT NULL,
    CONSTRAINT StaffAssignmentSubjectMatterCodeDescriptor_PK PRIMARY KEY (StaffAssignmentSubjectMatterCodeDescriptorId)
);

-- Table gadoe.StaffEducationOrganizationAssignmentAssociationExtension --
CREATE TABLE gadoe.StaffEducationOrganizationAssignmentAssociationExtension (
    BeginDate DATE NOT NULL,
    EducationOrganizationId INT NOT NULL,
    StaffClassificationDescriptorId INT NOT NULL,
    StaffUSI INT NOT NULL,
    AssignmentConsolidatedFunded BOOLEAN NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT StaffEducationOrganizationAssignmentAssociationExtension_PK PRIMARY KEY (BeginDate, EducationOrganizationId, StaffClassificationDescriptorId, StaffUSI)
);
ALTER TABLE gadoe.StaffEducationOrganizationAssignmentAssociationExtension ALTER COLUMN CreateDate SET DEFAULT current_timestamp;

-- Table gadoe.StaffEducationOrganizationAssignmentAssociationStaffAssi_fb334e --
CREATE TABLE gadoe.StaffEducationOrganizationAssignmentAssociationStaffAssi_fb334e (
    AssignmentCodeEntryNumber INT NOT NULL,
    BeginDate DATE NOT NULL,
    EducationOrganizationId INT NOT NULL,
    StaffClassificationDescriptorId INT NOT NULL,
    StaffUSI INT NOT NULL,
    AssignmentPercentOfTime DECIMAL(3, 2) NULL,
    StaffAssignmentCertificateTypeDescriptorId INT NULL,
    StaffAssignmentFieldCodeDescriptorId INT NULL,
    StaffAssignmentFundCodeDescriptorId INT NULL,
    StaffAssignmentSubjectMatterCodeDescriptorId INT NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT StaffEducationOrganizationAssignmentAssociationSta_fb334e_PK PRIMARY KEY (AssignmentCodeEntryNumber, BeginDate, EducationOrganizationId, StaffClassificationDescriptorId, StaffUSI)
);
ALTER TABLE gadoe.StaffEducationOrganizationAssignmentAssociationStaffAssi_fb334e ALTER COLUMN CreateDate SET DEFAULT current_timestamp;

-- Table gadoe.StaffEducationOrganizationEmploymentAssociationExtension --
CREATE TABLE gadoe.StaffEducationOrganizationEmploymentAssociationExtension (
    EducationOrganizationId INT NOT NULL,
    EmploymentStatusDescriptorId INT NOT NULL,
    HireDate DATE NOT NULL,
    StaffUSI INT NOT NULL,
    AnnualSalary DECIMAL(9, 2) NULL,
    AnnualContractWorkDays INT NULL,
    EmploymentBasis DECIMAL(4, 3) NULL,
    SalaryPayStepDescriptorId INT NULL,
    PrimaryStaffClassificationDescriptorId INT NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT StaffEducationOrganizationEmploymentAssociationExtension_PK PRIMARY KEY (EducationOrganizationId, EmploymentStatusDescriptorId, HireDate, StaffUSI)
);
ALTER TABLE gadoe.StaffEducationOrganizationEmploymentAssociationExtension ALTER COLUMN CreateDate SET DEFAULT current_timestamp;

-- Table gadoe.StaffEducationOrganizationEmploymentAssociationStaffEmpl_222c02 --
CREATE TABLE gadoe.StaffEducationOrganizationEmploymentAssociationStaffEmpl_222c02 (
    EducationOrganizationId INT NOT NULL,
    EmploymentStatusDescriptorId INT NOT NULL,
    HireDate DATE NOT NULL,
    StaffEmploymentCharacteristicDescriptorId INT NOT NULL,
    StaffUSI INT NOT NULL,
    DesignatedBy VARCHAR(60) NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT StaffEducationOrganizationEmploymentAssociationSta_222c02_PK PRIMARY KEY (EducationOrganizationId, EmploymentStatusDescriptorId, HireDate, StaffEmploymentCharacteristicDescriptorId, StaffUSI)
);
ALTER TABLE gadoe.StaffEducationOrganizationEmploymentAssociationStaffEmpl_222c02 ALTER COLUMN CreateDate SET DEFAULT current_timestamp;

-- Table gadoe.StaffEducationOrganizationEmploymentAssociationStaffEmpl_3580a6 --
CREATE TABLE gadoe.StaffEducationOrganizationEmploymentAssociationStaffEmpl_3580a6 (
    EducationOrganizationId INT NOT NULL,
    EmploymentStatusDescriptorId INT NOT NULL,
    HireDate DATE NOT NULL,
    Indicator VARCHAR(60) NOT NULL,
    IndicatorName VARCHAR(200) NOT NULL,
    StaffUSI INT NOT NULL,
    IndicatorGroup VARCHAR(200) NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT StaffEducationOrganizationEmploymentAssociationSta_3580a6_PK PRIMARY KEY (EducationOrganizationId, EmploymentStatusDescriptorId, HireDate, Indicator, IndicatorName, StaffUSI)
);
ALTER TABLE gadoe.StaffEducationOrganizationEmploymentAssociationStaffEmpl_3580a6 ALTER COLUMN CreateDate SET DEFAULT current_timestamp;

-- Table gadoe.StaffEmploymentCharacteristicDescriptor --
CREATE TABLE gadoe.StaffEmploymentCharacteristicDescriptor (
    StaffEmploymentCharacteristicDescriptorId INT NOT NULL,
    CONSTRAINT StaffEmploymentCharacteristicDescriptor_PK PRIMARY KEY (StaffEmploymentCharacteristicDescriptorId)
);

-- Table gadoe.StaffExtension --
CREATE TABLE gadoe.StaffExtension (
    StaffUSI INT NOT NULL,
    EmployeeTypeDescriptorId INT NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT StaffExtension_PK PRIMARY KEY (StaffUSI)
);
ALTER TABLE gadoe.StaffExtension ALTER COLUMN CreateDate SET DEFAULT current_timestamp;

-- Table gadoe.StaffSectionAssociationExtension --
CREATE TABLE gadoe.StaffSectionAssociationExtension (
    LocalCourseCode VARCHAR(60) NOT NULL,
    SchoolId INT NOT NULL,
    SchoolYear SMALLINT NOT NULL,
    SectionIdentifier VARCHAR(255) NOT NULL,
    SessionName VARCHAR(60) NOT NULL,
    StaffUSI INT NOT NULL,
    ChwCertFieldCodeDescriptorId INT NULL,
    Attendance90Percent BOOLEAN NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT StaffSectionAssociationExtension_PK PRIMARY KEY (LocalCourseCode, SchoolId, SchoolYear, SectionIdentifier, SessionName, StaffUSI)
);
ALTER TABLE gadoe.StaffSectionAssociationExtension ALTER COLUMN CreateDate SET DEFAULT current_timestamp;

-- Table gadoe.StaffServiceTypeDescriptor --
CREATE TABLE gadoe.StaffServiceTypeDescriptor (
    StaffServiceTypeDescriptorId INT NOT NULL,
    CONSTRAINT StaffServiceTypeDescriptor_PK PRIMARY KEY (StaffServiceTypeDescriptorId)
);

-- Table gadoe.StemSteamSchoolDescriptor --
CREATE TABLE gadoe.StemSteamSchoolDescriptor (
    StemSteamSchoolDescriptorId INT NOT NULL,
    CONSTRAINT StemSteamSchoolDescriptor_PK PRIMARY KEY (StemSteamSchoolDescriptorId)
);

-- Table gadoe.StudentEducationOrganizationAssociationExtension --
CREATE TABLE gadoe.StudentEducationOrganizationAssociationExtension (
    EducationOrganizationId INT NOT NULL,
    StudentUSI INT NOT NULL,
    Biliteracy1LanguageDescriptorId INT NULL,
    Biliteracy2LanguageDescriptorId INT NULL,
    Biliteracy3LanguageDescriptorId INT NULL,
    NonESOLStatusDescriptorId INT NULL,
    ParentCommunicationLanguageDescriptorId INT NULL,
    DateStudentEligibleForACS DATE NULL,
    DateStudentNoLongerACS DATE NULL,
    CountyOfResidenceDescriptorId INT NULL,
    SystemOfResidencyDescriptorId INT NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT StudentEducationOrganizationAssociationExtension_PK PRIMARY KEY (EducationOrganizationId, StudentUSI)
);
ALTER TABLE gadoe.StudentEducationOrganizationAssociationExtension ALTER COLUMN CreateDate SET DEFAULT current_timestamp;

-- Table gadoe.StudentLanguageInstructionProgramAssociationExtension --
CREATE TABLE gadoe.StudentLanguageInstructionProgramAssociationExtension (
    BeginDate DATE NOT NULL,
    EducationOrganizationId INT NOT NULL,
    ProgramEducationOrganizationId INT NOT NULL,
    ProgramName VARCHAR(60) NOT NULL,
    ProgramTypeDescriptorId INT NOT NULL,
    StudentUSI INT NOT NULL,
    DateofELPScreener DATE NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT StudentLanguageInstructionProgramAssociationExtension_PK PRIMARY KEY (BeginDate, EducationOrganizationId, ProgramEducationOrganizationId, ProgramName, ProgramTypeDescriptorId, StudentUSI)
);
ALTER TABLE gadoe.StudentLanguageInstructionProgramAssociationExtension ALTER COLUMN CreateDate SET DEFAULT current_timestamp;

-- Table gadoe.StudentProgramAssociationExtension --
CREATE TABLE gadoe.StudentProgramAssociationExtension (
    BeginDate DATE NOT NULL,
    EducationOrganizationId INT NOT NULL,
    ProgramEducationOrganizationId INT NOT NULL,
    ProgramName VARCHAR(60) NOT NULL,
    ProgramTypeDescriptorId INT NOT NULL,
    StudentUSI INT NOT NULL,
    ProgramReferredByDescriptorId INT NULL,
    AlternateEducationOrganizationId INT NULL,
    NumberofDailyGNETSSegments INT NULL,
    GiftedEligibilityDate DATE NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT StudentProgramAssociationExtension_PK PRIMARY KEY (BeginDate, EducationOrganizationId, ProgramEducationOrganizationId, ProgramName, ProgramTypeDescriptorId, StudentUSI)
);
ALTER TABLE gadoe.StudentProgramAssociationExtension ALTER COLUMN CreateDate SET DEFAULT current_timestamp;

-- Table gadoe.StudentSchoolAssociationExtension --
CREATE TABLE gadoe.StudentSchoolAssociationExtension (
    EntryDate DATE NOT NULL,
    SchoolId INT NOT NULL,
    StudentUSI INT NOT NULL,
    DateEntered9thGrade DATE NULL,
    PriorTenDays BOOLEAN NULL,
    SummerImmigrantProgramParticipation BOOLEAN NULL,
    SummerTitleIIIServed BOOLEAN NULL,
    ASVABScore INT NULL,
    EsolSegments INT NULL,
    NoShowStudent BOOLEAN NULL,
    ChildFindStatusDescriptorId INT NULL,
    GiftedServedDescriptorId INT NULL,
    StudentSupportTeamParticipant BOOLEAN NULL,
    DualImmersion BOOLEAN NULL,
    ImmigrantProgramParticipant BOOLEAN NULL,
    SBDualEnrollment BOOLEAN NULL,
    TitleITargetedAssistanceParticipation BOOLEAN NULL,
    CCANonTraditional BOOLEAN NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT StudentSchoolAssociationExtension_PK PRIMARY KEY (EntryDate, SchoolId, StudentUSI)
);
ALTER TABLE gadoe.StudentSchoolAssociationExtension ALTER COLUMN CreateDate SET DEFAULT current_timestamp;

-- Table gadoe.StudentSchoolAssociationFteSegments --
CREATE TABLE gadoe.StudentSchoolAssociationFteSegments (
    EntryDate DATE NOT NULL,
    FteProgramCodeDescriptorId INT NOT NULL,
    InclusionPersonnelDescriptorId INT NOT NULL,
    SchoolId INT NOT NULL,
    SegmentNumber INT NOT NULL,
    StudentUSI INT NOT NULL,
    ItinerantTeacherSpecialEducationServices BOOLEAN NULL,
    ReceivedSupplementalSpeechServices BOOLEAN NULL,
    TransportedForSection BOOLEAN NULL,
    EnrollmentLocationDescriptorId INT NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT StudentSchoolAssociationFteSegments_PK PRIMARY KEY (EntryDate, FteProgramCodeDescriptorId, InclusionPersonnelDescriptorId, SchoolId, SegmentNumber, StudentUSI)
);
ALTER TABLE gadoe.StudentSchoolAssociationFteSegments ALTER COLUMN CreateDate SET DEFAULT current_timestamp;

-- Table gadoe.StudentSection504ProgramAssociation --
CREATE TABLE gadoe.StudentSection504ProgramAssociation (
    BeginDate DATE NOT NULL,
    EducationOrganizationId INT NOT NULL,
    ProgramEducationOrganizationId INT NOT NULL,
    ProgramName VARCHAR(60) NOT NULL,
    ProgramTypeDescriptorId INT NOT NULL,
    StudentUSI INT NOT NULL,
    AccommodationPlan BOOLEAN NULL,
    InitialDNQDate DATE NULL,
    LastEvaluationDate DATE NULL,
    MeetingDate DATE NULL,
    CONSTRAINT StudentSection504ProgramAssociation_PK PRIMARY KEY (BeginDate, EducationOrganizationId, ProgramEducationOrganizationId, ProgramName, ProgramTypeDescriptorId, StudentUSI)
);

-- Table gadoe.StudentSection504ProgramAssociationSection504Plan --
CREATE TABLE gadoe.StudentSection504ProgramAssociationSection504Plan (
    BeginDate DATE NOT NULL,
    EducationOrganizationId INT NOT NULL,
    ProgramEducationOrganizationId INT NOT NULL,
    ProgramName VARCHAR(60) NOT NULL,
    ProgramTypeDescriptorId INT NOT NULL,
    Section504PlanDescriptorId INT NOT NULL,
    StudentUSI INT NOT NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT StudentSection504ProgramAssociationSection504Plan_PK PRIMARY KEY (BeginDate, EducationOrganizationId, ProgramEducationOrganizationId, ProgramName, ProgramTypeDescriptorId, Section504PlanDescriptorId, StudentUSI)
);
ALTER TABLE gadoe.StudentSection504ProgramAssociationSection504Plan ALTER COLUMN CreateDate SET DEFAULT current_timestamp;

-- Table gadoe.StudentSectionAssociationAdditionalTeacher --
CREATE TABLE gadoe.StudentSectionAssociationAdditionalTeacher (
    BeginDate DATE NOT NULL,
    LocalCourseCode VARCHAR(60) NOT NULL,
    SchoolId INT NOT NULL,
    SchoolYear SMALLINT NOT NULL,
    SectionIdentifier VARCHAR(255) NOT NULL,
    SessionName VARCHAR(60) NOT NULL,
    StaffUSI INT NOT NULL,
    StudentUSI INT NOT NULL,
    StaffServiceTypeDescriptorId INT NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT StudentSectionAssociationAdditionalTeacher_PK PRIMARY KEY (BeginDate, LocalCourseCode, SchoolId, SchoolYear, SectionIdentifier, SessionName, StaffUSI, StudentUSI)
);
ALTER TABLE gadoe.StudentSectionAssociationAdditionalTeacher ALTER COLUMN CreateDate SET DEFAULT current_timestamp;

-- Table gadoe.StudentSectionAssociationExtension --
CREATE TABLE gadoe.StudentSectionAssociationExtension (
    BeginDate DATE NOT NULL,
    LocalCourseCode VARCHAR(60) NOT NULL,
    SchoolId INT NOT NULL,
    SchoolYear SMALLINT NOT NULL,
    SectionIdentifier VARCHAR(255) NOT NULL,
    SessionName VARCHAR(60) NOT NULL,
    StudentUSI INT NOT NULL,
    CreditRecovery BOOLEAN NULL,
    FteProgramCodeDescriptorId INT NULL,
    IepInclusionTypeDescriptorId INT NULL,
    InclusionPersonnelDescriptorId INT NULL,
    ItinerantTeacherSpecialEducationServices BOOLEAN NULL,
    ReceivedSupplementalSpeechServices BOOLEAN NULL,
    TransportedForSection BOOLEAN NULL,
    WorkBasedLearningProgramDescriptorId INT NULL,
    EipDeliveryModelDescriptorId INT NULL,
    EsolDeliveryModelDescriptorId INT NULL,
    GiftedDeliveryModelDescriptorId INT NULL,
    SpecialEducationDeliveryModelDescriptorId INT NULL,
    NumberParapros INT NULL,
    Attendance90Percent BOOLEAN NULL,
    EnrollmentLocationDescriptorId INT NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT StudentSectionAssociationExtension_PK PRIMARY KEY (BeginDate, LocalCourseCode, SchoolId, SchoolYear, SectionIdentifier, SessionName, StudentUSI)
);
ALTER TABLE gadoe.StudentSectionAssociationExtension ALTER COLUMN CreateDate SET DEFAULT current_timestamp;

-- Table gadoe.StudentSpecialEducationAssociationEvent --
CREATE TABLE gadoe.StudentSpecialEducationAssociationEvent (
    EntryDate DATE NOT NULL,
    EventDate DATE NOT NULL,
    SchoolId INT NOT NULL,
    SpecialEducationEventTypeDescriptorId INT NOT NULL,
    StudentUSI INT NOT NULL,
    SpecialEducationEventReasonDescriptorId INT NULL,
    SpecialEducationNonComplianceDescriptorId INT NULL,
    ParentPresentAtConference BOOLEAN NULL,
    StudentPresentAtConference BOOLEAN NULL,
    Discriminator VARCHAR(128) NULL,
    CreateDate TIMESTAMP NOT NULL,
    LastModifiedDate TIMESTAMP NOT NULL,
    Id UUID NOT NULL,
    CONSTRAINT StudentSpecialEducationAssociationEvent_PK PRIMARY KEY (EntryDate, EventDate, SchoolId, SpecialEducationEventTypeDescriptorId, StudentUSI)
);
ALTER TABLE gadoe.StudentSpecialEducationAssociationEvent ALTER COLUMN CreateDate SET DEFAULT current_timestamp;
ALTER TABLE gadoe.StudentSpecialEducationAssociationEvent ALTER COLUMN Id SET DEFAULT gen_random_uuid();
ALTER TABLE gadoe.StudentSpecialEducationAssociationEvent ALTER COLUMN LastModifiedDate SET DEFAULT current_timestamp;

-- Table gadoe.SystemOfResidencyDescriptor --
CREATE TABLE gadoe.SystemOfResidencyDescriptor (
    SystemOfResidencyDescriptorId INT NOT NULL,
    CONSTRAINT SystemOfResidencyDescriptor_PK PRIMARY KEY (SystemOfResidencyDescriptorId)
);

-- Table gadoe.WorkBasedLearningProgramDescriptor --
CREATE TABLE gadoe.WorkBasedLearningProgramDescriptor (
    WorkBasedLearningProgramDescriptorId INT NOT NULL,
    CONSTRAINT WorkBasedLearningProgramDescriptor_PK PRIMARY KEY (WorkBasedLearningProgramDescriptorId)
);

