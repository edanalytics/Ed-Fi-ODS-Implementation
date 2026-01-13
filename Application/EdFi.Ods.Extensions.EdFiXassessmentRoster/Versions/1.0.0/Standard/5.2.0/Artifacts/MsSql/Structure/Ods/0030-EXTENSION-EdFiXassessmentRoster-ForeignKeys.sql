ALTER TABLE [edfixassessmentroster].[AssessmentAdministration] WITH CHECK ADD CONSTRAINT [FK_AssessmentAdministration_Assessment] FOREIGN KEY ([AssessmentIdentifier], [Namespace])
REFERENCES [edfi].[Assessment] ([AssessmentIdentifier], [Namespace])
GO

CREATE NONCLUSTERED INDEX [FK_AssessmentAdministration_Assessment]
ON [edfixassessmentroster].[AssessmentAdministration] ([AssessmentIdentifier] ASC, [Namespace] ASC)
GO

ALTER TABLE [edfixassessmentroster].[AssessmentAdministration] WITH CHECK ADD CONSTRAINT [FK_AssessmentAdministration_EducationOrganization] FOREIGN KEY ([AssigningEducationOrganizationId])
REFERENCES [edfi].[EducationOrganization] ([EducationOrganizationId])
GO

CREATE NONCLUSTERED INDEX [FK_AssessmentAdministration_EducationOrganization]
ON [edfixassessmentroster].[AssessmentAdministration] ([AssigningEducationOrganizationId] ASC)
GO

ALTER TABLE [edfixassessmentroster].[AssessmentAdministrationParticipation] WITH CHECK ADD CONSTRAINT [FK_AssessmentAdministrationParticipation_AssessmentAdministration] FOREIGN KEY ([AdministrationIdentifier], [AssessmentIdentifier], [AssigningEducationOrganizationId], [Namespace])
REFERENCES [edfixassessmentroster].[AssessmentAdministration] ([AdministrationIdentifier], [AssessmentIdentifier], [AssigningEducationOrganizationId], [Namespace])
GO

CREATE NONCLUSTERED INDEX [FK_AssessmentAdministrationParticipation_AssessmentAdministration]
ON [edfixassessmentroster].[AssessmentAdministrationParticipation] ([AdministrationIdentifier] ASC, [AssessmentIdentifier] ASC, [AssigningEducationOrganizationId] ASC, [Namespace] ASC)
GO

ALTER TABLE [edfixassessmentroster].[AssessmentAdministrationParticipation] WITH CHECK ADD CONSTRAINT [FK_AssessmentAdministrationParticipation_EducationOrganization] FOREIGN KEY ([ParticipatingEducationOrganizationId])
REFERENCES [edfi].[EducationOrganization] ([EducationOrganizationId])
GO

CREATE NONCLUSTERED INDEX [FK_AssessmentAdministrationParticipation_EducationOrganization]
ON [edfixassessmentroster].[AssessmentAdministrationParticipation] ([ParticipatingEducationOrganizationId] ASC)
GO

ALTER TABLE [edfixassessmentroster].[AssessmentAdministrationParticipationAdministrationContact] WITH CHECK ADD CONSTRAINT [FK_AssessmentAdministrationParticipationAdministrationContact_AssessmentAdministrationParticipation] FOREIGN KEY ([AdministrationIdentifier], [AssessmentIdentifier], [AssigningEducationOrganizationId], [Namespace], [ParticipatingEducationOrganizationId])
REFERENCES [edfixassessmentroster].[AssessmentAdministrationParticipation] ([AdministrationIdentifier], [AssessmentIdentifier], [AssigningEducationOrganizationId], [Namespace], [ParticipatingEducationOrganizationId])
ON DELETE CASCADE
GO

ALTER TABLE [edfixassessmentroster].[AssessmentAdministrationPeriod] WITH CHECK ADD CONSTRAINT [FK_AssessmentAdministrationPeriod_AssessmentAdministration] FOREIGN KEY ([AdministrationIdentifier], [AssessmentIdentifier], [AssigningEducationOrganizationId], [Namespace])
REFERENCES [edfixassessmentroster].[AssessmentAdministration] ([AdministrationIdentifier], [AssessmentIdentifier], [AssigningEducationOrganizationId], [Namespace])
ON DELETE CASCADE
GO

ALTER TABLE [edfixassessmentroster].[StudentAssessmentRegistration] WITH CHECK ADD CONSTRAINT [FK_StudentAssessmentRegistration_AssessmentAdministration] FOREIGN KEY ([AdministrationIdentifier], [AssessmentIdentifier], [AssigningEducationOrganizationId], [Namespace])
REFERENCES [edfixassessmentroster].[AssessmentAdministration] ([AdministrationIdentifier], [AssessmentIdentifier], [AssigningEducationOrganizationId], [Namespace])
GO

CREATE NONCLUSTERED INDEX [FK_StudentAssessmentRegistration_AssessmentAdministration]
ON [edfixassessmentroster].[StudentAssessmentRegistration] ([AdministrationIdentifier] ASC, [AssessmentIdentifier] ASC, [AssigningEducationOrganizationId] ASC, [Namespace] ASC)
GO

ALTER TABLE [edfixassessmentroster].[StudentAssessmentRegistration] WITH CHECK ADD CONSTRAINT [FK_StudentAssessmentRegistration_EducationOrganization] FOREIGN KEY ([ReportingEducationOrganizationId])
REFERENCES [edfi].[EducationOrganization] ([EducationOrganizationId])
GO

CREATE NONCLUSTERED INDEX [FK_StudentAssessmentRegistration_EducationOrganization]
ON [edfixassessmentroster].[StudentAssessmentRegistration] ([ReportingEducationOrganizationId] ASC)
GO

ALTER TABLE [edfixassessmentroster].[StudentAssessmentRegistration] WITH CHECK ADD CONSTRAINT [FK_StudentAssessmentRegistration_EducationOrganization1] FOREIGN KEY ([TestingEducationOrganizationId])
REFERENCES [edfi].[EducationOrganization] ([EducationOrganizationId])
GO

CREATE NONCLUSTERED INDEX [FK_StudentAssessmentRegistration_EducationOrganization1]
ON [edfixassessmentroster].[StudentAssessmentRegistration] ([TestingEducationOrganizationId] ASC)
GO

ALTER TABLE [edfixassessmentroster].[StudentAssessmentRegistration] WITH CHECK ADD CONSTRAINT [FK_StudentAssessmentRegistration_PlatformTypeDescriptor] FOREIGN KEY ([PlatformTypeDescriptorId])
REFERENCES [edfi].[PlatformTypeDescriptor] ([PlatformTypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StudentAssessmentRegistration_PlatformTypeDescriptor]
ON [edfixassessmentroster].[StudentAssessmentRegistration] ([PlatformTypeDescriptorId] ASC)
GO

ALTER TABLE [edfixassessmentroster].[StudentAssessmentRegistration] WITH CHECK ADD CONSTRAINT [FK_StudentAssessmentRegistration_StudentEducationOrganizationAssociation] FOREIGN KEY ([EducationOrganizationId], [StudentUSI])
REFERENCES [edfi].[StudentEducationOrganizationAssociation] ([EducationOrganizationId], [StudentUSI])
GO

CREATE NONCLUSTERED INDEX [FK_StudentAssessmentRegistration_StudentEducationOrganizationAssociation]
ON [edfixassessmentroster].[StudentAssessmentRegistration] ([EducationOrganizationId] ASC, [StudentUSI] ASC)
GO

ALTER TABLE [edfixassessmentroster].[StudentAssessmentRegistrationAssessmentCustomization] WITH CHECK ADD CONSTRAINT [FK_StudentAssessmentRegistrationAssessmentCustomization_StudentAssessmentRegistration] FOREIGN KEY ([AdministrationIdentifier], [AssessmentIdentifier], [AssigningEducationOrganizationId], [EducationOrganizationId], [Namespace], [StudentUSI])
REFERENCES [edfixassessmentroster].[StudentAssessmentRegistration] ([AdministrationIdentifier], [AssessmentIdentifier], [AssigningEducationOrganizationId], [EducationOrganizationId], [Namespace], [StudentUSI])
ON DELETE CASCADE
GO

