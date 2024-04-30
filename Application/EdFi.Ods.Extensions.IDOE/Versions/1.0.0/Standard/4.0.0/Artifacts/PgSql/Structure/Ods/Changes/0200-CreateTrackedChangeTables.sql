DO $$
BEGIN

IF NOT EXISTS (SELECT 1 FROM information_schema.schemata WHERE schema_name = 'tracked_changes_idoe') THEN
CREATE SCHEMA tracked_changes_idoe;
END IF;

IF NOT EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'tracked_changes_idoe' AND table_name = 'assessmentaccommodation') THEN
CREATE TABLE tracked_changes_idoe.assessmentaccommodation
(
       oldacademicsubjectdescriptorid INT NOT NULL,
       oldacademicsubjectdescriptornamespace VARCHAR(255) NOT NULL,
       oldacademicsubjectdescriptorcodevalue VARCHAR(50) NOT NULL,
       oldaccommodationdescriptorid INT NOT NULL,
       oldaccommodationdescriptornamespace VARCHAR(255) NOT NULL,
       oldaccommodationdescriptorcodevalue VARCHAR(50) NOT NULL,
       oldassessmentidentifier VARCHAR(60) NOT NULL,
       oldnamespace VARCHAR(255) NOT NULL,
       newacademicsubjectdescriptorid INT NULL,
       newacademicsubjectdescriptornamespace VARCHAR(255) NULL,
       newacademicsubjectdescriptorcodevalue VARCHAR(50) NULL,
       newaccommodationdescriptorid INT NULL,
       newaccommodationdescriptornamespace VARCHAR(255) NULL,
       newaccommodationdescriptorcodevalue VARCHAR(50) NULL,
       newassessmentidentifier VARCHAR(60) NULL,
       newnamespace VARCHAR(255) NULL,
       id uuid NOT NULL,
       changeversion bigint NOT NULL,
       discriminator varchar(128) NULL,
       createdate timestamp NOT NULL DEFAULT (now()),
       CONSTRAINT assessmentaccommodation_pk PRIMARY KEY (ChangeVersion)
);
END IF;

IF NOT EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'tracked_changes_idoe' AND table_name = 'educationorganizationotherpersonnel') THEN
CREATE TABLE tracked_changes_idoe.educationorganizationotherpersonnel
(
       oldlocaleducationagencyid INT NOT NULL,
       oldotherpersonnelcategorydescriptorid INT NOT NULL,
       oldotherpersonnelcategorydescriptornamespace VARCHAR(255) NOT NULL,
       oldotherpersonnelcategorydescriptorcodevalue VARCHAR(50) NOT NULL,
       oldotherpersonneltitledescriptorid INT NOT NULL,
       oldotherpersonneltitledescriptornamespace VARCHAR(255) NOT NULL,
       oldotherpersonneltitledescriptorcodevalue VARCHAR(50) NOT NULL,
       newlocaleducationagencyid INT NULL,
       newotherpersonnelcategorydescriptorid INT NULL,
       newotherpersonnelcategorydescriptornamespace VARCHAR(255) NULL,
       newotherpersonnelcategorydescriptorcodevalue VARCHAR(50) NULL,
       newotherpersonneltitledescriptorid INT NULL,
       newotherpersonneltitledescriptornamespace VARCHAR(255) NULL,
       newotherpersonneltitledescriptorcodevalue VARCHAR(50) NULL,
       id uuid NOT NULL,
       changeversion bigint NOT NULL,
       discriminator varchar(128) NULL,
       createdate timestamp NOT NULL DEFAULT (now()),
       CONSTRAINT educationorganizationotherpersonnel_pk PRIMARY KEY (ChangeVersion)
);
END IF;

IF NOT EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'tracked_changes_idoe' AND table_name = 'studenteducationorganizationassessmentaccommodation') THEN
CREATE TABLE tracked_changes_idoe.studenteducationorganizationassessmentaccommodation
(
       oldacademicsubjectdescriptorid INT NOT NULL,
       oldacademicsubjectdescriptornamespace VARCHAR(255) NOT NULL,
       oldacademicsubjectdescriptorcodevalue VARCHAR(50) NOT NULL,
       oldaccommodationdescriptorid INT NOT NULL,
       oldaccommodationdescriptornamespace VARCHAR(255) NOT NULL,
       oldaccommodationdescriptorcodevalue VARCHAR(50) NOT NULL,
       oldassessmentidentifier VARCHAR(60) NOT NULL,
       oldeducationorganizationid INT NOT NULL,
       oldnamespace VARCHAR(255) NOT NULL,
       oldstudentusi INT NOT NULL,
       oldstudentuniqueid VARCHAR(32) NOT NULL,
       newacademicsubjectdescriptorid INT NULL,
       newacademicsubjectdescriptornamespace VARCHAR(255) NULL,
       newacademicsubjectdescriptorcodevalue VARCHAR(50) NULL,
       newaccommodationdescriptorid INT NULL,
       newaccommodationdescriptornamespace VARCHAR(255) NULL,
       newaccommodationdescriptorcodevalue VARCHAR(50) NULL,
       newassessmentidentifier VARCHAR(60) NULL,
       neweducationorganizationid INT NULL,
       newnamespace VARCHAR(255) NULL,
       newstudentusi INT NULL,
       newstudentuniqueid VARCHAR(32) NULL,
       id uuid NOT NULL,
       changeversion bigint NOT NULL,
       discriminator varchar(128) NULL,
       createdate timestamp NOT NULL DEFAULT (now()),
       CONSTRAINT studenteducationorganizationassessmentaccommodation_pk PRIMARY KEY (ChangeVersion)
);
END IF;

END
$$;
