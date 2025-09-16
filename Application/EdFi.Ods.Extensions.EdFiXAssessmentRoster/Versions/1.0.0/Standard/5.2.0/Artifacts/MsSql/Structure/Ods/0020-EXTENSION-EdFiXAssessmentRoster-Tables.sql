-- Table [edfixassessmentroster].[AssessmentAdministration] --
CREATE TABLE [edfixassessmentroster].[AssessmentAdministration] (
    [AdministrationIdentifier] [NVARCHAR](255) NOT NULL,
    [AssessmentIdentifier] [NVARCHAR](60) NOT NULL,
    [AssigningEducationOrganizationId] [BIGINT] NOT NULL,
    [Namespace] [NVARCHAR](255) NOT NULL,
    [Discriminator] [NVARCHAR](128) NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    [LastModifiedDate] [DATETIME2] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL,
    CONSTRAINT [AssessmentAdministration_PK] PRIMARY KEY CLUSTERED (
        [AdministrationIdentifier] ASC,
        [AssessmentIdentifier] ASC,
        [AssigningEducationOrganizationId] ASC,
        [Namespace] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [edfixassessmentroster].[AssessmentAdministration] ADD CONSTRAINT [AssessmentAdministration_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate]
GO
ALTER TABLE [edfixassessmentroster].[AssessmentAdministration] ADD CONSTRAINT [AssessmentAdministration_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [edfixassessmentroster].[AssessmentAdministration] ADD CONSTRAINT [AssessmentAdministration_DF_LastModifiedDate] DEFAULT (getutcdate()) FOR [LastModifiedDate]
GO

-- Table [edfixassessmentroster].[AssessmentAdministrationParticipation] --
CREATE TABLE [edfixassessmentroster].[AssessmentAdministrationParticipation] (
    [AdministrationIdentifier] [NVARCHAR](255) NOT NULL,
    [AssessmentIdentifier] [NVARCHAR](60) NOT NULL,
    [AssigningEducationOrganizationId] [BIGINT] NOT NULL,
    [Namespace] [NVARCHAR](255) NOT NULL,
    [ParticipatingEducationOrganizationId] [BIGINT] NOT NULL,
    [Discriminator] [NVARCHAR](128) NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    [LastModifiedDate] [DATETIME2] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL,
    CONSTRAINT [AssessmentAdministrationParticipation_PK] PRIMARY KEY CLUSTERED (
        [AdministrationIdentifier] ASC,
        [AssessmentIdentifier] ASC,
        [AssigningEducationOrganizationId] ASC,
        [Namespace] ASC,
        [ParticipatingEducationOrganizationId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [edfixassessmentroster].[AssessmentAdministrationParticipation] ADD CONSTRAINT [AssessmentAdministrationParticipation_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate]
GO
ALTER TABLE [edfixassessmentroster].[AssessmentAdministrationParticipation] ADD CONSTRAINT [AssessmentAdministrationParticipation_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [edfixassessmentroster].[AssessmentAdministrationParticipation] ADD CONSTRAINT [AssessmentAdministrationParticipation_DF_LastModifiedDate] DEFAULT (getutcdate()) FOR [LastModifiedDate]
GO

-- Table [edfixassessmentroster].[AssessmentAdministrationParticipationAdministrationContact] --
CREATE TABLE [edfixassessmentroster].[AssessmentAdministrationParticipationAdministrationContact] (
    [AdministrationIdentifier] [NVARCHAR](255) NOT NULL,
    [AssessmentIdentifier] [NVARCHAR](60) NOT NULL,
    [AssigningEducationOrganizationId] [BIGINT] NOT NULL,
    [Namespace] [NVARCHAR](255) NOT NULL,
    [ParticipatingEducationOrganizationId] [BIGINT] NOT NULL,
    [ElectronicMailAddress] [NVARCHAR](128) NOT NULL,
    [FirstName] [NVARCHAR](75) NOT NULL,
    [LastSurname] [NVARCHAR](75) NOT NULL,
    [LoginId] [NVARCHAR](60) NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [AssessmentAdministrationParticipationAdministrationContact_PK] PRIMARY KEY CLUSTERED (
        [AdministrationIdentifier] ASC,
        [AssessmentIdentifier] ASC,
        [AssigningEducationOrganizationId] ASC,
        [Namespace] ASC,
        [ParticipatingEducationOrganizationId] ASC,
        [ElectronicMailAddress] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [edfixassessmentroster].[AssessmentAdministrationParticipationAdministrationContact] ADD CONSTRAINT [AssessmentAdministrationParticipationAdministrationContact_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate]
GO

-- Table [edfixassessmentroster].[AssessmentAdministrationPeriod] --
CREATE TABLE [edfixassessmentroster].[AssessmentAdministrationPeriod] (
    [AdministrationIdentifier] [NVARCHAR](255) NOT NULL,
    [AssessmentIdentifier] [NVARCHAR](60) NOT NULL,
    [AssigningEducationOrganizationId] [BIGINT] NOT NULL,
    [Namespace] [NVARCHAR](255) NOT NULL,
    [BeginDate] [DATE] NOT NULL,
    [EndDate] [DATE] NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [AssessmentAdministrationPeriod_PK] PRIMARY KEY CLUSTERED (
        [AdministrationIdentifier] ASC,
        [AssessmentIdentifier] ASC,
        [AssigningEducationOrganizationId] ASC,
        [Namespace] ASC,
        [BeginDate] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [edfixassessmentroster].[AssessmentAdministrationPeriod] ADD CONSTRAINT [AssessmentAdministrationPeriod_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate]
GO

-- Table [edfixassessmentroster].[StudentAssessmentRegistration] --
CREATE TABLE [edfixassessmentroster].[StudentAssessmentRegistration] (
    [AdministrationIdentifier] [NVARCHAR](255) NOT NULL,
    [AssessmentIdentifier] [NVARCHAR](60) NOT NULL,
    [AssigningEducationOrganizationId] [BIGINT] NOT NULL,
    [EducationOrganizationId] [BIGINT] NOT NULL,
    [Namespace] [NVARCHAR](255) NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [PlatformTypeDescriptorId] [INT] NULL,
    [ReportingEducationOrganizationId] [BIGINT] NULL,
    [TestingEducationOrganizationId] [BIGINT] NULL,
    [Discriminator] [NVARCHAR](128) NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    [LastModifiedDate] [DATETIME2] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL,
    CONSTRAINT [StudentAssessmentRegistration_PK] PRIMARY KEY CLUSTERED (
        [AdministrationIdentifier] ASC,
        [AssessmentIdentifier] ASC,
        [AssigningEducationOrganizationId] ASC,
        [EducationOrganizationId] ASC,
        [Namespace] ASC,
        [StudentUSI] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [edfixassessmentroster].[StudentAssessmentRegistration] ADD CONSTRAINT [StudentAssessmentRegistration_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate]
GO
ALTER TABLE [edfixassessmentroster].[StudentAssessmentRegistration] ADD CONSTRAINT [StudentAssessmentRegistration_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [edfixassessmentroster].[StudentAssessmentRegistration] ADD CONSTRAINT [StudentAssessmentRegistration_DF_LastModifiedDate] DEFAULT (getutcdate()) FOR [LastModifiedDate]
GO

-- Table [edfixassessmentroster].[StudentAssessmentRegistrationAssessmentCustomization] --
CREATE TABLE [edfixassessmentroster].[StudentAssessmentRegistrationAssessmentCustomization] (
    [AdministrationIdentifier] [NVARCHAR](255) NOT NULL,
    [AssessmentIdentifier] [NVARCHAR](60) NOT NULL,
    [AssigningEducationOrganizationId] [BIGINT] NOT NULL,
    [EducationOrganizationId] [BIGINT] NOT NULL,
    [Namespace] [NVARCHAR](255) NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [IdentificationCode] [NVARCHAR](60) NOT NULL,
    [CustomizationValue] [NVARCHAR](1024) NOT NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [StudentAssessmentRegistrationAssessmentCustomization_PK] PRIMARY KEY CLUSTERED (
        [AdministrationIdentifier] ASC,
        [AssessmentIdentifier] ASC,
        [AssigningEducationOrganizationId] ASC,
        [EducationOrganizationId] ASC,
        [Namespace] ASC,
        [StudentUSI] ASC,
        [IdentificationCode] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [edfixassessmentroster].[StudentAssessmentRegistrationAssessmentCustomization] ADD CONSTRAINT [StudentAssessmentRegistrationAssessmentCustomization_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate]
GO

