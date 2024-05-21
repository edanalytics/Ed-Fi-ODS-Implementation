-- Table [idoe].[AccreditationDescriptor] --
CREATE TABLE [idoe].[AccreditationDescriptor] (
    [AccreditationDescriptorId] [INT] NOT NULL,
    CONSTRAINT [AccreditationDescriptor_PK] PRIMARY KEY CLUSTERED (
        [AccreditationDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [idoe].[ADMCodeDescriptor] --
CREATE TABLE [idoe].[ADMCodeDescriptor] (
    [ADMCodeDescriptorId] [INT] NOT NULL,
    CONSTRAINT [ADMCodeDescriptor_PK] PRIMARY KEY CLUSTERED (
        [ADMCodeDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [idoe].[AlternativeEducationEligibilityReasonDescriptor] --
CREATE TABLE [idoe].[AlternativeEducationEligibilityReasonDescriptor] (
    [AlternativeEducationEligibilityReasonDescriptorId] [INT] NOT NULL,
    CONSTRAINT [AlternativeEducationEligibilityReasonDescriptor_PK] PRIMARY KEY CLUSTERED (
        [AlternativeEducationEligibilityReasonDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [idoe].[ArrestReasonDescriptor] --
CREATE TABLE [idoe].[ArrestReasonDescriptor] (
    [ArrestReasonDescriptorId] [INT] NOT NULL,
    CONSTRAINT [ArrestReasonDescriptor_PK] PRIMARY KEY CLUSTERED (
        [ArrestReasonDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [idoe].[AssessmentAccommodation] --
CREATE TABLE [idoe].[AssessmentAccommodation] (
    [AcademicSubjectDescriptorId] [INT] NOT NULL,
    [AccommodationDescriptorId] [INT] NOT NULL,
    [AssessmentIdentifier] [NVARCHAR](60) NOT NULL,
    [Namespace] [NVARCHAR](255) NOT NULL,
    [Discriminator] [NVARCHAR](128) NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    [LastModifiedDate] [DATETIME2] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL,
    CONSTRAINT [AssessmentAccommodation_PK] PRIMARY KEY CLUSTERED (
        [AcademicSubjectDescriptorId] ASC,
        [AccommodationDescriptorId] ASC,
        [AssessmentIdentifier] ASC,
        [Namespace] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [idoe].[AssessmentAccommodation] ADD CONSTRAINT [AssessmentAccommodation_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate]
GO
ALTER TABLE [idoe].[AssessmentAccommodation] ADD CONSTRAINT [AssessmentAccommodation_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [idoe].[AssessmentAccommodation] ADD CONSTRAINT [AssessmentAccommodation_DF_LastModifiedDate] DEFAULT (getutcdate()) FOR [LastModifiedDate]
GO

-- Table [idoe].[CalendarDateExtension] --
CREATE TABLE [idoe].[CalendarDateExtension] (
    [CalendarCode] [NVARCHAR](60) NOT NULL,
    [Date] [DATE] NOT NULL,
    [SchoolId] [INT] NOT NULL,
    [SchoolYear] [SMALLINT] NOT NULL,
    [EventDuration] [DECIMAL](3, 2) NULL,
    [EventMinutes] [INT] NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [CalendarDateExtension_PK] PRIMARY KEY CLUSTERED (
        [CalendarCode] ASC,
        [Date] ASC,
        [SchoolId] ASC,
        [SchoolYear] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [idoe].[CalendarDateExtension] ADD CONSTRAINT [CalendarDateExtension_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate]
GO

-- Table [idoe].[CalendarExtension] --
CREATE TABLE [idoe].[CalendarExtension] (
    [CalendarCode] [NVARCHAR](60) NOT NULL,
    [SchoolId] [INT] NOT NULL,
    [SchoolYear] [SMALLINT] NOT NULL,
    [InstructionalTimeInMinutesIndicator] [BIT] NOT NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [CalendarExtension_PK] PRIMARY KEY CLUSTERED (
        [CalendarCode] ASC,
        [SchoolId] ASC,
        [SchoolYear] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [idoe].[CalendarExtension] ADD CONSTRAINT [CalendarExtension_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate]
GO

-- Table [idoe].[CircumstancesRelevantToTimelineDescriptor] --
CREATE TABLE [idoe].[CircumstancesRelevantToTimelineDescriptor] (
    [CircumstancesRelevantToTimelineDescriptorId] [INT] NOT NULL,
    CONSTRAINT [CircumstancesRelevantToTimelineDescriptor_PK] PRIMARY KEY CLUSTERED (
        [CircumstancesRelevantToTimelineDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [idoe].[CriminalGangRelatedEventDescriptor] --
CREATE TABLE [idoe].[CriminalGangRelatedEventDescriptor] (
    [CriminalGangRelatedEventDescriptorId] [INT] NOT NULL,
    CONSTRAINT [CriminalGangRelatedEventDescriptor_PK] PRIMARY KEY CLUSTERED (
        [CriminalGangRelatedEventDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [idoe].[DisciplineActionExtension] --
CREATE TABLE [idoe].[DisciplineActionExtension] (
    [DisciplineActionIdentifier] [NVARCHAR](32) NOT NULL,
    [DisciplineDate] [DATE] NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [ArrestReasonDescriptorId] [INT] NULL,
    [DisciplineActionServiceDescriptorId] [INT] NULL,
    [InterimAlternativeEducationSetting] [BIT] NULL,
    [StudentArrestDescriptorId] [INT] NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [DisciplineActionExtension_PK] PRIMARY KEY CLUSTERED (
        [DisciplineActionIdentifier] ASC,
        [DisciplineDate] ASC,
        [StudentUSI] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [idoe].[DisciplineActionExtension] ADD CONSTRAINT [DisciplineActionExtension_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate]
GO

-- Table [idoe].[DisciplineActionServiceDescriptor] --
CREATE TABLE [idoe].[DisciplineActionServiceDescriptor] (
    [DisciplineActionServiceDescriptorId] [INT] NOT NULL,
    CONSTRAINT [DisciplineActionServiceDescriptor_PK] PRIMARY KEY CLUSTERED (
        [DisciplineActionServiceDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [idoe].[EducationOrganizationOtherPersonnel] --
CREATE TABLE [idoe].[EducationOrganizationOtherPersonnel] (
    [LocalEducationAgencyId] [INT] NOT NULL,
    [OtherPersonnelCategoryDescriptorId] [INT] NOT NULL,
    [OtherPersonnelTitleDescriptorId] [INT] NOT NULL,
    [FullTimeEquivalency] [DECIMAL](5, 4) NULL,
    [OtherPersonnelCount] [INT] NULL,
    [Discriminator] [NVARCHAR](128) NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    [LastModifiedDate] [DATETIME2] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL,
    CONSTRAINT [EducationOrganizationOtherPersonnel_PK] PRIMARY KEY CLUSTERED (
        [LocalEducationAgencyId] ASC,
        [OtherPersonnelCategoryDescriptorId] ASC,
        [OtherPersonnelTitleDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [idoe].[EducationOrganizationOtherPersonnel] ADD CONSTRAINT [EducationOrganizationOtherPersonnel_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate]
GO
ALTER TABLE [idoe].[EducationOrganizationOtherPersonnel] ADD CONSTRAINT [EducationOrganizationOtherPersonnel_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [idoe].[EducationOrganizationOtherPersonnel] ADD CONSTRAINT [EducationOrganizationOtherPersonnel_DF_LastModifiedDate] DEFAULT (getutcdate()) FOR [LastModifiedDate]
GO

-- Table [idoe].[ELLInstrumentUsedDescriptor] --
CREATE TABLE [idoe].[ELLInstrumentUsedDescriptor] (
    [ELLInstrumentUsedDescriptorId] [INT] NOT NULL,
    CONSTRAINT [ELLInstrumentUsedDescriptor_PK] PRIMARY KEY CLUSTERED (
        [ELLInstrumentUsedDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [idoe].[OtherPersonnelCategoryDescriptor] --
CREATE TABLE [idoe].[OtherPersonnelCategoryDescriptor] (
    [OtherPersonnelCategoryDescriptorId] [INT] NOT NULL,
    CONSTRAINT [OtherPersonnelCategoryDescriptor_PK] PRIMARY KEY CLUSTERED (
        [OtherPersonnelCategoryDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [idoe].[OtherPersonnelTitleDescriptor] --
CREATE TABLE [idoe].[OtherPersonnelTitleDescriptor] (
    [OtherPersonnelTitleDescriptorId] [INT] NOT NULL,
    CONSTRAINT [OtherPersonnelTitleDescriptor_PK] PRIMARY KEY CLUSTERED (
        [OtherPersonnelTitleDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [idoe].[ProgramMeetingTimeDescriptor] --
CREATE TABLE [idoe].[ProgramMeetingTimeDescriptor] (
    [ProgramMeetingTimeDescriptorId] [INT] NOT NULL,
    CONSTRAINT [ProgramMeetingTimeDescriptor_PK] PRIMARY KEY CLUSTERED (
        [ProgramMeetingTimeDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [idoe].[SchoolExtension] --
CREATE TABLE [idoe].[SchoolExtension] (
    [SchoolId] [INT] NOT NULL,
    [AccreditationDescriptorId] [INT] NULL,
    [ChoiceIndicator] [BIT] NULL,
    [FreewayBeginDate] [DATE] NULL,
    [FreewayEndDate] [DATE] NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [SchoolExtension_PK] PRIMARY KEY CLUSTERED (
        [SchoolId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [idoe].[SchoolExtension] ADD CONSTRAINT [SchoolExtension_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate]
GO

-- Table [idoe].[StaffEducationOrganizationEmploymentAssociationContract] --
CREATE TABLE [idoe].[StaffEducationOrganizationEmploymentAssociationContract] (
    [EducationOrganizationId] [INT] NOT NULL,
    [EmploymentStatusDescriptorId] [INT] NOT NULL,
    [HireDate] [DATE] NOT NULL,
    [StaffUSI] [INT] NOT NULL,
    [ContractDays] [INT] NOT NULL,
    [ContractSalary] [INT] NOT NULL,
    [PercentTitleISalary] [INT] NOT NULL,
    [SupplementalSalary] [INT] NOT NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [StaffEducationOrganizationEmploymentAssociationContract_PK] PRIMARY KEY CLUSTERED (
        [EducationOrganizationId] ASC,
        [EmploymentStatusDescriptorId] ASC,
        [HireDate] ASC,
        [StaffUSI] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [idoe].[StaffEducationOrganizationEmploymentAssociationContract] ADD CONSTRAINT [StaffEducationOrganizationEmploymentAssociationContract_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate]
GO

-- Table [idoe].[StaffEducationOrganizationEmploymentAssociationExtension] --
CREATE TABLE [idoe].[StaffEducationOrganizationEmploymentAssociationExtension] (
    [EducationOrganizationId] [INT] NOT NULL,
    [EmploymentStatusDescriptorId] [INT] NOT NULL,
    [HireDate] [DATE] NOT NULL,
    [StaffUSI] [INT] NOT NULL,
    [YearsOfPriorProfessionalExperience] [DECIMAL](5, 2) NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [StaffEducationOrganizationEmploymentAssociationExtension_PK] PRIMARY KEY CLUSTERED (
        [EducationOrganizationId] ASC,
        [EmploymentStatusDescriptorId] ASC,
        [HireDate] ASC,
        [StaffUSI] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [idoe].[StaffEducationOrganizationEmploymentAssociationExtension] ADD CONSTRAINT [StaffEducationOrganizationEmploymentAssociationExtension_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate]
GO

-- Table [idoe].[StudentAlternativeEducationProgramAssociation] --
CREATE TABLE [idoe].[StudentAlternativeEducationProgramAssociation] (
    [BeginDate] [DATE] NOT NULL,
    [EducationOrganizationId] [INT] NOT NULL,
    [ProgramEducationOrganizationId] [INT] NOT NULL,
    [ProgramName] [NVARCHAR](60) NOT NULL,
    [ProgramTypeDescriptorId] [INT] NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [AlternativeEducationEligibilityReasonDescriptorId] [INT] NOT NULL,
    CONSTRAINT [StudentAlternativeEducationProgramAssociation_PK] PRIMARY KEY CLUSTERED (
        [BeginDate] ASC,
        [EducationOrganizationId] ASC,
        [ProgramEducationOrganizationId] ASC,
        [ProgramName] ASC,
        [ProgramTypeDescriptorId] ASC,
        [StudentUSI] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [idoe].[StudentAlternativeEducationProgramAssociationProgramMeetingTime] --
CREATE TABLE [idoe].[StudentAlternativeEducationProgramAssociationProgramMeetingTime] (
    [BeginDate] [DATE] NOT NULL,
    [EducationOrganizationId] [INT] NOT NULL,
    [ProgramEducationOrganizationId] [INT] NOT NULL,
    [ProgramName] [NVARCHAR](60) NOT NULL,
    [ProgramTypeDescriptorId] [INT] NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [ProgramMeetingTimeDescriptorId] [INT] NOT NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [StudentAlternativeEducationProgramAssociationProgramMeetingTime_PK] PRIMARY KEY CLUSTERED (
        [BeginDate] ASC,
        [EducationOrganizationId] ASC,
        [ProgramEducationOrganizationId] ASC,
        [ProgramName] ASC,
        [ProgramTypeDescriptorId] ASC,
        [StudentUSI] ASC,
        [ProgramMeetingTimeDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [idoe].[StudentAlternativeEducationProgramAssociationProgramMeetingTime] ADD CONSTRAINT [StudentAlternativeEducationProgramAssociationProgramMeetingTime_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate]
GO

-- Table [idoe].[StudentArrestDescriptor] --
CREATE TABLE [idoe].[StudentArrestDescriptor] (
    [StudentArrestDescriptorId] [INT] NOT NULL,
    CONSTRAINT [StudentArrestDescriptor_PK] PRIMARY KEY CLUSTERED (
        [StudentArrestDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [idoe].[StudentCurricularMaterialProgramAssociation] --
CREATE TABLE [idoe].[StudentCurricularMaterialProgramAssociation] (
    [BeginDate] [DATE] NOT NULL,
    [EducationOrganizationId] [INT] NOT NULL,
    [ProgramEducationOrganizationId] [INT] NOT NULL,
    [ProgramName] [NVARCHAR](60) NOT NULL,
    [ProgramTypeDescriptorId] [INT] NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [LivesWithParentUSI] [INT] NULL,
    [StudentDoesNotLiveWithParent] [BIT] NOT NULL,
    CONSTRAINT [StudentCurricularMaterialProgramAssociation_PK] PRIMARY KEY CLUSTERED (
        [BeginDate] ASC,
        [EducationOrganizationId] ASC,
        [ProgramEducationOrganizationId] ASC,
        [ProgramName] ASC,
        [ProgramTypeDescriptorId] ASC,
        [StudentUSI] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [idoe].[StudentDisciplineIncidentBehaviorAssociationExtension] --
CREATE TABLE [idoe].[StudentDisciplineIncidentBehaviorAssociationExtension] (
    [BehaviorDescriptorId] [INT] NOT NULL,
    [IncidentIdentifier] [NVARCHAR](20) NOT NULL,
    [SchoolId] [INT] NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [CriminalGangRelatedEventDescriptorId] [INT] NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [StudentDisciplineIncidentBehaviorAssociationExtension_PK] PRIMARY KEY CLUSTERED (
        [BehaviorDescriptorId] ASC,
        [IncidentIdentifier] ASC,
        [SchoolId] ASC,
        [StudentUSI] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [idoe].[StudentDisciplineIncidentBehaviorAssociationExtension] ADD CONSTRAINT [StudentDisciplineIncidentBehaviorAssociationExtension_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate]
GO

-- Table [idoe].[StudentEducationOrganizationAssessmentAccommodation] --
CREATE TABLE [idoe].[StudentEducationOrganizationAssessmentAccommodation] (
    [AcademicSubjectDescriptorId] [INT] NOT NULL,
    [AccommodationDescriptorId] [INT] NOT NULL,
    [AssessmentIdentifier] [NVARCHAR](60) NOT NULL,
    [EducationOrganizationId] [INT] NOT NULL,
    [Namespace] [NVARCHAR](255) NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [Discriminator] [NVARCHAR](128) NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    [LastModifiedDate] [DATETIME2] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL,
    CONSTRAINT [StudentEducationOrganizationAssessmentAccommodation_PK] PRIMARY KEY CLUSTERED (
        [AcademicSubjectDescriptorId] ASC,
        [AccommodationDescriptorId] ASC,
        [AssessmentIdentifier] ASC,
        [EducationOrganizationId] ASC,
        [Namespace] ASC,
        [StudentUSI] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [idoe].[StudentEducationOrganizationAssessmentAccommodation] ADD CONSTRAINT [StudentEducationOrganizationAssessmentAccommodation_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate]
GO
ALTER TABLE [idoe].[StudentEducationOrganizationAssessmentAccommodation] ADD CONSTRAINT [StudentEducationOrganizationAssessmentAccommodation_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [idoe].[StudentEducationOrganizationAssessmentAccommodation] ADD CONSTRAINT [StudentEducationOrganizationAssessmentAccommodation_DF_LastModifiedDate] DEFAULT (getutcdate()) FOR [LastModifiedDate]
GO

-- Table [idoe].[StudentEducationOrganizationAssociationExtension] --
CREATE TABLE [idoe].[StudentEducationOrganizationAssociationExtension] (
    [EducationOrganizationId] [INT] NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [ELLInstrumentUsedDescriptorId] [INT] NULL,
    [USInitialSchoolEntry] [DATE] NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [StudentEducationOrganizationAssociationExtension_PK] PRIMARY KEY CLUSTERED (
        [EducationOrganizationId] ASC,
        [StudentUSI] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [idoe].[StudentEducationOrganizationAssociationExtension] ADD CONSTRAINT [StudentEducationOrganizationAssociationExtension_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate]
GO

-- Table [idoe].[StudentEducationOrganizationResponsibilityAssociationAdditionalEdOrgResponsibility] --
CREATE TABLE [idoe].[StudentEducationOrganizationResponsibilityAssociationAdditionalEdOrgResponsibility] (
    [BeginDate] [DATE] NOT NULL,
    [EducationOrganizationId] [INT] NOT NULL,
    [ResponsibilityDescriptorId] [INT] NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [SchoolCorpId] [INT] NOT NULL,
    [SchoolCorpResponsibilityDescriptorId] [INT] NOT NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [StudentEducationOrganizationResponsibilityAssociationAdditionalEdOrgResponsibility_PK] PRIMARY KEY CLUSTERED (
        [BeginDate] ASC,
        [EducationOrganizationId] ASC,
        [ResponsibilityDescriptorId] ASC,
        [StudentUSI] ASC,
        [SchoolCorpId] ASC,
        [SchoolCorpResponsibilityDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [idoe].[StudentEducationOrganizationResponsibilityAssociationAdditionalEdOrgResponsibility] ADD CONSTRAINT [StudentEducationOrganizationResponsibilityAssociationAdditionalEdOrgResponsibility_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate]
GO

-- Table [idoe].[StudentEducationOrganizationResponsibilityAssociationExtension] --
CREATE TABLE [idoe].[StudentEducationOrganizationResponsibilityAssociationExtension] (
    [BeginDate] [DATE] NOT NULL,
    [EducationOrganizationId] [INT] NOT NULL,
    [ResponsibilityDescriptorId] [INT] NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [ADMCodeDescriptorId] [INT] NULL,
    [InstructionalDays] [INT] NULL,
    [InstructionalMinutes] [INT] NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [StudentEducationOrganizationResponsibilityAssociationExtension_PK] PRIMARY KEY CLUSTERED (
        [BeginDate] ASC,
        [EducationOrganizationId] ASC,
        [ResponsibilityDescriptorId] ASC,
        [StudentUSI] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [idoe].[StudentEducationOrganizationResponsibilityAssociationExtension] ADD CONSTRAINT [StudentEducationOrganizationResponsibilityAssociationExtension_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate]
GO

-- Table [idoe].[StudentSpecialEducationProgramAssociationExtension] --
CREATE TABLE [idoe].[StudentSpecialEducationProgramAssociationExtension] (
    [BeginDate] [DATE] NOT NULL,
    [EducationOrganizationId] [INT] NOT NULL,
    [ProgramEducationOrganizationId] [INT] NOT NULL,
    [ProgramName] [NVARCHAR](60) NOT NULL,
    [ProgramTypeDescriptorId] [INT] NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [CircumstancesRelevantToTimelineDescriptorId] [INT] NULL,
    [FirstStepsTransitionDate] [DATE] NULL,
    [ParentalConsentDate] [DATE] NULL,
    [TimelineComplianceDescriptorId] [INT] NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [StudentSpecialEducationProgramAssociationExtension_PK] PRIMARY KEY CLUSTERED (
        [BeginDate] ASC,
        [EducationOrganizationId] ASC,
        [ProgramEducationOrganizationId] ASC,
        [ProgramName] ASC,
        [ProgramTypeDescriptorId] ASC,
        [StudentUSI] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [idoe].[StudentSpecialEducationProgramAssociationExtension] ADD CONSTRAINT [StudentSpecialEducationProgramAssociationExtension_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate]
GO

-- Table [idoe].[TimelineComplianceDescriptor] --
CREATE TABLE [idoe].[TimelineComplianceDescriptor] (
    [TimelineComplianceDescriptorId] [INT] NOT NULL,
    CONSTRAINT [TimelineComplianceDescriptor_PK] PRIMARY KEY CLUSTERED (
        [TimelineComplianceDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

