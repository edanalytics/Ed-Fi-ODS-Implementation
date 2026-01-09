
DROP INDEX IF EXISTS IX_AssessmentAdministrationParticipation_AssigningEducationOrganizationId ON [edfixassessmentroster].[AssessmentAdministrationParticipation];
CREATE INDEX IX_AssessmentAdministrationParticipation_AssigningEducationOrganizationId ON [edfixassessmentroster].[AssessmentAdministrationParticipation](AssigningEducationOrganizationId) INCLUDE (AggregateId);

DROP INDEX IF EXISTS IX_StudentAssessmentRegistration_AssigningEducationOrganizationId ON [edfixassessmentroster].[StudentAssessmentRegistration];
CREATE INDEX IX_StudentAssessmentRegistration_AssigningEducationOrganizationId ON [edfixassessmentroster].[StudentAssessmentRegistration](AssigningEducationOrganizationId) INCLUDE (AggregateId);

DROP INDEX IF EXISTS IX_StudentAssessmentRegistration_EducationOrganizationId ON [edfixassessmentroster].[StudentAssessmentRegistration];
CREATE INDEX IX_StudentAssessmentRegistration_EducationOrganizationId ON [edfixassessmentroster].[StudentAssessmentRegistration](EducationOrganizationId) INCLUDE (AggregateId);

IF NOT EXISTS(SELECT * FROM sys.indexes WHERE name='IX_StudentAssessmentRegistration_StudentUSI' AND object_id = OBJECT_ID('edfixassessmentroster.StudentAssessmentRegistration')) 
BEGIN
    CREATE INDEX IX_StudentAssessmentRegistration_StudentUSI ON [edfixassessmentroster].[StudentAssessmentRegistration](StudentUSI) INCLUDE (AggregateId)
END;
