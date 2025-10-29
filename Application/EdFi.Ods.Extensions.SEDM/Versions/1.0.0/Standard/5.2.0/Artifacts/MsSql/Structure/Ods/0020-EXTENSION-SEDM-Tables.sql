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

-- Table [sedm].[IDEAEvent] --
CREATE TABLE [sedm].[IDEAEvent] (
    [EducationOrganizationId] [BIGINT] NOT NULL,
    [IDEAEventDescriptorId] [INT] NOT NULL,
    [IDEAEventID] [NVARCHAR](1024) NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [EventBeginDate] [DATE] NOT NULL,
    [EventComplianceDescriptorId] [INT] NULL,
    [EventEndDate] [DATE] NOT NULL,
    [EventNarrative] [NVARCHAR](2048) NULL,
    [EventReasonDescriptorId] [INT] NULL,
    [Discriminator] [NVARCHAR](128) NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    [LastModifiedDate] [DATETIME2] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL,
    CONSTRAINT [IDEAEvent_PK] PRIMARY KEY CLUSTERED (
        [EducationOrganizationId] ASC,
        [IDEAEventDescriptorId] ASC,
        [IDEAEventID] ASC,
        [StudentUSI] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [sedm].[IDEAEvent] ADD CONSTRAINT [IDEAEvent_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate]
GO
ALTER TABLE [sedm].[IDEAEvent] ADD CONSTRAINT [IDEAEvent_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [sedm].[IDEAEvent] ADD CONSTRAINT [IDEAEvent_DF_LastModifiedDate] DEFAULT (getutcdate()) FOR [LastModifiedDate]
GO

-- Table [sedm].[IDEAEventDescriptor] --
CREATE TABLE [sedm].[IDEAEventDescriptor] (
    [IDEAEventDescriptorId] [INT] NOT NULL,
    CONSTRAINT [IDEAEventDescriptor_PK] PRIMARY KEY CLUSTERED (
        [IDEAEventDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [sedm].[IEPGoalDescriptor] --
CREATE TABLE [sedm].[IEPGoalDescriptor] (
    [IEPGoalDescriptorId] [INT] NOT NULL,
    CONSTRAINT [IEPGoalDescriptor_PK] PRIMARY KEY CLUSTERED (
        [IEPGoalDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [sedm].[IEPStatusDescriptor] --
CREATE TABLE [sedm].[IEPStatusDescriptor] (
    [IEPStatusDescriptorId] [INT] NOT NULL,
    CONSTRAINT [IEPStatusDescriptor_PK] PRIMARY KEY CLUSTERED (
        [IEPStatusDescriptorId] ASC
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
    [IEPFinalizedDate] [DATE] NOT NULL,
    [IEPServicingEducationOrganizationId] [BIGINT] NOT NULL,
    [StudentIEPAssociationID] [NVARCHAR](1024) NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [IEPAmendedDate] [DATE] NULL,
    [IEPBeginDate] [DATE] NOT NULL,
    [IEPEndDate] [DATE] NOT NULL,
    [IEPStatusDescriptorId] [INT] NOT NULL,
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
        [IEPFinalizedDate] ASC,
        [IEPServicingEducationOrganizationId] ASC,
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
    [IEPFinalizedDate] [DATE] NOT NULL,
    [IEPServicingEducationOrganizationId] [BIGINT] NOT NULL,
    [StudentIEPAssociationID] [NVARCHAR](1024) NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [Discriminator] [NVARCHAR](128) NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    [LastModifiedDate] [DATETIME2] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL,
    CONSTRAINT [StudentIEPAccommodationCollection_PK] PRIMARY KEY CLUSTERED (
        [IEPFinalizedDate] ASC,
        [IEPServicingEducationOrganizationId] ASC,
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

-- Table [sedm].[StudentIEPAccommodationCollectionIEPAccommodation] --
CREATE TABLE [sedm].[StudentIEPAccommodationCollectionIEPAccommodation] (
    [IEPFinalizedDate] [DATE] NOT NULL,
    [IEPServicingEducationOrganizationId] [BIGINT] NOT NULL,
    [StudentIEPAssociationID] [NVARCHAR](1024) NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [AccommodationDescriptorId] [INT] NOT NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [StudentIEPAccommodationCollectionIEPAccommodation_PK] PRIMARY KEY CLUSTERED (
        [IEPFinalizedDate] ASC,
        [IEPServicingEducationOrganizationId] ASC,
        [StudentIEPAssociationID] ASC,
        [StudentUSI] ASC,
        [AccommodationDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [sedm].[StudentIEPAccommodationCollectionIEPAccommodation] ADD CONSTRAINT [StudentIEPAccommodationCollectionIEPAccommodation_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate]
GO

-- Table [sedm].[StudentIEPDisabilityCollection] --
CREATE TABLE [sedm].[StudentIEPDisabilityCollection] (
    [IEPFinalizedDate] [DATE] NOT NULL,
    [IEPServicingEducationOrganizationId] [BIGINT] NOT NULL,
    [StudentIEPAssociationID] [NVARCHAR](1024) NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [Discriminator] [NVARCHAR](128) NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    [LastModifiedDate] [DATETIME2] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL,
    CONSTRAINT [StudentIEPDisabilityCollection_PK] PRIMARY KEY CLUSTERED (
        [IEPFinalizedDate] ASC,
        [IEPServicingEducationOrganizationId] ASC,
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
    [IEPFinalizedDate] [DATE] NOT NULL,
    [IEPServicingEducationOrganizationId] [BIGINT] NOT NULL,
    [StudentIEPAssociationID] [NVARCHAR](1024) NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [DisabilityDescriptorId] [INT] NOT NULL,
    [DisabilityDeterminationSourceTypeDescriptorId] [INT] NULL,
    [DisabilityDiagnosis] [NVARCHAR](80) NULL,
    [OrderOfDisability] [INT] NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [StudentIEPDisabilityCollectionDisability_PK] PRIMARY KEY CLUSTERED (
        [IEPFinalizedDate] ASC,
        [IEPServicingEducationOrganizationId] ASC,
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
    [IEPFinalizedDate] [DATE] NOT NULL,
    [IEPServicingEducationOrganizationId] [BIGINT] NOT NULL,
    [StudentIEPAssociationID] [NVARCHAR](1024) NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [DisabilityDescriptorId] [INT] NOT NULL,
    [DisabilityDesignationDescriptorId] [INT] NOT NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [StudentIEPDisabilityCollectionDisabilityDesignation_PK] PRIMARY KEY CLUSTERED (
        [IEPFinalizedDate] ASC,
        [IEPServicingEducationOrganizationId] ASC,
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
    [IEPFinalizedDate] [DATE] NOT NULL,
    [IEPGoalID] [NVARCHAR](256) NOT NULL,
    [IEPServicingEducationOrganizationId] [BIGINT] NOT NULL,
    [StudentIEPAssociationID] [NVARCHAR](1024) NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [GoalAchievementPeriodBeginDate] [DATE] NULL,
    [GoalAchievementPeriodEndDate] [DATE] NULL,
    [IEPGoalDescriptorId] [INT] NOT NULL,
    [IEPGoalDetails] [NVARCHAR](2048) NOT NULL,
    [Discriminator] [NVARCHAR](128) NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    [LastModifiedDate] [DATETIME2] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL,
    CONSTRAINT [StudentIEPGoal_PK] PRIMARY KEY CLUSTERED (
        [IEPFinalizedDate] ASC,
        [IEPGoalID] ASC,
        [IEPServicingEducationOrganizationId] ASC,
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

-- Table [sedm].[StudentIEPGoalIDEAEvent] --
CREATE TABLE [sedm].[StudentIEPGoalIDEAEvent] (
    [IEPFinalizedDate] [DATE] NOT NULL,
    [IEPGoalID] [NVARCHAR](256) NOT NULL,
    [IEPServicingEducationOrganizationId] [BIGINT] NOT NULL,
    [StudentIEPAssociationID] [NVARCHAR](1024) NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [EducationOrganizationId] [BIGINT] NOT NULL,
    [IDEAEventDescriptorId] [INT] NOT NULL,
    [IDEAEventID] [NVARCHAR](1024) NOT NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [StudentIEPGoalIDEAEvent_PK] PRIMARY KEY CLUSTERED (
        [IEPFinalizedDate] ASC,
        [IEPGoalID] ASC,
        [IEPServicingEducationOrganizationId] ASC,
        [StudentIEPAssociationID] ASC,
        [StudentUSI] ASC,
        [EducationOrganizationId] ASC,
        [IDEAEventDescriptorId] ASC,
        [IDEAEventID] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [sedm].[StudentIEPGoalIDEAEvent] ADD CONSTRAINT [StudentIEPGoalIDEAEvent_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate]
GO

-- Table [sedm].[StudentIEPIDEAEvent] --
CREATE TABLE [sedm].[StudentIEPIDEAEvent] (
    [IEPFinalizedDate] [DATE] NOT NULL,
    [IEPServicingEducationOrganizationId] [BIGINT] NOT NULL,
    [StudentIEPAssociationID] [NVARCHAR](1024) NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [EducationOrganizationId] [BIGINT] NOT NULL,
    [IDEAEventDescriptorId] [INT] NOT NULL,
    [IDEAEventID] [NVARCHAR](1024) NOT NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [StudentIEPIDEAEvent_PK] PRIMARY KEY CLUSTERED (
        [IEPFinalizedDate] ASC,
        [IEPServicingEducationOrganizationId] ASC,
        [StudentIEPAssociationID] ASC,
        [StudentUSI] ASC,
        [EducationOrganizationId] ASC,
        [IDEAEventDescriptorId] ASC,
        [IDEAEventID] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [sedm].[StudentIEPIDEAEvent] ADD CONSTRAINT [StudentIEPIDEAEvent_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate]
GO

-- Table [sedm].[StudentIEPServiceDelivery] --
CREATE TABLE [sedm].[StudentIEPServiceDelivery] (
    [IEPFinalizedDate] [DATE] NOT NULL,
    [IEPServiceDeliveryID] [NVARCHAR](1024) NOT NULL,
    [IEPServicingEducationOrganizationId] [BIGINT] NOT NULL,
    [ServiceDeliveryDate] [DATE] NOT NULL,
    [ServiceDeliveryDescriptorId] [INT] NOT NULL,
    [StudentIEPAssociationID] [NVARCHAR](1024) NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [ServicePrescriptionDate] [DATE] NULL,
    [ServicePrescriptionDescriptorId] [INT] NULL,
    [ServiceProviderTypeDescriptorId] [INT] NULL,
    [Discriminator] [NVARCHAR](128) NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    [LastModifiedDate] [DATETIME2] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL,
    CONSTRAINT [StudentIEPServiceDelivery_PK] PRIMARY KEY CLUSTERED (
        [IEPFinalizedDate] ASC,
        [IEPServiceDeliveryID] ASC,
        [IEPServicingEducationOrganizationId] ASC,
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
    [IEPFinalizedDate] [DATE] NOT NULL,
    [IEPServiceDeliveryID] [NVARCHAR](1024) NOT NULL,
    [IEPServicingEducationOrganizationId] [BIGINT] NOT NULL,
    [ServiceDeliveryDate] [DATE] NOT NULL,
    [ServiceDeliveryDescriptorId] [INT] NOT NULL,
    [StudentIEPAssociationID] [NVARCHAR](1024) NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [ProviderCode] [NVARCHAR](1024) NOT NULL,
    [ProviderFirstName] [NVARCHAR](1024) NOT NULL,
    [ProviderLastSurname] [NVARCHAR](1024) NOT NULL,
    [PrimaryProvider] [BIT] NULL,
    [ProviderMiddleName] [NVARCHAR](1024) NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [StudentIEPServiceDeliveryExternalServiceProvider_PK] PRIMARY KEY CLUSTERED (
        [IEPFinalizedDate] ASC,
        [IEPServiceDeliveryID] ASC,
        [IEPServicingEducationOrganizationId] ASC,
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

-- Table [sedm].[StudentIEPServiceDeliveryIDEAEvent] --
CREATE TABLE [sedm].[StudentIEPServiceDeliveryIDEAEvent] (
    [IEPFinalizedDate] [DATE] NOT NULL,
    [IEPServiceDeliveryID] [NVARCHAR](1024) NOT NULL,
    [IEPServicingEducationOrganizationId] [BIGINT] NOT NULL,
    [ServiceDeliveryDate] [DATE] NOT NULL,
    [ServiceDeliveryDescriptorId] [INT] NOT NULL,
    [StudentIEPAssociationID] [NVARCHAR](1024) NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [EducationOrganizationId] [BIGINT] NOT NULL,
    [IDEAEventDescriptorId] [INT] NOT NULL,
    [IDEAEventID] [NVARCHAR](1024) NOT NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [StudentIEPServiceDeliveryIDEAEvent_PK] PRIMARY KEY CLUSTERED (
        [IEPFinalizedDate] ASC,
        [IEPServiceDeliveryID] ASC,
        [IEPServicingEducationOrganizationId] ASC,
        [ServiceDeliveryDate] ASC,
        [ServiceDeliveryDescriptorId] ASC,
        [StudentIEPAssociationID] ASC,
        [StudentUSI] ASC,
        [EducationOrganizationId] ASC,
        [IDEAEventDescriptorId] ASC,
        [IDEAEventID] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [sedm].[StudentIEPServiceDeliveryIDEAEvent] ADD CONSTRAINT [StudentIEPServiceDeliveryIDEAEvent_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate]
GO

-- Table [sedm].[StudentIEPServiceDeliveryServiceProvider] --
CREATE TABLE [sedm].[StudentIEPServiceDeliveryServiceProvider] (
    [IEPFinalizedDate] [DATE] NOT NULL,
    [IEPServiceDeliveryID] [NVARCHAR](1024) NOT NULL,
    [IEPServicingEducationOrganizationId] [BIGINT] NOT NULL,
    [ServiceDeliveryDate] [DATE] NOT NULL,
    [ServiceDeliveryDescriptorId] [INT] NOT NULL,
    [StudentIEPAssociationID] [NVARCHAR](1024) NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [StaffUSI] [INT] NOT NULL,
    [PrimaryProvider] [BIT] NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [StudentIEPServiceDeliveryServiceProvider_PK] PRIMARY KEY CLUSTERED (
        [IEPFinalizedDate] ASC,
        [IEPServiceDeliveryID] ASC,
        [IEPServicingEducationOrganizationId] ASC,
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
    [IEPFinalizedDate] [DATE] NOT NULL,
    [IEPServicingEducationOrganizationId] [BIGINT] NOT NULL,
    [ServicePrescriptionDate] [DATE] NOT NULL,
    [ServicePrescriptionDescriptorId] [INT] NOT NULL,
    [StudentIEPAssociationID] [NVARCHAR](1024) NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [BeginDate] [DATE] NOT NULL,
    [DurationMinutes] [DECIMAL](5, 2) NOT NULL,
    [DurationPeriodDescriptorId] [INT] NOT NULL,
    [EndDate] [DATE] NULL,
    [FrequencyPeriodDescriptorId] [INT] NOT NULL,
    [FrequencyValue] [DECIMAL](5, 2) NOT NULL,
    [ServiceLocationTypeDescriptorId] [INT] NOT NULL,
    [ServiceProvidingEducationOrganizationId] [BIGINT] NULL,
    [StaffUSI] [INT] NULL,
    [Discriminator] [NVARCHAR](128) NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    [LastModifiedDate] [DATETIME2] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL,
    CONSTRAINT [StudentIEPServicePrescription_PK] PRIMARY KEY CLUSTERED (
        [IEPFinalizedDate] ASC,
        [IEPServicingEducationOrganizationId] ASC,
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

-- Table [sedm].[StudentIEPServicePrescriptionIDEAEvent] --
CREATE TABLE [sedm].[StudentIEPServicePrescriptionIDEAEvent] (
    [IEPFinalizedDate] [DATE] NOT NULL,
    [IEPServicingEducationOrganizationId] [BIGINT] NOT NULL,
    [ServicePrescriptionDate] [DATE] NOT NULL,
    [ServicePrescriptionDescriptorId] [INT] NOT NULL,
    [StudentIEPAssociationID] [NVARCHAR](1024) NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [EducationOrganizationId] [BIGINT] NOT NULL,
    [IDEAEventDescriptorId] [INT] NOT NULL,
    [IDEAEventID] [NVARCHAR](1024) NOT NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [StudentIEPServicePrescriptionIDEAEvent_PK] PRIMARY KEY CLUSTERED (
        [IEPFinalizedDate] ASC,
        [IEPServicingEducationOrganizationId] ASC,
        [ServicePrescriptionDate] ASC,
        [ServicePrescriptionDescriptorId] ASC,
        [StudentIEPAssociationID] ASC,
        [StudentUSI] ASC,
        [EducationOrganizationId] ASC,
        [IDEAEventDescriptorId] ASC,
        [IDEAEventID] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [sedm].[StudentIEPServicePrescriptionIDEAEvent] ADD CONSTRAINT [StudentIEPServicePrescriptionIDEAEvent_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate]
GO

