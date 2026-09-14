
DROP INDEX IF EXISTS IX_IdeaEvent_EducationOrganizationId;
CREATE INDEX IF NOT EXISTS IX_IdeaEvent_EducationOrganizationId ON sedm.IdeaEvent(EducationOrganizationId) INCLUDE (AggregateId);

CREATE INDEX IF NOT EXISTS IX_IdeaEvent_StudentUSI ON sedm.IdeaEvent(StudentUSI) INCLUDE (AggregateId);

DROP INDEX IF EXISTS IX_StudentIEP_EducationOrganizationId;
CREATE INDEX IF NOT EXISTS IX_StudentIEP_EducationOrganizationId ON sedm.StudentIEP(EducationOrganizationId) INCLUDE (AggregateId);

CREATE INDEX IF NOT EXISTS IX_StudentIEP_StudentUSI ON sedm.StudentIEP(StudentUSI) INCLUDE (AggregateId);

DROP INDEX IF EXISTS IX_StudentIEPAccommodationCollection_EducationOrganizationId;
CREATE INDEX IF NOT EXISTS IX_StudentIEPAccommodationCollection_EducationOrganizationId ON sedm.StudentIEPAccommodationCollection(EducationOrganizationId) INCLUDE (AggregateId);

CREATE INDEX IF NOT EXISTS IX_StudentIEPAccommodationCollection_StudentUSI ON sedm.StudentIEPAccommodationCollection(StudentUSI) INCLUDE (AggregateId);

DROP INDEX IF EXISTS IX_StudentIEPDisabilityCollection_EducationOrganizationId;
CREATE INDEX IF NOT EXISTS IX_StudentIEPDisabilityCollection_EducationOrganizationId ON sedm.StudentIEPDisabilityCollection(EducationOrganizationId) INCLUDE (AggregateId);

CREATE INDEX IF NOT EXISTS IX_StudentIEPDisabilityCollection_StudentUSI ON sedm.StudentIEPDisabilityCollection(StudentUSI) INCLUDE (AggregateId);

DROP INDEX IF EXISTS IX_StudentIEPGoal_EducationOrganizationId;
CREATE INDEX IF NOT EXISTS IX_StudentIEPGoal_EducationOrganizationId ON sedm.StudentIEPGoal(EducationOrganizationId) INCLUDE (AggregateId);

CREATE INDEX IF NOT EXISTS IX_StudentIEPGoal_StudentUSI ON sedm.StudentIEPGoal(StudentUSI) INCLUDE (AggregateId);

DROP INDEX IF EXISTS IX_StudentIEPServiceDelivery_EducationOrganizationId;
CREATE INDEX IF NOT EXISTS IX_StudentIEPServiceDelivery_EducationOrganizationId ON sedm.StudentIEPServiceDelivery(EducationOrganizationId) INCLUDE (AggregateId);

CREATE INDEX IF NOT EXISTS IX_StudentIEPServiceDelivery_StudentUSI ON sedm.StudentIEPServiceDelivery(StudentUSI) INCLUDE (AggregateId);

DROP INDEX IF EXISTS IX_StudentIEPServicePrescription_EducationOrganizationId;
CREATE INDEX IF NOT EXISTS IX_StudentIEPServicePrescription_EducationOrganizationId ON sedm.StudentIEPServicePrescription(EducationOrganizationId) INCLUDE (AggregateId);

CREATE INDEX IF NOT EXISTS IX_StudentIEPServicePrescription_StudentUSI ON sedm.StudentIEPServicePrescription(StudentUSI) INCLUDE (AggregateId);
