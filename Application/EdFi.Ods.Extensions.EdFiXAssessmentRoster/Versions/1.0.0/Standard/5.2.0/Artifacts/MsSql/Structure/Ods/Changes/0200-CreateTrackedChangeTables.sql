IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'tracked_changes_edfixassessmentroster')
EXEC sys.sp_executesql N'CREATE SCHEMA [tracked_changes_edfixassessmentroster]'
GO

IF NOT EXISTS (SELECT * FROM sys.tables WHERE object_id = OBJECT_ID(N'[tracked_changes_edfixassessmentroster].[AssessmentAdministration]'))
CREATE TABLE [tracked_changes_edfixassessmentroster].[AssessmentAdministration]
(
       OldAdministrationIdentifier [NVARCHAR](255) NOT NULL,
       OldAssessmentIdentifier [NVARCHAR](60) NOT NULL,
       OldAssigningEducationOrganizationId [BIGINT] NOT NULL,
       OldNamespace [NVARCHAR](255) NOT NULL,
       NewAdministrationIdentifier [NVARCHAR](255) NULL,
       NewAssessmentIdentifier [NVARCHAR](60) NULL,
       NewAssigningEducationOrganizationId [BIGINT] NULL,
       NewNamespace [NVARCHAR](255) NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       Discriminator [NVARCHAR](128) NULL,
       CreateDate DateTime2 NOT NULL DEFAULT (getutcdate()),
       CONSTRAINT PK_AssessmentAdministration PRIMARY KEY CLUSTERED (ChangeVersion)
)
IF NOT EXISTS (SELECT * FROM sys.tables WHERE object_id = OBJECT_ID(N'[tracked_changes_edfixassessmentroster].[AssessmentAdministrationParticipation]'))
CREATE TABLE [tracked_changes_edfixassessmentroster].[AssessmentAdministrationParticipation]
(
       OldAdministrationIdentifier [NVARCHAR](255) NOT NULL,
       OldAssessmentIdentifier [NVARCHAR](60) NOT NULL,
       OldAssigningEducationOrganizationId [BIGINT] NOT NULL,
       OldNamespace [NVARCHAR](255) NOT NULL,
       OldParticipatingEducationOrganizationId [BIGINT] NOT NULL,
       NewAdministrationIdentifier [NVARCHAR](255) NULL,
       NewAssessmentIdentifier [NVARCHAR](60) NULL,
       NewAssigningEducationOrganizationId [BIGINT] NULL,
       NewNamespace [NVARCHAR](255) NULL,
       NewParticipatingEducationOrganizationId [BIGINT] NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       Discriminator [NVARCHAR](128) NULL,
       CreateDate DateTime2 NOT NULL DEFAULT (getutcdate()),
       CONSTRAINT PK_AssessmentAdministrationParticipation PRIMARY KEY CLUSTERED (ChangeVersion)
)
IF NOT EXISTS (SELECT * FROM sys.tables WHERE object_id = OBJECT_ID(N'[tracked_changes_edfixassessmentroster].[StudentAssessmentRegistration]'))
CREATE TABLE [tracked_changes_edfixassessmentroster].[StudentAssessmentRegistration]
(
       OldAdministrationIdentifier [NVARCHAR](255) NOT NULL,
       OldAssessmentIdentifier [NVARCHAR](60) NOT NULL,
       OldAssigningEducationOrganizationId [BIGINT] NOT NULL,
       OldEducationOrganizationId [BIGINT] NOT NULL,
       OldNamespace [NVARCHAR](255) NOT NULL,
       OldStudentUSI [INT] NOT NULL,
       OldStudentUniqueId [NVARCHAR](32) NOT NULL,
       NewAdministrationIdentifier [NVARCHAR](255) NULL,
       NewAssessmentIdentifier [NVARCHAR](60) NULL,
       NewAssigningEducationOrganizationId [BIGINT] NULL,
       NewEducationOrganizationId [BIGINT] NULL,
       NewNamespace [NVARCHAR](255) NULL,
       NewStudentUSI [INT] NULL,
       NewStudentUniqueId [NVARCHAR](32) NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       Discriminator [NVARCHAR](128) NULL,
       CreateDate DateTime2 NOT NULL DEFAULT (getutcdate()),
       CONSTRAINT PK_StudentAssessmentRegistration PRIMARY KEY CLUSTERED (ChangeVersion)
)
