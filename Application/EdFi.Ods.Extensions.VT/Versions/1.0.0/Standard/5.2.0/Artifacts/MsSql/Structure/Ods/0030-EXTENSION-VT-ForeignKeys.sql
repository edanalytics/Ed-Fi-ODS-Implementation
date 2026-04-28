ALTER TABLE [vt].[CTECredentialDescriptor] WITH CHECK ADD CONSTRAINT [FK_CTECredentialDescriptor_Descriptor] FOREIGN KEY ([CTECredentialDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [vt].[CTEFundCategoryDescriptor] WITH CHECK ADD CONSTRAINT [FK_CTEFundCategoryDescriptor_Descriptor] FOREIGN KEY ([CTEFundCategoryDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [vt].[CTSODescriptor] WITH CHECK ADD CONSTRAINT [FK_CTSODescriptor_Descriptor] FOREIGN KEY ([CTSODescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [vt].[StudentCTEProgramAssociationCoopPlacement] WITH CHECK ADD CONSTRAINT [FK_StudentCTEProgramAssociationCoopPlacement_StudentCTEProgramAssociation] FOREIGN KEY ([BeginDate], [EducationOrganizationId], [ProgramEducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId], [StudentUSI])
REFERENCES [edfi].[StudentCTEProgramAssociation] ([BeginDate], [EducationOrganizationId], [ProgramEducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId], [StudentUSI])
ON DELETE CASCADE
GO

ALTER TABLE [vt].[StudentCTEProgramAssociationCTECredential] WITH CHECK ADD CONSTRAINT [FK_StudentCTEProgramAssociationCTECredential_CTECredentialDescriptor] FOREIGN KEY ([CTECredentialDescriptorId])
REFERENCES [vt].[CTECredentialDescriptor] ([CTECredentialDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StudentCTEProgramAssociationCTECredential_CTECredentialDescriptor]
ON [vt].[StudentCTEProgramAssociationCTECredential] ([CTECredentialDescriptorId] ASC)
GO

ALTER TABLE [vt].[StudentCTEProgramAssociationCTECredential] WITH CHECK ADD CONSTRAINT [FK_StudentCTEProgramAssociationCTECredential_StudentCTEProgramAssociation] FOREIGN KEY ([BeginDate], [EducationOrganizationId], [ProgramEducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId], [StudentUSI])
REFERENCES [edfi].[StudentCTEProgramAssociation] ([BeginDate], [EducationOrganizationId], [ProgramEducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId], [StudentUSI])
ON DELETE CASCADE
GO

ALTER TABLE [vt].[StudentCTEProgramAssociationExtension] WITH CHECK ADD CONSTRAINT [FK_StudentCTEProgramAssociationExtension_Course] FOREIGN KEY ([CourseCode], [EducationOrganizationId])
REFERENCES [edfi].[Course] ([CourseCode], [EducationOrganizationId])
GO

CREATE NONCLUSTERED INDEX [FK_StudentCTEProgramAssociationExtension_Course]
ON [vt].[StudentCTEProgramAssociationExtension] ([CourseCode] ASC, [EducationOrganizationId] ASC)
GO

ALTER TABLE [vt].[StudentCTEProgramAssociationExtension] WITH CHECK ADD CONSTRAINT [FK_StudentCTEProgramAssociationExtension_CTSODescriptor] FOREIGN KEY ([CTSODescriptorId])
REFERENCES [vt].[CTSODescriptor] ([CTSODescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StudentCTEProgramAssociationExtension_CTSODescriptor]
ON [vt].[StudentCTEProgramAssociationExtension] ([CTSODescriptorId] ASC)
GO

ALTER TABLE [vt].[StudentCTEProgramAssociationExtension] WITH CHECK ADD CONSTRAINT [FK_StudentCTEProgramAssociationExtension_StudentCTEProgramAssociation] FOREIGN KEY ([BeginDate], [EducationOrganizationId], [ProgramEducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId], [StudentUSI])
REFERENCES [edfi].[StudentCTEProgramAssociation] ([BeginDate], [EducationOrganizationId], [ProgramEducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId], [StudentUSI])
ON DELETE CASCADE
GO

ALTER TABLE [vt].[StudentCTEProgramAssociationPostSecondaryCredits] WITH CHECK ADD CONSTRAINT [FK_StudentCTEProgramAssociationPostSecondaryCredits_Course] FOREIGN KEY ([CourseCode], [EducationOrganizationId])
REFERENCES [edfi].[Course] ([CourseCode], [EducationOrganizationId])
GO

CREATE NONCLUSTERED INDEX [FK_StudentCTEProgramAssociationPostSecondaryCredits_Course]
ON [vt].[StudentCTEProgramAssociationPostSecondaryCredits] ([CourseCode] ASC, [EducationOrganizationId] ASC)
GO

ALTER TABLE [vt].[StudentCTEProgramAssociationPostSecondaryCredits] WITH CHECK ADD CONSTRAINT [FK_StudentCTEProgramAssociationPostSecondaryCredits_CTEFundCategoryDescriptor] FOREIGN KEY ([CTEFundCategoryDescriptorId])
REFERENCES [vt].[CTEFundCategoryDescriptor] ([CTEFundCategoryDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StudentCTEProgramAssociationPostSecondaryCredits_CTEFundCategoryDescriptor]
ON [vt].[StudentCTEProgramAssociationPostSecondaryCredits] ([CTEFundCategoryDescriptorId] ASC)
GO

ALTER TABLE [vt].[StudentCTEProgramAssociationPostSecondaryCredits] WITH CHECK ADD CONSTRAINT [FK_StudentCTEProgramAssociationPostSecondaryCredits_StudentCTEProgramAssociation] FOREIGN KEY ([BeginDate], [EducationOrganizationId], [ProgramEducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId], [StudentUSI])
REFERENCES [edfi].[StudentCTEProgramAssociation] ([BeginDate], [EducationOrganizationId], [ProgramEducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId], [StudentUSI])
ON DELETE CASCADE
GO

