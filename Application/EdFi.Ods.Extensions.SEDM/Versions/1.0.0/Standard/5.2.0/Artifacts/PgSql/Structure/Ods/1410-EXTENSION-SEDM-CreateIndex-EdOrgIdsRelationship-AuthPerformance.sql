
CREATE INDEX IF NOT EXISTS IX_IdeaEvent_EducationOrganizationId ON sedm.IdeaEvent(EducationOrganizationId) INCLUDE (Id);

CREATE INDEX IF NOT EXISTS IX_StudentIEP_EducationOrganizationId ON sedm.StudentIEP(EducationOrganizationId) INCLUDE (Id);

CREATE INDEX IF NOT EXISTS IX_StudentIEPAccommodationCollection_EducationOrganizationId ON sedm.StudentIEPAccommodationCollection(EducationOrganizationId) INCLUDE (Id);

CREATE INDEX IF NOT EXISTS IX_StudentIEPDisabilityCollection_EducationOrganizationId ON sedm.StudentIEPDisabilityCollection(EducationOrganizationId) INCLUDE (Id);

CREATE INDEX IF NOT EXISTS IX_StudentIEPGoal_EducationOrganizationId ON sedm.StudentIEPGoal(EducationOrganizationId) INCLUDE (Id);

CREATE INDEX IF NOT EXISTS IX_StudentIEPServiceDelivery_EducationOrganizationId ON sedm.StudentIEPServiceDelivery(EducationOrganizationId) INCLUDE (Id);

CREATE INDEX IF NOT EXISTS IX_StudentIEPServicePrescription_EducationOrganizationId ON sedm.StudentIEPServicePrescription(EducationOrganizationId) INCLUDE (Id);
