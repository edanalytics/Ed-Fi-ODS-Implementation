
DROP INDEX IF EXISTS IX_EducationOrganizationOtherPersonnel_LocalEducationAgencyId;
CREATE INDEX IF NOT EXISTS IX_EducationOrganizationOtherPersonnel_LocalEducationAgencyId ON idoe.EducationOrganizationOtherPersonnel(LocalEducationAgencyId) INCLUDE (AggregateId);

DROP INDEX IF EXISTS IX_LocalCapitalizedEquipment_EducationOrganizationId;
CREATE INDEX IF NOT EXISTS IX_LocalCapitalizedEquipment_EducationOrganizationId ON idoe.LocalCapitalizedEquipment(EducationOrganizationId) INCLUDE (AggregateId);

DROP INDEX IF EXISTS IX_LocalSubaward_EducationOrganizationId;
CREATE INDEX IF NOT EXISTS IX_LocalSubaward_EducationOrganizationId ON idoe.LocalSubaward(EducationOrganizationId) INCLUDE (AggregateId);

DROP INDEX IF EXISTS IX_LocalUnusedLeavePayment_EducationOrganizationId;
CREATE INDEX IF NOT EXISTS IX_LocalUnusedLeavePayment_EducationOrganizationId ON idoe.LocalUnusedLeavePayment(EducationOrganizationId) INCLUDE (AggregateId);

DROP INDEX IF EXISTS IX_StudentAccommodation_EducationOrganizationId;
CREATE INDEX IF NOT EXISTS IX_StudentAccommodation_EducationOrganizationId ON idoe.StudentAccommodation(EducationOrganizationId) INCLUDE (AggregateId);

CREATE INDEX IF NOT EXISTS IX_StudentAccommodation_StudentUSI ON idoe.StudentAccommodation(StudentUSI) INCLUDE (AggregateId);

DROP INDEX IF EXISTS IX_StudentAssessmentRoster_AssigningEducationOrganizationId;
CREATE INDEX IF NOT EXISTS IX_StudentAssessmentRoster_AssigningEducationOrganizationId ON idoe.StudentAssessmentRoster(AssigningEducationOrganizationId) INCLUDE (AggregateId);

DROP INDEX IF EXISTS IX_StudentAssessmentRoster_EducationOrganizationId;
CREATE INDEX IF NOT EXISTS IX_StudentAssessmentRoster_EducationOrganizationId ON idoe.StudentAssessmentRoster(EducationOrganizationId) INCLUDE (AggregateId);

DROP INDEX IF EXISTS IX_StudentAssessmentRoster_SchoolId;
CREATE INDEX IF NOT EXISTS IX_StudentAssessmentRoster_SchoolId ON idoe.StudentAssessmentRoster(SchoolId) INCLUDE (AggregateId);

CREATE INDEX IF NOT EXISTS IX_StudentAssessmentRoster_StudentUSI ON idoe.StudentAssessmentRoster(StudentUSI) INCLUDE (AggregateId);

DROP INDEX IF EXISTS IX_StudentSchoolGraduationPlan_EducationOrganizationId;
CREATE INDEX IF NOT EXISTS IX_StudentSchoolGraduationPlan_EducationOrganizationId ON idoe.StudentSchoolGraduationPlan(EducationOrganizationId) INCLUDE (AggregateId);

DROP INDEX IF EXISTS IX_StudentSchoolGraduationPlan_SchoolId;
CREATE INDEX IF NOT EXISTS IX_StudentSchoolGraduationPlan_SchoolId ON idoe.StudentSchoolGraduationPlan(SchoolId) INCLUDE (AggregateId);

CREATE INDEX IF NOT EXISTS IX_StudentSchoolGraduationPlan_StudentUSI ON idoe.StudentSchoolGraduationPlan(StudentUSI) INCLUDE (AggregateId);
