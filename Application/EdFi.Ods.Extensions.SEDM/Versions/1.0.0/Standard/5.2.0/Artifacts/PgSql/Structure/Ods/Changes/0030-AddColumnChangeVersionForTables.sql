-- For performance reasons on existing data sets, all existing records will start with ChangeVersion of 0.
DO $$
BEGIN
IF NOT EXISTS (SELECT 1 FROM information_schema.columns WHERE table_schema='sedm' AND table_name='ideaevent' AND column_name='changeversion') THEN
ALTER TABLE sedm.IDEAEvent ADD ChangeVersion BIGINT DEFAULT (0) NOT NULL;
ALTER TABLE sedm.IDEAEvent ALTER ChangeVersion SET DEFAULT nextval('changes.ChangeVersionSequence');
END IF;

IF NOT EXISTS (SELECT 1 FROM information_schema.columns WHERE table_schema='sedm' AND table_name='studentiep' AND column_name='changeversion') THEN
ALTER TABLE sedm.StudentIEP ADD ChangeVersion BIGINT DEFAULT (0) NOT NULL;
ALTER TABLE sedm.StudentIEP ALTER ChangeVersion SET DEFAULT nextval('changes.ChangeVersionSequence');
END IF;

IF NOT EXISTS (SELECT 1 FROM information_schema.columns WHERE table_schema='sedm' AND table_name='studentiepaccommodationcollection' AND column_name='changeversion') THEN
ALTER TABLE sedm.StudentIEPAccommodationCollection ADD ChangeVersion BIGINT DEFAULT (0) NOT NULL;
ALTER TABLE sedm.StudentIEPAccommodationCollection ALTER ChangeVersion SET DEFAULT nextval('changes.ChangeVersionSequence');
END IF;

IF NOT EXISTS (SELECT 1 FROM information_schema.columns WHERE table_schema='sedm' AND table_name='studentiepdisabilitycollection' AND column_name='changeversion') THEN
ALTER TABLE sedm.StudentIEPDisabilityCollection ADD ChangeVersion BIGINT DEFAULT (0) NOT NULL;
ALTER TABLE sedm.StudentIEPDisabilityCollection ALTER ChangeVersion SET DEFAULT nextval('changes.ChangeVersionSequence');
END IF;

IF NOT EXISTS (SELECT 1 FROM information_schema.columns WHERE table_schema='sedm' AND table_name='studentiepgoal' AND column_name='changeversion') THEN
ALTER TABLE sedm.StudentIEPGoal ADD ChangeVersion BIGINT DEFAULT (0) NOT NULL;
ALTER TABLE sedm.StudentIEPGoal ALTER ChangeVersion SET DEFAULT nextval('changes.ChangeVersionSequence');
END IF;

IF NOT EXISTS (SELECT 1 FROM information_schema.columns WHERE table_schema='sedm' AND table_name='studentiepservicedelivery' AND column_name='changeversion') THEN
ALTER TABLE sedm.StudentIEPServiceDelivery ADD ChangeVersion BIGINT DEFAULT (0) NOT NULL;
ALTER TABLE sedm.StudentIEPServiceDelivery ALTER ChangeVersion SET DEFAULT nextval('changes.ChangeVersionSequence');
END IF;

IF NOT EXISTS (SELECT 1 FROM information_schema.columns WHERE table_schema='sedm' AND table_name='studentiepserviceprescription' AND column_name='changeversion') THEN
ALTER TABLE sedm.StudentIEPServicePrescription ADD ChangeVersion BIGINT DEFAULT (0) NOT NULL;
ALTER TABLE sedm.StudentIEPServicePrescription ALTER ChangeVersion SET DEFAULT nextval('changes.ChangeVersionSequence');
END IF;

END
$$;
