ALTER TABLE [idoe].[AccreditationDescriptor] WITH CHECK ADD CONSTRAINT [FK_AccreditationDescriptor_Descriptor] FOREIGN KEY ([AccreditationDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [idoe].[ADMCodeDescriptor] WITH CHECK ADD CONSTRAINT [FK_ADMCodeDescriptor_Descriptor] FOREIGN KEY ([ADMCodeDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [idoe].[AlternativeEducationEligibilityReasonDescriptor] WITH CHECK ADD CONSTRAINT [FK_AlternativeEducationEligibilityReasonDescriptor_Descriptor] FOREIGN KEY ([AlternativeEducationEligibilityReasonDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [idoe].[ArrestReasonDescriptor] WITH CHECK ADD CONSTRAINT [FK_ArrestReasonDescriptor_Descriptor] FOREIGN KEY ([ArrestReasonDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [idoe].[AssessmentAccommodation] WITH CHECK ADD CONSTRAINT [FK_AssessmentAccommodation_AcademicSubjectDescriptor] FOREIGN KEY ([AcademicSubjectDescriptorId])
REFERENCES [edfi].[AcademicSubjectDescriptor] ([AcademicSubjectDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_AssessmentAccommodation_AcademicSubjectDescriptor]
ON [idoe].[AssessmentAccommodation] ([AcademicSubjectDescriptorId] ASC)
GO

ALTER TABLE [idoe].[AssessmentAccommodation] WITH CHECK ADD CONSTRAINT [FK_AssessmentAccommodation_AccommodationDescriptor] FOREIGN KEY ([AccommodationDescriptorId])
REFERENCES [edfi].[AccommodationDescriptor] ([AccommodationDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_AssessmentAccommodation_AccommodationDescriptor]
ON [idoe].[AssessmentAccommodation] ([AccommodationDescriptorId] ASC)
GO

ALTER TABLE [idoe].[AssessmentAccommodation] WITH CHECK ADD CONSTRAINT [FK_AssessmentAccommodation_Assessment] FOREIGN KEY ([AssessmentIdentifier], [Namespace])
REFERENCES [edfi].[Assessment] ([AssessmentIdentifier], [Namespace])
GO

CREATE NONCLUSTERED INDEX [FK_AssessmentAccommodation_Assessment]
ON [idoe].[AssessmentAccommodation] ([AssessmentIdentifier] ASC, [Namespace] ASC)
GO

ALTER TABLE [idoe].[CalendarDateExtension] WITH CHECK ADD CONSTRAINT [FK_CalendarDateExtension_CalendarDate] FOREIGN KEY ([CalendarCode], [Date], [SchoolId], [SchoolYear])
REFERENCES [edfi].[CalendarDate] ([CalendarCode], [Date], [SchoolId], [SchoolYear])
ON DELETE CASCADE
GO

ALTER TABLE [idoe].[CalendarExtension] WITH CHECK ADD CONSTRAINT [FK_CalendarExtension_Calendar] FOREIGN KEY ([CalendarCode], [SchoolId], [SchoolYear])
REFERENCES [edfi].[Calendar] ([CalendarCode], [SchoolId], [SchoolYear])
ON DELETE CASCADE
GO

ALTER TABLE [idoe].[CircumstancesRelevantToTimelineDescriptor] WITH CHECK ADD CONSTRAINT [FK_CircumstancesRelevantToTimelineDescriptor_Descriptor] FOREIGN KEY ([CircumstancesRelevantToTimelineDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [idoe].[CriminalGangRelatedEventDescriptor] WITH CHECK ADD CONSTRAINT [FK_CriminalGangRelatedEventDescriptor_Descriptor] FOREIGN KEY ([CriminalGangRelatedEventDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [idoe].[DisciplineActionExtension] WITH CHECK ADD CONSTRAINT [FK_DisciplineActionExtension_ArrestReasonDescriptor] FOREIGN KEY ([ArrestReasonDescriptorId])
REFERENCES [idoe].[ArrestReasonDescriptor] ([ArrestReasonDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_DisciplineActionExtension_ArrestReasonDescriptor]
ON [idoe].[DisciplineActionExtension] ([ArrestReasonDescriptorId] ASC)
GO

ALTER TABLE [idoe].[DisciplineActionExtension] WITH CHECK ADD CONSTRAINT [FK_DisciplineActionExtension_DisciplineAction] FOREIGN KEY ([DisciplineActionIdentifier], [DisciplineDate], [StudentUSI])
REFERENCES [edfi].[DisciplineAction] ([DisciplineActionIdentifier], [DisciplineDate], [StudentUSI])
ON DELETE CASCADE
GO

ALTER TABLE [idoe].[DisciplineActionExtension] WITH CHECK ADD CONSTRAINT [FK_DisciplineActionExtension_DisciplineActionServiceDescriptor] FOREIGN KEY ([DisciplineActionServiceDescriptorId])
REFERENCES [idoe].[DisciplineActionServiceDescriptor] ([DisciplineActionServiceDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_DisciplineActionExtension_DisciplineActionServiceDescriptor]
ON [idoe].[DisciplineActionExtension] ([DisciplineActionServiceDescriptorId] ASC)
GO

ALTER TABLE [idoe].[DisciplineActionExtension] WITH CHECK ADD CONSTRAINT [FK_DisciplineActionExtension_StudentArrestDescriptor] FOREIGN KEY ([StudentArrestDescriptorId])
REFERENCES [idoe].[StudentArrestDescriptor] ([StudentArrestDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_DisciplineActionExtension_StudentArrestDescriptor]
ON [idoe].[DisciplineActionExtension] ([StudentArrestDescriptorId] ASC)
GO

ALTER TABLE [idoe].[DisciplineActionServiceDescriptor] WITH CHECK ADD CONSTRAINT [FK_DisciplineActionServiceDescriptor_Descriptor] FOREIGN KEY ([DisciplineActionServiceDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [idoe].[EducationOrganizationOtherPersonnel] WITH CHECK ADD CONSTRAINT [FK_EducationOrganizationOtherPersonnel_LocalEducationAgency] FOREIGN KEY ([LocalEducationAgencyId])
REFERENCES [edfi].[LocalEducationAgency] ([LocalEducationAgencyId])
GO

ALTER TABLE [idoe].[EducationOrganizationOtherPersonnel] WITH CHECK ADD CONSTRAINT [FK_EducationOrganizationOtherPersonnel_OtherPersonnelCategoryDescriptor] FOREIGN KEY ([OtherPersonnelCategoryDescriptorId])
REFERENCES [idoe].[OtherPersonnelCategoryDescriptor] ([OtherPersonnelCategoryDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_EducationOrganizationOtherPersonnel_OtherPersonnelCategoryDescriptor]
ON [idoe].[EducationOrganizationOtherPersonnel] ([OtherPersonnelCategoryDescriptorId] ASC)
GO

ALTER TABLE [idoe].[EducationOrganizationOtherPersonnel] WITH CHECK ADD CONSTRAINT [FK_EducationOrganizationOtherPersonnel_OtherPersonnelTitleDescriptor] FOREIGN KEY ([OtherPersonnelTitleDescriptorId])
REFERENCES [idoe].[OtherPersonnelTitleDescriptor] ([OtherPersonnelTitleDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_EducationOrganizationOtherPersonnel_OtherPersonnelTitleDescriptor]
ON [idoe].[EducationOrganizationOtherPersonnel] ([OtherPersonnelTitleDescriptorId] ASC)
GO

ALTER TABLE [idoe].[ELLInstrumentUsedDescriptor] WITH CHECK ADD CONSTRAINT [FK_ELLInstrumentUsedDescriptor_Descriptor] FOREIGN KEY ([ELLInstrumentUsedDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [idoe].[OtherPersonnelCategoryDescriptor] WITH CHECK ADD CONSTRAINT [FK_OtherPersonnelCategoryDescriptor_Descriptor] FOREIGN KEY ([OtherPersonnelCategoryDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [idoe].[OtherPersonnelTitleDescriptor] WITH CHECK ADD CONSTRAINT [FK_OtherPersonnelTitleDescriptor_Descriptor] FOREIGN KEY ([OtherPersonnelTitleDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [idoe].[ProgramMeetingTimeDescriptor] WITH CHECK ADD CONSTRAINT [FK_ProgramMeetingTimeDescriptor_Descriptor] FOREIGN KEY ([ProgramMeetingTimeDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [idoe].[SchoolExtension] WITH CHECK ADD CONSTRAINT [FK_SchoolExtension_AccreditationDescriptor] FOREIGN KEY ([AccreditationDescriptorId])
REFERENCES [idoe].[AccreditationDescriptor] ([AccreditationDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_SchoolExtension_AccreditationDescriptor]
ON [idoe].[SchoolExtension] ([AccreditationDescriptorId] ASC)
GO

ALTER TABLE [idoe].[SchoolExtension] WITH CHECK ADD CONSTRAINT [FK_SchoolExtension_School] FOREIGN KEY ([SchoolId])
REFERENCES [edfi].[School] ([SchoolId])
ON DELETE CASCADE
GO

ALTER TABLE [idoe].[StaffEducationOrganizationEmploymentAssociationContract] WITH CHECK ADD CONSTRAINT [FK_StaffEducationOrganizationEmploymentAssociationContract_StaffEducationOrganizationEmploymentAssociation] FOREIGN KEY ([EducationOrganizationId], [EmploymentStatusDescriptorId], [HireDate], [StaffUSI])
REFERENCES [edfi].[StaffEducationOrganizationEmploymentAssociation] ([EducationOrganizationId], [EmploymentStatusDescriptorId], [HireDate], [StaffUSI])
ON DELETE CASCADE
GO

ALTER TABLE [idoe].[StaffEducationOrganizationEmploymentAssociationExtension] WITH CHECK ADD CONSTRAINT [FK_StaffEducationOrganizationEmploymentAssociationExtension_StaffEducationOrganizationEmploymentAssociation] FOREIGN KEY ([EducationOrganizationId], [EmploymentStatusDescriptorId], [HireDate], [StaffUSI])
REFERENCES [edfi].[StaffEducationOrganizationEmploymentAssociation] ([EducationOrganizationId], [EmploymentStatusDescriptorId], [HireDate], [StaffUSI])
ON DELETE CASCADE
GO

ALTER TABLE [idoe].[StudentAlternativeEducationProgramAssociation] WITH CHECK ADD CONSTRAINT [FK_StudentAlternativeEducationProgramAssociation_AlternativeEducationEligibilityReasonDescriptor] FOREIGN KEY ([AlternativeEducationEligibilityReasonDescriptorId])
REFERENCES [idoe].[AlternativeEducationEligibilityReasonDescriptor] ([AlternativeEducationEligibilityReasonDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StudentAlternativeEducationProgramAssociation_AlternativeEducationEligibilityReasonDescriptor]
ON [idoe].[StudentAlternativeEducationProgramAssociation] ([AlternativeEducationEligibilityReasonDescriptorId] ASC)
GO

ALTER TABLE [idoe].[StudentAlternativeEducationProgramAssociation] WITH CHECK ADD CONSTRAINT [FK_StudentAlternativeEducationProgramAssociation_GeneralStudentProgramAssociation] FOREIGN KEY ([BeginDate], [EducationOrganizationId], [ProgramEducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId], [StudentUSI])
REFERENCES [edfi].[GeneralStudentProgramAssociation] ([BeginDate], [EducationOrganizationId], [ProgramEducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId], [StudentUSI])
ON DELETE CASCADE
GO

ALTER TABLE [idoe].[StudentAlternativeEducationProgramAssociationProgramMeetingTime] WITH CHECK ADD CONSTRAINT [FK_StudentAlternativeEducationProgramAssociationProgramMeetingTime_ProgramMeetingTimeDescriptor] FOREIGN KEY ([ProgramMeetingTimeDescriptorId])
REFERENCES [idoe].[ProgramMeetingTimeDescriptor] ([ProgramMeetingTimeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StudentAlternativeEducationProgramAssociationProgramMeetingTime_ProgramMeetingTimeDescriptor]
ON [idoe].[StudentAlternativeEducationProgramAssociationProgramMeetingTime] ([ProgramMeetingTimeDescriptorId] ASC)
GO

ALTER TABLE [idoe].[StudentAlternativeEducationProgramAssociationProgramMeetingTime] WITH CHECK ADD CONSTRAINT [FK_StudentAlternativeEducationProgramAssociationProgramMeetingTime_StudentAlternativeEducationProgramAssociation] FOREIGN KEY ([BeginDate], [EducationOrganizationId], [ProgramEducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId], [StudentUSI])
REFERENCES [idoe].[StudentAlternativeEducationProgramAssociation] ([BeginDate], [EducationOrganizationId], [ProgramEducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId], [StudentUSI])
ON DELETE CASCADE
GO

ALTER TABLE [idoe].[StudentArrestDescriptor] WITH CHECK ADD CONSTRAINT [FK_StudentArrestDescriptor_Descriptor] FOREIGN KEY ([StudentArrestDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [idoe].[StudentCurricularMaterialProgramAssociation] WITH CHECK ADD CONSTRAINT [FK_StudentCurricularMaterialProgramAssociation_GeneralStudentProgramAssociation] FOREIGN KEY ([BeginDate], [EducationOrganizationId], [ProgramEducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId], [StudentUSI])
REFERENCES [edfi].[GeneralStudentProgramAssociation] ([BeginDate], [EducationOrganizationId], [ProgramEducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId], [StudentUSI])
ON DELETE CASCADE
GO

ALTER TABLE [idoe].[StudentCurricularMaterialProgramAssociation] WITH CHECK ADD CONSTRAINT [FK_StudentCurricularMaterialProgramAssociation_Parent] FOREIGN KEY ([LivesWithParentUSI])
REFERENCES [edfi].[Parent] ([ParentUSI])
GO

CREATE NONCLUSTERED INDEX [FK_StudentCurricularMaterialProgramAssociation_Parent]
ON [idoe].[StudentCurricularMaterialProgramAssociation] ([LivesWithParentUSI] ASC)
GO

ALTER TABLE [idoe].[StudentDisciplineIncidentBehaviorAssociationExtension] WITH CHECK ADD CONSTRAINT [FK_StudentDisciplineIncidentBehaviorAssociationExtension_CriminalGangRelatedEventDescriptor] FOREIGN KEY ([CriminalGangRelatedEventDescriptorId])
REFERENCES [idoe].[CriminalGangRelatedEventDescriptor] ([CriminalGangRelatedEventDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StudentDisciplineIncidentBehaviorAssociationExtension_CriminalGangRelatedEventDescriptor]
ON [idoe].[StudentDisciplineIncidentBehaviorAssociationExtension] ([CriminalGangRelatedEventDescriptorId] ASC)
GO

ALTER TABLE [idoe].[StudentDisciplineIncidentBehaviorAssociationExtension] WITH CHECK ADD CONSTRAINT [FK_StudentDisciplineIncidentBehaviorAssociationExtension_StudentDisciplineIncidentBehaviorAssociation] FOREIGN KEY ([BehaviorDescriptorId], [IncidentIdentifier], [SchoolId], [StudentUSI])
REFERENCES [edfi].[StudentDisciplineIncidentBehaviorAssociation] ([BehaviorDescriptorId], [IncidentIdentifier], [SchoolId], [StudentUSI])
ON DELETE CASCADE
GO

ALTER TABLE [idoe].[StudentEducationOrganizationAssessmentAccommodation] WITH CHECK ADD CONSTRAINT [FK_StudentEducationOrganizationAssessmentAccommodation_AcademicSubjectDescriptor] FOREIGN KEY ([AcademicSubjectDescriptorId])
REFERENCES [edfi].[AcademicSubjectDescriptor] ([AcademicSubjectDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StudentEducationOrganizationAssessmentAccommodation_AcademicSubjectDescriptor]
ON [idoe].[StudentEducationOrganizationAssessmentAccommodation] ([AcademicSubjectDescriptorId] ASC)
GO

ALTER TABLE [idoe].[StudentEducationOrganizationAssessmentAccommodation] WITH CHECK ADD CONSTRAINT [FK_StudentEducationOrganizationAssessmentAccommodation_AccommodationDescriptor] FOREIGN KEY ([AccommodationDescriptorId])
REFERENCES [edfi].[AccommodationDescriptor] ([AccommodationDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StudentEducationOrganizationAssessmentAccommodation_AccommodationDescriptor]
ON [idoe].[StudentEducationOrganizationAssessmentAccommodation] ([AccommodationDescriptorId] ASC)
GO

ALTER TABLE [idoe].[StudentEducationOrganizationAssessmentAccommodation] WITH CHECK ADD CONSTRAINT [FK_StudentEducationOrganizationAssessmentAccommodation_Assessment] FOREIGN KEY ([AssessmentIdentifier], [Namespace])
REFERENCES [edfi].[Assessment] ([AssessmentIdentifier], [Namespace])
GO

CREATE NONCLUSTERED INDEX [FK_StudentEducationOrganizationAssessmentAccommodation_Assessment]
ON [idoe].[StudentEducationOrganizationAssessmentAccommodation] ([AssessmentIdentifier] ASC, [Namespace] ASC)
GO

ALTER TABLE [idoe].[StudentEducationOrganizationAssessmentAccommodation] WITH CHECK ADD CONSTRAINT [FK_StudentEducationOrganizationAssessmentAccommodation_EducationOrganization] FOREIGN KEY ([EducationOrganizationId])
REFERENCES [edfi].[EducationOrganization] ([EducationOrganizationId])
GO

ALTER TABLE [idoe].[StudentEducationOrganizationAssessmentAccommodation] WITH CHECK ADD CONSTRAINT [FK_StudentEducationOrganizationAssessmentAccommodation_Student] FOREIGN KEY ([StudentUSI])
REFERENCES [edfi].[Student] ([StudentUSI])
GO

CREATE NONCLUSTERED INDEX [FK_StudentEducationOrganizationAssessmentAccommodation_Student]
ON [idoe].[StudentEducationOrganizationAssessmentAccommodation] ([StudentUSI] ASC)
GO

ALTER TABLE [idoe].[StudentEducationOrganizationAssociationExtension] WITH CHECK ADD CONSTRAINT [FK_StudentEducationOrganizationAssociationExtension_ELLInstrumentUsedDescriptor] FOREIGN KEY ([ELLInstrumentUsedDescriptorId])
REFERENCES [idoe].[ELLInstrumentUsedDescriptor] ([ELLInstrumentUsedDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StudentEducationOrganizationAssociationExtension_ELLInstrumentUsedDescriptor]
ON [idoe].[StudentEducationOrganizationAssociationExtension] ([ELLInstrumentUsedDescriptorId] ASC)
GO

ALTER TABLE [idoe].[StudentEducationOrganizationAssociationExtension] WITH CHECK ADD CONSTRAINT [FK_StudentEducationOrganizationAssociationExtension_StudentEducationOrganizationAssociation] FOREIGN KEY ([EducationOrganizationId], [StudentUSI])
REFERENCES [edfi].[StudentEducationOrganizationAssociation] ([EducationOrganizationId], [StudentUSI])
ON DELETE CASCADE
GO

ALTER TABLE [idoe].[StudentEducationOrganizationResponsibilityAssociationAdditionalEdOrgResponsibility] WITH CHECK ADD CONSTRAINT [FK_StudentEducationOrganizationResponsibilityAssociationAdditionalEdOrgResponsibility_ResponsibilityDescriptor] FOREIGN KEY ([SchoolCorpResponsibilityDescriptorId])
REFERENCES [edfi].[ResponsibilityDescriptor] ([ResponsibilityDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StudentEducationOrganizationResponsibilityAssociationAdditionalEdOrgResponsibility_ResponsibilityDescriptor]
ON [idoe].[StudentEducationOrganizationResponsibilityAssociationAdditionalEdOrgResponsibility] ([SchoolCorpResponsibilityDescriptorId] ASC)
GO

ALTER TABLE [idoe].[StudentEducationOrganizationResponsibilityAssociationAdditionalEdOrgResponsibility] WITH CHECK ADD CONSTRAINT [FK_StudentEducationOrganizationResponsibilityAssociationAdditionalEdOrgResponsibility_StudentEducationOrganizationResponsibility] FOREIGN KEY ([BeginDate], [EducationOrganizationId], [ResponsibilityDescriptorId], [StudentUSI])
REFERENCES [edfi].[StudentEducationOrganizationResponsibilityAssociation] ([BeginDate], [EducationOrganizationId], [ResponsibilityDescriptorId], [StudentUSI])
ON DELETE CASCADE
GO

ALTER TABLE [idoe].[StudentEducationOrganizationResponsibilityAssociationExtension] WITH CHECK ADD CONSTRAINT [FK_StudentEducationOrganizationResponsibilityAssociationExtension_ADMCodeDescriptor] FOREIGN KEY ([ADMCodeDescriptorId])
REFERENCES [idoe].[ADMCodeDescriptor] ([ADMCodeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StudentEducationOrganizationResponsibilityAssociationExtension_ADMCodeDescriptor]
ON [idoe].[StudentEducationOrganizationResponsibilityAssociationExtension] ([ADMCodeDescriptorId] ASC)
GO

ALTER TABLE [idoe].[StudentEducationOrganizationResponsibilityAssociationExtension] WITH CHECK ADD CONSTRAINT [FK_StudentEducationOrganizationResponsibilityAssociationExtension_StudentEducationOrganizationResponsibilityAssociation] FOREIGN KEY ([BeginDate], [EducationOrganizationId], [ResponsibilityDescriptorId], [StudentUSI])
REFERENCES [edfi].[StudentEducationOrganizationResponsibilityAssociation] ([BeginDate], [EducationOrganizationId], [ResponsibilityDescriptorId], [StudentUSI])
ON DELETE CASCADE
GO

ALTER TABLE [idoe].[StudentSpecialEducationProgramAssociationExtension] WITH CHECK ADD CONSTRAINT [FK_StudentSpecialEducationProgramAssociationExtension_CircumstancesRelevantToTimelineDescriptor] FOREIGN KEY ([CircumstancesRelevantToTimelineDescriptorId])
REFERENCES [idoe].[CircumstancesRelevantToTimelineDescriptor] ([CircumstancesRelevantToTimelineDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StudentSpecialEducationProgramAssociationExtension_CircumstancesRelevantToTimelineDescriptor]
ON [idoe].[StudentSpecialEducationProgramAssociationExtension] ([CircumstancesRelevantToTimelineDescriptorId] ASC)
GO

ALTER TABLE [idoe].[StudentSpecialEducationProgramAssociationExtension] WITH CHECK ADD CONSTRAINT [FK_StudentSpecialEducationProgramAssociationExtension_StudentSpecialEducationProgramAssociation] FOREIGN KEY ([BeginDate], [EducationOrganizationId], [ProgramEducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId], [StudentUSI])
REFERENCES [edfi].[StudentSpecialEducationProgramAssociation] ([BeginDate], [EducationOrganizationId], [ProgramEducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId], [StudentUSI])
ON DELETE CASCADE
GO

ALTER TABLE [idoe].[StudentSpecialEducationProgramAssociationExtension] WITH CHECK ADD CONSTRAINT [FK_StudentSpecialEducationProgramAssociationExtension_TimelineComplianceDescriptor] FOREIGN KEY ([TimelineComplianceDescriptorId])
REFERENCES [idoe].[TimelineComplianceDescriptor] ([TimelineComplianceDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StudentSpecialEducationProgramAssociationExtension_TimelineComplianceDescriptor]
ON [idoe].[StudentSpecialEducationProgramAssociationExtension] ([TimelineComplianceDescriptorId] ASC)
GO

ALTER TABLE [idoe].[TimelineComplianceDescriptor] WITH CHECK ADD CONSTRAINT [FK_TimelineComplianceDescriptor_Descriptor] FOREIGN KEY ([TimelineComplianceDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

