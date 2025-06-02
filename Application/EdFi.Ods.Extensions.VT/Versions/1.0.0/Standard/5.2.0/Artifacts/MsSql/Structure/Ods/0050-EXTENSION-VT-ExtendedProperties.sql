-- Extended Properties [vt].[CTECredentialDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The earned credential, including certification or license, related to the CTE field of study.', @level0type=N'SCHEMA', @level0name=N'vt', @level1type=N'TABLE', @level1name=N'CTECredentialDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'vt', @level1type=N'TABLE', @level1name=N'CTECredentialDescriptor', @level2type=N'COLUMN', @level2name=N'CTECredentialDescriptorId'
GO

-- Extended Properties [vt].[CTEFundCategoryDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The category of funding or financial aid the student received.', @level0type=N'SCHEMA', @level0name=N'vt', @level1type=N'TABLE', @level1name=N'CTEFundCategoryDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'vt', @level1type=N'TABLE', @level1name=N'CTEFundCategoryDescriptor', @level2type=N'COLUMN', @level2name=N'CTEFundCategoryDescriptorId'
GO

-- Extended Properties [vt].[CTSODescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The national CTSO organization a student is a member of related to their CTE program.', @level0type=N'SCHEMA', @level0name=N'vt', @level1type=N'TABLE', @level1name=N'CTSODescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'vt', @level1type=N'TABLE', @level1name=N'CTSODescriptor', @level2type=N'COLUMN', @level2name=N'CTSODescriptorId'
GO

-- Extended Properties [vt].[StudentCTEProgramAssociationCoopPlacement] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Collection of Student Cooperative Education Placement as required by Perkins V. Also used to identify where students who attend CTE go after high school graduation.', @level0type=N'SCHEMA', @level0name=N'vt', @level1type=N'TABLE', @level1name=N'StudentCTEProgramAssociationCoopPlacement'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The earliest date the student is involved with the program. Typically, this is the date the student becomes eligible for the program.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type=N'SCHEMA', @level0name=N'vt', @level1type=N'TABLE', @level1name=N'StudentCTEProgramAssociationCoopPlacement', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'vt', @level1type=N'TABLE', @level1name=N'StudentCTEProgramAssociationCoopPlacement', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'vt', @level1type=N'TABLE', @level1name=N'StudentCTEProgramAssociationCoopPlacement', @level2type=N'COLUMN', @level2name=N'ProgramEducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The formal name of the program of instruction, training, services, or benefits available through federal, state, or local agencies.', @level0type=N'SCHEMA', @level0name=N'vt', @level1type=N'TABLE', @level1name=N'StudentCTEProgramAssociationCoopPlacement', @level2type=N'COLUMN', @level2name=N'ProgramName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of program.', @level0type=N'SCHEMA', @level0name=N'vt', @level1type=N'TABLE', @level1name=N'StudentCTEProgramAssociationCoopPlacement', @level2type=N'COLUMN', @level2name=N'ProgramTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'vt', @level1type=N'TABLE', @level1name=N'StudentCTEProgramAssociationCoopPlacement', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Unique identifier assigned by CTE Center for placement.', @level0type=N'SCHEMA', @level0name=N'vt', @level1type=N'TABLE', @level1name=N'StudentCTEProgramAssociationCoopPlacement', @level2type=N'COLUMN', @level2name=N'CoopIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Start date of student cooperative education placement.', @level0type=N'SCHEMA', @level0name=N'vt', @level1type=N'TABLE', @level1name=N'StudentCTEProgramAssociationCoopPlacement', @level2type=N'COLUMN', @level2name=N'CoopStartDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'End date of student cooperative education placement.', @level0type=N'SCHEMA', @level0name=N'vt', @level1type=N'TABLE', @level1name=N'StudentCTEProgramAssociationCoopPlacement', @level2type=N'COLUMN', @level2name=N'CoopEndDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Location associated with the cooperative education or internship placement.', @level0type=N'SCHEMA', @level0name=N'vt', @level1type=N'TABLE', @level1name=N'StudentCTEProgramAssociationCoopPlacement', @level2type=N'COLUMN', @level2name=N'CoopLocation'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Total hours a student has accumulated through cooperative education experiences.', @level0type=N'SCHEMA', @level0name=N'vt', @level1type=N'TABLE', @level1name=N'StudentCTEProgramAssociationCoopPlacement', @level2type=N'COLUMN', @level2name=N'CumulativeHours'
GO

-- Extended Properties [vt].[StudentCTEProgramAssociationCTECredential] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Collection of earned credentials, including certifications and licensures related to the field of study.', @level0type=N'SCHEMA', @level0name=N'vt', @level1type=N'TABLE', @level1name=N'StudentCTEProgramAssociationCTECredential'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The earliest date the student is involved with the program. Typically, this is the date the student becomes eligible for the program.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type=N'SCHEMA', @level0name=N'vt', @level1type=N'TABLE', @level1name=N'StudentCTEProgramAssociationCTECredential', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'vt', @level1type=N'TABLE', @level1name=N'StudentCTEProgramAssociationCTECredential', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'vt', @level1type=N'TABLE', @level1name=N'StudentCTEProgramAssociationCTECredential', @level2type=N'COLUMN', @level2name=N'ProgramEducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The formal name of the program of instruction, training, services, or benefits available through federal, state, or local agencies.', @level0type=N'SCHEMA', @level0name=N'vt', @level1type=N'TABLE', @level1name=N'StudentCTEProgramAssociationCTECredential', @level2type=N'COLUMN', @level2name=N'ProgramName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of program.', @level0type=N'SCHEMA', @level0name=N'vt', @level1type=N'TABLE', @level1name=N'StudentCTEProgramAssociationCTECredential', @level2type=N'COLUMN', @level2name=N'ProgramTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'vt', @level1type=N'TABLE', @level1name=N'StudentCTEProgramAssociationCTECredential', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The credential earned by the student. Relates to CredentialId in legacy system.', @level0type=N'SCHEMA', @level0name=N'vt', @level1type=N'TABLE', @level1name=N'StudentCTEProgramAssociationCTECredential', @level2type=N'COLUMN', @level2name=N'CTECredentialDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date the student earned the credential. Relates to DateObtained in legacy system.', @level0type=N'SCHEMA', @level0name=N'vt', @level1type=N'TABLE', @level1name=N'StudentCTEProgramAssociationCTECredential', @level2type=N'COLUMN', @level2name=N'CTECredentialDate'
GO

-- Extended Properties [vt].[StudentCTEProgramAssociationExtension] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'', @level0type=N'SCHEMA', @level0name=N'vt', @level1type=N'TABLE', @level1name=N'StudentCTEProgramAssociationExtension'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The earliest date the student is involved with the program. Typically, this is the date the student becomes eligible for the program.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type=N'SCHEMA', @level0name=N'vt', @level1type=N'TABLE', @level1name=N'StudentCTEProgramAssociationExtension', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'vt', @level1type=N'TABLE', @level1name=N'StudentCTEProgramAssociationExtension', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'vt', @level1type=N'TABLE', @level1name=N'StudentCTEProgramAssociationExtension', @level2type=N'COLUMN', @level2name=N'ProgramEducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The formal name of the program of instruction, training, services, or benefits available through federal, state, or local agencies.', @level0type=N'SCHEMA', @level0name=N'vt', @level1type=N'TABLE', @level1name=N'StudentCTEProgramAssociationExtension', @level2type=N'COLUMN', @level2name=N'ProgramName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of program.', @level0type=N'SCHEMA', @level0name=N'vt', @level1type=N'TABLE', @level1name=N'StudentCTEProgramAssociationExtension', @level2type=N'COLUMN', @level2name=N'ProgramTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'vt', @level1type=N'TABLE', @level1name=N'StudentCTEProgramAssociationExtension', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The average minutes of daily instruction for this student in the CTE program.', @level0type=N'SCHEMA', @level0name=N'vt', @level1type=N'TABLE', @level1name=N'StudentCTEProgramAssociationExtension', @level2type=N'COLUMN', @level2name=N'AverageDailyMinutesOfInstruction'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a course.', @level0type=N'SCHEMA', @level0name=N'vt', @level1type=N'TABLE', @level1name=N'StudentCTEProgramAssociationExtension', @level2type=N'COLUMN', @level2name=N'CourseCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The national CTSO organization the student is a member of related to their CTE program.', @level0type=N'SCHEMA', @level0name=N'vt', @level1type=N'TABLE', @level1name=N'StudentCTEProgramAssociationExtension', @level2type=N'COLUMN', @level2name=N'CTSODescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates data reflects status information for second semester of course enrollment.', @level0type=N'SCHEMA', @level0name=N'vt', @level1type=N'TABLE', @level1name=N'StudentCTEProgramAssociationExtension', @level2type=N'COLUMN', @level2name=N'SecondProgramSemesterEnrollment'
GO

-- Extended Properties [vt].[StudentCTEProgramAssociationPostSecondaryCredits] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Collection of earned post-secondary credits related to the field of study.', @level0type=N'SCHEMA', @level0name=N'vt', @level1type=N'TABLE', @level1name=N'StudentCTEProgramAssociationPostSecondaryCredits'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The earliest date the student is involved with the program. Typically, this is the date the student becomes eligible for the program.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type=N'SCHEMA', @level0name=N'vt', @level1type=N'TABLE', @level1name=N'StudentCTEProgramAssociationPostSecondaryCredits', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'vt', @level1type=N'TABLE', @level1name=N'StudentCTEProgramAssociationPostSecondaryCredits', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'vt', @level1type=N'TABLE', @level1name=N'StudentCTEProgramAssociationPostSecondaryCredits', @level2type=N'COLUMN', @level2name=N'ProgramEducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The formal name of the program of instruction, training, services, or benefits available through federal, state, or local agencies.', @level0type=N'SCHEMA', @level0name=N'vt', @level1type=N'TABLE', @level1name=N'StudentCTEProgramAssociationPostSecondaryCredits', @level2type=N'COLUMN', @level2name=N'ProgramName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of program.', @level0type=N'SCHEMA', @level0name=N'vt', @level1type=N'TABLE', @level1name=N'StudentCTEProgramAssociationPostSecondaryCredits', @level2type=N'COLUMN', @level2name=N'ProgramTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'vt', @level1type=N'TABLE', @level1name=N'StudentCTEProgramAssociationPostSecondaryCredits', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a course.', @level0type=N'SCHEMA', @level0name=N'vt', @level1type=N'TABLE', @level1name=N'StudentCTEProgramAssociationPostSecondaryCredits', @level2type=N'COLUMN', @level2name=N'CourseCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The category of funding or financial aid the student received.', @level0type=N'SCHEMA', @level0name=N'vt', @level1type=N'TABLE', @level1name=N'StudentCTEProgramAssociationPostSecondaryCredits', @level2type=N'COLUMN', @level2name=N'CTEFundCategoryDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Date the course credit was earned at a Post-Secondary institution.', @level0type=N'SCHEMA', @level0name=N'vt', @level1type=N'TABLE', @level1name=N'StudentCTEProgramAssociationPostSecondaryCredits', @level2type=N'COLUMN', @level2name=N'TransferCreditDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The number of credits a student earned for the course.', @level0type=N'SCHEMA', @level0name=N'vt', @level1type=N'TABLE', @level1name=N'StudentCTEProgramAssociationPostSecondaryCredits', @level2type=N'COLUMN', @level2name=N'TransferCredits'
GO

