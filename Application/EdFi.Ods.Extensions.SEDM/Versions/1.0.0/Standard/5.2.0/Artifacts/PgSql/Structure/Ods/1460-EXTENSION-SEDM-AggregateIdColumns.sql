
CREATE SEQUENCE sedm.IDEAEvent_aggseq START WITH -2147483648 INCREMENT BY 1 MINVALUE -2147483648;
ALTER TABLE sedm.IDEAEvent ADD COLUMN AggregateId int NOT NULL DEFAULT nextval('sedm.IDEAEvent_aggseq'), ADD COLUMN AggregateData bytea;
CREATE INDEX ix_IDEAEvent_aggid ON sedm.IDEAEvent (AggregateId);


CREATE SEQUENCE sedm.StudentIEP_aggseq START WITH -2147483648 INCREMENT BY 1 MINVALUE -2147483648;
ALTER TABLE sedm.StudentIEP ADD COLUMN AggregateId int NOT NULL DEFAULT nextval('sedm.StudentIEP_aggseq'), ADD COLUMN AggregateData bytea;
CREATE INDEX ix_StudentIEP_aggid ON sedm.StudentIEP (AggregateId);


CREATE SEQUENCE sedm.StudentIEPAccommodationCollection_aggseq START WITH -2147483648 INCREMENT BY 1 MINVALUE -2147483648;
ALTER TABLE sedm.StudentIEPAccommodationCollection ADD COLUMN AggregateId int NOT NULL DEFAULT nextval('sedm.StudentIEPAccommodationCollection_aggseq'), ADD COLUMN AggregateData bytea;
CREATE INDEX ix_StudentIEPAccommodationCollection_aggid ON sedm.StudentIEPAccommodationCollection (AggregateId);


CREATE SEQUENCE sedm.StudentIEPDisabilityCollection_aggseq START WITH -2147483648 INCREMENT BY 1 MINVALUE -2147483648;
ALTER TABLE sedm.StudentIEPDisabilityCollection ADD COLUMN AggregateId int NOT NULL DEFAULT nextval('sedm.StudentIEPDisabilityCollection_aggseq'), ADD COLUMN AggregateData bytea;
CREATE INDEX ix_StudentIEPDisabilityCollection_aggid ON sedm.StudentIEPDisabilityCollection (AggregateId);


CREATE SEQUENCE sedm.StudentIEPGoal_aggseq START WITH -2147483648 INCREMENT BY 1 MINVALUE -2147483648;
ALTER TABLE sedm.StudentIEPGoal ADD COLUMN AggregateId int NOT NULL DEFAULT nextval('sedm.StudentIEPGoal_aggseq'), ADD COLUMN AggregateData bytea;
CREATE INDEX ix_StudentIEPGoal_aggid ON sedm.StudentIEPGoal (AggregateId);


CREATE SEQUENCE sedm.StudentIEPServiceDelivery_aggseq START WITH -2147483648 INCREMENT BY 1 MINVALUE -2147483648;
ALTER TABLE sedm.StudentIEPServiceDelivery ADD COLUMN AggregateId int NOT NULL DEFAULT nextval('sedm.StudentIEPServiceDelivery_aggseq'), ADD COLUMN AggregateData bytea;
CREATE INDEX ix_StudentIEPServiceDelivery_aggid ON sedm.StudentIEPServiceDelivery (AggregateId);


CREATE SEQUENCE sedm.StudentIEPServicePrescription_aggseq START WITH -2147483648 INCREMENT BY 1 MINVALUE -2147483648;
ALTER TABLE sedm.StudentIEPServicePrescription ADD COLUMN AggregateId int NOT NULL DEFAULT nextval('sedm.StudentIEPServicePrescription_aggseq'), ADD COLUMN AggregateData bytea;
CREATE INDEX ix_StudentIEPServicePrescription_aggid ON sedm.StudentIEPServicePrescription (AggregateId);

