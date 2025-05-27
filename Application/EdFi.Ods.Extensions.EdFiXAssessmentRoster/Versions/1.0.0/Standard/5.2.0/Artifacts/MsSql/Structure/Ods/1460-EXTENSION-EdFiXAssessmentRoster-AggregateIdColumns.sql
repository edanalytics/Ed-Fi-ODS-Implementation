CREATE SEQUENCE [edfixassessmentroster].[AssessmentAdministration_AggSeq] START WITH -2147483648 INCREMENT BY 1;
ALTER TABLE [edfixassessmentroster].[AssessmentAdministration] ADD AggregateId int NOT NULL DEFAULT NEXT VALUE FOR [edfixassessmentroster].[AssessmentAdministration_AggSeq], AggregateData varbinary(8000);
CREATE INDEX [IX_AssessmentAdministration_AggregateId] ON [edfixassessmentroster].[AssessmentAdministration] (AggregateId);

CREATE SEQUENCE [edfixassessmentroster].[AssessmentAdministrationParticipation_AggSeq] START WITH -2147483648 INCREMENT BY 1;
ALTER TABLE [edfixassessmentroster].[AssessmentAdministrationParticipation] ADD AggregateId int NOT NULL DEFAULT NEXT VALUE FOR [edfixassessmentroster].[AssessmentAdministrationParticipation_AggSeq], AggregateData varbinary(8000);
CREATE INDEX [IX_AssessmentAdministrationParticipation_AggregateId] ON [edfixassessmentroster].[AssessmentAdministrationParticipation] (AggregateId);

CREATE SEQUENCE [edfixassessmentroster].[StudentAssessmentRegistration_AggSeq] START WITH -2147483648 INCREMENT BY 1;
ALTER TABLE [edfixassessmentroster].[StudentAssessmentRegistration] ADD AggregateId int NOT NULL DEFAULT NEXT VALUE FOR [edfixassessmentroster].[StudentAssessmentRegistration_AggSeq], AggregateData varbinary(8000);
CREATE INDEX [IX_StudentAssessmentRegistration_AggregateId] ON [edfixassessmentroster].[StudentAssessmentRegistration] (AggregateId);

