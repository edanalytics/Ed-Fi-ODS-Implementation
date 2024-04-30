IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'tracked_changes_idoe')
EXEC sys.sp_executesql N'CREATE SCHEMA [tracked_changes_idoe]'
GO

IF NOT EXISTS (SELECT * FROM sys.tables WHERE object_id = OBJECT_ID(N'[tracked_changes_idoe].[AssessmentAccommodation]'))
CREATE TABLE [tracked_changes_idoe].[AssessmentAccommodation]
(
       OldAcademicSubjectDescriptorId [INT] NOT NULL,
       OldAcademicSubjectDescriptorNamespace [NVARCHAR](255) NOT NULL,
       OldAcademicSubjectDescriptorCodeValue [NVARCHAR](50) NOT NULL,
       OldAccommodationDescriptorId [INT] NOT NULL,
       OldAccommodationDescriptorNamespace [NVARCHAR](255) NOT NULL,
       OldAccommodationDescriptorCodeValue [NVARCHAR](50) NOT NULL,
       OldAssessmentIdentifier [NVARCHAR](60) NOT NULL,
       OldNamespace [NVARCHAR](255) NOT NULL,
       NewAcademicSubjectDescriptorId [INT] NULL,
       NewAcademicSubjectDescriptorNamespace [NVARCHAR](255) NULL,
       NewAcademicSubjectDescriptorCodeValue [NVARCHAR](50) NULL,
       NewAccommodationDescriptorId [INT] NULL,
       NewAccommodationDescriptorNamespace [NVARCHAR](255) NULL,
       NewAccommodationDescriptorCodeValue [NVARCHAR](50) NULL,
       NewAssessmentIdentifier [NVARCHAR](60) NULL,
       NewNamespace [NVARCHAR](255) NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       Discriminator [NVARCHAR](128) NULL,
       CreateDate DateTime2 NOT NULL DEFAULT (getutcdate()),
       CONSTRAINT PK_AssessmentAccommodation PRIMARY KEY CLUSTERED (ChangeVersion)
)
IF NOT EXISTS (SELECT * FROM sys.tables WHERE object_id = OBJECT_ID(N'[tracked_changes_idoe].[EducationOrganizationOtherPersonnel]'))
CREATE TABLE [tracked_changes_idoe].[EducationOrganizationOtherPersonnel]
(
       OldLocalEducationAgencyId [INT] NOT NULL,
       OldOtherPersonnelCategoryDescriptorId [INT] NOT NULL,
       OldOtherPersonnelCategoryDescriptorNamespace [NVARCHAR](255) NOT NULL,
       OldOtherPersonnelCategoryDescriptorCodeValue [NVARCHAR](50) NOT NULL,
       OldOtherPersonnelTitleDescriptorId [INT] NOT NULL,
       OldOtherPersonnelTitleDescriptorNamespace [NVARCHAR](255) NOT NULL,
       OldOtherPersonnelTitleDescriptorCodeValue [NVARCHAR](50) NOT NULL,
       NewLocalEducationAgencyId [INT] NULL,
       NewOtherPersonnelCategoryDescriptorId [INT] NULL,
       NewOtherPersonnelCategoryDescriptorNamespace [NVARCHAR](255) NULL,
       NewOtherPersonnelCategoryDescriptorCodeValue [NVARCHAR](50) NULL,
       NewOtherPersonnelTitleDescriptorId [INT] NULL,
       NewOtherPersonnelTitleDescriptorNamespace [NVARCHAR](255) NULL,
       NewOtherPersonnelTitleDescriptorCodeValue [NVARCHAR](50) NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       Discriminator [NVARCHAR](128) NULL,
       CreateDate DateTime2 NOT NULL DEFAULT (getutcdate()),
       CONSTRAINT PK_EducationOrganizationOtherPersonnel PRIMARY KEY CLUSTERED (ChangeVersion)
)
IF NOT EXISTS (SELECT * FROM sys.tables WHERE object_id = OBJECT_ID(N'[tracked_changes_idoe].[StudentEducationOrganizationAssessmentAccommodation]'))
CREATE TABLE [tracked_changes_idoe].[StudentEducationOrganizationAssessmentAccommodation]
(
       OldAcademicSubjectDescriptorId [INT] NOT NULL,
       OldAcademicSubjectDescriptorNamespace [NVARCHAR](255) NOT NULL,
       OldAcademicSubjectDescriptorCodeValue [NVARCHAR](50) NOT NULL,
       OldAccommodationDescriptorId [INT] NOT NULL,
       OldAccommodationDescriptorNamespace [NVARCHAR](255) NOT NULL,
       OldAccommodationDescriptorCodeValue [NVARCHAR](50) NOT NULL,
       OldAssessmentIdentifier [NVARCHAR](60) NOT NULL,
       OldEducationOrganizationId [INT] NOT NULL,
       OldNamespace [NVARCHAR](255) NOT NULL,
       OldStudentUSI [INT] NOT NULL,
       OldStudentUniqueId [NVARCHAR](32) NOT NULL,
       NewAcademicSubjectDescriptorId [INT] NULL,
       NewAcademicSubjectDescriptorNamespace [NVARCHAR](255) NULL,
       NewAcademicSubjectDescriptorCodeValue [NVARCHAR](50) NULL,
       NewAccommodationDescriptorId [INT] NULL,
       NewAccommodationDescriptorNamespace [NVARCHAR](255) NULL,
       NewAccommodationDescriptorCodeValue [NVARCHAR](50) NULL,
       NewAssessmentIdentifier [NVARCHAR](60) NULL,
       NewEducationOrganizationId [INT] NULL,
       NewNamespace [NVARCHAR](255) NULL,
       NewStudentUSI [INT] NULL,
       NewStudentUniqueId [NVARCHAR](32) NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       Discriminator [NVARCHAR](128) NULL,
       CreateDate DateTime2 NOT NULL DEFAULT (getutcdate()),
       CONSTRAINT PK_StudentEducationOrganizationAssessmentAccommodation PRIMARY KEY CLUSTERED (ChangeVersion)
)
