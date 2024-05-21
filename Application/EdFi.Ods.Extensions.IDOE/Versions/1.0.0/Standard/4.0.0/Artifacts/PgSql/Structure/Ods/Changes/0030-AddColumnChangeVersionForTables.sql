-- For performance reasons on existing data sets, all existing records will start with ChangeVersion of 0.
DO $$
BEGIN
IF NOT EXISTS (SELECT 1 FROM information_schema.columns WHERE table_schema='idoe' AND table_name='assessmentaccommodation' AND column_name='changeversion') THEN
ALTER TABLE idoe.AssessmentAccommodation ADD ChangeVersion BIGINT DEFAULT (0) NOT NULL;
ALTER TABLE idoe.AssessmentAccommodation ALTER ChangeVersion SET DEFAULT nextval('changes.ChangeVersionSequence');
END IF;

IF NOT EXISTS (SELECT 1 FROM information_schema.columns WHERE table_schema='idoe' AND table_name='educationorganizationotherpersonnel' AND column_name='changeversion') THEN
ALTER TABLE idoe.EducationOrganizationOtherPersonnel ADD ChangeVersion BIGINT DEFAULT (0) NOT NULL;
ALTER TABLE idoe.EducationOrganizationOtherPersonnel ALTER ChangeVersion SET DEFAULT nextval('changes.ChangeVersionSequence');
END IF;

IF NOT EXISTS (SELECT 1 FROM information_schema.columns WHERE table_schema='idoe' AND table_name='studenteducationorganizationassessmentaccommodation' AND column_name='changeversion') THEN
ALTER TABLE idoe.StudentEducationOrganizationAssessmentAccommodation ADD ChangeVersion BIGINT DEFAULT (0) NOT NULL;
ALTER TABLE idoe.StudentEducationOrganizationAssessmentAccommodation ALTER ChangeVersion SET DEFAULT nextval('changes.ChangeVersionSequence');
END IF;

END
$$;
