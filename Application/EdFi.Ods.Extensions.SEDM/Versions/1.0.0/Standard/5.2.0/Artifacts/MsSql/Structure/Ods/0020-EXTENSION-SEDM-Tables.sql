-- Table [sedm].[DurationPeriodDescriptor] --
CREATE TABLE [sedm].[DurationPeriodDescriptor] (
    [DurationPeriodDescriptorId] [INT] NOT NULL,
    CONSTRAINT [DurationPeriodDescriptor_PK] PRIMARY KEY CLUSTERED (
        [DurationPeriodDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [sedm].[EventComplianceDescriptor] --
CREATE TABLE [sedm].[EventComplianceDescriptor] (
    [EventComplianceDescriptorId] [INT] NOT NULL,
    CONSTRAINT [EventComplianceDescriptor_PK] PRIMARY KEY CLUSTERED (
        [EventComplianceDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [sedm].[EventReasonDescriptor] --
CREATE TABLE [sedm].[EventReasonDescriptor] (
    [EventReasonDescriptorId] [INT] NOT NULL,
    CONSTRAINT [EventReasonDescriptor_PK] PRIMARY KEY CLUSTERED (
        [EventReasonDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [sedm].[FrequencyPeriodDescriptor] --
CREATE TABLE [sedm].[FrequencyPeriodDescriptor] (
    [FrequencyPeriodDescriptorId] [INT] NOT NULL,
    CONSTRAINT [FrequencyPeriodDescriptor_PK] PRIMARY KEY CLUSTERED (
        [FrequencyPeriodDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [sedm].[IdeaEvent] --
CREATE TABLE [sedm].[IdeaEvent] (
    [EducationOrganizationId] [BIGINT] NOT NULL,
    [IdeaEventDescriptorId] [INT] NOT NULL,
    [IDEAEventID] [NVARCHAR](128) NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [BeginDate] [DATE] NOT NULL,
    [EndDate] [DATE] NOT NULL,
    [EventComplianceDescriptorId] [INT] NULL,
    [EventNarrative] [NVARCHAR](2048) NULL,
    [EventReasonDescriptorId] [INT] NULL,
    [Discriminator] [NVARCHAR](128) NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    [LastModifiedDate] [DATETIME2] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL,
    CONSTRAINT [IdeaEvent_PK] PRIMARY KEY CLUSTERED (
        [EducationOrganizationId] ASC,
        [IdeaEventDescriptorId] ASC,
        [IDEAEventID] ASC,
        [StudentUSI] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [sedm].[IdeaEvent] ADD CONSTRAINT [IdeaEvent_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate]
GO
ALTER TABLE [sedm].[IdeaEvent] ADD CONSTRAINT [IdeaEvent_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [sedm].[IdeaEvent] ADD CONSTRAINT [IdeaEvent_DF_LastModifiedDate] DEFAULT (getutcdate()) FOR [LastModifiedDate]
GO

-- Table [sedm].[IdeaEventDescriptor] --
CREATE TABLE [sedm].[IdeaEventDescriptor] (
    [IdeaEventDescriptorId] [INT] NOT NULL,
    CONSTRAINT [IdeaEventDescriptor_PK] PRIMARY KEY CLUSTERED (
        [IdeaEventDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [sedm].[IepGoalDescriptor] --
CREATE TABLE [sedm].[IepGoalDescriptor] (
    [IepGoalDescriptorId] [INT] NOT NULL,
    CONSTRAINT [IepGoalDescriptor_PK] PRIMARY KEY CLUSTERED (
        [IepGoalDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [sedm].[IepStatusDescriptor] --
CREATE TABLE [sedm].[IepStatusDescriptor] (
    [IepStatusDescriptorId] [INT] NOT NULL,
    CONSTRAINT [IepStatusDescriptor_PK] PRIMARY KEY CLUSTERED (
        [IepStatusDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [sedm].[ServiceComplianceDescriptor] --
CREATE TABLE [sedm].[ServiceComplianceDescriptor] (
    [ServiceComplianceDescriptorId] [INT] NOT NULL,
    CONSTRAINT [ServiceComplianceDescriptor_PK] PRIMARY KEY CLUSTERED (
        [ServiceComplianceDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [sedm].[ServiceDeliveryDescriptor] --
CREATE TABLE [sedm].[ServiceDeliveryDescriptor] (
    [ServiceDeliveryDescriptorId] [INT] NOT NULL,
    CONSTRAINT [ServiceDeliveryDescriptor_PK] PRIMARY KEY CLUSTERED (
        [ServiceDeliveryDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [sedm].[ServiceLocationTypeDescriptor] --
CREATE TABLE [sedm].[ServiceLocationTypeDescriptor] (
    [ServiceLocationTypeDescriptorId] [INT] NOT NULL,
    CONSTRAINT [ServiceLocationTypeDescriptor_PK] PRIMARY KEY CLUSTERED (
        [ServiceLocationTypeDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [sedm].[ServicePrescriptionDescriptor] --
CREATE TABLE [sedm].[ServicePrescriptionDescriptor] (
    [ServicePrescriptionDescriptorId] [INT] NOT NULL,
    CONSTRAINT [ServicePrescriptionDescriptor_PK] PRIMARY KEY CLUSTERED (
        [ServicePrescriptionDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [sedm].[ServiceProviderTypeDescriptor] --
CREATE TABLE [sedm].[ServiceProviderTypeDescriptor] (
    [ServiceProviderTypeDescriptorId] [INT] NOT NULL,
    CONSTRAINT [ServiceProviderTypeDescriptor_PK] PRIMARY KEY CLUSTERED (
        [ServiceProviderTypeDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [sedm].[ServiceReasonDescriptor] --
CREATE TABLE [sedm].[ServiceReasonDescriptor] (
    [ServiceReasonDescriptorId] [INT] NOT NULL,
    CONSTRAINT [ServiceReasonDescriptor_PK] PRIMARY KEY CLUSTERED (
        [ServiceReasonDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [sedm].[StudentIEP] --
CREATE TABLE [sedm].[StudentIEP] (
    [EducationOrganizationId] [BIGINT] NOT NULL,
    [IEPFinalizedDate] [DATE] NOT NULL,
    [StudentIEPAssociationID] [NVARCHAR](128) NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [IEPAmendedDate] [DATE] NULL,
    [IEPBeginDate] [DATE] NOT NULL,
    [IEPEndDate] [DATE] NOT NULL,
    [IepStatusDescriptorId] [INT] NOT NULL,
    [MedicallyFragile] [BIT] NULL,
    [MultiplyDisabled] [BIT] NULL,
    [ReasonExitedDescriptorId] [INT] NULL,
    [SchoolHoursPerWeek] [DECIMAL](5, 2) NULL,
    [SpecialEducationHoursPerWeek] [DECIMAL](5, 2) NULL,
    [SpecialEducationSettingDescriptorId] [INT] NULL,
    [Discriminator] [NVARCHAR](128) NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    [LastModifiedDate] [DATETIME2] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL,
    CONSTRAINT [StudentIEP_PK] PRIMARY KEY CLUSTERED (
        [EducationOrganizationId] ASC,
        [IEPFinalizedDate] ASC,
        [StudentIEPAssociationID] ASC,
        [StudentUSI] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [sedm].[StudentIEP] ADD CONSTRAINT [StudentIEP_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate]
GO
ALTER TABLE [sedm].[StudentIEP] ADD CONSTRAINT [StudentIEP_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [sedm].[StudentIEP] ADD CONSTRAINT [StudentIEP_DF_LastModifiedDate] DEFAULT (getutcdate()) FOR [LastModifiedDate]
GO

-- Table [sedm].[StudentIEPAccommodationCollection] --
CREATE TABLE [sedm].[StudentIEPAccommodationCollection] (
    [EducationOrganizationId] [BIGINT] NOT NULL,
    [IEPFinalizedDate] [DATE] NOT NULL,
    [StudentIEPAssociationID] [NVARCHAR](128) NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [Discriminator] [NVARCHAR](128) NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    [LastModifiedDate] [DATETIME2] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL,
    CONSTRAINT [StudentIEPAccommodationCollection_PK] PRIMARY KEY CLUSTERED (
        [EducationOrganizationId] ASC,
        [IEPFinalizedDate] ASC,
        [StudentIEPAssociationID] ASC,
        [StudentUSI] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [sedm].[StudentIEPAccommodationCollection] ADD CONSTRAINT [StudentIEPAccommodationCollection_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate]
GO
ALTER TABLE [sedm].[StudentIEPAccommodationCollection] ADD CONSTRAINT [StudentIEPAccommodationCollection_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [sedm].[StudentIEPAccommodationCollection] ADD CONSTRAINT [StudentIEPAccommodationCollection_DF_LastModifiedDate] DEFAULT (getutcdate()) FOR [LastModifiedDate]
GO

-- Table [sedm].[StudentIEPAccommodationCollectionAccommodation] --
CREATE TABLE [sedm].[StudentIEPAccommodationCollectionAccommodation] (
    [EducationOrganizationId] [BIGINT] NOT NULL,
    [IEPFinalizedDate] [DATE] NOT NULL,
    [StudentIEPAssociationID] [NVARCHAR](128) NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [AccommodationDescriptorId] [INT] NOT NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [StudentIEPAccommodationCollectionAccommodation_PK] PRIMARY KEY CLUSTERED (
        [EducationOrganizationId] ASC,
        [IEPFinalizedDate] ASC,
        [StudentIEPAssociationID] ASC,
        [StudentUSI] ASC,
        [AccommodationDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [sedm].[StudentIEPAccommodationCollectionAccommodation] ADD CONSTRAINT [StudentIEPAccommodationCollectionAccommodation_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate]
GO

-- Table [sedm].[StudentIEPDisabilityCollection] --
CREATE TABLE [sedm].[StudentIEPDisabilityCollection] (
    [EducationOrganizationId] [BIGINT] NOT NULL,
    [IEPFinalizedDate] [DATE] NOT NULL,
    [StudentIEPAssociationID] [NVARCHAR](128) NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [Discriminator] [NVARCHAR](128) NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    [LastModifiedDate] [DATETIME2] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL,
    CONSTRAINT [StudentIEPDisabilityCollection_PK] PRIMARY KEY CLUSTERED (
        [EducationOrganizationId] ASC,
        [IEPFinalizedDate] ASC,
        [StudentIEPAssociationID] ASC,
        [StudentUSI] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [sedm].[StudentIEPDisabilityCollection] ADD CONSTRAINT [StudentIEPDisabilityCollection_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate]
GO
ALTER TABLE [sedm].[StudentIEPDisabilityCollection] ADD CONSTRAINT [StudentIEPDisabilityCollection_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [sedm].[StudentIEPDisabilityCollection] ADD CONSTRAINT [StudentIEPDisabilityCollection_DF_LastModifiedDate] DEFAULT (getutcdate()) FOR [LastModifiedDate]
GO

-- Table [sedm].[StudentIEPDisabilityCollectionDisability] --
CREATE TABLE [sedm].[StudentIEPDisabilityCollectionDisability] (
    [EducationOrganizationId] [BIGINT] NOT NULL,
    [IEPFinalizedDate] [DATE] NOT NULL,
    [StudentIEPAssociationID] [NVARCHAR](128) NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [DisabilityDescriptorId] [INT] NOT NULL,
    [DisabilityDeterminationSourceTypeDescriptorId] [INT] NULL,
    [DisabilityDiagnosis] [NVARCHAR](80) NULL,
    [OrderOfDisability] [INT] NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [StudentIEPDisabilityCollectionDisability_PK] PRIMARY KEY CLUSTERED (
        [EducationOrganizationId] ASC,
        [IEPFinalizedDate] ASC,
        [StudentIEPAssociationID] ASC,
        [StudentUSI] ASC,
        [DisabilityDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [sedm].[StudentIEPDisabilityCollectionDisability] ADD CONSTRAINT [StudentIEPDisabilityCollectionDisability_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate]
GO

-- Table [sedm].[StudentIEPDisabilityCollectionDisabilityDesignation] --
CREATE TABLE [sedm].[StudentIEPDisabilityCollectionDisabilityDesignation] (
    [EducationOrganizationId] [BIGINT] NOT NULL,
    [IEPFinalizedDate] [DATE] NOT NULL,
    [StudentIEPAssociationID] [NVARCHAR](128) NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [DisabilityDescriptorId] [INT] NOT NULL,
    [DisabilityDesignationDescriptorId] [INT] NOT NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [StudentIEPDisabilityCollectionDisabilityDesignation_PK] PRIMARY KEY CLUSTERED (
        [EducationOrganizationId] ASC,
        [IEPFinalizedDate] ASC,
        [StudentIEPAssociationID] ASC,
        [StudentUSI] ASC,
        [DisabilityDescriptorId] ASC,
        [DisabilityDesignationDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [sedm].[StudentIEPDisabilityCollectionDisabilityDesignation] ADD CONSTRAINT [StudentIEPDisabilityCollectionDisabilityDesignation_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate]
GO

-- Table [sedm].[StudentIEPGoal] --
CREATE TABLE [sedm].[StudentIEPGoal] (
    [EducationOrganizationId] [BIGINT] NOT NULL,
    [IEPFinalizedDate] [DATE] NOT NULL,
    [IEPGoalID] [NVARCHAR](128) NOT NULL,
    [StudentIEPAssociationID] [NVARCHAR](128) NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [GoalAchievementPeriodBeginDate] [DATE] NULL,
    [GoalAchievementPeriodEndDate] [DATE] NULL,
    [IepGoalDescriptorId] [INT] NOT NULL,
    [IEPGoalDetails] [NVARCHAR](2048) NOT NULL,
    [Discriminator] [NVARCHAR](128) NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    [LastModifiedDate] [DATETIME2] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL,
    CONSTRAINT [StudentIEPGoal_PK] PRIMARY KEY CLUSTERED (
        [EducationOrganizationId] ASC,
        [IEPFinalizedDate] ASC,
        [IEPGoalID] ASC,
        [StudentIEPAssociationID] ASC,
        [StudentUSI] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [sedm].[StudentIEPGoal] ADD CONSTRAINT [StudentIEPGoal_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate]
GO
ALTER TABLE [sedm].[StudentIEPGoal] ADD CONSTRAINT [StudentIEPGoal_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [sedm].[StudentIEPGoal] ADD CONSTRAINT [StudentIEPGoal_DF_LastModifiedDate] DEFAULT (getutcdate()) FOR [LastModifiedDate]
GO

-- Table [sedm].[StudentIEPGoalIdeaEvent] --
CREATE TABLE [sedm].[StudentIEPGoalIdeaEvent] (
    [EducationOrganizationId] [BIGINT] NOT NULL,
    [IEPFinalizedDate] [DATE] NOT NULL,
    [IEPGoalID] [NVARCHAR](128) NOT NULL,
    [StudentIEPAssociationID] [NVARCHAR](128) NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [IdeaEventDescriptorId] [INT] NOT NULL,
    [IDEAEventID] [NVARCHAR](128) NOT NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [StudentIEPGoalIdeaEvent_PK] PRIMARY KEY CLUSTERED (
        [EducationOrganizationId] ASC,
        [IEPFinalizedDate] ASC,
        [IEPGoalID] ASC,
        [StudentIEPAssociationID] ASC,
        [StudentUSI] ASC,
        [IdeaEventDescriptorId] ASC,
        [IDEAEventID] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [sedm].[StudentIEPGoalIdeaEvent] ADD CONSTRAINT [StudentIEPGoalIdeaEvent_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate]
GO

-- Table [sedm].[StudentIEPIdeaEvent] --
CREATE TABLE [sedm].[StudentIEPIdeaEvent] (
    [EducationOrganizationId] [BIGINT] NOT NULL,
    [IEPFinalizedDate] [DATE] NOT NULL,
    [StudentIEPAssociationID] [NVARCHAR](128) NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [IdeaEventDescriptorId] [INT] NOT NULL,
    [IDEAEventID] [NVARCHAR](128) NOT NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [StudentIEPIdeaEvent_PK] PRIMARY KEY CLUSTERED (
        [EducationOrganizationId] ASC,
        [IEPFinalizedDate] ASC,
        [StudentIEPAssociationID] ASC,
        [StudentUSI] ASC,
        [IdeaEventDescriptorId] ASC,
        [IDEAEventID] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [sedm].[StudentIEPIdeaEvent] ADD CONSTRAINT [StudentIEPIdeaEvent_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate]
GO

-- Table [sedm].[StudentIEPServiceDelivery] --
CREATE TABLE [sedm].[StudentIEPServiceDelivery] (
    [EducationOrganizationId] [BIGINT] NOT NULL,
    [IEPFinalizedDate] [DATE] NOT NULL,
    [IEPServiceDeliveryID] [NVARCHAR](128) NOT NULL,
    [ServiceDeliveryDate] [DATE] NOT NULL,
    [ServiceDeliveryDescriptorId] [INT] NOT NULL,
    [StudentIEPAssociationID] [NVARCHAR](128) NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [ServicePrescriptionDate] [DATE] NULL,
    [ServicePrescriptionDescriptorId] [INT] NULL,
    [ServiceProviderTypeDescriptorId] [INT] NULL,
    [Discriminator] [NVARCHAR](128) NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    [LastModifiedDate] [DATETIME2] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL,
    CONSTRAINT [StudentIEPServiceDelivery_PK] PRIMARY KEY CLUSTERED (
        [EducationOrganizationId] ASC,
        [IEPFinalizedDate] ASC,
        [IEPServiceDeliveryID] ASC,
        [ServiceDeliveryDate] ASC,
        [ServiceDeliveryDescriptorId] ASC,
        [StudentIEPAssociationID] ASC,
        [StudentUSI] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [sedm].[StudentIEPServiceDelivery] ADD CONSTRAINT [StudentIEPServiceDelivery_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate]
GO
ALTER TABLE [sedm].[StudentIEPServiceDelivery] ADD CONSTRAINT [StudentIEPServiceDelivery_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [sedm].[StudentIEPServiceDelivery] ADD CONSTRAINT [StudentIEPServiceDelivery_DF_LastModifiedDate] DEFAULT (getutcdate()) FOR [LastModifiedDate]
GO

-- Table [sedm].[StudentIEPServiceDeliveryExternalServiceProvider] --
CREATE TABLE [sedm].[StudentIEPServiceDeliveryExternalServiceProvider] (
    [EducationOrganizationId] [BIGINT] NOT NULL,
    [IEPFinalizedDate] [DATE] NOT NULL,
    [IEPServiceDeliveryID] [NVARCHAR](128) NOT NULL,
    [ServiceDeliveryDate] [DATE] NOT NULL,
    [ServiceDeliveryDescriptorId] [INT] NOT NULL,
    [StudentIEPAssociationID] [NVARCHAR](128) NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [ProviderCode] [NVARCHAR](1024) NOT NULL,
    [ProviderFirstName] [NVARCHAR](1024) NOT NULL,
    [ProviderLastSurname] [NVARCHAR](1024) NOT NULL,
    [PrimaryProvider] [BIT] NULL,
    [ProviderMiddleName] [NVARCHAR](1024) NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [StudentIEPServiceDeliveryExternalServiceProvider_PK] PRIMARY KEY CLUSTERED (
        [EducationOrganizationId] ASC,
        [IEPFinalizedDate] ASC,
        [IEPServiceDeliveryID] ASC,
        [ServiceDeliveryDate] ASC,
        [ServiceDeliveryDescriptorId] ASC,
        [StudentIEPAssociationID] ASC,
        [StudentUSI] ASC,
        [ProviderCode] ASC,
        [ProviderFirstName] ASC,
        [ProviderLastSurname] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [sedm].[StudentIEPServiceDeliveryExternalServiceProvider] ADD CONSTRAINT [StudentIEPServiceDeliveryExternalServiceProvider_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate]
GO

-- Table [sedm].[StudentIEPServiceDeliveryIdeaEvent] --
CREATE TABLE [sedm].[StudentIEPServiceDeliveryIdeaEvent] (
    [EducationOrganizationId] [BIGINT] NOT NULL,
    [IEPFinalizedDate] [DATE] NOT NULL,
    [IEPServiceDeliveryID] [NVARCHAR](128) NOT NULL,
    [ServiceDeliveryDate] [DATE] NOT NULL,
    [ServiceDeliveryDescriptorId] [INT] NOT NULL,
    [StudentIEPAssociationID] [NVARCHAR](128) NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [IdeaEventDescriptorId] [INT] NOT NULL,
    [IDEAEventID] [NVARCHAR](128) NOT NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [StudentIEPServiceDeliveryIdeaEvent_PK] PRIMARY KEY CLUSTERED (
        [EducationOrganizationId] ASC,
        [IEPFinalizedDate] ASC,
        [IEPServiceDeliveryID] ASC,
        [ServiceDeliveryDate] ASC,
        [ServiceDeliveryDescriptorId] ASC,
        [StudentIEPAssociationID] ASC,
        [StudentUSI] ASC,
        [IdeaEventDescriptorId] ASC,
        [IDEAEventID] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [sedm].[StudentIEPServiceDeliveryIdeaEvent] ADD CONSTRAINT [StudentIEPServiceDeliveryIdeaEvent_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate]
GO

-- Table [sedm].[StudentIEPServiceDeliveryServiceProvider] --
CREATE TABLE [sedm].[StudentIEPServiceDeliveryServiceProvider] (
    [EducationOrganizationId] [BIGINT] NOT NULL,
    [IEPFinalizedDate] [DATE] NOT NULL,
    [IEPServiceDeliveryID] [NVARCHAR](128) NOT NULL,
    [ServiceDeliveryDate] [DATE] NOT NULL,
    [ServiceDeliveryDescriptorId] [INT] NOT NULL,
    [StudentIEPAssociationID] [NVARCHAR](128) NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [StaffUSI] [INT] NOT NULL,
    [PrimaryProvider] [BIT] NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [StudentIEPServiceDeliveryServiceProvider_PK] PRIMARY KEY CLUSTERED (
        [EducationOrganizationId] ASC,
        [IEPFinalizedDate] ASC,
        [IEPServiceDeliveryID] ASC,
        [ServiceDeliveryDate] ASC,
        [ServiceDeliveryDescriptorId] ASC,
        [StudentIEPAssociationID] ASC,
        [StudentUSI] ASC,
        [StaffUSI] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [sedm].[StudentIEPServiceDeliveryServiceProvider] ADD CONSTRAINT [StudentIEPServiceDeliveryServiceProvider_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate]
GO

-- Table [sedm].[StudentIEPServicePrescription] --
CREATE TABLE [sedm].[StudentIEPServicePrescription] (
    [EducationOrganizationId] [BIGINT] NOT NULL,
    [IEPFinalizedDate] [DATE] NOT NULL,
    [ServicePrescriptionDate] [DATE] NOT NULL,
    [ServicePrescriptionDescriptorId] [INT] NOT NULL,
    [StudentIEPAssociationID] [NVARCHAR](128) NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [BeginDate] [DATE] NOT NULL,
    [DurationMinutes] [DECIMAL](5, 2) NOT NULL,
    [DurationPeriodDescriptorId] [INT] NOT NULL,
    [EndDate] [DATE] NULL,
    [FrequencyPeriodDescriptorId] [INT] NOT NULL,
    [FrequencyValue] [DECIMAL](5, 2) NOT NULL,
    [ServiceLocationTypeDescriptorId] [INT] NOT NULL,
    [Discriminator] [NVARCHAR](128) NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    [LastModifiedDate] [DATETIME2] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL,
    CONSTRAINT [StudentIEPServicePrescription_PK] PRIMARY KEY CLUSTERED (
        [EducationOrganizationId] ASC,
        [IEPFinalizedDate] ASC,
        [ServicePrescriptionDate] ASC,
        [ServicePrescriptionDescriptorId] ASC,
        [StudentIEPAssociationID] ASC,
        [StudentUSI] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [sedm].[StudentIEPServicePrescription] ADD CONSTRAINT [StudentIEPServicePrescription_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate]
GO
ALTER TABLE [sedm].[StudentIEPServicePrescription] ADD CONSTRAINT [StudentIEPServicePrescription_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [sedm].[StudentIEPServicePrescription] ADD CONSTRAINT [StudentIEPServicePrescription_DF_LastModifiedDate] DEFAULT (getutcdate()) FOR [LastModifiedDate]
GO

-- Table [sedm].[StudentIEPServicePrescriptionIdeaEvent] --
CREATE TABLE [sedm].[StudentIEPServicePrescriptionIdeaEvent] (
    [EducationOrganizationId] [BIGINT] NOT NULL,
    [IEPFinalizedDate] [DATE] NOT NULL,
    [ServicePrescriptionDate] [DATE] NOT NULL,
    [ServicePrescriptionDescriptorId] [INT] NOT NULL,
    [StudentIEPAssociationID] [NVARCHAR](128) NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [IdeaEventDescriptorId] [INT] NOT NULL,
    [IDEAEventID] [NVARCHAR](128) NOT NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [StudentIEPServicePrescriptionIdeaEvent_PK] PRIMARY KEY CLUSTERED (
        [EducationOrganizationId] ASC,
        [IEPFinalizedDate] ASC,
        [ServicePrescriptionDate] ASC,
        [ServicePrescriptionDescriptorId] ASC,
        [StudentIEPAssociationID] ASC,
        [StudentUSI] ASC,
        [IdeaEventDescriptorId] ASC,
        [IDEAEventID] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [sedm].[StudentIEPServicePrescriptionIdeaEvent] ADD CONSTRAINT [StudentIEPServicePrescriptionIdeaEvent_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate]
GO

-- Table [sedm].[StudentIEPServicePrescriptionStaff] --
CREATE TABLE [sedm].[StudentIEPServicePrescriptionStaff] (
    [EducationOrganizationId] [BIGINT] NOT NULL,
    [IEPFinalizedDate] [DATE] NOT NULL,
    [ServicePrescriptionDate] [DATE] NOT NULL,
    [ServicePrescriptionDescriptorId] [INT] NOT NULL,
    [StudentIEPAssociationID] [NVARCHAR](128) NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [StaffUSI] [INT] NOT NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [StudentIEPServicePrescriptionStaff_PK] PRIMARY KEY CLUSTERED (
        [EducationOrganizationId] ASC,
        [IEPFinalizedDate] ASC,
        [ServicePrescriptionDate] ASC,
        [ServicePrescriptionDescriptorId] ASC,
        [StudentIEPAssociationID] ASC,
        [StudentUSI] ASC,
        [StaffUSI] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [sedm].[StudentIEPServicePrescriptionStaff] ADD CONSTRAINT [StudentIEPServicePrescriptionStaff_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate]
GO

