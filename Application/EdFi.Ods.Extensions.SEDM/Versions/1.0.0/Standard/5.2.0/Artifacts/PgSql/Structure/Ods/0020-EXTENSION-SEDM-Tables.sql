-- Table sedm.DurationPeriodDescriptor --
CREATE TABLE sedm.DurationPeriodDescriptor (
    DurationPeriodDescriptorId INT NOT NULL,
    CONSTRAINT DurationPeriodDescriptor_PK PRIMARY KEY (DurationPeriodDescriptorId)
);

-- Table sedm.EventComplianceDescriptor --
CREATE TABLE sedm.EventComplianceDescriptor (
    EventComplianceDescriptorId INT NOT NULL,
    CONSTRAINT EventComplianceDescriptor_PK PRIMARY KEY (EventComplianceDescriptorId)
);

-- Table sedm.EventReasonDescriptor --
CREATE TABLE sedm.EventReasonDescriptor (
    EventReasonDescriptorId INT NOT NULL,
    CONSTRAINT EventReasonDescriptor_PK PRIMARY KEY (EventReasonDescriptorId)
);

-- Table sedm.FrequencyPeriodDescriptor --
CREATE TABLE sedm.FrequencyPeriodDescriptor (
    FrequencyPeriodDescriptorId INT NOT NULL,
    CONSTRAINT FrequencyPeriodDescriptor_PK PRIMARY KEY (FrequencyPeriodDescriptorId)
);

-- Table sedm.IdeaEvent --
CREATE TABLE sedm.IdeaEvent (
    EducationOrganizationId BIGINT NOT NULL,
    IdeaEventDescriptorId INT NOT NULL,
    IDEAEventID VARCHAR(128) NOT NULL,
    StudentUSI INT NOT NULL,
    BeginDate DATE NOT NULL,
    EndDate DATE NOT NULL,
    EventComplianceDescriptorId INT NULL,
    EventNarrative VARCHAR(2048) NULL,
    EventReasonDescriptorId INT NULL,
    Discriminator VARCHAR(128) NULL,
    CreateDate TIMESTAMP NOT NULL,
    LastModifiedDate TIMESTAMP NOT NULL,
    Id UUID NOT NULL,
    CONSTRAINT IdeaEvent_PK PRIMARY KEY (EducationOrganizationId, IdeaEventDescriptorId, IDEAEventID, StudentUSI)
);
ALTER TABLE sedm.IdeaEvent ALTER COLUMN CreateDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';
ALTER TABLE sedm.IdeaEvent ALTER COLUMN Id SET DEFAULT gen_random_uuid();
ALTER TABLE sedm.IdeaEvent ALTER COLUMN LastModifiedDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';

-- Table sedm.IdeaEventDescriptor --
CREATE TABLE sedm.IdeaEventDescriptor (
    IdeaEventDescriptorId INT NOT NULL,
    CONSTRAINT IdeaEventDescriptor_PK PRIMARY KEY (IdeaEventDescriptorId)
);

-- Table sedm.IepGoalDescriptor --
CREATE TABLE sedm.IepGoalDescriptor (
    IepGoalDescriptorId INT NOT NULL,
    CONSTRAINT IepGoalDescriptor_PK PRIMARY KEY (IepGoalDescriptorId)
);

-- Table sedm.IepStatusDescriptor --
CREATE TABLE sedm.IepStatusDescriptor (
    IepStatusDescriptorId INT NOT NULL,
    CONSTRAINT IepStatusDescriptor_PK PRIMARY KEY (IepStatusDescriptorId)
);

-- Table sedm.ServiceComplianceDescriptor --
CREATE TABLE sedm.ServiceComplianceDescriptor (
    ServiceComplianceDescriptorId INT NOT NULL,
    CONSTRAINT ServiceComplianceDescriptor_PK PRIMARY KEY (ServiceComplianceDescriptorId)
);

-- Table sedm.ServiceDeliveryDescriptor --
CREATE TABLE sedm.ServiceDeliveryDescriptor (
    ServiceDeliveryDescriptorId INT NOT NULL,
    CONSTRAINT ServiceDeliveryDescriptor_PK PRIMARY KEY (ServiceDeliveryDescriptorId)
);

-- Table sedm.ServiceLocationTypeDescriptor --
CREATE TABLE sedm.ServiceLocationTypeDescriptor (
    ServiceLocationTypeDescriptorId INT NOT NULL,
    CONSTRAINT ServiceLocationTypeDescriptor_PK PRIMARY KEY (ServiceLocationTypeDescriptorId)
);

-- Table sedm.ServicePrescriptionDescriptor --
CREATE TABLE sedm.ServicePrescriptionDescriptor (
    ServicePrescriptionDescriptorId INT NOT NULL,
    CONSTRAINT ServicePrescriptionDescriptor_PK PRIMARY KEY (ServicePrescriptionDescriptorId)
);

-- Table sedm.ServiceProviderTypeDescriptor --
CREATE TABLE sedm.ServiceProviderTypeDescriptor (
    ServiceProviderTypeDescriptorId INT NOT NULL,
    CONSTRAINT ServiceProviderTypeDescriptor_PK PRIMARY KEY (ServiceProviderTypeDescriptorId)
);

-- Table sedm.ServiceReasonDescriptor --
CREATE TABLE sedm.ServiceReasonDescriptor (
    ServiceReasonDescriptorId INT NOT NULL,
    CONSTRAINT ServiceReasonDescriptor_PK PRIMARY KEY (ServiceReasonDescriptorId)
);

-- Table sedm.StudentIEP --
CREATE TABLE sedm.StudentIEP (
    EducationOrganizationId BIGINT NOT NULL,
    IEPFinalizedDate DATE NOT NULL,
    StudentIEPAssociationID VARCHAR(128) NOT NULL,
    StudentUSI INT NOT NULL,
    IEPAmendedDate DATE NULL,
    IEPBeginDate DATE NOT NULL,
    IEPEndDate DATE NOT NULL,
    IepStatusDescriptorId INT NOT NULL,
    MedicallyFragile BOOLEAN NULL,
    MultiplyDisabled BOOLEAN NULL,
    ReasonExitedDescriptorId INT NULL,
    SchoolHoursPerWeek DECIMAL(5, 2) NULL,
    SpecialEducationHoursPerWeek DECIMAL(5, 2) NULL,
    SpecialEducationSettingDescriptorId INT NULL,
    Discriminator VARCHAR(128) NULL,
    CreateDate TIMESTAMP NOT NULL,
    LastModifiedDate TIMESTAMP NOT NULL,
    Id UUID NOT NULL,
    CONSTRAINT StudentIEP_PK PRIMARY KEY (EducationOrganizationId, IEPFinalizedDate, StudentIEPAssociationID, StudentUSI)
);
ALTER TABLE sedm.StudentIEP ALTER COLUMN CreateDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';
ALTER TABLE sedm.StudentIEP ALTER COLUMN Id SET DEFAULT gen_random_uuid();
ALTER TABLE sedm.StudentIEP ALTER COLUMN LastModifiedDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';

-- Table sedm.StudentIEPAccommodationCollection --
CREATE TABLE sedm.StudentIEPAccommodationCollection (
    EducationOrganizationId BIGINT NOT NULL,
    IEPFinalizedDate DATE NOT NULL,
    StudentIEPAssociationID VARCHAR(128) NOT NULL,
    StudentUSI INT NOT NULL,
    Discriminator VARCHAR(128) NULL,
    CreateDate TIMESTAMP NOT NULL,
    LastModifiedDate TIMESTAMP NOT NULL,
    Id UUID NOT NULL,
    CONSTRAINT StudentIEPAccommodationCollection_PK PRIMARY KEY (EducationOrganizationId, IEPFinalizedDate, StudentIEPAssociationID, StudentUSI)
);
ALTER TABLE sedm.StudentIEPAccommodationCollection ALTER COLUMN CreateDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';
ALTER TABLE sedm.StudentIEPAccommodationCollection ALTER COLUMN Id SET DEFAULT gen_random_uuid();
ALTER TABLE sedm.StudentIEPAccommodationCollection ALTER COLUMN LastModifiedDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';

-- Table sedm.StudentIEPAccommodationCollectionAccommodation --
CREATE TABLE sedm.StudentIEPAccommodationCollectionAccommodation (
    EducationOrganizationId BIGINT NOT NULL,
    IEPFinalizedDate DATE NOT NULL,
    StudentIEPAssociationID VARCHAR(128) NOT NULL,
    StudentUSI INT NOT NULL,
    AccommodationDescriptorId INT NOT NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT StudentIEPAccommodationCollectionAccommodation_PK PRIMARY KEY (EducationOrganizationId, IEPFinalizedDate, StudentIEPAssociationID, StudentUSI, AccommodationDescriptorId)
);
ALTER TABLE sedm.StudentIEPAccommodationCollectionAccommodation ALTER COLUMN CreateDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';

-- Table sedm.StudentIEPDisabilityCollection --
CREATE TABLE sedm.StudentIEPDisabilityCollection (
    EducationOrganizationId BIGINT NOT NULL,
    IEPFinalizedDate DATE NOT NULL,
    StudentIEPAssociationID VARCHAR(128) NOT NULL,
    StudentUSI INT NOT NULL,
    Discriminator VARCHAR(128) NULL,
    CreateDate TIMESTAMP NOT NULL,
    LastModifiedDate TIMESTAMP NOT NULL,
    Id UUID NOT NULL,
    CONSTRAINT StudentIEPDisabilityCollection_PK PRIMARY KEY (EducationOrganizationId, IEPFinalizedDate, StudentIEPAssociationID, StudentUSI)
);
ALTER TABLE sedm.StudentIEPDisabilityCollection ALTER COLUMN CreateDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';
ALTER TABLE sedm.StudentIEPDisabilityCollection ALTER COLUMN Id SET DEFAULT gen_random_uuid();
ALTER TABLE sedm.StudentIEPDisabilityCollection ALTER COLUMN LastModifiedDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';

-- Table sedm.StudentIEPDisabilityCollectionDisability --
CREATE TABLE sedm.StudentIEPDisabilityCollectionDisability (
    EducationOrganizationId BIGINT NOT NULL,
    IEPFinalizedDate DATE NOT NULL,
    StudentIEPAssociationID VARCHAR(128) NOT NULL,
    StudentUSI INT NOT NULL,
    DisabilityDescriptorId INT NOT NULL,
    DisabilityDeterminationSourceTypeDescriptorId INT NULL,
    DisabilityDiagnosis VARCHAR(80) NULL,
    OrderOfDisability INT NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT StudentIEPDisabilityCollectionDisability_PK PRIMARY KEY (EducationOrganizationId, IEPFinalizedDate, StudentIEPAssociationID, StudentUSI, DisabilityDescriptorId)
);
ALTER TABLE sedm.StudentIEPDisabilityCollectionDisability ALTER COLUMN CreateDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';

-- Table sedm.StudentIEPDisabilityCollectionDisabilityDesignation --
CREATE TABLE sedm.StudentIEPDisabilityCollectionDisabilityDesignation (
    EducationOrganizationId BIGINT NOT NULL,
    IEPFinalizedDate DATE NOT NULL,
    StudentIEPAssociationID VARCHAR(128) NOT NULL,
    StudentUSI INT NOT NULL,
    DisabilityDescriptorId INT NOT NULL,
    DisabilityDesignationDescriptorId INT NOT NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT StudentIEPDisabilityCollectionDisabilityDesignation_PK PRIMARY KEY (EducationOrganizationId, IEPFinalizedDate, StudentIEPAssociationID, StudentUSI, DisabilityDescriptorId, DisabilityDesignationDescriptorId)
);
ALTER TABLE sedm.StudentIEPDisabilityCollectionDisabilityDesignation ALTER COLUMN CreateDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';

-- Table sedm.StudentIEPGoal --
CREATE TABLE sedm.StudentIEPGoal (
    EducationOrganizationId BIGINT NOT NULL,
    IEPFinalizedDate DATE NOT NULL,
    IEPGoalID VARCHAR(128) NOT NULL,
    StudentIEPAssociationID VARCHAR(128) NOT NULL,
    StudentUSI INT NOT NULL,
    GoalAchievementPeriodBeginDate DATE NULL,
    GoalAchievementPeriodEndDate DATE NULL,
    IepGoalDescriptorId INT NOT NULL,
    IEPGoalDetails VARCHAR(2048) NOT NULL,
    Discriminator VARCHAR(128) NULL,
    CreateDate TIMESTAMP NOT NULL,
    LastModifiedDate TIMESTAMP NOT NULL,
    Id UUID NOT NULL,
    CONSTRAINT StudentIEPGoal_PK PRIMARY KEY (EducationOrganizationId, IEPFinalizedDate, IEPGoalID, StudentIEPAssociationID, StudentUSI)
);
ALTER TABLE sedm.StudentIEPGoal ALTER COLUMN CreateDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';
ALTER TABLE sedm.StudentIEPGoal ALTER COLUMN Id SET DEFAULT gen_random_uuid();
ALTER TABLE sedm.StudentIEPGoal ALTER COLUMN LastModifiedDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';

-- Table sedm.StudentIEPGoalIdeaEvent --
CREATE TABLE sedm.StudentIEPGoalIdeaEvent (
    EducationOrganizationId BIGINT NOT NULL,
    IEPFinalizedDate DATE NOT NULL,
    IEPGoalID VARCHAR(128) NOT NULL,
    StudentIEPAssociationID VARCHAR(128) NOT NULL,
    StudentUSI INT NOT NULL,
    IdeaEventDescriptorId INT NOT NULL,
    IDEAEventID VARCHAR(128) NOT NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT StudentIEPGoalIdeaEvent_PK PRIMARY KEY (EducationOrganizationId, IEPFinalizedDate, IEPGoalID, StudentIEPAssociationID, StudentUSI, IdeaEventDescriptorId, IDEAEventID)
);
ALTER TABLE sedm.StudentIEPGoalIdeaEvent ALTER COLUMN CreateDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';

-- Table sedm.StudentIEPIdeaEvent --
CREATE TABLE sedm.StudentIEPIdeaEvent (
    EducationOrganizationId BIGINT NOT NULL,
    IEPFinalizedDate DATE NOT NULL,
    StudentIEPAssociationID VARCHAR(128) NOT NULL,
    StudentUSI INT NOT NULL,
    IdeaEventDescriptorId INT NOT NULL,
    IDEAEventID VARCHAR(128) NOT NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT StudentIEPIdeaEvent_PK PRIMARY KEY (EducationOrganizationId, IEPFinalizedDate, StudentIEPAssociationID, StudentUSI, IdeaEventDescriptorId, IDEAEventID)
);
ALTER TABLE sedm.StudentIEPIdeaEvent ALTER COLUMN CreateDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';

-- Table sedm.StudentIEPServiceDelivery --
CREATE TABLE sedm.StudentIEPServiceDelivery (
    EducationOrganizationId BIGINT NOT NULL,
    IEPFinalizedDate DATE NOT NULL,
    IEPServiceDeliveryID VARCHAR(128) NOT NULL,
    ServiceDeliveryDate DATE NOT NULL,
    ServiceDeliveryDescriptorId INT NOT NULL,
    StudentIEPAssociationID VARCHAR(128) NOT NULL,
    StudentUSI INT NOT NULL,
    ServicePrescriptionDate DATE NULL,
    ServicePrescriptionDescriptorId INT NULL,
    ServiceProviderTypeDescriptorId INT NULL,
    Discriminator VARCHAR(128) NULL,
    CreateDate TIMESTAMP NOT NULL,
    LastModifiedDate TIMESTAMP NOT NULL,
    Id UUID NOT NULL,
    CONSTRAINT StudentIEPServiceDelivery_PK PRIMARY KEY (EducationOrganizationId, IEPFinalizedDate, IEPServiceDeliveryID, ServiceDeliveryDate, ServiceDeliveryDescriptorId, StudentIEPAssociationID, StudentUSI)
);
ALTER TABLE sedm.StudentIEPServiceDelivery ALTER COLUMN CreateDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';
ALTER TABLE sedm.StudentIEPServiceDelivery ALTER COLUMN Id SET DEFAULT gen_random_uuid();
ALTER TABLE sedm.StudentIEPServiceDelivery ALTER COLUMN LastModifiedDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';

-- Table sedm.StudentIEPServiceDeliveryExternalServiceProvider --
CREATE TABLE sedm.StudentIEPServiceDeliveryExternalServiceProvider (
    EducationOrganizationId BIGINT NOT NULL,
    IEPFinalizedDate DATE NOT NULL,
    IEPServiceDeliveryID VARCHAR(128) NOT NULL,
    ServiceDeliveryDate DATE NOT NULL,
    ServiceDeliveryDescriptorId INT NOT NULL,
    StudentIEPAssociationID VARCHAR(128) NOT NULL,
    StudentUSI INT NOT NULL,
    ProviderCode VARCHAR(1024) NOT NULL,
    ProviderFirstName VARCHAR(1024) NOT NULL,
    ProviderLastSurname VARCHAR(1024) NOT NULL,
    PrimaryProvider BOOLEAN NULL,
    ProviderMiddleName VARCHAR(1024) NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT StudentIEPServiceDeliveryExternalServiceProvider_PK PRIMARY KEY (EducationOrganizationId, IEPFinalizedDate, IEPServiceDeliveryID, ServiceDeliveryDate, ServiceDeliveryDescriptorId, StudentIEPAssociationID, StudentUSI, ProviderCode, ProviderFirstName, ProviderLastSurname)
);
ALTER TABLE sedm.StudentIEPServiceDeliveryExternalServiceProvider ALTER COLUMN CreateDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';

-- Table sedm.StudentIEPServiceDeliveryIdeaEvent --
CREATE TABLE sedm.StudentIEPServiceDeliveryIdeaEvent (
    EducationOrganizationId BIGINT NOT NULL,
    IEPFinalizedDate DATE NOT NULL,
    IEPServiceDeliveryID VARCHAR(128) NOT NULL,
    ServiceDeliveryDate DATE NOT NULL,
    ServiceDeliveryDescriptorId INT NOT NULL,
    StudentIEPAssociationID VARCHAR(128) NOT NULL,
    StudentUSI INT NOT NULL,
    IdeaEventDescriptorId INT NOT NULL,
    IDEAEventID VARCHAR(128) NOT NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT StudentIEPServiceDeliveryIdeaEvent_PK PRIMARY KEY (EducationOrganizationId, IEPFinalizedDate, IEPServiceDeliveryID, ServiceDeliveryDate, ServiceDeliveryDescriptorId, StudentIEPAssociationID, StudentUSI, IdeaEventDescriptorId, IDEAEventID)
);
ALTER TABLE sedm.StudentIEPServiceDeliveryIdeaEvent ALTER COLUMN CreateDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';

-- Table sedm.StudentIEPServiceDeliveryServiceProvider --
CREATE TABLE sedm.StudentIEPServiceDeliveryServiceProvider (
    EducationOrganizationId BIGINT NOT NULL,
    IEPFinalizedDate DATE NOT NULL,
    IEPServiceDeliveryID VARCHAR(128) NOT NULL,
    ServiceDeliveryDate DATE NOT NULL,
    ServiceDeliveryDescriptorId INT NOT NULL,
    StudentIEPAssociationID VARCHAR(128) NOT NULL,
    StudentUSI INT NOT NULL,
    StaffUSI INT NOT NULL,
    PrimaryProvider BOOLEAN NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT StudentIEPServiceDeliveryServiceProvider_PK PRIMARY KEY (EducationOrganizationId, IEPFinalizedDate, IEPServiceDeliveryID, ServiceDeliveryDate, ServiceDeliveryDescriptorId, StudentIEPAssociationID, StudentUSI, StaffUSI)
);
ALTER TABLE sedm.StudentIEPServiceDeliveryServiceProvider ALTER COLUMN CreateDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';

-- Table sedm.StudentIEPServicePrescription --
CREATE TABLE sedm.StudentIEPServicePrescription (
    EducationOrganizationId BIGINT NOT NULL,
    IEPFinalizedDate DATE NOT NULL,
    ServicePrescriptionDate DATE NOT NULL,
    ServicePrescriptionDescriptorId INT NOT NULL,
    StudentIEPAssociationID VARCHAR(128) NOT NULL,
    StudentUSI INT NOT NULL,
    BeginDate DATE NOT NULL,
    DurationMinutes DECIMAL(5, 2) NOT NULL,
    DurationPeriodDescriptorId INT NOT NULL,
    EndDate DATE NULL,
    FrequencyPeriodDescriptorId INT NOT NULL,
    FrequencyValue DECIMAL(5, 2) NOT NULL,
    ServiceLocationTypeDescriptorId INT NOT NULL,
    Discriminator VARCHAR(128) NULL,
    CreateDate TIMESTAMP NOT NULL,
    LastModifiedDate TIMESTAMP NOT NULL,
    Id UUID NOT NULL,
    CONSTRAINT StudentIEPServicePrescription_PK PRIMARY KEY (EducationOrganizationId, IEPFinalizedDate, ServicePrescriptionDate, ServicePrescriptionDescriptorId, StudentIEPAssociationID, StudentUSI)
);
ALTER TABLE sedm.StudentIEPServicePrescription ALTER COLUMN CreateDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';
ALTER TABLE sedm.StudentIEPServicePrescription ALTER COLUMN Id SET DEFAULT gen_random_uuid();
ALTER TABLE sedm.StudentIEPServicePrescription ALTER COLUMN LastModifiedDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';

-- Table sedm.StudentIEPServicePrescriptionIdeaEvent --
CREATE TABLE sedm.StudentIEPServicePrescriptionIdeaEvent (
    EducationOrganizationId BIGINT NOT NULL,
    IEPFinalizedDate DATE NOT NULL,
    ServicePrescriptionDate DATE NOT NULL,
    ServicePrescriptionDescriptorId INT NOT NULL,
    StudentIEPAssociationID VARCHAR(128) NOT NULL,
    StudentUSI INT NOT NULL,
    IdeaEventDescriptorId INT NOT NULL,
    IDEAEventID VARCHAR(128) NOT NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT StudentIEPServicePrescriptionIdeaEvent_PK PRIMARY KEY (EducationOrganizationId, IEPFinalizedDate, ServicePrescriptionDate, ServicePrescriptionDescriptorId, StudentIEPAssociationID, StudentUSI, IdeaEventDescriptorId, IDEAEventID)
);
ALTER TABLE sedm.StudentIEPServicePrescriptionIdeaEvent ALTER COLUMN CreateDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';

-- Table sedm.StudentIEPServicePrescriptionStaff --
CREATE TABLE sedm.StudentIEPServicePrescriptionStaff (
    EducationOrganizationId BIGINT NOT NULL,
    IEPFinalizedDate DATE NOT NULL,
    ServicePrescriptionDate DATE NOT NULL,
    ServicePrescriptionDescriptorId INT NOT NULL,
    StudentIEPAssociationID VARCHAR(128) NOT NULL,
    StudentUSI INT NOT NULL,
    StaffUSI INT NOT NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT StudentIEPServicePrescriptionStaff_PK PRIMARY KEY (EducationOrganizationId, IEPFinalizedDate, ServicePrescriptionDate, ServicePrescriptionDescriptorId, StudentIEPAssociationID, StudentUSI, StaffUSI)
);
ALTER TABLE sedm.StudentIEPServicePrescriptionStaff ALTER COLUMN CreateDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';

