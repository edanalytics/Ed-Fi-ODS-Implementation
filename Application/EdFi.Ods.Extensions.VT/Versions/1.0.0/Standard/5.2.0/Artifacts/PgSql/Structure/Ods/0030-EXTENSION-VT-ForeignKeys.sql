ALTER TABLE vt.CTECredentialDescriptor ADD CONSTRAINT FK_32d83f_Descriptor FOREIGN KEY (CTECredentialDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE vt.CTEFundCategoryDescriptor ADD CONSTRAINT FK_8df8ec_Descriptor FOREIGN KEY (CTEFundCategoryDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE vt.CTSODescriptor ADD CONSTRAINT FK_f6b57f_Descriptor FOREIGN KEY (CTSODescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE vt.StudentCTEProgramAssociationCoopPlacement ADD CONSTRAINT FK_031ecf_StudentCTEProgramAssociation FOREIGN KEY (BeginDate, EducationOrganizationId, ProgramEducationOrganizationId, ProgramName, ProgramTypeDescriptorId, StudentUSI)
REFERENCES edfi.StudentCTEProgramAssociation (BeginDate, EducationOrganizationId, ProgramEducationOrganizationId, ProgramName, ProgramTypeDescriptorId, StudentUSI)
ON DELETE CASCADE
;

ALTER TABLE vt.StudentCTEProgramAssociationCTECredential ADD CONSTRAINT FK_e2498e_CTECredentialDescriptor FOREIGN KEY (CTECredentialDescriptorId)
REFERENCES vt.CTECredentialDescriptor (CTECredentialDescriptorId)
;

CREATE INDEX FK_e2498e_CTECredentialDescriptor
ON vt.StudentCTEProgramAssociationCTECredential (CTECredentialDescriptorId ASC);

ALTER TABLE vt.StudentCTEProgramAssociationCTECredential ADD CONSTRAINT FK_e2498e_StudentCTEProgramAssociation FOREIGN KEY (BeginDate, EducationOrganizationId, ProgramEducationOrganizationId, ProgramName, ProgramTypeDescriptorId, StudentUSI)
REFERENCES edfi.StudentCTEProgramAssociation (BeginDate, EducationOrganizationId, ProgramEducationOrganizationId, ProgramName, ProgramTypeDescriptorId, StudentUSI)
ON DELETE CASCADE
;

ALTER TABLE vt.StudentCTEProgramAssociationExtension ADD CONSTRAINT FK_1020a1_Course FOREIGN KEY (CourseCode, EducationOrganizationId)
REFERENCES edfi.Course (CourseCode, EducationOrganizationId)
;

CREATE INDEX FK_1020a1_Course
ON vt.StudentCTEProgramAssociationExtension (CourseCode ASC, EducationOrganizationId ASC);

ALTER TABLE vt.StudentCTEProgramAssociationExtension ADD CONSTRAINT FK_1020a1_CTSODescriptor FOREIGN KEY (CTSODescriptorId)
REFERENCES vt.CTSODescriptor (CTSODescriptorId)
;

CREATE INDEX FK_1020a1_CTSODescriptor
ON vt.StudentCTEProgramAssociationExtension (CTSODescriptorId ASC);

ALTER TABLE vt.StudentCTEProgramAssociationExtension ADD CONSTRAINT FK_1020a1_StudentCTEProgramAssociation FOREIGN KEY (BeginDate, EducationOrganizationId, ProgramEducationOrganizationId, ProgramName, ProgramTypeDescriptorId, StudentUSI)
REFERENCES edfi.StudentCTEProgramAssociation (BeginDate, EducationOrganizationId, ProgramEducationOrganizationId, ProgramName, ProgramTypeDescriptorId, StudentUSI)
ON DELETE CASCADE
;

ALTER TABLE vt.StudentCTEProgramAssociationPostSecondaryCredits ADD CONSTRAINT FK_68f37c_Course FOREIGN KEY (CourseCode, EducationOrganizationId)
REFERENCES edfi.Course (CourseCode, EducationOrganizationId)
;

CREATE INDEX FK_68f37c_Course
ON vt.StudentCTEProgramAssociationPostSecondaryCredits (CourseCode ASC, EducationOrganizationId ASC);

ALTER TABLE vt.StudentCTEProgramAssociationPostSecondaryCredits ADD CONSTRAINT FK_68f37c_CTEFundCategoryDescriptor FOREIGN KEY (CTEFundCategoryDescriptorId)
REFERENCES vt.CTEFundCategoryDescriptor (CTEFundCategoryDescriptorId)
;

CREATE INDEX FK_68f37c_CTEFundCategoryDescriptor
ON vt.StudentCTEProgramAssociationPostSecondaryCredits (CTEFundCategoryDescriptorId ASC);

ALTER TABLE vt.StudentCTEProgramAssociationPostSecondaryCredits ADD CONSTRAINT FK_68f37c_StudentCTEProgramAssociation FOREIGN KEY (BeginDate, EducationOrganizationId, ProgramEducationOrganizationId, ProgramName, ProgramTypeDescriptorId, StudentUSI)
REFERENCES edfi.StudentCTEProgramAssociation (BeginDate, EducationOrganizationId, ProgramEducationOrganizationId, ProgramName, ProgramTypeDescriptorId, StudentUSI)
ON DELETE CASCADE
;

