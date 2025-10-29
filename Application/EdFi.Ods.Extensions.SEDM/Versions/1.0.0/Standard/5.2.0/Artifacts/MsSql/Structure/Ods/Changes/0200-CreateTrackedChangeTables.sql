IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'tracked_changes_sedm')
EXEC sys.sp_executesql N'CREATE SCHEMA [tracked_changes_sedm]'
GO

IF NOT EXISTS (SELECT * FROM sys.tables WHERE object_id = OBJECT_ID(N'[tracked_changes_sedm].[IDEAEvent]'))
CREATE TABLE [tracked_changes_sedm].[IDEAEvent]
(
       OldEducationOrganizationId [BIGINT] NOT NULL,
       OldIDEAEventDescriptorId [INT] NOT NULL,
       OldIDEAEventDescriptorNamespace [NVARCHAR](255) NOT NULL,
       OldIDEAEventDescriptorCodeValue [NVARCHAR](50) NOT NULL,
       OldIDEAEventID [NVARCHAR](1024) NOT NULL,
       OldStudentUSI [INT] NOT NULL,
       OldStudentUniqueId [NVARCHAR](32) NOT NULL,
       NewEducationOrganizationId [BIGINT] NULL,
       NewIDEAEventDescriptorId [INT] NULL,
       NewIDEAEventDescriptorNamespace [NVARCHAR](255) NULL,
       NewIDEAEventDescriptorCodeValue [NVARCHAR](50) NULL,
       NewIDEAEventID [NVARCHAR](1024) NULL,
       NewStudentUSI [INT] NULL,
       NewStudentUniqueId [NVARCHAR](32) NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       Discriminator [NVARCHAR](128) NULL,
       CreateDate DateTime2 NOT NULL DEFAULT (getutcdate()),
       CONSTRAINT PK_IDEAEvent PRIMARY KEY CLUSTERED (ChangeVersion)
)
IF NOT EXISTS (SELECT * FROM sys.tables WHERE object_id = OBJECT_ID(N'[tracked_changes_sedm].[StudentIEP]'))
CREATE TABLE [tracked_changes_sedm].[StudentIEP]
(
       OldEducationOrganizationId [BIGINT] NOT NULL,
       OldIEPFinalizedDate [DATE] NOT NULL,
       OldStudentIEPAssociationID [NVARCHAR](1024) NOT NULL,
       OldStudentUSI [INT] NOT NULL,
       OldStudentUniqueId [NVARCHAR](32) NOT NULL,
       NewEducationOrganizationId [BIGINT] NULL,
       NewIEPFinalizedDate [DATE] NULL,
       NewStudentIEPAssociationID [NVARCHAR](1024) NULL,
       NewStudentUSI [INT] NULL,
       NewStudentUniqueId [NVARCHAR](32) NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       Discriminator [NVARCHAR](128) NULL,
       CreateDate DateTime2 NOT NULL DEFAULT (getutcdate()),
       CONSTRAINT PK_StudentIEP PRIMARY KEY CLUSTERED (ChangeVersion)
)
IF NOT EXISTS (SELECT * FROM sys.tables WHERE object_id = OBJECT_ID(N'[tracked_changes_sedm].[StudentIEPAccommodationCollection]'))
CREATE TABLE [tracked_changes_sedm].[StudentIEPAccommodationCollection]
(
       OldEducationOrganizationId [BIGINT] NOT NULL,
       OldIEPFinalizedDate [DATE] NOT NULL,
       OldStudentIEPAssociationID [NVARCHAR](1024) NOT NULL,
       OldStudentUSI [INT] NOT NULL,
       OldStudentUniqueId [NVARCHAR](32) NOT NULL,
       NewEducationOrganizationId [BIGINT] NULL,
       NewIEPFinalizedDate [DATE] NULL,
       NewStudentIEPAssociationID [NVARCHAR](1024) NULL,
       NewStudentUSI [INT] NULL,
       NewStudentUniqueId [NVARCHAR](32) NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       Discriminator [NVARCHAR](128) NULL,
       CreateDate DateTime2 NOT NULL DEFAULT (getutcdate()),
       CONSTRAINT PK_StudentIEPAccommodationCollection PRIMARY KEY CLUSTERED (ChangeVersion)
)
IF NOT EXISTS (SELECT * FROM sys.tables WHERE object_id = OBJECT_ID(N'[tracked_changes_sedm].[StudentIEPDisabilityCollection]'))
CREATE TABLE [tracked_changes_sedm].[StudentIEPDisabilityCollection]
(
       OldEducationOrganizationId [BIGINT] NOT NULL,
       OldIEPFinalizedDate [DATE] NOT NULL,
       OldStudentIEPAssociationID [NVARCHAR](1024) NOT NULL,
       OldStudentUSI [INT] NOT NULL,
       OldStudentUniqueId [NVARCHAR](32) NOT NULL,
       NewEducationOrganizationId [BIGINT] NULL,
       NewIEPFinalizedDate [DATE] NULL,
       NewStudentIEPAssociationID [NVARCHAR](1024) NULL,
       NewStudentUSI [INT] NULL,
       NewStudentUniqueId [NVARCHAR](32) NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       Discriminator [NVARCHAR](128) NULL,
       CreateDate DateTime2 NOT NULL DEFAULT (getutcdate()),
       CONSTRAINT PK_StudentIEPDisabilityCollection PRIMARY KEY CLUSTERED (ChangeVersion)
)
IF NOT EXISTS (SELECT * FROM sys.tables WHERE object_id = OBJECT_ID(N'[tracked_changes_sedm].[StudentIEPGoal]'))
CREATE TABLE [tracked_changes_sedm].[StudentIEPGoal]
(
       OldEducationOrganizationId [BIGINT] NOT NULL,
       OldIEPFinalizedDate [DATE] NOT NULL,
       OldIEPGoalID [NVARCHAR](256) NOT NULL,
       OldStudentIEPAssociationID [NVARCHAR](1024) NOT NULL,
       OldStudentUSI [INT] NOT NULL,
       OldStudentUniqueId [NVARCHAR](32) NOT NULL,
       NewEducationOrganizationId [BIGINT] NULL,
       NewIEPFinalizedDate [DATE] NULL,
       NewIEPGoalID [NVARCHAR](256) NULL,
       NewStudentIEPAssociationID [NVARCHAR](1024) NULL,
       NewStudentUSI [INT] NULL,
       NewStudentUniqueId [NVARCHAR](32) NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       Discriminator [NVARCHAR](128) NULL,
       CreateDate DateTime2 NOT NULL DEFAULT (getutcdate()),
       CONSTRAINT PK_StudentIEPGoal PRIMARY KEY CLUSTERED (ChangeVersion)
)
IF NOT EXISTS (SELECT * FROM sys.tables WHERE object_id = OBJECT_ID(N'[tracked_changes_sedm].[StudentIEPServiceDelivery]'))
CREATE TABLE [tracked_changes_sedm].[StudentIEPServiceDelivery]
(
       OldEducationOrganizationId [BIGINT] NOT NULL,
       OldIEPServiceDeliveryID [NVARCHAR](1024) NOT NULL,
       OldServiceDeliveryDate [DATE] NOT NULL,
       OldServiceDeliveryDescriptorId [INT] NOT NULL,
       OldServiceDeliveryDescriptorNamespace [NVARCHAR](255) NOT NULL,
       OldServiceDeliveryDescriptorCodeValue [NVARCHAR](50) NOT NULL,
       OldStudentUSI [INT] NOT NULL,
       OldStudentUniqueId [NVARCHAR](32) NOT NULL,
       NewEducationOrganizationId [BIGINT] NULL,
       NewIEPServiceDeliveryID [NVARCHAR](1024) NULL,
       NewServiceDeliveryDate [DATE] NULL,
       NewServiceDeliveryDescriptorId [INT] NULL,
       NewServiceDeliveryDescriptorNamespace [NVARCHAR](255) NULL,
       NewServiceDeliveryDescriptorCodeValue [NVARCHAR](50) NULL,
       NewStudentUSI [INT] NULL,
       NewStudentUniqueId [NVARCHAR](32) NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       Discriminator [NVARCHAR](128) NULL,
       CreateDate DateTime2 NOT NULL DEFAULT (getutcdate()),
       CONSTRAINT PK_StudentIEPServiceDelivery PRIMARY KEY CLUSTERED (ChangeVersion)
)
IF NOT EXISTS (SELECT * FROM sys.tables WHERE object_id = OBJECT_ID(N'[tracked_changes_sedm].[StudentIEPServicePrescription]'))
CREATE TABLE [tracked_changes_sedm].[StudentIEPServicePrescription]
(
       OldEducationOrganizationId [BIGINT] NOT NULL,
       OldServicePrescriptionDate [DATE] NOT NULL,
       OldServicePrescriptionDescriptorId [INT] NOT NULL,
       OldServicePrescriptionDescriptorNamespace [NVARCHAR](255) NOT NULL,
       OldServicePrescriptionDescriptorCodeValue [NVARCHAR](50) NOT NULL,
       OldStudentUSI [INT] NOT NULL,
       OldStudentUniqueId [NVARCHAR](32) NOT NULL,
       NewEducationOrganizationId [BIGINT] NULL,
       NewServicePrescriptionDate [DATE] NULL,
       NewServicePrescriptionDescriptorId [INT] NULL,
       NewServicePrescriptionDescriptorNamespace [NVARCHAR](255) NULL,
       NewServicePrescriptionDescriptorCodeValue [NVARCHAR](50) NULL,
       NewStudentUSI [INT] NULL,
       NewStudentUniqueId [NVARCHAR](32) NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       Discriminator [NVARCHAR](128) NULL,
       CreateDate DateTime2 NOT NULL DEFAULT (getutcdate()),
       CONSTRAINT PK_StudentIEPServicePrescription PRIMARY KEY CLUSTERED (ChangeVersion)
)
