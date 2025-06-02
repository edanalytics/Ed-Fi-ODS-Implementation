-- Table vt.CTECredentialDescriptor --
CREATE TABLE vt.CTECredentialDescriptor (
    CTECredentialDescriptorId INT NOT NULL,
    CONSTRAINT CTECredentialDescriptor_PK PRIMARY KEY (CTECredentialDescriptorId)
);

-- Table vt.CTEFundCategoryDescriptor --
CREATE TABLE vt.CTEFundCategoryDescriptor (
    CTEFundCategoryDescriptorId INT NOT NULL,
    CONSTRAINT CTEFundCategoryDescriptor_PK PRIMARY KEY (CTEFundCategoryDescriptorId)
);

-- Table vt.CTSODescriptor --
CREATE TABLE vt.CTSODescriptor (
    CTSODescriptorId INT NOT NULL,
    CONSTRAINT CTSODescriptor_PK PRIMARY KEY (CTSODescriptorId)
);

-- Table vt.StudentCTEProgramAssociationCoopPlacement --
CREATE TABLE vt.StudentCTEProgramAssociationCoopPlacement (
    BeginDate DATE NOT NULL,
    EducationOrganizationId BIGINT NOT NULL,
    ProgramEducationOrganizationId BIGINT NOT NULL,
    ProgramName VARCHAR(60) NOT NULL,
    ProgramTypeDescriptorId INT NOT NULL,
    StudentUSI INT NOT NULL,
    CoopIdentifier VARCHAR(30) NOT NULL,
    CoopStartDate DATE NOT NULL,
    CoopEndDate DATE NOT NULL,
    CoopLocation VARCHAR(200) NOT NULL,
    CumulativeHours DECIMAL(6, 2) NOT NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT StudentCTEProgramAssociationCoopPlacement_PK PRIMARY KEY (BeginDate, EducationOrganizationId, ProgramEducationOrganizationId, ProgramName, ProgramTypeDescriptorId, StudentUSI, CoopIdentifier, CoopStartDate)
);
ALTER TABLE vt.StudentCTEProgramAssociationCoopPlacement ALTER COLUMN CreateDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';

-- Table vt.StudentCTEProgramAssociationCTECredential --
CREATE TABLE vt.StudentCTEProgramAssociationCTECredential (
    BeginDate DATE NOT NULL,
    EducationOrganizationId BIGINT NOT NULL,
    ProgramEducationOrganizationId BIGINT NOT NULL,
    ProgramName VARCHAR(60) NOT NULL,
    ProgramTypeDescriptorId INT NOT NULL,
    StudentUSI INT NOT NULL,
    CTECredentialDescriptorId INT NOT NULL,
    CTECredentialDate DATE NOT NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT StudentCTEProgramAssociationCTECredential_PK PRIMARY KEY (BeginDate, EducationOrganizationId, ProgramEducationOrganizationId, ProgramName, ProgramTypeDescriptorId, StudentUSI, CTECredentialDescriptorId)
);
ALTER TABLE vt.StudentCTEProgramAssociationCTECredential ALTER COLUMN CreateDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';

-- Table vt.StudentCTEProgramAssociationExtension --
CREATE TABLE vt.StudentCTEProgramAssociationExtension (
    BeginDate DATE NOT NULL,
    EducationOrganizationId BIGINT NOT NULL,
    ProgramEducationOrganizationId BIGINT NOT NULL,
    ProgramName VARCHAR(60) NOT NULL,
    ProgramTypeDescriptorId INT NOT NULL,
    StudentUSI INT NOT NULL,
    AverageDailyMinutesOfInstruction INT NOT NULL,
    CourseCode VARCHAR(60) NOT NULL,
    CTSODescriptorId INT NULL,
    SecondProgramSemesterEnrollment BOOLEAN NOT NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT StudentCTEProgramAssociationExtension_PK PRIMARY KEY (BeginDate, EducationOrganizationId, ProgramEducationOrganizationId, ProgramName, ProgramTypeDescriptorId, StudentUSI)
);
ALTER TABLE vt.StudentCTEProgramAssociationExtension ALTER COLUMN CreateDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';

-- Table vt.StudentCTEProgramAssociationPostSecondaryCredits --
CREATE TABLE vt.StudentCTEProgramAssociationPostSecondaryCredits (
    BeginDate DATE NOT NULL,
    EducationOrganizationId BIGINT NOT NULL,
    ProgramEducationOrganizationId BIGINT NOT NULL,
    ProgramName VARCHAR(60) NOT NULL,
    ProgramTypeDescriptorId INT NOT NULL,
    StudentUSI INT NOT NULL,
    CourseCode VARCHAR(60) NOT NULL,
    CTEFundCategoryDescriptorId INT NOT NULL,
    TransferCreditDate DATE NOT NULL,
    TransferCredits DECIMAL(4, 2) NOT NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT StudentCTEProgramAssociationPostSecondaryCredits_PK PRIMARY KEY (BeginDate, EducationOrganizationId, ProgramEducationOrganizationId, ProgramName, ProgramTypeDescriptorId, StudentUSI, CourseCode)
);
ALTER TABLE vt.StudentCTEProgramAssociationPostSecondaryCredits ALTER COLUMN CreateDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';

