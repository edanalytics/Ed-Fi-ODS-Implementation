
IF NOT EXISTS(SELECT * FROM sys.indexes WHERE name='IX_AssessmentAdministrationParticipation_AssigningEducationOrganizationId' AND object_id = OBJECT_ID('edfixassessmentroster.AssessmentAdministrationParticipation')) 
BEGIN
    CREATE INDEX IX_AssessmentAdministrationParticipation_AssigningEducationOrganizationId ON edfixassessmentroster.AssessmentAdministrationParticipation(AssigningEducationOrganizationId) INCLUDE (Id)
END;

IF NOT EXISTS(SELECT * FROM sys.indexes WHERE name='IX_StudentAssessmentRegistration_AssigningEducationOrganizationId' AND object_id = OBJECT_ID('edfixassessmentroster.StudentAssessmentRegistration')) 
BEGIN
    CREATE INDEX IX_StudentAssessmentRegistration_AssigningEducationOrganizationId ON edfixassessmentroster.StudentAssessmentRegistration(AssigningEducationOrganizationId) INCLUDE (Id)
END;

IF NOT EXISTS(SELECT * FROM sys.indexes WHERE name='IX_StudentAssessmentRegistration_EducationOrganizationId' AND object_id = OBJECT_ID('edfixassessmentroster.StudentAssessmentRegistration')) 
BEGIN
    CREATE INDEX IX_StudentAssessmentRegistration_EducationOrganizationId ON edfixassessmentroster.StudentAssessmentRegistration(EducationOrganizationId) INCLUDE (Id)
END;
