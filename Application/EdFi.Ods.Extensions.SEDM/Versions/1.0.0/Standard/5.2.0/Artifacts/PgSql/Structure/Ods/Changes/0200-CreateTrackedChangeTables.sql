DO $$
BEGIN

IF NOT EXISTS (SELECT 1 FROM information_schema.schemata WHERE schema_name = 'tracked_changes_sedm') THEN
CREATE SCHEMA tracked_changes_sedm;
END IF;

IF NOT EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'tracked_changes_sedm' AND table_name = 'ideaevent') THEN
CREATE TABLE tracked_changes_sedm.ideaevent
(
       oldeducationorganizationid BIGINT NOT NULL,
       oldideaeventdescriptorid INT NOT NULL,
       oldideaeventdescriptornamespace VARCHAR(255) NOT NULL,
       oldideaeventdescriptorcodevalue VARCHAR(50) NOT NULL,
       oldideaeventid VARCHAR(1024) NOT NULL,
       oldstudentusi INT NOT NULL,
       oldstudentuniqueid VARCHAR(32) NOT NULL,
       neweducationorganizationid BIGINT NULL,
       newideaeventdescriptorid INT NULL,
       newideaeventdescriptornamespace VARCHAR(255) NULL,
       newideaeventdescriptorcodevalue VARCHAR(50) NULL,
       newideaeventid VARCHAR(1024) NULL,
       newstudentusi INT NULL,
       newstudentuniqueid VARCHAR(32) NULL,
       id uuid NOT NULL,
       changeversion bigint NOT NULL,
       discriminator varchar(128) NULL,
       createdate timestamp NOT NULL DEFAULT (now()),
       CONSTRAINT ideaevent_pk PRIMARY KEY (ChangeVersion)
);
END IF;

IF NOT EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'tracked_changes_sedm' AND table_name = 'studentiep') THEN
CREATE TABLE tracked_changes_sedm.studentiep
(
       oldeducationorganizationid BIGINT NOT NULL,
       oldiepfinalizeddate DATE NOT NULL,
       oldstudentiepassociationid VARCHAR(1024) NOT NULL,
       oldstudentusi INT NOT NULL,
       oldstudentuniqueid VARCHAR(32) NOT NULL,
       neweducationorganizationid BIGINT NULL,
       newiepfinalizeddate DATE NULL,
       newstudentiepassociationid VARCHAR(1024) NULL,
       newstudentusi INT NULL,
       newstudentuniqueid VARCHAR(32) NULL,
       id uuid NOT NULL,
       changeversion bigint NOT NULL,
       discriminator varchar(128) NULL,
       createdate timestamp NOT NULL DEFAULT (now()),
       CONSTRAINT studentiep_pk PRIMARY KEY (ChangeVersion)
);
END IF;

IF NOT EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'tracked_changes_sedm' AND table_name = 'studentiepaccommodationcollection') THEN
CREATE TABLE tracked_changes_sedm.studentiepaccommodationcollection
(
       oldeducationorganizationid BIGINT NOT NULL,
       oldiepfinalizeddate DATE NOT NULL,
       oldstudentiepassociationid VARCHAR(1024) NOT NULL,
       oldstudentusi INT NOT NULL,
       oldstudentuniqueid VARCHAR(32) NOT NULL,
       neweducationorganizationid BIGINT NULL,
       newiepfinalizeddate DATE NULL,
       newstudentiepassociationid VARCHAR(1024) NULL,
       newstudentusi INT NULL,
       newstudentuniqueid VARCHAR(32) NULL,
       id uuid NOT NULL,
       changeversion bigint NOT NULL,
       discriminator varchar(128) NULL,
       createdate timestamp NOT NULL DEFAULT (now()),
       CONSTRAINT studentiepaccommodationcollection_pk PRIMARY KEY (ChangeVersion)
);
END IF;

IF NOT EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'tracked_changes_sedm' AND table_name = 'studentiepdisabilitycollection') THEN
CREATE TABLE tracked_changes_sedm.studentiepdisabilitycollection
(
       oldeducationorganizationid BIGINT NOT NULL,
       oldiepfinalizeddate DATE NOT NULL,
       oldstudentiepassociationid VARCHAR(1024) NOT NULL,
       oldstudentusi INT NOT NULL,
       oldstudentuniqueid VARCHAR(32) NOT NULL,
       neweducationorganizationid BIGINT NULL,
       newiepfinalizeddate DATE NULL,
       newstudentiepassociationid VARCHAR(1024) NULL,
       newstudentusi INT NULL,
       newstudentuniqueid VARCHAR(32) NULL,
       id uuid NOT NULL,
       changeversion bigint NOT NULL,
       discriminator varchar(128) NULL,
       createdate timestamp NOT NULL DEFAULT (now()),
       CONSTRAINT studentiepdisabilitycollection_pk PRIMARY KEY (ChangeVersion)
);
END IF;

IF NOT EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'tracked_changes_sedm' AND table_name = 'studentiepgoal') THEN
CREATE TABLE tracked_changes_sedm.studentiepgoal
(
       oldeducationorganizationid BIGINT NOT NULL,
       oldiepfinalizeddate DATE NOT NULL,
       oldiepgoalid VARCHAR(256) NOT NULL,
       oldstudentiepassociationid VARCHAR(1024) NOT NULL,
       oldstudentusi INT NOT NULL,
       oldstudentuniqueid VARCHAR(32) NOT NULL,
       neweducationorganizationid BIGINT NULL,
       newiepfinalizeddate DATE NULL,
       newiepgoalid VARCHAR(256) NULL,
       newstudentiepassociationid VARCHAR(1024) NULL,
       newstudentusi INT NULL,
       newstudentuniqueid VARCHAR(32) NULL,
       id uuid NOT NULL,
       changeversion bigint NOT NULL,
       discriminator varchar(128) NULL,
       createdate timestamp NOT NULL DEFAULT (now()),
       CONSTRAINT studentiepgoal_pk PRIMARY KEY (ChangeVersion)
);
END IF;

IF NOT EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'tracked_changes_sedm' AND table_name = 'studentiepservicedelivery') THEN
CREATE TABLE tracked_changes_sedm.studentiepservicedelivery
(
       oldeducationorganizationid BIGINT NOT NULL,
       oldiepservicedeliveryid VARCHAR(1024) NOT NULL,
       oldservicedeliverydate DATE NOT NULL,
       oldservicedeliverydescriptorid INT NOT NULL,
       oldservicedeliverydescriptornamespace VARCHAR(255) NOT NULL,
       oldservicedeliverydescriptorcodevalue VARCHAR(50) NOT NULL,
       oldstudentusi INT NOT NULL,
       oldstudentuniqueid VARCHAR(32) NOT NULL,
       neweducationorganizationid BIGINT NULL,
       newiepservicedeliveryid VARCHAR(1024) NULL,
       newservicedeliverydate DATE NULL,
       newservicedeliverydescriptorid INT NULL,
       newservicedeliverydescriptornamespace VARCHAR(255) NULL,
       newservicedeliverydescriptorcodevalue VARCHAR(50) NULL,
       newstudentusi INT NULL,
       newstudentuniqueid VARCHAR(32) NULL,
       id uuid NOT NULL,
       changeversion bigint NOT NULL,
       discriminator varchar(128) NULL,
       createdate timestamp NOT NULL DEFAULT (now()),
       CONSTRAINT studentiepservicedelivery_pk PRIMARY KEY (ChangeVersion)
);
END IF;

IF NOT EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'tracked_changes_sedm' AND table_name = 'studentiepserviceprescription') THEN
CREATE TABLE tracked_changes_sedm.studentiepserviceprescription
(
       oldeducationorganizationid BIGINT NOT NULL,
       oldserviceprescriptiondate DATE NOT NULL,
       oldserviceprescriptiondescriptorid INT NOT NULL,
       oldserviceprescriptiondescriptornamespace VARCHAR(255) NOT NULL,
       oldserviceprescriptiondescriptorcodevalue VARCHAR(50) NOT NULL,
       oldstudentusi INT NOT NULL,
       oldstudentuniqueid VARCHAR(32) NOT NULL,
       neweducationorganizationid BIGINT NULL,
       newserviceprescriptiondate DATE NULL,
       newserviceprescriptiondescriptorid INT NULL,
       newserviceprescriptiondescriptornamespace VARCHAR(255) NULL,
       newserviceprescriptiondescriptorcodevalue VARCHAR(50) NULL,
       newstudentusi INT NULL,
       newstudentuniqueid VARCHAR(32) NULL,
       id uuid NOT NULL,
       changeversion bigint NOT NULL,
       discriminator varchar(128) NULL,
       createdate timestamp NOT NULL DEFAULT (now()),
       CONSTRAINT studentiepserviceprescription_pk PRIMARY KEY (ChangeVersion)
);
END IF;

END
$$;
