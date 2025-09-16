
CREATE SEQUENCE edfixassessmentroster.AssessmentAdministration_aggseq START WITH -2147483648 INCREMENT BY 1 MINVALUE -2147483648;
ALTER TABLE edfixassessmentroster.AssessmentAdministration ADD COLUMN AggregateId int NOT NULL DEFAULT nextval('edfixassessmentroster.AssessmentAdministration_aggseq'), ADD COLUMN AggregateData bytea;
CREATE INDEX ix_AssessmentAdministration_aggid ON edfixassessmentroster.AssessmentAdministration (AggregateId);


CREATE SEQUENCE edfixassessmentroster.AssessmentAdministrationParticipation_aggseq START WITH -2147483648 INCREMENT BY 1 MINVALUE -2147483648;
ALTER TABLE edfixassessmentroster.AssessmentAdministrationParticipation ADD COLUMN AggregateId int NOT NULL DEFAULT nextval('edfixassessmentroster.AssessmentAdministrationParticipation_aggseq'), ADD COLUMN AggregateData bytea;
CREATE INDEX ix_AssessmentAdministrationParticipation_aggid ON edfixassessmentroster.AssessmentAdministrationParticipation (AggregateId);


CREATE SEQUENCE edfixassessmentroster.StudentAssessmentRegistration_aggseq START WITH -2147483648 INCREMENT BY 1 MINVALUE -2147483648;
ALTER TABLE edfixassessmentroster.StudentAssessmentRegistration ADD COLUMN AggregateId int NOT NULL DEFAULT nextval('edfixassessmentroster.StudentAssessmentRegistration_aggseq'), ADD COLUMN AggregateData bytea;
CREATE INDEX ix_StudentAssessmentRegistration_aggid ON edfixassessmentroster.StudentAssessmentRegistration (AggregateId);

