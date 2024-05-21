-- Table idoe.AccreditationDescriptor --
CREATE TABLE idoe.AccreditationDescriptor (
    AccreditationDescriptorId INT NOT NULL,
    CONSTRAINT AccreditationDescriptor_PK PRIMARY KEY (AccreditationDescriptorId)
);

-- Table idoe.ADMCodeDescriptor --
CREATE TABLE idoe.ADMCodeDescriptor (
    ADMCodeDescriptorId INT NOT NULL,
    CONSTRAINT ADMCodeDescriptor_PK PRIMARY KEY (ADMCodeDescriptorId)
);

-- Table idoe.AlternativeEducationEligibilityReasonDescriptor --
CREATE TABLE idoe.AlternativeEducationEligibilityReasonDescriptor (
    AlternativeEducationEligibilityReasonDescriptorId INT NOT NULL,
    CONSTRAINT AlternativeEducationEligibilityReasonDescriptor_PK PRIMARY KEY (AlternativeEducationEligibilityReasonDescriptorId)
);

-- Table idoe.ArrestReasonDescriptor --
CREATE TABLE idoe.ArrestReasonDescriptor (
    ArrestReasonDescriptorId INT NOT NULL,
    CONSTRAINT ArrestReasonDescriptor_PK PRIMARY KEY (ArrestReasonDescriptorId)
);

-- Table idoe.AssessmentAccommodation --
CREATE TABLE idoe.AssessmentAccommodation (
    AcademicSubjectDescriptorId INT NOT NULL,
    AccommodationDescriptorId INT NOT NULL,
    AssessmentIdentifier VARCHAR(60) NOT NULL,
    Namespace VARCHAR(255) NOT NULL,
    Discriminator VARCHAR(128) NULL,
    CreateDate TIMESTAMP NOT NULL,
    LastModifiedDate TIMESTAMP NOT NULL,
    Id UUID NOT NULL,
    CONSTRAINT AssessmentAccommodation_PK PRIMARY KEY (AcademicSubjectDescriptorId, AccommodationDescriptorId, AssessmentIdentifier, Namespace)
);
ALTER TABLE idoe.AssessmentAccommodation ALTER COLUMN CreateDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';
ALTER TABLE idoe.AssessmentAccommodation ALTER COLUMN Id SET DEFAULT gen_random_uuid();
ALTER TABLE idoe.AssessmentAccommodation ALTER COLUMN LastModifiedDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';

-- Table idoe.CalendarDateExtension --
CREATE TABLE idoe.CalendarDateExtension (
    CalendarCode VARCHAR(60) NOT NULL,
    Date DATE NOT NULL,
    SchoolId INT NOT NULL,
    SchoolYear SMALLINT NOT NULL,
    EventDuration DECIMAL(3, 2) NULL,
    EventMinutes INT NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT CalendarDateExtension_PK PRIMARY KEY (CalendarCode, Date, SchoolId, SchoolYear)
);
ALTER TABLE idoe.CalendarDateExtension ALTER COLUMN CreateDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';

-- Table idoe.CalendarExtension --
CREATE TABLE idoe.CalendarExtension (
    CalendarCode VARCHAR(60) NOT NULL,
    SchoolId INT NOT NULL,
    SchoolYear SMALLINT NOT NULL,
    InstructionalTimeInMinutesIndicator BOOLEAN NOT NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT CalendarExtension_PK PRIMARY KEY (CalendarCode, SchoolId, SchoolYear)
);
ALTER TABLE idoe.CalendarExtension ALTER COLUMN CreateDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';

-- Table idoe.CircumstancesRelevantToTimelineDescriptor --
CREATE TABLE idoe.CircumstancesRelevantToTimelineDescriptor (
    CircumstancesRelevantToTimelineDescriptorId INT NOT NULL,
    CONSTRAINT CircumstancesRelevantToTimelineDescriptor_PK PRIMARY KEY (CircumstancesRelevantToTimelineDescriptorId)
);

-- Table idoe.CriminalGangRelatedEventDescriptor --
CREATE TABLE idoe.CriminalGangRelatedEventDescriptor (
    CriminalGangRelatedEventDescriptorId INT NOT NULL,
    CONSTRAINT CriminalGangRelatedEventDescriptor_PK PRIMARY KEY (CriminalGangRelatedEventDescriptorId)
);

-- Table idoe.DisciplineActionExtension --
CREATE TABLE idoe.DisciplineActionExtension (
    DisciplineActionIdentifier VARCHAR(32) NOT NULL,
    DisciplineDate DATE NOT NULL,
    StudentUSI INT NOT NULL,
    ArrestReasonDescriptorId INT NULL,
    DisciplineActionServiceDescriptorId INT NULL,
    InterimAlternativeEducationSetting BOOLEAN NULL,
    StudentArrestDescriptorId INT NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT DisciplineActionExtension_PK PRIMARY KEY (DisciplineActionIdentifier, DisciplineDate, StudentUSI)
);
ALTER TABLE idoe.DisciplineActionExtension ALTER COLUMN CreateDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';

-- Table idoe.DisciplineActionServiceDescriptor --
CREATE TABLE idoe.DisciplineActionServiceDescriptor (
    DisciplineActionServiceDescriptorId INT NOT NULL,
    CONSTRAINT DisciplineActionServiceDescriptor_PK PRIMARY KEY (DisciplineActionServiceDescriptorId)
);

-- Table idoe.EducationOrganizationOtherPersonnel --
CREATE TABLE idoe.EducationOrganizationOtherPersonnel (
    LocalEducationAgencyId INT NOT NULL,
    OtherPersonnelCategoryDescriptorId INT NOT NULL,
    OtherPersonnelTitleDescriptorId INT NOT NULL,
    FullTimeEquivalency DECIMAL(5, 4) NULL,
    OtherPersonnelCount INT NULL,
    Discriminator VARCHAR(128) NULL,
    CreateDate TIMESTAMP NOT NULL,
    LastModifiedDate TIMESTAMP NOT NULL,
    Id UUID NOT NULL,
    CONSTRAINT EducationOrganizationOtherPersonnel_PK PRIMARY KEY (LocalEducationAgencyId, OtherPersonnelCategoryDescriptorId, OtherPersonnelTitleDescriptorId)
);
ALTER TABLE idoe.EducationOrganizationOtherPersonnel ALTER COLUMN CreateDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';
ALTER TABLE idoe.EducationOrganizationOtherPersonnel ALTER COLUMN Id SET DEFAULT gen_random_uuid();
ALTER TABLE idoe.EducationOrganizationOtherPersonnel ALTER COLUMN LastModifiedDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';

-- Table idoe.ELLInstrumentUsedDescriptor --
CREATE TABLE idoe.ELLInstrumentUsedDescriptor (
    ELLInstrumentUsedDescriptorId INT NOT NULL,
    CONSTRAINT ELLInstrumentUsedDescriptor_PK PRIMARY KEY (ELLInstrumentUsedDescriptorId)
);

-- Table idoe.OtherPersonnelCategoryDescriptor --
CREATE TABLE idoe.OtherPersonnelCategoryDescriptor (
    OtherPersonnelCategoryDescriptorId INT NOT NULL,
    CONSTRAINT OtherPersonnelCategoryDescriptor_PK PRIMARY KEY (OtherPersonnelCategoryDescriptorId)
);

-- Table idoe.OtherPersonnelTitleDescriptor --
CREATE TABLE idoe.OtherPersonnelTitleDescriptor (
    OtherPersonnelTitleDescriptorId INT NOT NULL,
    CONSTRAINT OtherPersonnelTitleDescriptor_PK PRIMARY KEY (OtherPersonnelTitleDescriptorId)
);

-- Table idoe.ProgramMeetingTimeDescriptor --
CREATE TABLE idoe.ProgramMeetingTimeDescriptor (
    ProgramMeetingTimeDescriptorId INT NOT NULL,
    CONSTRAINT ProgramMeetingTimeDescriptor_PK PRIMARY KEY (ProgramMeetingTimeDescriptorId)
);

-- Table idoe.SchoolExtension --
CREATE TABLE idoe.SchoolExtension (
    SchoolId INT NOT NULL,
    AccreditationDescriptorId INT NULL,
    ChoiceIndicator BOOLEAN NULL,
    FreewayBeginDate DATE NULL,
    FreewayEndDate DATE NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT SchoolExtension_PK PRIMARY KEY (SchoolId)
);
ALTER TABLE idoe.SchoolExtension ALTER COLUMN CreateDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';

-- Table idoe.StaffEducationOrganizationEmploymentAssociationContract --
CREATE TABLE idoe.StaffEducationOrganizationEmploymentAssociationContract (
    EducationOrganizationId INT NOT NULL,
    EmploymentStatusDescriptorId INT NOT NULL,
    HireDate DATE NOT NULL,
    StaffUSI INT NOT NULL,
    ContractDays INT NOT NULL,
    ContractSalary INT NOT NULL,
    PercentTitleISalary INT NOT NULL,
    SupplementalSalary INT NOT NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT StaffEducationOrganizationEmploymentAssociationContract_PK PRIMARY KEY (EducationOrganizationId, EmploymentStatusDescriptorId, HireDate, StaffUSI)
);
ALTER TABLE idoe.StaffEducationOrganizationEmploymentAssociationContract ALTER COLUMN CreateDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';

-- Table idoe.StaffEducationOrganizationEmploymentAssociationExtension --
CREATE TABLE idoe.StaffEducationOrganizationEmploymentAssociationExtension (
    EducationOrganizationId INT NOT NULL,
    EmploymentStatusDescriptorId INT NOT NULL,
    HireDate DATE NOT NULL,
    StaffUSI INT NOT NULL,
    YearsOfPriorProfessionalExperience DECIMAL(5, 2) NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT StaffEducationOrganizationEmploymentAssociationExtension_PK PRIMARY KEY (EducationOrganizationId, EmploymentStatusDescriptorId, HireDate, StaffUSI)
);
ALTER TABLE idoe.StaffEducationOrganizationEmploymentAssociationExtension ALTER COLUMN CreateDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';

-- Table idoe.StudentAlternativeEducationProgramAssociation --
CREATE TABLE idoe.StudentAlternativeEducationProgramAssociation (
    BeginDate DATE NOT NULL,
    EducationOrganizationId INT NOT NULL,
    ProgramEducationOrganizationId INT NOT NULL,
    ProgramName VARCHAR(60) NOT NULL,
    ProgramTypeDescriptorId INT NOT NULL,
    StudentUSI INT NOT NULL,
    AlternativeEducationEligibilityReasonDescriptorId INT NOT NULL,
    CONSTRAINT StudentAlternativeEducationProgramAssociation_PK PRIMARY KEY (BeginDate, EducationOrganizationId, ProgramEducationOrganizationId, ProgramName, ProgramTypeDescriptorId, StudentUSI)
);

-- Table idoe.StudentAlternativeEducationProgramAssociationProgramMeetingTime --
CREATE TABLE idoe.StudentAlternativeEducationProgramAssociationProgramMeetingTime (
    BeginDate DATE NOT NULL,
    EducationOrganizationId INT NOT NULL,
    ProgramEducationOrganizationId INT NOT NULL,
    ProgramName VARCHAR(60) NOT NULL,
    ProgramTypeDescriptorId INT NOT NULL,
    StudentUSI INT NOT NULL,
    ProgramMeetingTimeDescriptorId INT NOT NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT StudentAlternativeEducationProgramAssociationProgr_b1f2b7_PK PRIMARY KEY (BeginDate, EducationOrganizationId, ProgramEducationOrganizationId, ProgramName, ProgramTypeDescriptorId, StudentUSI, ProgramMeetingTimeDescriptorId)
);
ALTER TABLE idoe.StudentAlternativeEducationProgramAssociationProgramMeetingTime ALTER COLUMN CreateDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';

-- Table idoe.StudentArrestDescriptor --
CREATE TABLE idoe.StudentArrestDescriptor (
    StudentArrestDescriptorId INT NOT NULL,
    CONSTRAINT StudentArrestDescriptor_PK PRIMARY KEY (StudentArrestDescriptorId)
);

-- Table idoe.StudentCurricularMaterialProgramAssociation --
CREATE TABLE idoe.StudentCurricularMaterialProgramAssociation (
    BeginDate DATE NOT NULL,
    EducationOrganizationId INT NOT NULL,
    ProgramEducationOrganizationId INT NOT NULL,
    ProgramName VARCHAR(60) NOT NULL,
    ProgramTypeDescriptorId INT NOT NULL,
    StudentUSI INT NOT NULL,
    LivesWithParentUSI INT NULL,
    StudentDoesNotLiveWithParent BOOLEAN NOT NULL,
    CONSTRAINT StudentCurricularMaterialProgramAssociation_PK PRIMARY KEY (BeginDate, EducationOrganizationId, ProgramEducationOrganizationId, ProgramName, ProgramTypeDescriptorId, StudentUSI)
);

-- Table idoe.StudentDisciplineIncidentBehaviorAssociationExtension --
CREATE TABLE idoe.StudentDisciplineIncidentBehaviorAssociationExtension (
    BehaviorDescriptorId INT NOT NULL,
    IncidentIdentifier VARCHAR(20) NOT NULL,
    SchoolId INT NOT NULL,
    StudentUSI INT NOT NULL,
    CriminalGangRelatedEventDescriptorId INT NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT StudentDisciplineIncidentBehaviorAssociationExtension_PK PRIMARY KEY (BehaviorDescriptorId, IncidentIdentifier, SchoolId, StudentUSI)
);
ALTER TABLE idoe.StudentDisciplineIncidentBehaviorAssociationExtension ALTER COLUMN CreateDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';

-- Table idoe.StudentEducationOrganizationAssessmentAccommodation --
CREATE TABLE idoe.StudentEducationOrganizationAssessmentAccommodation (
    AcademicSubjectDescriptorId INT NOT NULL,
    AccommodationDescriptorId INT NOT NULL,
    AssessmentIdentifier VARCHAR(60) NOT NULL,
    EducationOrganizationId INT NOT NULL,
    Namespace VARCHAR(255) NOT NULL,
    StudentUSI INT NOT NULL,
    Discriminator VARCHAR(128) NULL,
    CreateDate TIMESTAMP NOT NULL,
    LastModifiedDate TIMESTAMP NOT NULL,
    Id UUID NOT NULL,
    CONSTRAINT StudentEducationOrganizationAssessmentAccommodation_PK PRIMARY KEY (AcademicSubjectDescriptorId, AccommodationDescriptorId, AssessmentIdentifier, EducationOrganizationId, Namespace, StudentUSI)
);
ALTER TABLE idoe.StudentEducationOrganizationAssessmentAccommodation ALTER COLUMN CreateDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';
ALTER TABLE idoe.StudentEducationOrganizationAssessmentAccommodation ALTER COLUMN Id SET DEFAULT gen_random_uuid();
ALTER TABLE idoe.StudentEducationOrganizationAssessmentAccommodation ALTER COLUMN LastModifiedDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';

-- Table idoe.StudentEducationOrganizationAssociationExtension --
CREATE TABLE idoe.StudentEducationOrganizationAssociationExtension (
    EducationOrganizationId INT NOT NULL,
    StudentUSI INT NOT NULL,
    ELLInstrumentUsedDescriptorId INT NULL,
    USInitialSchoolEntry DATE NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT StudentEducationOrganizationAssociationExtension_PK PRIMARY KEY (EducationOrganizationId, StudentUSI)
);
ALTER TABLE idoe.StudentEducationOrganizationAssociationExtension ALTER COLUMN CreateDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';

-- Table idoe.StudentEducationOrganizationResponsibilityAssociationAdd_6c4efc --
CREATE TABLE idoe.StudentEducationOrganizationResponsibilityAssociationAdd_6c4efc (
    BeginDate DATE NOT NULL,
    EducationOrganizationId INT NOT NULL,
    ResponsibilityDescriptorId INT NOT NULL,
    StudentUSI INT NOT NULL,
    SchoolCorpId INT NOT NULL,
    SchoolCorpResponsibilityDescriptorId INT NOT NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT StudentEducationOrganizationResponsibilityAssociat_6c4efc_PK PRIMARY KEY (BeginDate, EducationOrganizationId, ResponsibilityDescriptorId, StudentUSI, SchoolCorpId, SchoolCorpResponsibilityDescriptorId)
);
ALTER TABLE idoe.StudentEducationOrganizationResponsibilityAssociationAdd_6c4efc ALTER COLUMN CreateDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';

-- Table idoe.StudentEducationOrganizationResponsibilityAssociationExtension --
CREATE TABLE idoe.StudentEducationOrganizationResponsibilityAssociationExtension (
    BeginDate DATE NOT NULL,
    EducationOrganizationId INT NOT NULL,
    ResponsibilityDescriptorId INT NOT NULL,
    StudentUSI INT NOT NULL,
    ADMCodeDescriptorId INT NULL,
    InstructionalDays INT NULL,
    InstructionalMinutes INT NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT StudentEducationOrganizationResponsibilityAssociat_5a80ec_PK PRIMARY KEY (BeginDate, EducationOrganizationId, ResponsibilityDescriptorId, StudentUSI)
);
ALTER TABLE idoe.StudentEducationOrganizationResponsibilityAssociationExtension ALTER COLUMN CreateDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';

-- Table idoe.StudentSpecialEducationProgramAssociationExtension --
CREATE TABLE idoe.StudentSpecialEducationProgramAssociationExtension (
    BeginDate DATE NOT NULL,
    EducationOrganizationId INT NOT NULL,
    ProgramEducationOrganizationId INT NOT NULL,
    ProgramName VARCHAR(60) NOT NULL,
    ProgramTypeDescriptorId INT NOT NULL,
    StudentUSI INT NOT NULL,
    CircumstancesRelevantToTimelineDescriptorId INT NULL,
    FirstStepsTransitionDate DATE NULL,
    ParentalConsentDate DATE NULL,
    TimelineComplianceDescriptorId INT NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT StudentSpecialEducationProgramAssociationExtension_PK PRIMARY KEY (BeginDate, EducationOrganizationId, ProgramEducationOrganizationId, ProgramName, ProgramTypeDescriptorId, StudentUSI)
);
ALTER TABLE idoe.StudentSpecialEducationProgramAssociationExtension ALTER COLUMN CreateDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';

-- Table idoe.TimelineComplianceDescriptor --
CREATE TABLE idoe.TimelineComplianceDescriptor (
    TimelineComplianceDescriptorId INT NOT NULL,
    CONSTRAINT TimelineComplianceDescriptor_PK PRIMARY KEY (TimelineComplianceDescriptorId)
);

