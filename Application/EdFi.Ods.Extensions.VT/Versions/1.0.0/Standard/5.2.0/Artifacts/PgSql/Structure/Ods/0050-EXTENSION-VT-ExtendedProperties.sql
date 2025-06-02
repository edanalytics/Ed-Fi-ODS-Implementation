-- Extended Properties [vt].[CTECredentialDescriptor] --
COMMENT ON TABLE vt.CTECredentialDescriptor IS 'The earned credential, including certification or license, related to the CTE field of study.';
COMMENT ON COLUMN vt.CTECredentialDescriptor.CTECredentialDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [vt].[CTEFundCategoryDescriptor] --
COMMENT ON TABLE vt.CTEFundCategoryDescriptor IS 'The category of funding or financial aid the student received.';
COMMENT ON COLUMN vt.CTEFundCategoryDescriptor.CTEFundCategoryDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [vt].[CTSODescriptor] --
COMMENT ON TABLE vt.CTSODescriptor IS 'The national CTSO organization a student is a member of related to their CTE program.';
COMMENT ON COLUMN vt.CTSODescriptor.CTSODescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [vt].[StudentCTEProgramAssociationCoopPlacement] --
COMMENT ON TABLE vt.StudentCTEProgramAssociationCoopPlacement IS 'Collection of Student Cooperative Education Placement as required by Perkins V. Also used to identify where students who attend CTE go after high school graduation.';
COMMENT ON COLUMN vt.StudentCTEProgramAssociationCoopPlacement.BeginDate IS 'The earliest date the student is involved with the program. Typically, this is the date the student becomes eligible for the program.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.';
COMMENT ON COLUMN vt.StudentCTEProgramAssociationCoopPlacement.EducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN vt.StudentCTEProgramAssociationCoopPlacement.ProgramEducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN vt.StudentCTEProgramAssociationCoopPlacement.ProgramName IS 'The formal name of the program of instruction, training, services, or benefits available through federal, state, or local agencies.';
COMMENT ON COLUMN vt.StudentCTEProgramAssociationCoopPlacement.ProgramTypeDescriptorId IS 'The type of program.';
COMMENT ON COLUMN vt.StudentCTEProgramAssociationCoopPlacement.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN vt.StudentCTEProgramAssociationCoopPlacement.CoopIdentifier IS 'Unique identifier assigned by CTE Center for placement.';
COMMENT ON COLUMN vt.StudentCTEProgramAssociationCoopPlacement.CoopStartDate IS 'Start date of student cooperative education placement.';
COMMENT ON COLUMN vt.StudentCTEProgramAssociationCoopPlacement.CoopEndDate IS 'End date of student cooperative education placement.';
COMMENT ON COLUMN vt.StudentCTEProgramAssociationCoopPlacement.CoopLocation IS 'Location associated with the cooperative education or internship placement.';
COMMENT ON COLUMN vt.StudentCTEProgramAssociationCoopPlacement.CumulativeHours IS 'Total hours a student has accumulated through cooperative education experiences.';

-- Extended Properties [vt].[StudentCTEProgramAssociationCTECredential] --
COMMENT ON TABLE vt.StudentCTEProgramAssociationCTECredential IS 'Collection of earned credentials, including certifications and licensures related to the field of study.';
COMMENT ON COLUMN vt.StudentCTEProgramAssociationCTECredential.BeginDate IS 'The earliest date the student is involved with the program. Typically, this is the date the student becomes eligible for the program.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.';
COMMENT ON COLUMN vt.StudentCTEProgramAssociationCTECredential.EducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN vt.StudentCTEProgramAssociationCTECredential.ProgramEducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN vt.StudentCTEProgramAssociationCTECredential.ProgramName IS 'The formal name of the program of instruction, training, services, or benefits available through federal, state, or local agencies.';
COMMENT ON COLUMN vt.StudentCTEProgramAssociationCTECredential.ProgramTypeDescriptorId IS 'The type of program.';
COMMENT ON COLUMN vt.StudentCTEProgramAssociationCTECredential.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN vt.StudentCTEProgramAssociationCTECredential.CTECredentialDescriptorId IS 'The credential earned by the student. Relates to CredentialId in legacy system.';
COMMENT ON COLUMN vt.StudentCTEProgramAssociationCTECredential.CTECredentialDate IS 'The date the student earned the credential. Relates to DateObtained in legacy system.';

-- Extended Properties [vt].[StudentCTEProgramAssociationExtension] --
COMMENT ON TABLE vt.StudentCTEProgramAssociationExtension IS '';
COMMENT ON COLUMN vt.StudentCTEProgramAssociationExtension.BeginDate IS 'The earliest date the student is involved with the program. Typically, this is the date the student becomes eligible for the program.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.';
COMMENT ON COLUMN vt.StudentCTEProgramAssociationExtension.EducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN vt.StudentCTEProgramAssociationExtension.ProgramEducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN vt.StudentCTEProgramAssociationExtension.ProgramName IS 'The formal name of the program of instruction, training, services, or benefits available through federal, state, or local agencies.';
COMMENT ON COLUMN vt.StudentCTEProgramAssociationExtension.ProgramTypeDescriptorId IS 'The type of program.';
COMMENT ON COLUMN vt.StudentCTEProgramAssociationExtension.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN vt.StudentCTEProgramAssociationExtension.AverageDailyMinutesOfInstruction IS 'The average minutes of daily instruction for this student in the CTE program.';
COMMENT ON COLUMN vt.StudentCTEProgramAssociationExtension.CourseCode IS 'A unique alphanumeric code assigned to a course.';
COMMENT ON COLUMN vt.StudentCTEProgramAssociationExtension.CTSODescriptorId IS 'The national CTSO organization the student is a member of related to their CTE program.';
COMMENT ON COLUMN vt.StudentCTEProgramAssociationExtension.SecondProgramSemesterEnrollment IS 'Indicates data reflects status information for second semester of course enrollment.';

-- Extended Properties [vt].[StudentCTEProgramAssociationPostSecondaryCredits] --
COMMENT ON TABLE vt.StudentCTEProgramAssociationPostSecondaryCredits IS 'Collection of earned post-secondary credits related to the field of study.';
COMMENT ON COLUMN vt.StudentCTEProgramAssociationPostSecondaryCredits.BeginDate IS 'The earliest date the student is involved with the program. Typically, this is the date the student becomes eligible for the program.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.';
COMMENT ON COLUMN vt.StudentCTEProgramAssociationPostSecondaryCredits.EducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN vt.StudentCTEProgramAssociationPostSecondaryCredits.ProgramEducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN vt.StudentCTEProgramAssociationPostSecondaryCredits.ProgramName IS 'The formal name of the program of instruction, training, services, or benefits available through federal, state, or local agencies.';
COMMENT ON COLUMN vt.StudentCTEProgramAssociationPostSecondaryCredits.ProgramTypeDescriptorId IS 'The type of program.';
COMMENT ON COLUMN vt.StudentCTEProgramAssociationPostSecondaryCredits.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN vt.StudentCTEProgramAssociationPostSecondaryCredits.CourseCode IS 'A unique alphanumeric code assigned to a course.';
COMMENT ON COLUMN vt.StudentCTEProgramAssociationPostSecondaryCredits.CTEFundCategoryDescriptorId IS 'The category of funding or financial aid the student received.';
COMMENT ON COLUMN vt.StudentCTEProgramAssociationPostSecondaryCredits.TransferCreditDate IS 'Date the course credit was earned at a Post-Secondary institution.';
COMMENT ON COLUMN vt.StudentCTEProgramAssociationPostSecondaryCredits.TransferCredits IS 'The number of credits a student earned for the course.';

