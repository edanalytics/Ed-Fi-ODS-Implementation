-- For performance reasons on existing data sets, all existing records will start with ChangeVersion of 0.
DO $$
BEGIN
IF NOT EXISTS (SELECT 1 FROM information_schema.columns WHERE table_schema='gadoe' AND table_name='localeducationagencystatistic' AND column_name='changeversion') THEN
ALTER TABLE gadoe.LocalEducationAgencyStatistic ADD ChangeVersion BIGINT DEFAULT (0) NOT NULL;
ALTER TABLE gadoe.LocalEducationAgencyStatistic ALTER ChangeVersion SET DEFAULT nextval('changes.ChangeVersionSequence');
END IF;

IF NOT EXISTS (SELECT 1 FROM information_schema.columns WHERE table_schema='gadoe' AND table_name='schoolstatistic' AND column_name='changeversion') THEN
ALTER TABLE gadoe.SchoolStatistic ADD ChangeVersion BIGINT DEFAULT (0) NOT NULL;
ALTER TABLE gadoe.SchoolStatistic ALTER ChangeVersion SET DEFAULT nextval('changes.ChangeVersionSequence');
END IF;

IF NOT EXISTS (SELECT 1 FROM information_schema.columns WHERE table_schema='gadoe' AND table_name='studentspecialeducationassociationevent' AND column_name='changeversion') THEN
ALTER TABLE gadoe.StudentSpecialEducationAssociationEvent ADD ChangeVersion BIGINT DEFAULT (0) NOT NULL;
ALTER TABLE gadoe.StudentSpecialEducationAssociationEvent ALTER ChangeVersion SET DEFAULT nextval('changes.ChangeVersionSequence');
END IF;

END
$$;
