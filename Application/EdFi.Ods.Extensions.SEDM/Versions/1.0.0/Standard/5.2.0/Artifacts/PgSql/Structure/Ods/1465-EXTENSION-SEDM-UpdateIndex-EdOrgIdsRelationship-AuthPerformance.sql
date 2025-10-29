
DROP INDEX IF EXISTS IX_IDEAEvent_EducationOrganizationId;
CREATE INDEX IF NOT EXISTS IX_IDEAEvent_EducationOrganizationId ON sedm.IDEAEvent(EducationOrganizationId) INCLUDE (AggregateId);

CREATE INDEX IF NOT EXISTS IX_IDEAEvent_StudentUSI ON sedm.IDEAEvent(StudentUSI) INCLUDE (AggregateId);

CREATE INDEX IF NOT EXISTS IX_StudentIEP_StudentUSI ON sedm.StudentIEP(StudentUSI) INCLUDE (AggregateId);

CREATE INDEX IF NOT EXISTS IX_StudentIEPAccommodationCollection_StudentUSI ON sedm.StudentIEPAccommodationCollection(StudentUSI) INCLUDE (AggregateId);

CREATE INDEX IF NOT EXISTS IX_StudentIEPDisabilityCollection_StudentUSI ON sedm.StudentIEPDisabilityCollection(StudentUSI) INCLUDE (AggregateId);

DROP INDEX IF EXISTS IX_StudentIEPGoal_IEPServicingEducationOrganizationId;
CREATE INDEX IF NOT EXISTS IX_StudentIEPGoal_IEPServicingEducationOrganizationId ON sedm.StudentIEPGoal(IEPServicingEducationOrganizationId) INCLUDE (AggregateId);

CREATE INDEX IF NOT EXISTS IX_StudentIEPGoal_StudentUSI ON sedm.StudentIEPGoal(StudentUSI) INCLUDE (AggregateId);

DROP INDEX IF EXISTS IX_StudentIEPServiceDelivery_IEPServicingEducationOrganizationId;
CREATE INDEX IF NOT EXISTS IX_StudentIEPServiceDelivery_IEPServicingEducationOrganizationId ON sedm.StudentIEPServiceDelivery(IEPServicingEducationOrganizationId) INCLUDE (AggregateId);

CREATE INDEX IF NOT EXISTS IX_StudentIEPServiceDelivery_StudentUSI ON sedm.StudentIEPServiceDelivery(StudentUSI) INCLUDE (AggregateId);

DROP INDEX IF EXISTS IX_StudentIEPServicePrescription_IEPServicingEducationOrganizationId;
CREATE INDEX IF NOT EXISTS IX_StudentIEPServicePrescription_IEPServicingEducationOrganizationId ON sedm.StudentIEPServicePrescription(IEPServicingEducationOrganizationId) INCLUDE (AggregateId);

CREATE INDEX IF NOT EXISTS IX_StudentIEPServicePrescription_StudentUSI ON sedm.StudentIEPServicePrescription(StudentUSI) INCLUDE (AggregateId);

CREATE INDEX IF NOT EXISTS IX_StudentIEPServicePrescription_StaffUSI ON sedm.StudentIEPServicePrescription(StaffUSI) INCLUDE (AggregateId);
