-- Extended Properties [idoe].[AccreditationDescriptor] --
COMMENT ON TABLE idoe.AccreditationDescriptor IS 'School accreditation (e.g. Accreditted, Not State Accreditted, Recognized Program).';
COMMENT ON COLUMN idoe.AccreditationDescriptor.AccreditationDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [idoe].[ADMCodeDescriptor] --
COMMENT ON TABLE idoe.ADMCodeDescriptor IS 'Student is enrolled and attending this reported school as a Resident Enrollment,Transfers Out, Cash Transfers, State Obligations, Placements In, or Dual Enrollment.';
COMMENT ON COLUMN idoe.ADMCodeDescriptor.ADMCodeDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [idoe].[AlternativeEducationEligibilityReasonDescriptor] --
COMMENT ON TABLE idoe.AlternativeEducationEligibilityReasonDescriptor IS 'The primary reason for eligibiliy in the alternative education program.';
COMMENT ON COLUMN idoe.AlternativeEducationEligibilityReasonDescriptor.AlternativeEducationEligibilityReasonDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [idoe].[ArrestReasonDescriptor] --
COMMENT ON TABLE idoe.ArrestReasonDescriptor IS 'The arrest reason codes for a discipline action.';
COMMENT ON COLUMN idoe.ArrestReasonDescriptor.ArrestReasonDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [idoe].[AssessmentAccommodation] --
COMMENT ON TABLE idoe.AssessmentAccommodation IS 'This entity represents the variations used in how an assessment is presented or taken.';
COMMENT ON COLUMN idoe.AssessmentAccommodation.AcademicSubjectDescriptorId IS 'This descriptor holds the description of the content or subject area (e.g., arts, mathematics, reading, stenography, or a foreign language).';
COMMENT ON COLUMN idoe.AssessmentAccommodation.AccommodationDescriptorId IS 'This descriptor defines variations used in how an assessment is presented or taken.';
COMMENT ON COLUMN idoe.AssessmentAccommodation.AssessmentIdentifier IS 'A unique number or alphanumeric code assigned to an assessment.';
COMMENT ON COLUMN idoe.AssessmentAccommodation.Namespace IS 'Namespace for the assessment.';

-- Extended Properties [idoe].[CalendarDateExtension] --
COMMENT ON TABLE idoe.CalendarDateExtension IS '';
COMMENT ON COLUMN idoe.CalendarDateExtension.CalendarCode IS 'The identifier for the calendar.';
COMMENT ON COLUMN idoe.CalendarDateExtension.Date IS 'The month, day, and year of the calendar event.';
COMMENT ON COLUMN idoe.CalendarDateExtension.SchoolId IS 'The identifier assigned to a school.';
COMMENT ON COLUMN idoe.CalendarDateExtension.SchoolYear IS 'The identifier for the school year associated with the calendar.';
COMMENT ON COLUMN idoe.CalendarDateExtension.EventDuration IS 'The amount of time for the event as recognized by the school: 1 day = 1, 1/2 day = 0.5, 1/3 day = 0.33.';
COMMENT ON COLUMN idoe.CalendarDateExtension.EventMinutes IS 'The amount of time for the event in minutes as recognized by the school.';

-- Extended Properties [idoe].[CalendarExtension] --
COMMENT ON TABLE idoe.CalendarExtension IS '';
COMMENT ON COLUMN idoe.CalendarExtension.CalendarCode IS 'The identifier for the calendar.';
COMMENT ON COLUMN idoe.CalendarExtension.SchoolId IS 'The identifier assigned to a school.';
COMMENT ON COLUMN idoe.CalendarExtension.SchoolYear IS 'The identifier for the school year associated with the calendar.';
COMMENT ON COLUMN idoe.CalendarExtension.InstructionalTimeInMinutesIndicator IS 'Indicator of whether or not a school is calculating instructional time in minutes instead of days.';

-- Extended Properties [idoe].[CircumstancesRelevantToTimelineDescriptor] --
COMMENT ON TABLE idoe.CircumstancesRelevantToTimelineDescriptor IS 'The circumstance relevant to the evaluation timeline.';
COMMENT ON COLUMN idoe.CircumstancesRelevantToTimelineDescriptor.CircumstancesRelevantToTimelineDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [idoe].[CriminalGangRelatedEventDescriptor] --
COMMENT ON TABLE idoe.CriminalGangRelatedEventDescriptor IS 'The criminal gang related participation of a student in a discipline incident.';
COMMENT ON COLUMN idoe.CriminalGangRelatedEventDescriptor.CriminalGangRelatedEventDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [idoe].[DisciplineActionExtension] --
COMMENT ON TABLE idoe.DisciplineActionExtension IS '';
COMMENT ON COLUMN idoe.DisciplineActionExtension.DisciplineActionIdentifier IS 'Identifier assigned by the education organization to the discipline action.';
COMMENT ON COLUMN idoe.DisciplineActionExtension.DisciplineDate IS 'The date of the discipline action.';
COMMENT ON COLUMN idoe.DisciplineActionExtension.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN idoe.DisciplineActionExtension.ArrestReasonDescriptorId IS 'The arrest reason codes for a discipline action.';
COMMENT ON COLUMN idoe.DisciplineActionExtension.DisciplineActionServiceDescriptorId IS 'The services provided for the student during a discipline action.';
COMMENT ON COLUMN idoe.DisciplineActionExtension.InterimAlternativeEducationSetting IS 'Indicator to denote if the special education student was referred to an interim alternative education setting.';
COMMENT ON COLUMN idoe.DisciplineActionExtension.StudentArrestDescriptorId IS 'The arrest type for a discipline action.';

-- Extended Properties [idoe].[DisciplineActionServiceDescriptor] --
COMMENT ON TABLE idoe.DisciplineActionServiceDescriptor IS 'The services provided for the student during a discipline action.';
COMMENT ON COLUMN idoe.DisciplineActionServiceDescriptor.DisciplineActionServiceDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [idoe].[EducationOrganizationOtherPersonnel] --
COMMENT ON TABLE idoe.EducationOrganizationOtherPersonnel IS 'Noncertified and other personnel employed by the School Corporation, organized by category (e.g., Office, Clerical, Cafeteria, Maintenance).';
COMMENT ON COLUMN idoe.EducationOrganizationOtherPersonnel.LocalEducationAgencyId IS 'The identifier assigned to a local education agency.';
COMMENT ON COLUMN idoe.EducationOrganizationOtherPersonnel.OtherPersonnelCategoryDescriptorId IS 'Category for noncertified and other personnel.';
COMMENT ON COLUMN idoe.EducationOrganizationOtherPersonnel.OtherPersonnelTitleDescriptorId IS 'Position title for noncertified and other personnel.';
COMMENT ON COLUMN idoe.EducationOrganizationOtherPersonnel.FullTimeEquivalency IS 'The ratio between the hours of work expected in a position and the hours of work normally expected in a full-time position in the same setting.';
COMMENT ON COLUMN idoe.EducationOrganizationOtherPersonnel.OtherPersonnelCount IS 'Total number of noncertified and other personnel employed by the school corporation by position title.';

-- Extended Properties [idoe].[ELLInstrumentUsedDescriptor] --
COMMENT ON TABLE idoe.ELLInstrumentUsedDescriptor IS 'The instrument used to measure the English proficiency level.';
COMMENT ON COLUMN idoe.ELLInstrumentUsedDescriptor.ELLInstrumentUsedDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [idoe].[OtherPersonnelCategoryDescriptor] --
COMMENT ON TABLE idoe.OtherPersonnelCategoryDescriptor IS 'Category for noncertified and other personnel.';
COMMENT ON COLUMN idoe.OtherPersonnelCategoryDescriptor.OtherPersonnelCategoryDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [idoe].[OtherPersonnelTitleDescriptor] --
COMMENT ON TABLE idoe.OtherPersonnelTitleDescriptor IS 'Position title for noncertified and other personnel.';
COMMENT ON COLUMN idoe.OtherPersonnelTitleDescriptor.OtherPersonnelTitleDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [idoe].[ProgramMeetingTimeDescriptor] --
COMMENT ON TABLE idoe.ProgramMeetingTimeDescriptor IS 'The time of day the student attends the program.';
COMMENT ON COLUMN idoe.ProgramMeetingTimeDescriptor.ProgramMeetingTimeDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [idoe].[SchoolExtension] --
COMMENT ON TABLE idoe.SchoolExtension IS '';
COMMENT ON COLUMN idoe.SchoolExtension.SchoolId IS 'The identifier assigned to a school.';
COMMENT ON COLUMN idoe.SchoolExtension.AccreditationDescriptorId IS 'School accreditation (e.g. Accreditted, Not State Accreditted, Recognized Program).';
COMMENT ON COLUMN idoe.SchoolExtension.ChoiceIndicator IS 'Indicator of whether or not the school is a Choice School.';
COMMENT ON COLUMN idoe.SchoolExtension.FreewayBeginDate IS 'Freeway accreditation begin date.';
COMMENT ON COLUMN idoe.SchoolExtension.FreewayEndDate IS 'Freeway accreditation end date.';

-- Extended Properties [idoe].[StaffEducationOrganizationEmploymentAssociationContract] --
COMMENT ON TABLE idoe.StaffEducationOrganizationEmploymentAssociationContract IS 'Contract information for the staff member with the education organization (e.g. Contract Days, Contract Salary).';
COMMENT ON COLUMN idoe.StaffEducationOrganizationEmploymentAssociationContract.EducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN idoe.StaffEducationOrganizationEmploymentAssociationContract.EmploymentStatusDescriptorId IS 'Reflects the type of employment or contract.';
COMMENT ON COLUMN idoe.StaffEducationOrganizationEmploymentAssociationContract.HireDate IS 'The month, day, and year on which an individual was hired for a position.';
COMMENT ON COLUMN idoe.StaffEducationOrganizationEmploymentAssociationContract.StaffUSI IS 'A unique alphanumeric code assigned to a staff.';
COMMENT ON COLUMN idoe.StaffEducationOrganizationEmploymentAssociationContract.ContractDays IS 'Accurate number of days employed in this school corporation during the period of July 1 to June 30.';
COMMENT ON COLUMN idoe.StaffEducationOrganizationEmploymentAssociationContract.ContractSalary IS 'Full-year, base salary during July 1 to June 30 in whole dollar amounts. Report full year base salary and not the prorated amount the teacher will receive if not employed the full year.';
COMMENT ON COLUMN idoe.StaffEducationOrganizationEmploymentAssociationContract.PercentTitleISalary IS 'The total percent of the employee''s salary that is paid by Title I. Base salary only. Allowable format is whole numbers only.';
COMMENT ON COLUMN idoe.StaffEducationOrganizationEmploymentAssociationContract.SupplementalSalary IS 'The total supplemental salary for additional work, such as extended contracts, extracurricular, etc.? Earnings are to be July 1 to June 30. Allowable format is full dollars. Supplemental service teacher contracts (Summer School, Adult Education, and GED) are to be included.';

-- Extended Properties [idoe].[StaffEducationOrganizationEmploymentAssociationExtension] --
COMMENT ON TABLE idoe.StaffEducationOrganizationEmploymentAssociationExtension IS '';
COMMENT ON COLUMN idoe.StaffEducationOrganizationEmploymentAssociationExtension.EducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN idoe.StaffEducationOrganizationEmploymentAssociationExtension.EmploymentStatusDescriptorId IS 'Reflects the type of employment or contract.';
COMMENT ON COLUMN idoe.StaffEducationOrganizationEmploymentAssociationExtension.HireDate IS 'The month, day, and year on which an individual was hired for a position.';
COMMENT ON COLUMN idoe.StaffEducationOrganizationEmploymentAssociationExtension.StaffUSI IS 'A unique alphanumeric code assigned to a staff.';
COMMENT ON COLUMN idoe.StaffEducationOrganizationEmploymentAssociationExtension.YearsOfPriorProfessionalExperience IS 'The total number of years that an individual has previously held a similar professional position in one or more education institutions.';

-- Extended Properties [idoe].[StudentAlternativeEducationProgramAssociation] --
COMMENT ON TABLE idoe.StudentAlternativeEducationProgramAssociation IS 'Additional information on a student enrolled in an Alternative Education Program.';
COMMENT ON COLUMN idoe.StudentAlternativeEducationProgramAssociation.BeginDate IS 'The earliest date the student is involved with the program. Typically, this is the date the student becomes eligible for the program.';
COMMENT ON COLUMN idoe.StudentAlternativeEducationProgramAssociation.EducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN idoe.StudentAlternativeEducationProgramAssociation.ProgramEducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN idoe.StudentAlternativeEducationProgramAssociation.ProgramName IS 'The formal name of the program of instruction, training, services, or benefits available through federal, state, or local agencies.';
COMMENT ON COLUMN idoe.StudentAlternativeEducationProgramAssociation.ProgramTypeDescriptorId IS 'The type of program.';
COMMENT ON COLUMN idoe.StudentAlternativeEducationProgramAssociation.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN idoe.StudentAlternativeEducationProgramAssociation.AlternativeEducationEligibilityReasonDescriptorId IS 'The primary reason for eligibiliy in the alternative education program.';

-- Extended Properties [idoe].[StudentAlternativeEducationProgramAssociationProgramMeetingTime] --
COMMENT ON TABLE idoe.StudentAlternativeEducationProgramAssociationProgramMeetingTime IS 'The time of day the student attends the alternative education program.';
COMMENT ON COLUMN idoe.StudentAlternativeEducationProgramAssociationProgramMeetingTime.BeginDate IS 'The earliest date the student is involved with the program. Typically, this is the date the student becomes eligible for the program.';
COMMENT ON COLUMN idoe.StudentAlternativeEducationProgramAssociationProgramMeetingTime.EducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN idoe.StudentAlternativeEducationProgramAssociationProgramMeetingTime.ProgramEducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN idoe.StudentAlternativeEducationProgramAssociationProgramMeetingTime.ProgramName IS 'The formal name of the program of instruction, training, services, or benefits available through federal, state, or local agencies.';
COMMENT ON COLUMN idoe.StudentAlternativeEducationProgramAssociationProgramMeetingTime.ProgramTypeDescriptorId IS 'The type of program.';
COMMENT ON COLUMN idoe.StudentAlternativeEducationProgramAssociationProgramMeetingTime.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN idoe.StudentAlternativeEducationProgramAssociationProgramMeetingTime.ProgramMeetingTimeDescriptorId IS 'The time of day the student attends the alternative education program.';

-- Extended Properties [idoe].[StudentArrestDescriptor] --
COMMENT ON TABLE idoe.StudentArrestDescriptor IS 'The arrest type for a discipline action.';
COMMENT ON COLUMN idoe.StudentArrestDescriptor.StudentArrestDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [idoe].[StudentCurricularMaterialProgramAssociation] --
COMMENT ON TABLE idoe.StudentCurricularMaterialProgramAssociation IS 'Additional information on a student enrolled in an Curricular Material Program.';
COMMENT ON COLUMN idoe.StudentCurricularMaterialProgramAssociation.BeginDate IS 'The earliest date the student is involved with the program. Typically, this is the date the student becomes eligible for the program.';
COMMENT ON COLUMN idoe.StudentCurricularMaterialProgramAssociation.EducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN idoe.StudentCurricularMaterialProgramAssociation.ProgramEducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN idoe.StudentCurricularMaterialProgramAssociation.ProgramName IS 'The formal name of the program of instruction, training, services, or benefits available through federal, state, or local agencies.';
COMMENT ON COLUMN idoe.StudentCurricularMaterialProgramAssociation.ProgramTypeDescriptorId IS 'The type of program.';
COMMENT ON COLUMN idoe.StudentCurricularMaterialProgramAssociation.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN idoe.StudentCurricularMaterialProgramAssociation.LivesWithParentUSI IS 'A unique alphanumeric code assigned to a parent.';
COMMENT ON COLUMN idoe.StudentCurricularMaterialProgramAssociation.StudentDoesNotLiveWithParent IS 'Flag to indicate that student does not live with parent.';

-- Extended Properties [idoe].[StudentDisciplineIncidentBehaviorAssociationExtension] --
COMMENT ON TABLE idoe.StudentDisciplineIncidentBehaviorAssociationExtension IS '';
COMMENT ON COLUMN idoe.StudentDisciplineIncidentBehaviorAssociationExtension.BehaviorDescriptorId IS 'Describes behavior by category.';
COMMENT ON COLUMN idoe.StudentDisciplineIncidentBehaviorAssociationExtension.IncidentIdentifier IS 'A locally assigned unique identifier (within the school or school district) to identify each specific DisciplineIncident or occurrence. The same identifier should be used to document the entire discipline incident even if it included multiple offenses and multiple offenders.';
COMMENT ON COLUMN idoe.StudentDisciplineIncidentBehaviorAssociationExtension.SchoolId IS 'The identifier assigned to a school.';
COMMENT ON COLUMN idoe.StudentDisciplineIncidentBehaviorAssociationExtension.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN idoe.StudentDisciplineIncidentBehaviorAssociationExtension.CriminalGangRelatedEventDescriptorId IS 'The criminal gang related participation of a student in a discipline incident.';

-- Extended Properties [idoe].[StudentEducationOrganizationAssessmentAccommodation] --
COMMENT ON TABLE idoe.StudentEducationOrganizationAssessmentAccommodation IS 'This entity represents the variations used in how an assessment is presented or taken.';
COMMENT ON COLUMN idoe.StudentEducationOrganizationAssessmentAccommodation.AcademicSubjectDescriptorId IS 'This descriptor holds the description of the content or subject area (e.g., arts, mathematics, reading, stenography, or a foreign language).';
COMMENT ON COLUMN idoe.StudentEducationOrganizationAssessmentAccommodation.AccommodationDescriptorId IS 'This descriptor defines variations used in how an assessment is presented or taken.';
COMMENT ON COLUMN idoe.StudentEducationOrganizationAssessmentAccommodation.AssessmentIdentifier IS 'A unique number or alphanumeric code assigned to an assessment.';
COMMENT ON COLUMN idoe.StudentEducationOrganizationAssessmentAccommodation.EducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN idoe.StudentEducationOrganizationAssessmentAccommodation.Namespace IS 'Namespace for the assessment.';
COMMENT ON COLUMN idoe.StudentEducationOrganizationAssessmentAccommodation.StudentUSI IS 'A unique alphanumeric code assigned to a student.';

-- Extended Properties [idoe].[StudentEducationOrganizationAssociationExtension] --
COMMENT ON TABLE idoe.StudentEducationOrganizationAssociationExtension IS '';
COMMENT ON COLUMN idoe.StudentEducationOrganizationAssociationExtension.EducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN idoe.StudentEducationOrganizationAssociationExtension.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN idoe.StudentEducationOrganizationAssociationExtension.ELLInstrumentUsedDescriptorId IS 'The instrument used to measure the English proficiency level.';
COMMENT ON COLUMN idoe.StudentEducationOrganizationAssociationExtension.USInitialSchoolEntry IS 'US initial school entry date';

-- Extended Properties [idoe].[StudentEducationOrganizationResponsibilityAssociationAdd_6c4efc] --
COMMENT ON TABLE idoe.StudentEducationOrganizationResponsibilityAssociationAdd_6c4efc IS 'Additional education organization responsibility designation for the student.';
COMMENT ON COLUMN idoe.StudentEducationOrganizationResponsibilityAssociationAdd_6c4efc.BeginDate IS 'Month, day, and year of the start date of an education organization''s responsibility for a student.';
COMMENT ON COLUMN idoe.StudentEducationOrganizationResponsibilityAssociationAdd_6c4efc.EducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN idoe.StudentEducationOrganizationResponsibilityAssociationAdd_6c4efc.ResponsibilityDescriptorId IS 'Indications of an education organization''s responsibility for a student, such as accountability, attendance, funding, etc.';
COMMENT ON COLUMN idoe.StudentEducationOrganizationResponsibilityAssociationAdd_6c4efc.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN idoe.StudentEducationOrganizationResponsibilityAssociationAdd_6c4efc.SchoolCorpId IS 'The state identifier for the school corporation with the assigned responsibility to the student.';
COMMENT ON COLUMN idoe.StudentEducationOrganizationResponsibilityAssociationAdd_6c4efc.SchoolCorpResponsibilityDescriptorId IS 'An indication of the education organization''s responsibility for a student.';

-- Extended Properties [idoe].[StudentEducationOrganizationResponsibilityAssociationExtension] --
COMMENT ON TABLE idoe.StudentEducationOrganizationResponsibilityAssociationExtension IS '';
COMMENT ON COLUMN idoe.StudentEducationOrganizationResponsibilityAssociationExtension.BeginDate IS 'Month, day, and year of the start date of an education organization''s responsibility for a student.';
COMMENT ON COLUMN idoe.StudentEducationOrganizationResponsibilityAssociationExtension.EducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN idoe.StudentEducationOrganizationResponsibilityAssociationExtension.ResponsibilityDescriptorId IS 'Indications of an education organization''s responsibility for a student, such as accountability, attendance, funding, etc.';
COMMENT ON COLUMN idoe.StudentEducationOrganizationResponsibilityAssociationExtension.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN idoe.StudentEducationOrganizationResponsibilityAssociationExtension.ADMCodeDescriptorId IS 'Student is enrolled and attending this reported school as a Resident Enrollment,Transfers Out, Cash Transfers, State Obligations, Placements In, or Dual Enrollment.';
COMMENT ON COLUMN idoe.StudentEducationOrganizationResponsibilityAssociationExtension.InstructionalDays IS 'The number of instructional days for the student at the education organization for a given school year. Allowable values are 1 - 180.';
COMMENT ON COLUMN idoe.StudentEducationOrganizationResponsibilityAssociationExtension.InstructionalMinutes IS 'The number of instructional days for the student at the education organization during the course of one full day. Allowable values are 1 - 400.';

-- Extended Properties [idoe].[StudentSpecialEducationProgramAssociationExtension] --
COMMENT ON TABLE idoe.StudentSpecialEducationProgramAssociationExtension IS '';
COMMENT ON COLUMN idoe.StudentSpecialEducationProgramAssociationExtension.BeginDate IS 'The earliest date the student is involved with the program. Typically, this is the date the student becomes eligible for the program.';
COMMENT ON COLUMN idoe.StudentSpecialEducationProgramAssociationExtension.EducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN idoe.StudentSpecialEducationProgramAssociationExtension.ProgramEducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN idoe.StudentSpecialEducationProgramAssociationExtension.ProgramName IS 'The formal name of the program of instruction, training, services, or benefits available through federal, state, or local agencies.';
COMMENT ON COLUMN idoe.StudentSpecialEducationProgramAssociationExtension.ProgramTypeDescriptorId IS 'The type of program.';
COMMENT ON COLUMN idoe.StudentSpecialEducationProgramAssociationExtension.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN idoe.StudentSpecialEducationProgramAssociationExtension.CircumstancesRelevantToTimelineDescriptorId IS 'The circumstance relevant to the evaluation timeline.';
COMMENT ON COLUMN idoe.StudentSpecialEducationProgramAssociationExtension.FirstStepsTransitionDate IS 'On what date did special education services begin for the student transitioning from first steps? Allowable formats are MMDDYYYY and MM/DD/YYYY. Report only if student is transitioning from First Steps.';
COMMENT ON COLUMN idoe.StudentSpecialEducationProgramAssociationExtension.ParentalConsentDate IS 'The date used to consider the evaluation timeline? Allowable formats are MMDDYYYY and MM/DD/YYYY. Date must be instructional day in your school calendar. If referral occurred in summer, parent constent / referal date should be first day of current school year.';
COMMENT ON COLUMN idoe.StudentSpecialEducationProgramAssociationExtension.TimelineComplianceDescriptorId IS 'Reason the special education deadline was missed or services did not begin.';

-- Extended Properties [idoe].[TimelineComplianceDescriptor] --
COMMENT ON TABLE idoe.TimelineComplianceDescriptor IS 'Reason the special education deadline was missed or services did not begin.';
COMMENT ON COLUMN idoe.TimelineComplianceDescriptor.TimelineComplianceDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

