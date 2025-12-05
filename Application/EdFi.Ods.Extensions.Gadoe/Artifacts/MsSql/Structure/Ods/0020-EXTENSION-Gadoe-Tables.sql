-- Table [gadoe].[BehaviorIncidentDescriptor] --
CREATE TABLE [gadoe].[BehaviorIncidentDescriptor] (
    [BehaviorIncidentDescriptorId] [INT] NOT NULL,
    CONSTRAINT [BehaviorIncidentDescriptor_PK] PRIMARY KEY CLUSTERED (
        [BehaviorIncidentDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [gadoe].[ChildFindStatusDescriptor] --
CREATE TABLE [gadoe].[ChildFindStatusDescriptor] (
    [ChildFindStatusDescriptorId] [INT] NOT NULL,
    CONSTRAINT [ChildFindStatusDescriptor_PK] PRIMARY KEY CLUSTERED (
        [ChildFindStatusDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [gadoe].[ChwCertFieldCodeDescriptor] --
CREATE TABLE [gadoe].[ChwCertFieldCodeDescriptor] (
    [ChwCertFieldCodeDescriptorId] [INT] NOT NULL,
    CONSTRAINT [ChwCertFieldCodeDescriptor_PK] PRIMARY KEY CLUSTERED (
        [ChwCertFieldCodeDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [gadoe].[CountyOfResidenceDescriptor] --
CREATE TABLE [gadoe].[CountyOfResidenceDescriptor] (
    [CountyOfResidenceDescriptorId] [INT] NOT NULL,
    CONSTRAINT [CountyOfResidenceDescriptor_PK] PRIMARY KEY CLUSTERED (
        [CountyOfResidenceDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [gadoe].[DataTypeIndicatorDescriptor] --
CREATE TABLE [gadoe].[DataTypeIndicatorDescriptor] (
    [DataTypeIndicatorDescriptorId] [INT] NOT NULL,
    CONSTRAINT [DataTypeIndicatorDescriptor_PK] PRIMARY KEY CLUSTERED (
        [DataTypeIndicatorDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [gadoe].[DisciplineActionAuxiliaryDescriptor] --
CREATE TABLE [gadoe].[DisciplineActionAuxiliaryDescriptor] (
    [DisciplineActionAuxiliaryDescriptorId] [INT] NOT NULL,
    CONSTRAINT [DisciplineActionAuxiliaryDescriptor_PK] PRIMARY KEY CLUSTERED (
        [DisciplineActionAuxiliaryDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [gadoe].[DisciplineActionExtension] --
CREATE TABLE [gadoe].[DisciplineActionExtension] (
    [DisciplineActionIdentifier] [NVARCHAR](32) NOT NULL,
    [DisciplineDate] [DATE] NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [DisciplineProcessTypeDescriptorId] [INT] NULL,
    [IncidentSeverityLevelDescriptorId] [INT] NULL,
    [DisciplineActionAuxiliaryDescriptorId] [INT] NULL,
    [DataTypeIndicatorDescriptorId] [INT] NULL,
    [AlternateSchoolId] [INT] NULL,
    [DisciplineStaffUniqueId] [NVARCHAR](32) NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [DisciplineActionExtension_PK] PRIMARY KEY CLUSTERED (
        [DisciplineActionIdentifier] ASC,
        [DisciplineDate] ASC,
        [StudentUSI] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [gadoe].[DisciplineActionExtension] ADD CONSTRAINT [DisciplineActionExtension_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [gadoe].[DisciplineIncidentExtension] --
CREATE TABLE [gadoe].[DisciplineIncidentExtension] (
    [IncidentIdentifier] [NVARCHAR](20) NOT NULL,
    [SchoolId] [INT] NOT NULL,
    [IncidentTimingDescriptorId] [INT] NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [DisciplineIncidentExtension_PK] PRIMARY KEY CLUSTERED (
        [IncidentIdentifier] ASC,
        [SchoolId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [gadoe].[DisciplineIncidentExtension] ADD CONSTRAINT [DisciplineIncidentExtension_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [gadoe].[DisciplineProcessTypeDescriptor] --
CREATE TABLE [gadoe].[DisciplineProcessTypeDescriptor] (
    [DisciplineProcessTypeDescriptorId] [INT] NOT NULL,
    CONSTRAINT [DisciplineProcessTypeDescriptor_PK] PRIMARY KEY CLUSTERED (
        [DisciplineProcessTypeDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [gadoe].[EipDeliveryModelDescriptor] --
CREATE TABLE [gadoe].[EipDeliveryModelDescriptor] (
    [EipDeliveryModelDescriptorId] [INT] NOT NULL,
    CONSTRAINT [EipDeliveryModelDescriptor_PK] PRIMARY KEY CLUSTERED (
        [EipDeliveryModelDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [gadoe].[EmployeeTypeDescriptor] --
CREATE TABLE [gadoe].[EmployeeTypeDescriptor] (
    [EmployeeTypeDescriptorId] [INT] NOT NULL,
    CONSTRAINT [EmployeeTypeDescriptor_PK] PRIMARY KEY CLUSTERED (
        [EmployeeTypeDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [gadoe].[EnrollmentLocationDescriptor] --
CREATE TABLE [gadoe].[EnrollmentLocationDescriptor] (
    [EnrollmentLocationDescriptorId] [INT] NOT NULL,
    CONSTRAINT [EnrollmentLocationDescriptor_PK] PRIMARY KEY CLUSTERED (
        [EnrollmentLocationDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [gadoe].[EsolDeliveryModelDescriptor] --
CREATE TABLE [gadoe].[EsolDeliveryModelDescriptor] (
    [EsolDeliveryModelDescriptorId] [INT] NOT NULL,
    CONSTRAINT [EsolDeliveryModelDescriptor_PK] PRIMARY KEY CLUSTERED (
        [EsolDeliveryModelDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [gadoe].[FteProgramCodeDescriptor] --
CREATE TABLE [gadoe].[FteProgramCodeDescriptor] (
    [FteProgramCodeDescriptorId] [INT] NOT NULL,
    CONSTRAINT [FteProgramCodeDescriptor_PK] PRIMARY KEY CLUSTERED (
        [FteProgramCodeDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [gadoe].[GiftedDeliveryModelDescriptor] --
CREATE TABLE [gadoe].[GiftedDeliveryModelDescriptor] (
    [GiftedDeliveryModelDescriptorId] [INT] NOT NULL,
    CONSTRAINT [GiftedDeliveryModelDescriptor_PK] PRIMARY KEY CLUSTERED (
        [GiftedDeliveryModelDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [gadoe].[GiftedServedDescriptor] --
CREATE TABLE [gadoe].[GiftedServedDescriptor] (
    [GiftedServedDescriptorId] [INT] NOT NULL,
    CONSTRAINT [GiftedServedDescriptor_PK] PRIMARY KEY CLUSTERED (
        [GiftedServedDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [gadoe].[IepInclusionTypeDescriptor] --
CREATE TABLE [gadoe].[IepInclusionTypeDescriptor] (
    [IepInclusionTypeDescriptorId] [INT] NOT NULL,
    CONSTRAINT [IepInclusionTypeDescriptor_PK] PRIMARY KEY CLUSTERED (
        [IepInclusionTypeDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [gadoe].[IncidentSeverityLevelDescriptor] --
CREATE TABLE [gadoe].[IncidentSeverityLevelDescriptor] (
    [IncidentSeverityLevelDescriptorId] [INT] NOT NULL,
    CONSTRAINT [IncidentSeverityLevelDescriptor_PK] PRIMARY KEY CLUSTERED (
        [IncidentSeverityLevelDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [gadoe].[IncidentTimingDescriptor] --
CREATE TABLE [gadoe].[IncidentTimingDescriptor] (
    [IncidentTimingDescriptorId] [INT] NOT NULL,
    CONSTRAINT [IncidentTimingDescriptor_PK] PRIMARY KEY CLUSTERED (
        [IncidentTimingDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [gadoe].[InclusionPersonnelDescriptor] --
CREATE TABLE [gadoe].[InclusionPersonnelDescriptor] (
    [InclusionPersonnelDescriptorId] [INT] NOT NULL,
    CONSTRAINT [InclusionPersonnelDescriptor_PK] PRIMARY KEY CLUSTERED (
        [InclusionPersonnelDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [gadoe].[LocalEducationAgencyStatistic] --
CREATE TABLE [gadoe].[LocalEducationAgencyStatistic] (
    [EducationOrganizationId] [INT] NOT NULL,
    [Tkes90PercentAllTeachersIncluded] [BIT] NULL,
    [Discriminator] [NVARCHAR](128) NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    [LastModifiedDate] [DATETIME2] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL,
    CONSTRAINT [LocalEducationAgencyStatistic_PK] PRIMARY KEY CLUSTERED (
        [EducationOrganizationId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [gadoe].[LocalEducationAgencyStatistic] ADD CONSTRAINT [LocalEducationAgencyStatistic_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [gadoe].[LocalEducationAgencyStatistic] ADD CONSTRAINT [LocalEducationAgencyStatistic_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [gadoe].[LocalEducationAgencyStatistic] ADD CONSTRAINT [LocalEducationAgencyStatistic_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO

-- Table [gadoe].[LocalEducationAgencyStatisticPrivateOrHomeSchooledStudentCount] --
CREATE TABLE [gadoe].[LocalEducationAgencyStatisticPrivateOrHomeSchooledStudentCount] (
    [EducationOrganizationId] [INT] NOT NULL,
    [PrivateOrHomeSchooledStudentDescriptorId] [INT] NOT NULL,
    [CollectedCount] [INT] NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [LocalEducationAgencyStatisticPrivateOrHomeSchooledStudentCount_PK] PRIMARY KEY CLUSTERED (
        [EducationOrganizationId] ASC,
        [PrivateOrHomeSchooledStudentDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [gadoe].[LocalEducationAgencyStatisticPrivateOrHomeSchooledStudentCount] ADD CONSTRAINT [LocalEducationAgencyStatisticPrivateOrHomeSchooledStudentCount_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [gadoe].[LocalEducationAgencyStatisticPsychologicalServicesEvaluationCount] --
CREATE TABLE [gadoe].[LocalEducationAgencyStatisticPsychologicalServicesEvaluationCount] (
    [EducationOrganizationId] [INT] NOT NULL,
    [PsychologicalServicesEvaluationDescriptorId] [INT] NOT NULL,
    [CollectedCount] [INT] NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [LocalEducationAgencyStatisticPsychologicalServicesEvaluationCount_PK] PRIMARY KEY CLUSTERED (
        [EducationOrganizationId] ASC,
        [PsychologicalServicesEvaluationDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [gadoe].[LocalEducationAgencyStatisticPsychologicalServicesEvaluationCount] ADD CONSTRAINT [LocalEducationAgencyStatisticPsychologicalServicesEvaluationCount_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [gadoe].[NonESOLStatusDescriptor] --
CREATE TABLE [gadoe].[NonESOLStatusDescriptor] (
    [NonESOLStatusDescriptorId] [INT] NOT NULL,
    CONSTRAINT [NonESOLStatusDescriptor_PK] PRIMARY KEY CLUSTERED (
        [NonESOLStatusDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [gadoe].[NutritionSchoolDescriptor] --
CREATE TABLE [gadoe].[NutritionSchoolDescriptor] (
    [NutritionSchoolDescriptorId] [INT] NOT NULL,
    CONSTRAINT [NutritionSchoolDescriptor_PK] PRIMARY KEY CLUSTERED (
        [NutritionSchoolDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [gadoe].[PrimaryStaffClassificationDescriptor] --
CREATE TABLE [gadoe].[PrimaryStaffClassificationDescriptor] (
    [PrimaryStaffClassificationDescriptorId] [INT] NOT NULL,
    CONSTRAINT [PrimaryStaffClassificationDescriptor_PK] PRIMARY KEY CLUSTERED (
        [PrimaryStaffClassificationDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [gadoe].[PrivateOrHomeSchooledStudentDescriptor] --
CREATE TABLE [gadoe].[PrivateOrHomeSchooledStudentDescriptor] (
    [PrivateOrHomeSchooledStudentDescriptorId] [INT] NOT NULL,
    CONSTRAINT [PrivateOrHomeSchooledStudentDescriptor_PK] PRIMARY KEY CLUSTERED (
        [PrivateOrHomeSchooledStudentDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [gadoe].[ProgramReferredByDescriptor] --
CREATE TABLE [gadoe].[ProgramReferredByDescriptor] (
    [ProgramReferredByDescriptorId] [INT] NOT NULL,
    CONSTRAINT [ProgramReferredByDescriptor_PK] PRIMARY KEY CLUSTERED (
        [ProgramReferredByDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [gadoe].[PsychologicalServicesEvaluationDescriptor] --
CREATE TABLE [gadoe].[PsychologicalServicesEvaluationDescriptor] (
    [PsychologicalServicesEvaluationDescriptorId] [INT] NOT NULL,
    CONSTRAINT [PsychologicalServicesEvaluationDescriptor_PK] PRIMARY KEY CLUSTERED (
        [PsychologicalServicesEvaluationDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [gadoe].[SalaryPayStepDescriptor] --
CREATE TABLE [gadoe].[SalaryPayStepDescriptor] (
    [SalaryPayStepDescriptorId] [INT] NOT NULL,
    CONSTRAINT [SalaryPayStepDescriptor_PK] PRIMARY KEY CLUSTERED (
        [SalaryPayStepDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [gadoe].[SchoolStatistic] --
CREATE TABLE [gadoe].[SchoolStatistic] (
    [SchoolId] [INT] NOT NULL,
    [StemSteamSchoolDescriptorId] [INT] NULL,
    [NutritionSchoolDescriptorId] [INT] NULL,
    [TitleIPartASchoolDesignationDescriptorId] [INT] NULL,
    [DualEnrollmentAwarenessGrade8] [BIT] NULL,
    [DualEnrollmentAwarenessGrade9] [BIT] NULL,
    [DualEnrollmentAwarenessGrade10] [BIT] NULL,
    [DualEnrollmentAwarenessGrade11] [BIT] NULL,
    [CprTrainingProvided] [BIT] NULL,
    [OnlineSchool] [BIT] NULL,
    [SocialWorkStudentCount] [INT] NULL,
    [Discriminator] [NVARCHAR](128) NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    [LastModifiedDate] [DATETIME2] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL,
    CONSTRAINT [SchoolStatistic_PK] PRIMARY KEY CLUSTERED (
        [SchoolId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [gadoe].[SchoolStatistic] ADD CONSTRAINT [SchoolStatistic_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [gadoe].[SchoolStatistic] ADD CONSTRAINT [SchoolStatistic_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [gadoe].[SchoolStatistic] ADD CONSTRAINT [SchoolStatistic_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO

-- Table [gadoe].[SchoolStatisticBehaviorIncidentCount] --
CREATE TABLE [gadoe].[SchoolStatisticBehaviorIncidentCount] (
    [BehaviorIncidentDescriptorId] [INT] NOT NULL,
    [SchoolId] [INT] NOT NULL,
    [CollectedCount] [INT] NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [SchoolStatisticBehaviorIncidentCount_PK] PRIMARY KEY CLUSTERED (
        [BehaviorIncidentDescriptorId] ASC,
        [SchoolId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [gadoe].[SchoolStatisticBehaviorIncidentCount] ADD CONSTRAINT [SchoolStatisticBehaviorIncidentCount_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [gadoe].[SchoolStatisticSocialWorkCaseCount] --
CREATE TABLE [gadoe].[SchoolStatisticSocialWorkCaseCount] (
    [SchoolId] [INT] NOT NULL,
    [SocialWorkCaseDescriptorId] [INT] NOT NULL,
    [CollectedCount] [INT] NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [SchoolStatisticSocialWorkCaseCount_PK] PRIMARY KEY CLUSTERED (
        [SchoolId] ASC,
        [SocialWorkCaseDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [gadoe].[SchoolStatisticSocialWorkCaseCount] ADD CONSTRAINT [SchoolStatisticSocialWorkCaseCount_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [gadoe].[SchoolStatisticSocialWorkReferralCount] --
CREATE TABLE [gadoe].[SchoolStatisticSocialWorkReferralCount] (
    [SchoolId] [INT] NOT NULL,
    [SocialWorkReferralDescriptorId] [INT] NOT NULL,
    [CollectedCount] [INT] NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [SchoolStatisticSocialWorkReferralCount_PK] PRIMARY KEY CLUSTERED (
        [SchoolId] ASC,
        [SocialWorkReferralDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [gadoe].[SchoolStatisticSocialWorkReferralCount] ADD CONSTRAINT [SchoolStatisticSocialWorkReferralCount_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [gadoe].[SchoolStatisticSocialWorkServiceInterventionCount] --
CREATE TABLE [gadoe].[SchoolStatisticSocialWorkServiceInterventionCount] (
    [SchoolId] [INT] NOT NULL,
    [SocialWorkServiceInterventionDescriptorId] [INT] NOT NULL,
    [CollectedCount] [INT] NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [SchoolStatisticSocialWorkServiceInterventionCount_PK] PRIMARY KEY CLUSTERED (
        [SchoolId] ASC,
        [SocialWorkServiceInterventionDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [gadoe].[SchoolStatisticSocialWorkServiceInterventionCount] ADD CONSTRAINT [SchoolStatisticSocialWorkServiceInterventionCount_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [gadoe].[Section504PlanDescriptor] --
CREATE TABLE [gadoe].[Section504PlanDescriptor] (
    [Section504PlanDescriptorId] [INT] NOT NULL,
    CONSTRAINT [Section504PlanDescriptor_PK] PRIMARY KEY CLUSTERED (
        [Section504PlanDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [gadoe].[SectionExtension] --
CREATE TABLE [gadoe].[SectionExtension] (
    [LocalCourseCode] [NVARCHAR](60) NOT NULL,
    [SchoolId] [INT] NOT NULL,
    [SchoolYear] [SMALLINT] NOT NULL,
    [SectionIdentifier] [NVARCHAR](255) NOT NULL,
    [SessionName] [NVARCHAR](60) NOT NULL,
    [AlternateEducationOrganizationId] [INT] NULL,
    [ClassPeriodNumber] [NVARCHAR](2) NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [SectionExtension_PK] PRIMARY KEY CLUSTERED (
        [LocalCourseCode] ASC,
        [SchoolId] ASC,
        [SchoolYear] ASC,
        [SectionIdentifier] ASC,
        [SessionName] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [gadoe].[SectionExtension] ADD CONSTRAINT [SectionExtension_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [gadoe].[SocialWorkCaseDescriptor] --
CREATE TABLE [gadoe].[SocialWorkCaseDescriptor] (
    [SocialWorkCaseDescriptorId] [INT] NOT NULL,
    CONSTRAINT [SocialWorkCaseDescriptor_PK] PRIMARY KEY CLUSTERED (
        [SocialWorkCaseDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [gadoe].[SocialWorkReferralDescriptor] --
CREATE TABLE [gadoe].[SocialWorkReferralDescriptor] (
    [SocialWorkReferralDescriptorId] [INT] NOT NULL,
    CONSTRAINT [SocialWorkReferralDescriptor_PK] PRIMARY KEY CLUSTERED (
        [SocialWorkReferralDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [gadoe].[SocialWorkServiceInterventionDescriptor] --
CREATE TABLE [gadoe].[SocialWorkServiceInterventionDescriptor] (
    [SocialWorkServiceInterventionDescriptorId] [INT] NOT NULL,
    CONSTRAINT [SocialWorkServiceInterventionDescriptor_PK] PRIMARY KEY CLUSTERED (
        [SocialWorkServiceInterventionDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [gadoe].[SpecialEducationDeliveryModelDescriptor] --
CREATE TABLE [gadoe].[SpecialEducationDeliveryModelDescriptor] (
    [SpecialEducationDeliveryModelDescriptorId] [INT] NOT NULL,
    CONSTRAINT [SpecialEducationDeliveryModelDescriptor_PK] PRIMARY KEY CLUSTERED (
        [SpecialEducationDeliveryModelDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [gadoe].[SpecialEducationEventReasonDescriptor] --
CREATE TABLE [gadoe].[SpecialEducationEventReasonDescriptor] (
    [SpecialEducationEventReasonDescriptorId] [INT] NOT NULL,
    CONSTRAINT [SpecialEducationEventReasonDescriptor_PK] PRIMARY KEY CLUSTERED (
        [SpecialEducationEventReasonDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [gadoe].[SpecialEducationEventTypeDescriptor] --
CREATE TABLE [gadoe].[SpecialEducationEventTypeDescriptor] (
    [SpecialEducationEventTypeDescriptorId] [INT] NOT NULL,
    CONSTRAINT [SpecialEducationEventTypeDescriptor_PK] PRIMARY KEY CLUSTERED (
        [SpecialEducationEventTypeDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [gadoe].[SpecialEducationNonComplianceDescriptor] --
CREATE TABLE [gadoe].[SpecialEducationNonComplianceDescriptor] (
    [SpecialEducationNonComplianceDescriptorId] [INT] NOT NULL,
    CONSTRAINT [SpecialEducationNonComplianceDescriptor_PK] PRIMARY KEY CLUSTERED (
        [SpecialEducationNonComplianceDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [gadoe].[StaffAssignmentCertificateTypeDescriptor] --
CREATE TABLE [gadoe].[StaffAssignmentCertificateTypeDescriptor] (
    [StaffAssignmentCertificateTypeDescriptorId] [INT] NOT NULL,
    CONSTRAINT [StaffAssignmentCertificateTypeDescriptor_PK] PRIMARY KEY CLUSTERED (
        [StaffAssignmentCertificateTypeDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [gadoe].[StaffAssignmentFieldCodeDescriptor] --
CREATE TABLE [gadoe].[StaffAssignmentFieldCodeDescriptor] (
    [StaffAssignmentFieldCodeDescriptorId] [INT] NOT NULL,
    CONSTRAINT [StaffAssignmentFieldCodeDescriptor_PK] PRIMARY KEY CLUSTERED (
        [StaffAssignmentFieldCodeDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [gadoe].[StaffAssignmentFundCodeDescriptor] --
CREATE TABLE [gadoe].[StaffAssignmentFundCodeDescriptor] (
    [StaffAssignmentFundCodeDescriptorId] [INT] NOT NULL,
    CONSTRAINT [StaffAssignmentFundCodeDescriptor_PK] PRIMARY KEY CLUSTERED (
        [StaffAssignmentFundCodeDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [gadoe].[StaffAssignmentSubjectMatterCodeDescriptor] --
CREATE TABLE [gadoe].[StaffAssignmentSubjectMatterCodeDescriptor] (
    [StaffAssignmentSubjectMatterCodeDescriptorId] [INT] NOT NULL,
    CONSTRAINT [StaffAssignmentSubjectMatterCodeDescriptor_PK] PRIMARY KEY CLUSTERED (
        [StaffAssignmentSubjectMatterCodeDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [gadoe].[StaffEducationOrganizationAssignmentAssociationExtension] --
CREATE TABLE [gadoe].[StaffEducationOrganizationAssignmentAssociationExtension] (
    [BeginDate] [DATE] NOT NULL,
    [EducationOrganizationId] [INT] NOT NULL,
    [StaffClassificationDescriptorId] [INT] NOT NULL,
    [StaffUSI] [INT] NOT NULL,
    [AssignmentConsolidatedFunded] [BIT] NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [StaffEducationOrganizationAssignmentAssociationExtension_PK] PRIMARY KEY CLUSTERED (
        [BeginDate] ASC,
        [EducationOrganizationId] ASC,
        [StaffClassificationDescriptorId] ASC,
        [StaffUSI] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [gadoe].[StaffEducationOrganizationAssignmentAssociationExtension] ADD CONSTRAINT [StaffEducationOrganizationAssignmentAssociationExtension_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [gadoe].[StaffEducationOrganizationAssignmentAssociationStaffAssignmentDetail] --
CREATE TABLE [gadoe].[StaffEducationOrganizationAssignmentAssociationStaffAssignmentDetail] (
    [AssignmentCodeEntryNumber] [INT] NOT NULL,
    [BeginDate] [DATE] NOT NULL,
    [EducationOrganizationId] [INT] NOT NULL,
    [StaffClassificationDescriptorId] [INT] NOT NULL,
    [StaffUSI] [INT] NOT NULL,
    [AssignmentPercentOfTime] [DECIMAL](3, 2) NULL,
    [StaffAssignmentCertificateTypeDescriptorId] [INT] NULL,
    [StaffAssignmentFieldCodeDescriptorId] [INT] NULL,
    [StaffAssignmentFundCodeDescriptorId] [INT] NULL,
    [StaffAssignmentSubjectMatterCodeDescriptorId] [INT] NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [StaffEducationOrganizationAssignmentAssociationStaffAssignmentDetail_PK] PRIMARY KEY CLUSTERED (
        [AssignmentCodeEntryNumber] ASC,
        [BeginDate] ASC,
        [EducationOrganizationId] ASC,
        [StaffClassificationDescriptorId] ASC,
        [StaffUSI] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [gadoe].[StaffEducationOrganizationAssignmentAssociationStaffAssignmentDetail] ADD CONSTRAINT [StaffEducationOrganizationAssignmentAssociationStaffAssignmentDetail_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [gadoe].[StaffEducationOrganizationEmploymentAssociationExtension] --
CREATE TABLE [gadoe].[StaffEducationOrganizationEmploymentAssociationExtension] (
    [EducationOrganizationId] [INT] NOT NULL,
    [EmploymentStatusDescriptorId] [INT] NOT NULL,
    [HireDate] [DATE] NOT NULL,
    [StaffUSI] [INT] NOT NULL,
    [AnnualSalary] [DECIMAL](9, 2) NULL,
    [AnnualContractWorkDays] [INT] NULL,
    [EmploymentBasis] [DECIMAL](4, 3) NULL,
    [SalaryPayStepDescriptorId] [INT] NULL,
    [PrimaryStaffClassificationDescriptorId] [INT] NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [StaffEducationOrganizationEmploymentAssociationExtension_PK] PRIMARY KEY CLUSTERED (
        [EducationOrganizationId] ASC,
        [EmploymentStatusDescriptorId] ASC,
        [HireDate] ASC,
        [StaffUSI] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [gadoe].[StaffEducationOrganizationEmploymentAssociationExtension] ADD CONSTRAINT [StaffEducationOrganizationEmploymentAssociationExtension_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [gadoe].[StaffEducationOrganizationEmploymentAssociationStaffEmploymentCharacteristic] --
CREATE TABLE [gadoe].[StaffEducationOrganizationEmploymentAssociationStaffEmploymentCharacteristic] (
    [EducationOrganizationId] [INT] NOT NULL,
    [EmploymentStatusDescriptorId] [INT] NOT NULL,
    [HireDate] [DATE] NOT NULL,
    [StaffEmploymentCharacteristicDescriptorId] [INT] NOT NULL,
    [StaffUSI] [INT] NOT NULL,
    [DesignatedBy] [NVARCHAR](60) NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [StaffEducationOrganizationEmploymentAssociationStaffEmploymentCharacteristic_PK] PRIMARY KEY CLUSTERED (
        [EducationOrganizationId] ASC,
        [EmploymentStatusDescriptorId] ASC,
        [HireDate] ASC,
        [StaffEmploymentCharacteristicDescriptorId] ASC,
        [StaffUSI] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [gadoe].[StaffEducationOrganizationEmploymentAssociationStaffEmploymentCharacteristic] ADD CONSTRAINT [StaffEducationOrganizationEmploymentAssociationStaffEmploymentCharacteristic_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [gadoe].[StaffEducationOrganizationEmploymentAssociationStaffEmploymentIndicator] --
CREATE TABLE [gadoe].[StaffEducationOrganizationEmploymentAssociationStaffEmploymentIndicator] (
    [EducationOrganizationId] [INT] NOT NULL,
    [EmploymentStatusDescriptorId] [INT] NOT NULL,
    [HireDate] [DATE] NOT NULL,
    [Indicator] [NVARCHAR](60) NOT NULL,
    [IndicatorName] [NVARCHAR](200) NOT NULL,
    [StaffUSI] [INT] NOT NULL,
    [IndicatorGroup] [NVARCHAR](200) NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [StaffEducationOrganizationEmploymentAssociationStaffEmploymentIndicator_PK] PRIMARY KEY CLUSTERED (
        [EducationOrganizationId] ASC,
        [EmploymentStatusDescriptorId] ASC,
        [HireDate] ASC,
        [Indicator] ASC,
        [IndicatorName] ASC,
        [StaffUSI] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [gadoe].[StaffEducationOrganizationEmploymentAssociationStaffEmploymentIndicator] ADD CONSTRAINT [StaffEducationOrganizationEmploymentAssociationStaffEmploymentIndicator_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [gadoe].[StaffEmploymentCharacteristicDescriptor] --
CREATE TABLE [gadoe].[StaffEmploymentCharacteristicDescriptor] (
    [StaffEmploymentCharacteristicDescriptorId] [INT] NOT NULL,
    CONSTRAINT [StaffEmploymentCharacteristicDescriptor_PK] PRIMARY KEY CLUSTERED (
        [StaffEmploymentCharacteristicDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [gadoe].[StaffExtension] --
CREATE TABLE [gadoe].[StaffExtension] (
    [StaffUSI] [INT] NOT NULL,
    [EmployeeTypeDescriptorId] [INT] NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [StaffExtension_PK] PRIMARY KEY CLUSTERED (
        [StaffUSI] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [gadoe].[StaffExtension] ADD CONSTRAINT [StaffExtension_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [gadoe].[StaffSectionAssociationExtension] --
CREATE TABLE [gadoe].[StaffSectionAssociationExtension] (
    [LocalCourseCode] [NVARCHAR](60) NOT NULL,
    [SchoolId] [INT] NOT NULL,
    [SchoolYear] [SMALLINT] NOT NULL,
    [SectionIdentifier] [NVARCHAR](255) NOT NULL,
    [SessionName] [NVARCHAR](60) NOT NULL,
    [StaffUSI] [INT] NOT NULL,
    [ChwCertFieldCodeDescriptorId] [INT] NULL,
    [Attendance90Percent] [BIT] NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [StaffSectionAssociationExtension_PK] PRIMARY KEY CLUSTERED (
        [LocalCourseCode] ASC,
        [SchoolId] ASC,
        [SchoolYear] ASC,
        [SectionIdentifier] ASC,
        [SessionName] ASC,
        [StaffUSI] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [gadoe].[StaffSectionAssociationExtension] ADD CONSTRAINT [StaffSectionAssociationExtension_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [gadoe].[StaffServiceTypeDescriptor] --
CREATE TABLE [gadoe].[StaffServiceTypeDescriptor] (
    [StaffServiceTypeDescriptorId] [INT] NOT NULL,
    CONSTRAINT [StaffServiceTypeDescriptor_PK] PRIMARY KEY CLUSTERED (
        [StaffServiceTypeDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [gadoe].[StemSteamSchoolDescriptor] --
CREATE TABLE [gadoe].[StemSteamSchoolDescriptor] (
    [StemSteamSchoolDescriptorId] [INT] NOT NULL,
    CONSTRAINT [StemSteamSchoolDescriptor_PK] PRIMARY KEY CLUSTERED (
        [StemSteamSchoolDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [gadoe].[StudentEducationOrganizationAssociationExtension] --
CREATE TABLE [gadoe].[StudentEducationOrganizationAssociationExtension] (
    [EducationOrganizationId] [INT] NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [Biliteracy1LanguageDescriptorId] [INT] NULL,
    [Biliteracy2LanguageDescriptorId] [INT] NULL,
    [Biliteracy3LanguageDescriptorId] [INT] NULL,
    [NonESOLStatusDescriptorId] [INT] NULL,
    [ParentCommunicationLanguageDescriptorId] [INT] NULL,
    [DateStudentEligibleForACS] [DATE] NULL,
    [DateStudentNoLongerACS] [DATE] NULL,
    [CountyOfResidenceDescriptorId] [INT] NULL,
    [SystemOfResidencyDescriptorId] [INT] NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [StudentEducationOrganizationAssociationExtension_PK] PRIMARY KEY CLUSTERED (
        [EducationOrganizationId] ASC,
        [StudentUSI] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [gadoe].[StudentEducationOrganizationAssociationExtension] ADD CONSTRAINT [StudentEducationOrganizationAssociationExtension_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [gadoe].[StudentLanguageInstructionProgramAssociationExtension] --
CREATE TABLE [gadoe].[StudentLanguageInstructionProgramAssociationExtension] (
    [BeginDate] [DATE] NOT NULL,
    [EducationOrganizationId] [INT] NOT NULL,
    [ProgramEducationOrganizationId] [INT] NOT NULL,
    [ProgramName] [NVARCHAR](60) NOT NULL,
    [ProgramTypeDescriptorId] [INT] NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [DateofELPScreener] [DATE] NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [StudentLanguageInstructionProgramAssociationExtension_PK] PRIMARY KEY CLUSTERED (
        [BeginDate] ASC,
        [EducationOrganizationId] ASC,
        [ProgramEducationOrganizationId] ASC,
        [ProgramName] ASC,
        [ProgramTypeDescriptorId] ASC,
        [StudentUSI] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [gadoe].[StudentLanguageInstructionProgramAssociationExtension] ADD CONSTRAINT [StudentLanguageInstructionProgramAssociationExtension_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [gadoe].[StudentProgramAssociationExtension] --
CREATE TABLE [gadoe].[StudentProgramAssociationExtension] (
    [BeginDate] [DATE] NOT NULL,
    [EducationOrganizationId] [INT] NOT NULL,
    [ProgramEducationOrganizationId] [INT] NOT NULL,
    [ProgramName] [NVARCHAR](60) NOT NULL,
    [ProgramTypeDescriptorId] [INT] NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [ProgramReferredByDescriptorId] [INT] NULL,
    [AlternateEducationOrganizationId] [INT] NULL,
    [NumberofDailyGNETSSegments] [INT] NULL,
    [GiftedEligibilityDate] [DATE] NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [StudentProgramAssociationExtension_PK] PRIMARY KEY CLUSTERED (
        [BeginDate] ASC,
        [EducationOrganizationId] ASC,
        [ProgramEducationOrganizationId] ASC,
        [ProgramName] ASC,
        [ProgramTypeDescriptorId] ASC,
        [StudentUSI] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [gadoe].[StudentProgramAssociationExtension] ADD CONSTRAINT [StudentProgramAssociationExtension_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [gadoe].[StudentSchoolAssociationExtension] --
CREATE TABLE [gadoe].[StudentSchoolAssociationExtension] (
    [EntryDate] [DATE] NOT NULL,
    [SchoolId] [INT] NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [DateEntered9thGrade] [DATE] NULL,
    [PriorTenDays] [BIT] NULL,
    [SummerImmigrantProgramParticipation] [BIT] NULL,
    [SummerTitleIIIServed] [BIT] NULL,
    [ASVABScore] [INT] NULL,
    [EsolSegments] [INT] NULL,
    [NoShowStudent] [BIT] NULL,
    [ChildFindStatusDescriptorId] [INT] NULL,
    [GiftedServedDescriptorId] [INT] NULL,
    [StudentSupportTeamParticipant] [BIT] NULL,
    [DualImmersion] [BIT] NULL,
    [ImmigrantProgramParticipant] [BIT] NULL,
    [SBDualEnrollment] [BIT] NULL,
    [TitleITargetedAssistanceParticipation] [BIT] NULL,
    [CCANonTraditional] [BIT] NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [StudentSchoolAssociationExtension_PK] PRIMARY KEY CLUSTERED (
        [EntryDate] ASC,
        [SchoolId] ASC,
        [StudentUSI] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [gadoe].[StudentSchoolAssociationExtension] ADD CONSTRAINT [StudentSchoolAssociationExtension_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [gadoe].[StudentSchoolAssociationFteSegments] --
CREATE TABLE [gadoe].[StudentSchoolAssociationFteSegments] (
    [EntryDate] [DATE] NOT NULL,
    [FteProgramCodeDescriptorId] [INT] NOT NULL,
    [InclusionPersonnelDescriptorId] [INT] NOT NULL,
    [SchoolId] [INT] NOT NULL,
    [SegmentNumber] [INT] NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [ItinerantTeacherSpecialEducationServices] [BIT] NULL,
    [ReceivedSupplementalSpeechServices] [BIT] NULL,
    [TransportedForSection] [BIT] NULL,
    [EnrollmentLocationDescriptorId] [INT] NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [StudentSchoolAssociationFteSegments_PK] PRIMARY KEY CLUSTERED (
        [EntryDate] ASC,
        [FteProgramCodeDescriptorId] ASC,
        [InclusionPersonnelDescriptorId] ASC,
        [SchoolId] ASC,
        [SegmentNumber] ASC,
        [StudentUSI] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [gadoe].[StudentSchoolAssociationFteSegments] ADD CONSTRAINT [StudentSchoolAssociationFteSegments_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [gadoe].[StudentSection504ProgramAssociation] --
CREATE TABLE [gadoe].[StudentSection504ProgramAssociation] (
    [BeginDate] [DATE] NOT NULL,
    [EducationOrganizationId] [INT] NOT NULL,
    [ProgramEducationOrganizationId] [INT] NOT NULL,
    [ProgramName] [NVARCHAR](60) NOT NULL,
    [ProgramTypeDescriptorId] [INT] NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [AccommodationPlan] [BIT] NULL,
    [InitialDNQDate] [DATE] NULL,
    [LastEvaluationDate] [DATE] NULL,
    [MeetingDate] [DATE] NULL,
    CONSTRAINT [StudentSection504ProgramAssociation_PK] PRIMARY KEY CLUSTERED (
        [BeginDate] ASC,
        [EducationOrganizationId] ASC,
        [ProgramEducationOrganizationId] ASC,
        [ProgramName] ASC,
        [ProgramTypeDescriptorId] ASC,
        [StudentUSI] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [gadoe].[StudentSection504ProgramAssociationSection504Plan] --
CREATE TABLE [gadoe].[StudentSection504ProgramAssociationSection504Plan] (
    [BeginDate] [DATE] NOT NULL,
    [EducationOrganizationId] [INT] NOT NULL,
    [ProgramEducationOrganizationId] [INT] NOT NULL,
    [ProgramName] [NVARCHAR](60) NOT NULL,
    [ProgramTypeDescriptorId] [INT] NOT NULL,
    [Section504PlanDescriptorId] [INT] NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [StudentSection504ProgramAssociationSection504Plan_PK] PRIMARY KEY CLUSTERED (
        [BeginDate] ASC,
        [EducationOrganizationId] ASC,
        [ProgramEducationOrganizationId] ASC,
        [ProgramName] ASC,
        [ProgramTypeDescriptorId] ASC,
        [Section504PlanDescriptorId] ASC,
        [StudentUSI] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [gadoe].[StudentSection504ProgramAssociationSection504Plan] ADD CONSTRAINT [StudentSection504ProgramAssociationSection504Plan_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [gadoe].[StudentSectionAssociationAdditionalTeacher] --
CREATE TABLE [gadoe].[StudentSectionAssociationAdditionalTeacher] (
    [BeginDate] [DATE] NOT NULL,
    [LocalCourseCode] [NVARCHAR](60) NOT NULL,
    [SchoolId] [INT] NOT NULL,
    [SchoolYear] [SMALLINT] NOT NULL,
    [SectionIdentifier] [NVARCHAR](255) NOT NULL,
    [SessionName] [NVARCHAR](60) NOT NULL,
    [StaffUSI] [INT] NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [StaffServiceTypeDescriptorId] [INT] NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [StudentSectionAssociationAdditionalTeacher_PK] PRIMARY KEY CLUSTERED (
        [BeginDate] ASC,
        [LocalCourseCode] ASC,
        [SchoolId] ASC,
        [SchoolYear] ASC,
        [SectionIdentifier] ASC,
        [SessionName] ASC,
        [StaffUSI] ASC,
        [StudentUSI] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [gadoe].[StudentSectionAssociationAdditionalTeacher] ADD CONSTRAINT [StudentSectionAssociationAdditionalTeacher_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [gadoe].[StudentSectionAssociationExtension] --
CREATE TABLE [gadoe].[StudentSectionAssociationExtension] (
    [BeginDate] [DATE] NOT NULL,
    [LocalCourseCode] [NVARCHAR](60) NOT NULL,
    [SchoolId] [INT] NOT NULL,
    [SchoolYear] [SMALLINT] NOT NULL,
    [SectionIdentifier] [NVARCHAR](255) NOT NULL,
    [SessionName] [NVARCHAR](60) NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [CreditRecovery] [BIT] NULL,
    [FteProgramCodeDescriptorId] [INT] NULL,
    [IepInclusionTypeDescriptorId] [INT] NULL,
    [InclusionPersonnelDescriptorId] [INT] NULL,
    [ItinerantTeacherSpecialEducationServices] [BIT] NULL,
    [ReceivedSupplementalSpeechServices] [BIT] NULL,
    [TransportedForSection] [BIT] NULL,
    [WorkBasedLearningProgramDescriptorId] [INT] NULL,
    [EipDeliveryModelDescriptorId] [INT] NULL,
    [EsolDeliveryModelDescriptorId] [INT] NULL,
    [GiftedDeliveryModelDescriptorId] [INT] NULL,
    [SpecialEducationDeliveryModelDescriptorId] [INT] NULL,
    [NumberParapros] [INT] NULL,
    [Attendance90Percent] [BIT] NULL,
    [EnrollmentLocationDescriptorId] [INT] NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [StudentSectionAssociationExtension_PK] PRIMARY KEY CLUSTERED (
        [BeginDate] ASC,
        [LocalCourseCode] ASC,
        [SchoolId] ASC,
        [SchoolYear] ASC,
        [SectionIdentifier] ASC,
        [SessionName] ASC,
        [StudentUSI] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [gadoe].[StudentSectionAssociationExtension] ADD CONSTRAINT [StudentSectionAssociationExtension_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [gadoe].[StudentSpecialEducationAssociationEvent] --
CREATE TABLE [gadoe].[StudentSpecialEducationAssociationEvent] (
    [EntryDate] [DATE] NOT NULL,
    [EventDate] [DATE] NOT NULL,
    [SchoolId] [INT] NOT NULL,
    [SpecialEducationEventTypeDescriptorId] [INT] NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [SpecialEducationEventReasonDescriptorId] [INT] NULL,
    [SpecialEducationNonComplianceDescriptorId] [INT] NULL,
    [ParentPresentAtConference] [BIT] NULL,
    [StudentPresentAtConference] [BIT] NULL,
    [Discriminator] [NVARCHAR](128) NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    [LastModifiedDate] [DATETIME2] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL,
    CONSTRAINT [StudentSpecialEducationAssociationEvent_PK] PRIMARY KEY CLUSTERED (
        [EntryDate] ASC,
        [EventDate] ASC,
        [SchoolId] ASC,
        [SpecialEducationEventTypeDescriptorId] ASC,
        [StudentUSI] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [gadoe].[StudentSpecialEducationAssociationEvent] ADD CONSTRAINT [StudentSpecialEducationAssociationEvent_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [gadoe].[StudentSpecialEducationAssociationEvent] ADD CONSTRAINT [StudentSpecialEducationAssociationEvent_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [gadoe].[StudentSpecialEducationAssociationEvent] ADD CONSTRAINT [StudentSpecialEducationAssociationEvent_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO

-- Table [gadoe].[SystemOfResidencyDescriptor] --
CREATE TABLE [gadoe].[SystemOfResidencyDescriptor] (
    [SystemOfResidencyDescriptorId] [INT] NOT NULL,
    CONSTRAINT [SystemOfResidencyDescriptor_PK] PRIMARY KEY CLUSTERED (
        [SystemOfResidencyDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [gadoe].[WorkBasedLearningProgramDescriptor] --
CREATE TABLE [gadoe].[WorkBasedLearningProgramDescriptor] (
    [WorkBasedLearningProgramDescriptorId] [INT] NOT NULL,
    CONSTRAINT [WorkBasedLearningProgramDescriptor_PK] PRIMARY KEY CLUSTERED (
        [WorkBasedLearningProgramDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

