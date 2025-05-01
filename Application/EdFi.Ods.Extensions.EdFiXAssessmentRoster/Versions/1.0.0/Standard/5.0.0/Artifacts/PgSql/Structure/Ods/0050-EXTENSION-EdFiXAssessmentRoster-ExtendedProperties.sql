-- Extended Properties [edfixassessmentroster].[AssessmentAdministration] --
COMMENT ON TABLE edfixassessmentroster.AssessmentAdministration IS 'The anticipated administration of an assessment under the purview of an EducationOrganization.';
COMMENT ON COLUMN edfixassessmentroster.AssessmentAdministration.AdministrationIdentifier IS 'The title or name of the assessment in the context of it''s administration.';
COMMENT ON COLUMN edfixassessmentroster.AssessmentAdministration.AssessmentIdentifier IS 'A unique number or alphanumeric code assigned to an assessment.';
COMMENT ON COLUMN edfixassessmentroster.AssessmentAdministration.AssigningEducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN edfixassessmentroster.AssessmentAdministration.Namespace IS 'Namespace for the assessment.';

-- Extended Properties [edfixassessmentroster].[AssessmentAdministrationParticipation] --
COMMENT ON TABLE edfixassessmentroster.AssessmentAdministrationParticipation IS 'The anticipated administration of an assessment under the purview of an EducationOrganization.';
COMMENT ON COLUMN edfixassessmentroster.AssessmentAdministrationParticipation.AdministrationIdentifier IS 'The title or name of the assessment in the context of it''s administration.';
COMMENT ON COLUMN edfixassessmentroster.AssessmentAdministrationParticipation.AssessmentIdentifier IS 'A unique number or alphanumeric code assigned to an assessment.';
COMMENT ON COLUMN edfixassessmentroster.AssessmentAdministrationParticipation.AssigningEducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN edfixassessmentroster.AssessmentAdministrationParticipation.Namespace IS 'Namespace for the assessment.';
COMMENT ON COLUMN edfixassessmentroster.AssessmentAdministrationParticipation.ParticipatingEducationOrganizationId IS 'The identifier assigned to an education organization.';

-- Extended Properties [edfixassessmentroster].[AssessmentAdministrationParticipationAdministrationContact] --
COMMENT ON TABLE edfixassessmentroster.AssessmentAdministrationParticipationAdministrationContact IS 'Pre-identified contacts for education organizations administering the assessment';
COMMENT ON COLUMN edfixassessmentroster.AssessmentAdministrationParticipationAdministrationContact.AdministrationIdentifier IS 'The title or name of the assessment in the context of it''s administration.';
COMMENT ON COLUMN edfixassessmentroster.AssessmentAdministrationParticipationAdministrationContact.AssessmentIdentifier IS 'A unique number or alphanumeric code assigned to an assessment.';
COMMENT ON COLUMN edfixassessmentroster.AssessmentAdministrationParticipationAdministrationContact.AssigningEducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN edfixassessmentroster.AssessmentAdministrationParticipationAdministrationContact.Namespace IS 'Namespace for the assessment.';
COMMENT ON COLUMN edfixassessmentroster.AssessmentAdministrationParticipationAdministrationContact.ParticipatingEducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN edfixassessmentroster.AssessmentAdministrationParticipationAdministrationContact.ElectronicMailAddress IS 'The email address for the contact.';
COMMENT ON COLUMN edfixassessmentroster.AssessmentAdministrationParticipationAdministrationContact.FirstName IS 'The conatcts''s first name';
COMMENT ON COLUMN edfixassessmentroster.AssessmentAdministrationParticipationAdministrationContact.LastSurname IS 'The contact''s last name';
COMMENT ON COLUMN edfixassessmentroster.AssessmentAdministrationParticipationAdministrationContact.LoginId IS 'The login ID for the user; used for security access control interface.';

-- Extended Properties [edfixassessmentroster].[AssessmentAdministrationPeriod] --
COMMENT ON TABLE edfixassessmentroster.AssessmentAdministrationPeriod IS 'The anticipated dates or administration window';
COMMENT ON COLUMN edfixassessmentroster.AssessmentAdministrationPeriod.AdministrationIdentifier IS 'The title or name of the assessment in the context of it''s administration.';
COMMENT ON COLUMN edfixassessmentroster.AssessmentAdministrationPeriod.AssessmentIdentifier IS 'A unique number or alphanumeric code assigned to an assessment.';
COMMENT ON COLUMN edfixassessmentroster.AssessmentAdministrationPeriod.AssigningEducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN edfixassessmentroster.AssessmentAdministrationPeriod.Namespace IS 'Namespace for the assessment.';
COMMENT ON COLUMN edfixassessmentroster.AssessmentAdministrationPeriod.BeginDate IS 'The month, day, and year for the start of the period.';
COMMENT ON COLUMN edfixassessmentroster.AssessmentAdministrationPeriod.EndDate IS 'The month, day, and year for the end of the period.';

-- Extended Properties [edfixassessmentroster].[StudentAssessmentRegistration] --
COMMENT ON TABLE edfixassessmentroster.StudentAssessmentRegistration IS 'Identifies a student who is expected to participate in particular assessment.';
COMMENT ON COLUMN edfixassessmentroster.StudentAssessmentRegistration.AdministrationIdentifier IS 'The title or name of the assessment in the context of it''s administration.';
COMMENT ON COLUMN edfixassessmentroster.StudentAssessmentRegistration.AssessmentIdentifier IS 'A unique number or alphanumeric code assigned to an assessment.';
COMMENT ON COLUMN edfixassessmentroster.StudentAssessmentRegistration.AssigningEducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN edfixassessmentroster.StudentAssessmentRegistration.EducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN edfixassessmentroster.StudentAssessmentRegistration.Namespace IS 'Namespace for the assessment.';
COMMENT ON COLUMN edfixassessmentroster.StudentAssessmentRegistration.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN edfixassessmentroster.StudentAssessmentRegistration.PlatformTypeDescriptorId IS 'The environment or format in which the assessment is expected to be administred';
COMMENT ON COLUMN edfixassessmentroster.StudentAssessmentRegistration.ReportingEducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN edfixassessmentroster.StudentAssessmentRegistration.TestingEducationOrganizationId IS 'The identifier assigned to an education organization.';

-- Extended Properties [edfixassessmentroster].[StudentAssessmentRegistrationAssessmentCustomization] --
COMMENT ON TABLE edfixassessmentroster.StudentAssessmentRegistrationAssessmentCustomization IS 'Key/value pairs which may be used to facilitate customization of an assessment or to support vendor reporting/analysis';
COMMENT ON COLUMN edfixassessmentroster.StudentAssessmentRegistrationAssessmentCustomization.AdministrationIdentifier IS 'The title or name of the assessment in the context of it''s administration.';
COMMENT ON COLUMN edfixassessmentroster.StudentAssessmentRegistrationAssessmentCustomization.AssessmentIdentifier IS 'A unique number or alphanumeric code assigned to an assessment.';
COMMENT ON COLUMN edfixassessmentroster.StudentAssessmentRegistrationAssessmentCustomization.AssigningEducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN edfixassessmentroster.StudentAssessmentRegistrationAssessmentCustomization.EducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN edfixassessmentroster.StudentAssessmentRegistrationAssessmentCustomization.Namespace IS 'Namespace for the assessment.';
COMMENT ON COLUMN edfixassessmentroster.StudentAssessmentRegistrationAssessmentCustomization.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN edfixassessmentroster.StudentAssessmentRegistrationAssessmentCustomization.IdentificationCode IS 'An agreed upon code identifying the value for customization or reporting';
COMMENT ON COLUMN edfixassessmentroster.StudentAssessmentRegistrationAssessmentCustomization.CustomizationValue IS 'The value indicated for customization or reporting';

