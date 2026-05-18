
CREATE INDEX IF NOT EXISTS IX_EducationOrganizationOtherPersonnel_LocalEducationAgencyId ON idoe.EducationOrganizationOtherPersonnel(LocalEducationAgencyId) INCLUDE (Id);

CREATE INDEX IF NOT EXISTS IX_LocalCapitalizedEquipment_EducationOrganizationId ON idoe.LocalCapitalizedEquipment(EducationOrganizationId) INCLUDE (Id);

CREATE INDEX IF NOT EXISTS IX_LocalSubaward_EducationOrganizationId ON idoe.LocalSubaward(EducationOrganizationId) INCLUDE (Id);

CREATE INDEX IF NOT EXISTS IX_LocalUnusedLeavePayment_EducationOrganizationId ON idoe.LocalUnusedLeavePayment(EducationOrganizationId) INCLUDE (Id);

CREATE INDEX IF NOT EXISTS IX_StudentAccommodation_EducationOrganizationId ON idoe.StudentAccommodation(EducationOrganizationId) INCLUDE (Id);

CREATE INDEX IF NOT EXISTS IX_StudentAssessmentRoster_AssigningEducationOrganizationId ON idoe.StudentAssessmentRoster(AssigningEducationOrganizationId) INCLUDE (Id);

CREATE INDEX IF NOT EXISTS IX_StudentAssessmentRoster_EducationOrganizationId ON idoe.StudentAssessmentRoster(EducationOrganizationId) INCLUDE (Id);

CREATE INDEX IF NOT EXISTS IX_StudentAssessmentRoster_SchoolId ON idoe.StudentAssessmentRoster(SchoolId) INCLUDE (Id);

CREATE INDEX IF NOT EXISTS IX_StudentSchoolGraduationPlan_EducationOrganizationId ON idoe.StudentSchoolGraduationPlan(EducationOrganizationId) INCLUDE (Id);

CREATE INDEX IF NOT EXISTS IX_StudentSchoolGraduationPlan_SchoolId ON idoe.StudentSchoolGraduationPlan(SchoolId) INCLUDE (Id);
