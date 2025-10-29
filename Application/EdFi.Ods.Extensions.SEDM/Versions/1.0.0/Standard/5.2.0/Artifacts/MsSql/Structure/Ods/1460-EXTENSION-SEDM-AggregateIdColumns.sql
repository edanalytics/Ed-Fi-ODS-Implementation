CREATE SEQUENCE [sedm].[IDEAEvent_AggSeq] START WITH -2147483648 INCREMENT BY 1;
ALTER TABLE [sedm].[IDEAEvent] ADD AggregateId int NOT NULL DEFAULT NEXT VALUE FOR [sedm].[IDEAEvent_AggSeq], AggregateData varbinary(8000);
CREATE INDEX [IX_IDEAEvent_AggregateId] ON [sedm].[IDEAEvent] (AggregateId);

CREATE SEQUENCE [sedm].[StudentIEP_AggSeq] START WITH -2147483648 INCREMENT BY 1;
ALTER TABLE [sedm].[StudentIEP] ADD AggregateId int NOT NULL DEFAULT NEXT VALUE FOR [sedm].[StudentIEP_AggSeq], AggregateData varbinary(8000);
CREATE INDEX [IX_StudentIEP_AggregateId] ON [sedm].[StudentIEP] (AggregateId);

CREATE SEQUENCE [sedm].[StudentIEPAccommodationCollection_AggSeq] START WITH -2147483648 INCREMENT BY 1;
ALTER TABLE [sedm].[StudentIEPAccommodationCollection] ADD AggregateId int NOT NULL DEFAULT NEXT VALUE FOR [sedm].[StudentIEPAccommodationCollection_AggSeq], AggregateData varbinary(8000);
CREATE INDEX [IX_StudentIEPAccommodationCollection_AggregateId] ON [sedm].[StudentIEPAccommodationCollection] (AggregateId);

CREATE SEQUENCE [sedm].[StudentIEPDisabilityCollection_AggSeq] START WITH -2147483648 INCREMENT BY 1;
ALTER TABLE [sedm].[StudentIEPDisabilityCollection] ADD AggregateId int NOT NULL DEFAULT NEXT VALUE FOR [sedm].[StudentIEPDisabilityCollection_AggSeq], AggregateData varbinary(8000);
CREATE INDEX [IX_StudentIEPDisabilityCollection_AggregateId] ON [sedm].[StudentIEPDisabilityCollection] (AggregateId);

CREATE SEQUENCE [sedm].[StudentIEPGoal_AggSeq] START WITH -2147483648 INCREMENT BY 1;
ALTER TABLE [sedm].[StudentIEPGoal] ADD AggregateId int NOT NULL DEFAULT NEXT VALUE FOR [sedm].[StudentIEPGoal_AggSeq], AggregateData varbinary(8000);
CREATE INDEX [IX_StudentIEPGoal_AggregateId] ON [sedm].[StudentIEPGoal] (AggregateId);

CREATE SEQUENCE [sedm].[StudentIEPServiceDelivery_AggSeq] START WITH -2147483648 INCREMENT BY 1;
ALTER TABLE [sedm].[StudentIEPServiceDelivery] ADD AggregateId int NOT NULL DEFAULT NEXT VALUE FOR [sedm].[StudentIEPServiceDelivery_AggSeq], AggregateData varbinary(8000);
CREATE INDEX [IX_StudentIEPServiceDelivery_AggregateId] ON [sedm].[StudentIEPServiceDelivery] (AggregateId);

CREATE SEQUENCE [sedm].[StudentIEPServicePrescription_AggSeq] START WITH -2147483648 INCREMENT BY 1;
ALTER TABLE [sedm].[StudentIEPServicePrescription] ADD AggregateId int NOT NULL DEFAULT NEXT VALUE FOR [sedm].[StudentIEPServicePrescription_AggSeq], AggregateData varbinary(8000);
CREATE INDEX [IX_StudentIEPServicePrescription_AggregateId] ON [sedm].[StudentIEPServicePrescription] (AggregateId);

