-- Table edfixassessmentroster.AssessmentAdministration --
CREATE TABLE edfixassessmentroster.AssessmentAdministration (
    AdministrationIdentifier VARCHAR(255) NOT NULL,
    AssessmentIdentifier VARCHAR(60) NOT NULL,
    AssigningEducationOrganizationId BIGINT NOT NULL,
    Namespace VARCHAR(255) NOT NULL,
    Discriminator VARCHAR(128) NULL,
    CreateDate TIMESTAMP NOT NULL,
    LastModifiedDate TIMESTAMP NOT NULL,
    Id UUID NOT NULL,
    CONSTRAINT AssessmentAdministration_PK PRIMARY KEY (AdministrationIdentifier, AssessmentIdentifier, AssigningEducationOrganizationId, Namespace)
);
ALTER TABLE edfixassessmentroster.AssessmentAdministration ALTER COLUMN CreateDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';
ALTER TABLE edfixassessmentroster.AssessmentAdministration ALTER COLUMN Id SET DEFAULT gen_random_uuid();
ALTER TABLE edfixassessmentroster.AssessmentAdministration ALTER COLUMN LastModifiedDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';

-- Table edfixassessmentroster.AssessmentAdministrationParticipation --
CREATE TABLE edfixassessmentroster.AssessmentAdministrationParticipation (
    AdministrationIdentifier VARCHAR(255) NOT NULL,
    AssessmentIdentifier VARCHAR(60) NOT NULL,
    AssigningEducationOrganizationId BIGINT NOT NULL,
    Namespace VARCHAR(255) NOT NULL,
    ParticipatingEducationOrganizationId BIGINT NOT NULL,
    Discriminator VARCHAR(128) NULL,
    CreateDate TIMESTAMP NOT NULL,
    LastModifiedDate TIMESTAMP NOT NULL,
    Id UUID NOT NULL,
    CONSTRAINT AssessmentAdministrationParticipation_PK PRIMARY KEY (AdministrationIdentifier, AssessmentIdentifier, AssigningEducationOrganizationId, Namespace, ParticipatingEducationOrganizationId)
);
ALTER TABLE edfixassessmentroster.AssessmentAdministrationParticipation ALTER COLUMN CreateDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';
ALTER TABLE edfixassessmentroster.AssessmentAdministrationParticipation ALTER COLUMN Id SET DEFAULT gen_random_uuid();
ALTER TABLE edfixassessmentroster.AssessmentAdministrationParticipation ALTER COLUMN LastModifiedDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';

-- Table edfixassessmentroster.AssessmentAdministrationParticipationAdministrationContact --
CREATE TABLE edfixassessmentroster.AssessmentAdministrationParticipationAdministrationContact (
    AdministrationIdentifier VARCHAR(255) NOT NULL,
    AssessmentIdentifier VARCHAR(60) NOT NULL,
    AssigningEducationOrganizationId BIGINT NOT NULL,
    Namespace VARCHAR(255) NOT NULL,
    ParticipatingEducationOrganizationId BIGINT NOT NULL,
    ElectronicMailAddress VARCHAR(128) NOT NULL,
    FirstName VARCHAR(75) NOT NULL,
    LastSurname VARCHAR(75) NOT NULL,
    LoginId VARCHAR(60) NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT AssessmentAdministrationParticipationAdministrationContact_PK PRIMARY KEY (AdministrationIdentifier, AssessmentIdentifier, AssigningEducationOrganizationId, Namespace, ParticipatingEducationOrganizationId, ElectronicMailAddress)
);
ALTER TABLE edfixassessmentroster.AssessmentAdministrationParticipationAdministrationContact ALTER COLUMN CreateDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';

-- Table edfixassessmentroster.AssessmentAdministrationPeriod --
CREATE TABLE edfixassessmentroster.AssessmentAdministrationPeriod (
    AdministrationIdentifier VARCHAR(255) NOT NULL,
    AssessmentIdentifier VARCHAR(60) NOT NULL,
    AssigningEducationOrganizationId BIGINT NOT NULL,
    Namespace VARCHAR(255) NOT NULL,
    BeginDate DATE NOT NULL,
    EndDate DATE NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT AssessmentAdministrationPeriod_PK PRIMARY KEY (AdministrationIdentifier, AssessmentIdentifier, AssigningEducationOrganizationId, Namespace, BeginDate)
);
ALTER TABLE edfixassessmentroster.AssessmentAdministrationPeriod ALTER COLUMN CreateDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';

-- Table edfixassessmentroster.StudentAssessmentRegistration --
CREATE TABLE edfixassessmentroster.StudentAssessmentRegistration (
    AdministrationIdentifier VARCHAR(255) NOT NULL,
    AssessmentIdentifier VARCHAR(60) NOT NULL,
    AssigningEducationOrganizationId BIGINT NOT NULL,
    EducationOrganizationId BIGINT NOT NULL,
    Namespace VARCHAR(255) NOT NULL,
    StudentUSI INT NOT NULL,
    PlatformTypeDescriptorId INT NULL,
    ReportingEducationOrganizationId BIGINT NULL,
    TestingEducationOrganizationId BIGINT NULL,
    Discriminator VARCHAR(128) NULL,
    CreateDate TIMESTAMP NOT NULL,
    LastModifiedDate TIMESTAMP NOT NULL,
    Id UUID NOT NULL,
    CONSTRAINT StudentAssessmentRegistration_PK PRIMARY KEY (AdministrationIdentifier, AssessmentIdentifier, AssigningEducationOrganizationId, EducationOrganizationId, Namespace, StudentUSI)
);
ALTER TABLE edfixassessmentroster.StudentAssessmentRegistration ALTER COLUMN CreateDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';
ALTER TABLE edfixassessmentroster.StudentAssessmentRegistration ALTER COLUMN Id SET DEFAULT gen_random_uuid();
ALTER TABLE edfixassessmentroster.StudentAssessmentRegistration ALTER COLUMN LastModifiedDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';

-- Table edfixassessmentroster.StudentAssessmentRegistrationAssessmentCustomization --
CREATE TABLE edfixassessmentroster.StudentAssessmentRegistrationAssessmentCustomization (
    AdministrationIdentifier VARCHAR(255) NOT NULL,
    AssessmentIdentifier VARCHAR(60) NOT NULL,
    AssigningEducationOrganizationId BIGINT NOT NULL,
    EducationOrganizationId BIGINT NOT NULL,
    Namespace VARCHAR(255) NOT NULL,
    StudentUSI INT NOT NULL,
    IdentificationCode VARCHAR(60) NOT NULL,
    CustomizationValue VARCHAR(1024) NOT NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT StudentAssessmentRegistrationAssessmentCustomization_PK PRIMARY KEY (AdministrationIdentifier, AssessmentIdentifier, AssigningEducationOrganizationId, EducationOrganizationId, Namespace, StudentUSI, IdentificationCode)
);
ALTER TABLE edfixassessmentroster.StudentAssessmentRegistrationAssessmentCustomization ALTER COLUMN CreateDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';

