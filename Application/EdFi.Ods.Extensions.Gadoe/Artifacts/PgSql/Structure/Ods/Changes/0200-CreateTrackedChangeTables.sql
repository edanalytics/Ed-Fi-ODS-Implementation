DO $$
BEGIN

IF NOT EXISTS (SELECT 1 FROM information_schema.schemata WHERE schema_name = 'tracked_changes_gadoe') THEN
CREATE SCHEMA tracked_changes_gadoe;
END IF;

IF NOT EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'tracked_changes_gadoe' AND table_name = 'localeducationagencystatistic') THEN
CREATE TABLE tracked_changes_gadoe.localeducationagencystatistic
(
       oldeducationorganizationid INT NOT NULL,
       neweducationorganizationid INT NULL,
       id uuid NOT NULL,
       changeversion bigint NOT NULL,
       discriminator varchar(128) NULL,
       createdate timestamp NOT NULL DEFAULT (now()),
       CONSTRAINT localeducationagencystatistic_pk PRIMARY KEY (ChangeVersion)
);
END IF;

IF NOT EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'tracked_changes_gadoe' AND table_name = 'schoolstatistic') THEN
CREATE TABLE tracked_changes_gadoe.schoolstatistic
(
       oldschoolid INT NOT NULL,
       newschoolid INT NULL,
       id uuid NOT NULL,
       changeversion bigint NOT NULL,
       discriminator varchar(128) NULL,
       createdate timestamp NOT NULL DEFAULT (now()),
       CONSTRAINT schoolstatistic_pk PRIMARY KEY (ChangeVersion)
);
END IF;

IF NOT EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'tracked_changes_gadoe' AND table_name = 'studentspecialeducationassociationevent') THEN
CREATE TABLE tracked_changes_gadoe.studentspecialeducationassociationevent
(
       oldentrydate DATE NOT NULL,
       oldeventdate DATE NOT NULL,
       oldschoolid INT NOT NULL,
       oldspecialeducationeventtypedescriptorid INT NOT NULL,
       oldspecialeducationeventtypedescriptornamespace VARCHAR(255) NOT NULL,
       oldspecialeducationeventtypedescriptorcodevalue VARCHAR(50) NOT NULL,
       oldstudentusi INT NOT NULL,
       oldstudentuniqueid VARCHAR(32) NOT NULL,
       newentrydate DATE NULL,
       neweventdate DATE NULL,
       newschoolid INT NULL,
       newspecialeducationeventtypedescriptorid INT NULL,
       newspecialeducationeventtypedescriptornamespace VARCHAR(255) NULL,
       newspecialeducationeventtypedescriptorcodevalue VARCHAR(50) NULL,
       newstudentusi INT NULL,
       newstudentuniqueid VARCHAR(32) NULL,
       id uuid NOT NULL,
       changeversion bigint NOT NULL,
       discriminator varchar(128) NULL,
       createdate timestamp NOT NULL DEFAULT (now()),
       CONSTRAINT studentspecialeducationassociationevent_pk PRIMARY KEY (ChangeVersion)
);
END IF;

END
$$;
