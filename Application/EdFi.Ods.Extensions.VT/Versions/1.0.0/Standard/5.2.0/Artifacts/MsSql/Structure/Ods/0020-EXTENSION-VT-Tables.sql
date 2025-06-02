-- Table [vt].[CTECredentialDescriptor] --
CREATE TABLE [vt].[CTECredentialDescriptor] (
    [CTECredentialDescriptorId] [INT] NOT NULL,
    CONSTRAINT [CTECredentialDescriptor_PK] PRIMARY KEY CLUSTERED (
        [CTECredentialDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [vt].[CTEFundCategoryDescriptor] --
CREATE TABLE [vt].[CTEFundCategoryDescriptor] (
    [CTEFundCategoryDescriptorId] [INT] NOT NULL,
    CONSTRAINT [CTEFundCategoryDescriptor_PK] PRIMARY KEY CLUSTERED (
        [CTEFundCategoryDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [vt].[CTSODescriptor] --
CREATE TABLE [vt].[CTSODescriptor] (
    [CTSODescriptorId] [INT] NOT NULL,
    CONSTRAINT [CTSODescriptor_PK] PRIMARY KEY CLUSTERED (
        [CTSODescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [vt].[StudentCTEProgramAssociationCoopPlacement] --
CREATE TABLE [vt].[StudentCTEProgramAssociationCoopPlacement] (
    [BeginDate] [DATE] NOT NULL,
    [EducationOrganizationId] [BIGINT] NOT NULL,
    [ProgramEducationOrganizationId] [BIGINT] NOT NULL,
    [ProgramName] [NVARCHAR](60) NOT NULL,
    [ProgramTypeDescriptorId] [INT] NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [CoopIdentifier] [NVARCHAR](30) NOT NULL,
    [CoopStartDate] [DATE] NOT NULL,
    [CoopEndDate] [DATE] NOT NULL,
    [CoopLocation] [NVARCHAR](200) NOT NULL,
    [CumulativeHours] [DECIMAL](6, 2) NOT NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [StudentCTEProgramAssociationCoopPlacement_PK] PRIMARY KEY CLUSTERED (
        [BeginDate] ASC,
        [EducationOrganizationId] ASC,
        [ProgramEducationOrganizationId] ASC,
        [ProgramName] ASC,
        [ProgramTypeDescriptorId] ASC,
        [StudentUSI] ASC,
        [CoopIdentifier] ASC,
        [CoopStartDate] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [vt].[StudentCTEProgramAssociationCoopPlacement] ADD CONSTRAINT [StudentCTEProgramAssociationCoopPlacement_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate]
GO

-- Table [vt].[StudentCTEProgramAssociationCTECredential] --
CREATE TABLE [vt].[StudentCTEProgramAssociationCTECredential] (
    [BeginDate] [DATE] NOT NULL,
    [EducationOrganizationId] [BIGINT] NOT NULL,
    [ProgramEducationOrganizationId] [BIGINT] NOT NULL,
    [ProgramName] [NVARCHAR](60) NOT NULL,
    [ProgramTypeDescriptorId] [INT] NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [CTECredentialDescriptorId] [INT] NOT NULL,
    [CTECredentialDate] [DATE] NOT NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [StudentCTEProgramAssociationCTECredential_PK] PRIMARY KEY CLUSTERED (
        [BeginDate] ASC,
        [EducationOrganizationId] ASC,
        [ProgramEducationOrganizationId] ASC,
        [ProgramName] ASC,
        [ProgramTypeDescriptorId] ASC,
        [StudentUSI] ASC,
        [CTECredentialDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [vt].[StudentCTEProgramAssociationCTECredential] ADD CONSTRAINT [StudentCTEProgramAssociationCTECredential_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate]
GO

-- Table [vt].[StudentCTEProgramAssociationExtension] --
CREATE TABLE [vt].[StudentCTEProgramAssociationExtension] (
    [BeginDate] [DATE] NOT NULL,
    [EducationOrganizationId] [BIGINT] NOT NULL,
    [ProgramEducationOrganizationId] [BIGINT] NOT NULL,
    [ProgramName] [NVARCHAR](60) NOT NULL,
    [ProgramTypeDescriptorId] [INT] NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [AverageDailyMinutesOfInstruction] [INT] NOT NULL,
    [CourseCode] [NVARCHAR](60) NOT NULL,
    [CTSODescriptorId] [INT] NULL,
    [SecondProgramSemesterEnrollment] [BIT] NOT NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [StudentCTEProgramAssociationExtension_PK] PRIMARY KEY CLUSTERED (
        [BeginDate] ASC,
        [EducationOrganizationId] ASC,
        [ProgramEducationOrganizationId] ASC,
        [ProgramName] ASC,
        [ProgramTypeDescriptorId] ASC,
        [StudentUSI] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [vt].[StudentCTEProgramAssociationExtension] ADD CONSTRAINT [StudentCTEProgramAssociationExtension_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate]
GO

-- Table [vt].[StudentCTEProgramAssociationPostSecondaryCredits] --
CREATE TABLE [vt].[StudentCTEProgramAssociationPostSecondaryCredits] (
    [BeginDate] [DATE] NOT NULL,
    [EducationOrganizationId] [BIGINT] NOT NULL,
    [ProgramEducationOrganizationId] [BIGINT] NOT NULL,
    [ProgramName] [NVARCHAR](60) NOT NULL,
    [ProgramTypeDescriptorId] [INT] NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [CourseCode] [NVARCHAR](60) NOT NULL,
    [CTEFundCategoryDescriptorId] [INT] NOT NULL,
    [TransferCreditDate] [DATE] NOT NULL,
    [TransferCredits] [DECIMAL](4, 2) NOT NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [StudentCTEProgramAssociationPostSecondaryCredits_PK] PRIMARY KEY CLUSTERED (
        [BeginDate] ASC,
        [EducationOrganizationId] ASC,
        [ProgramEducationOrganizationId] ASC,
        [ProgramName] ASC,
        [ProgramTypeDescriptorId] ASC,
        [StudentUSI] ASC,
        [CourseCode] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [vt].[StudentCTEProgramAssociationPostSecondaryCredits] ADD CONSTRAINT [StudentCTEProgramAssociationPostSecondaryCredits_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate]
GO

