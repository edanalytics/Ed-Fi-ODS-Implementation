IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'tracked_changes_gadoe')
EXEC sys.sp_executesql N'CREATE SCHEMA [tracked_changes_gadoe]'
GO

IF NOT EXISTS (SELECT * FROM sys.tables WHERE object_id = OBJECT_ID(N'[tracked_changes_gadoe].[LocalEducationAgencyStatistic]'))
CREATE TABLE [tracked_changes_gadoe].[LocalEducationAgencyStatistic]
(
       OldEducationOrganizationId [INT] NOT NULL,
       NewEducationOrganizationId [INT] NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       Discriminator [NVARCHAR](128) NULL,
       CreateDate DateTime2 NOT NULL DEFAULT (getutcdate()),
       CONSTRAINT PK_LocalEducationAgencyStatistic PRIMARY KEY CLUSTERED (ChangeVersion)
)
IF NOT EXISTS (SELECT * FROM sys.tables WHERE object_id = OBJECT_ID(N'[tracked_changes_gadoe].[SchoolStatistic]'))
CREATE TABLE [tracked_changes_gadoe].[SchoolStatistic]
(
       OldSchoolId [INT] NOT NULL,
       NewSchoolId [INT] NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       Discriminator [NVARCHAR](128) NULL,
       CreateDate DateTime2 NOT NULL DEFAULT (getutcdate()),
       CONSTRAINT PK_SchoolStatistic PRIMARY KEY CLUSTERED (ChangeVersion)
)
IF NOT EXISTS (SELECT * FROM sys.tables WHERE object_id = OBJECT_ID(N'[tracked_changes_gadoe].[StudentSpecialEducationAssociationEvent]'))
CREATE TABLE [tracked_changes_gadoe].[StudentSpecialEducationAssociationEvent]
(
       OldEntryDate [DATE] NOT NULL,
       OldEventDate [DATE] NOT NULL,
       OldSchoolId [INT] NOT NULL,
       OldSpecialEducationEventTypeDescriptorId [INT] NOT NULL,
       OldSpecialEducationEventTypeDescriptorNamespace [NVARCHAR](255) NOT NULL,
       OldSpecialEducationEventTypeDescriptorCodeValue [NVARCHAR](50) NOT NULL,
       OldStudentUSI [INT] NOT NULL,
       OldStudentUniqueId [NVARCHAR](32) NOT NULL,
       NewEntryDate [DATE] NULL,
       NewEventDate [DATE] NULL,
       NewSchoolId [INT] NULL,
       NewSpecialEducationEventTypeDescriptorId [INT] NULL,
       NewSpecialEducationEventTypeDescriptorNamespace [NVARCHAR](255) NULL,
       NewSpecialEducationEventTypeDescriptorCodeValue [NVARCHAR](50) NULL,
       NewStudentUSI [INT] NULL,
       NewStudentUniqueId [NVARCHAR](32) NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       Discriminator [NVARCHAR](128) NULL,
       CreateDate DateTime2 NOT NULL DEFAULT (getutcdate()),
       CONSTRAINT PK_StudentSpecialEducationAssociationEvent PRIMARY KEY CLUSTERED (ChangeVersion)
)
