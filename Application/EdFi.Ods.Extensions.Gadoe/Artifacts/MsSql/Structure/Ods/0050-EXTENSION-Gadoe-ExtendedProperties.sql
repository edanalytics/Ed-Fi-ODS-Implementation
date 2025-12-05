-- Extended Properties [gadoe].[BehaviorIncidentDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Type of incident or behavior that a school-level statistic is captured for.', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'BehaviorIncidentDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'BehaviorIncidentDescriptor', @level2type=N'COLUMN', @level2name=N'BehaviorIncidentDescriptorId'
GO

-- Extended Properties [gadoe].[ChildFindStatusDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates Child Find Status.', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'ChildFindStatusDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'ChildFindStatusDescriptor', @level2type=N'COLUMN', @level2name=N'ChildFindStatusDescriptorId'
GO

-- Extended Properties [gadoe].[ChwCertFieldCodeDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Only for primary teachers who have a CHW charter certificate waiver', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'ChwCertFieldCodeDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'ChwCertFieldCodeDescriptor', @level2type=N'COLUMN', @level2name=N'ChwCertFieldCodeDescriptorId'
GO

-- Extended Properties [gadoe].[CountyOfResidenceDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates Code for the Georgia county the student resides in while attending public school', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'CountyOfResidenceDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'CountyOfResidenceDescriptor', @level2type=N'COLUMN', @level2name=N'CountyOfResidenceDescriptorId'
GO

-- Extended Properties [gadoe].[DataTypeIndicatorDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Type of Datatype indicator.', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'DataTypeIndicatorDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'DataTypeIndicatorDescriptor', @level2type=N'COLUMN', @level2name=N'DataTypeIndicatorDescriptorId'
GO

-- Extended Properties [gadoe].[DisciplineActionAuxiliaryDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates Discipline Action Auxiliary', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'DisciplineActionAuxiliaryDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'DisciplineActionAuxiliaryDescriptor', @level2type=N'COLUMN', @level2name=N'DisciplineActionAuxiliaryDescriptorId'
GO

-- Extended Properties [gadoe].[DisciplineActionExtension] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'DisciplineActionExtension'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identifier assigned by the education organization to the discipline action.', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'DisciplineActionExtension', @level2type=N'COLUMN', @level2name=N'DisciplineActionIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date of the discipline action.', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'DisciplineActionExtension', @level2type=N'COLUMN', @level2name=N'DisciplineDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'DisciplineActionExtension', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates Discipline Process', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'DisciplineActionExtension', @level2type=N'COLUMN', @level2name=N'DisciplineProcessTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates Incident Severity Level', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'DisciplineActionExtension', @level2type=N'COLUMN', @level2name=N'IncidentSeverityLevelDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates Discipline Action Auxiliary', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'DisciplineActionExtension', @level2type=N'COLUMN', @level2name=N'DisciplineActionAuxiliaryDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates DataType Indicator', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'DisciplineActionExtension', @level2type=N'COLUMN', @level2name=N'DataTypeIndicatorDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates Alternate School Id', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'DisciplineActionExtension', @level2type=N'COLUMN', @level2name=N'AlternateSchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates Discipline Staff uniqueID', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'DisciplineActionExtension', @level2type=N'COLUMN', @level2name=N'DisciplineStaffUniqueId'
GO

-- Extended Properties [gadoe].[DisciplineIncidentExtension] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'DisciplineIncidentExtension'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A locally assigned unique identifier (within the school or school district) to identify each specific DisciplineIncident or occurrence. The same identifier should be used to document the entire discipline incident even if it included multiple offenses and multiple offenders.', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'DisciplineIncidentExtension', @level2type=N'COLUMN', @level2name=N'IncidentIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school.', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'DisciplineIncidentExtension', @level2type=N'COLUMN', @level2name=N'SchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Type of discipline incident timing.', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'DisciplineIncidentExtension', @level2type=N'COLUMN', @level2name=N'IncidentTimingDescriptorId'
GO

-- Extended Properties [gadoe].[DisciplineProcessTypeDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates Discipline Process', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'DisciplineProcessTypeDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'DisciplineProcessTypeDescriptor', @level2type=N'COLUMN', @level2name=N'DisciplineProcessTypeDescriptorId'
GO

-- Extended Properties [gadoe].[EipDeliveryModelDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates Eip Delivery Model', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'EipDeliveryModelDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'EipDeliveryModelDescriptor', @level2type=N'COLUMN', @level2name=N'EipDeliveryModelDescriptorId'
GO

-- Extended Properties [gadoe].[EmployeeTypeDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates Employee Type', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'EmployeeTypeDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'EmployeeTypeDescriptor', @level2type=N'COLUMN', @level2name=N'EmployeeTypeDescriptorId'
GO

-- Extended Properties [gadoe].[EnrollmentLocationDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates Enrollment Location', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'EnrollmentLocationDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'EnrollmentLocationDescriptor', @level2type=N'COLUMN', @level2name=N'EnrollmentLocationDescriptorId'
GO

-- Extended Properties [gadoe].[EsolDeliveryModelDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates Esol Delivery Model', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'EsolDeliveryModelDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'EsolDeliveryModelDescriptor', @level2type=N'COLUMN', @level2name=N'EsolDeliveryModelDescriptorId'
GO

-- Extended Properties [gadoe].[FteProgramCodeDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates FTE Program for Segment 1 of the school day', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'FteProgramCodeDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'FteProgramCodeDescriptor', @level2type=N'COLUMN', @level2name=N'FteProgramCodeDescriptorId'
GO

-- Extended Properties [gadoe].[GiftedDeliveryModelDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates Gifted Delivery Model', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'GiftedDeliveryModelDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'GiftedDeliveryModelDescriptor', @level2type=N'COLUMN', @level2name=N'GiftedDeliveryModelDescriptorId'
GO

-- Extended Properties [gadoe].[GiftedServedDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates Gifted Served.', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'GiftedServedDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'GiftedServedDescriptor', @level2type=N'COLUMN', @level2name=N'GiftedServedDescriptorId'
GO

-- Extended Properties [gadoe].[IepInclusionTypeDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates Iep Inclusion Type', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'IepInclusionTypeDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'IepInclusionTypeDescriptor', @level2type=N'COLUMN', @level2name=N'IepInclusionTypeDescriptorId'
GO

-- Extended Properties [gadoe].[IncidentSeverityLevelDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates Incident Severity Level', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'IncidentSeverityLevelDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'IncidentSeverityLevelDescriptor', @level2type=N'COLUMN', @level2name=N'IncidentSeverityLevelDescriptorId'
GO

-- Extended Properties [gadoe].[IncidentTimingDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Type of discipline incident timing.', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'IncidentTimingDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'IncidentTimingDescriptor', @level2type=N'COLUMN', @level2name=N'IncidentTimingDescriptorId'
GO

-- Extended Properties [gadoe].[InclusionPersonnelDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates Inclusion Personnel', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'InclusionPersonnelDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'InclusionPersonnelDescriptor', @level2type=N'COLUMN', @level2name=N'InclusionPersonnelDescriptorId'
GO

-- Extended Properties [gadoe].[LocalEducationAgencyStatistic] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The statistics associated with a Local Education Agency.', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'LocalEducationAgencyStatistic'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'LocalEducationAgencyStatistic', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates whether all teachers included or consider time taught', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'LocalEducationAgencyStatistic', @level2type=N'COLUMN', @level2name=N'Tkes90PercentAllTeachersIncluded'
GO

-- Extended Properties [gadoe].[LocalEducationAgencyStatisticPrivateOrHomeSchooledStudentCount] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Collection of Private Or HomeSchooled Services', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'LocalEducationAgencyStatisticPrivateOrHomeSchooledStudentCount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'LocalEducationAgencyStatisticPrivateOrHomeSchooledStudentCount', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Type of Private Or HomeSchooled Students that a local education agency level statistic is captured for.', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'LocalEducationAgencyStatisticPrivateOrHomeSchooledStudentCount', @level2type=N'COLUMN', @level2name=N'PrivateOrHomeSchooledStudentDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The integer representing the number of Private Or HomeSchooled Students', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'LocalEducationAgencyStatisticPrivateOrHomeSchooledStudentCount', @level2type=N'COLUMN', @level2name=N'CollectedCount'
GO

-- Extended Properties [gadoe].[LocalEducationAgencyStatisticPsychologicalServicesEvaluationCount] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Collection of Psychological Services', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'LocalEducationAgencyStatisticPsychologicalServicesEvaluationCount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'LocalEducationAgencyStatisticPsychologicalServicesEvaluationCount', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Type of Psychological Services Evaluation that a local education agency level statistic is captured for.', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'LocalEducationAgencyStatisticPsychologicalServicesEvaluationCount', @level2type=N'COLUMN', @level2name=N'PsychologicalServicesEvaluationDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The integer representing the number of Psychological Services Evaluation', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'LocalEducationAgencyStatisticPsychologicalServicesEvaluationCount', @level2type=N'COLUMN', @level2name=N'CollectedCount'
GO

-- Extended Properties [gadoe].[NonESOLStatusDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates the status of an EL student who is not in ESOL program', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'NonESOLStatusDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'NonESOLStatusDescriptor', @level2type=N'COLUMN', @level2name=N'NonESOLStatusDescriptorId'
GO

-- Extended Properties [gadoe].[NutritionSchoolDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Type of nutrition services school is offering.', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'NutritionSchoolDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'NutritionSchoolDescriptor', @level2type=N'COLUMN', @level2name=N'NutritionSchoolDescriptorId'
GO

-- Extended Properties [gadoe].[PrimaryStaffClassificationDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Type of primary staff classification', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'PrimaryStaffClassificationDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'PrimaryStaffClassificationDescriptor', @level2type=N'COLUMN', @level2name=N'PrimaryStaffClassificationDescriptorId'
GO

-- Extended Properties [gadoe].[PrivateOrHomeSchooledStudentDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Private Or HomeSchooled Student statistic are captured at Local Education Agency Level', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'PrivateOrHomeSchooledStudentDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'PrivateOrHomeSchooledStudentDescriptor', @level2type=N'COLUMN', @level2name=N'PrivateOrHomeSchooledStudentDescriptorId'
GO

-- Extended Properties [gadoe].[ProgramReferredByDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Method by which the student was referred to the Gifted program this school year.', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'ProgramReferredByDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'ProgramReferredByDescriptor', @level2type=N'COLUMN', @level2name=N'ProgramReferredByDescriptorId'
GO

-- Extended Properties [gadoe].[PsychologicalServicesEvaluationDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Psychological Services statistic are captured for Local Education Agency Level', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'PsychologicalServicesEvaluationDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'PsychologicalServicesEvaluationDescriptor', @level2type=N'COLUMN', @level2name=N'PsychologicalServicesEvaluationDescriptorId'
GO

-- Extended Properties [gadoe].[SalaryPayStepDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates Salary Pay Step', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'SalaryPayStepDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'SalaryPayStepDescriptor', @level2type=N'COLUMN', @level2name=N'SalaryPayStepDescriptorId'
GO

-- Extended Properties [gadoe].[SchoolStatistic] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The statistics associated with a School.', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'SchoolStatistic'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school.', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'SchoolStatistic', @level2type=N'COLUMN', @level2name=N'SchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Type of Stem/Steam school.', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'SchoolStatistic', @level2type=N'COLUMN', @level2name=N'StemSteamSchoolDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Type of nutrition services school is offering.', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'SchoolStatistic', @level2type=N'COLUMN', @level2name=N'NutritionSchoolDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Denotes the Title I Part A designation for the school.', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'SchoolStatistic', @level2type=N'COLUMN', @level2name=N'TitleIPartASchoolDesignationDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates the student was made aware of dual enrollment options in grade 8.', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'SchoolStatistic', @level2type=N'COLUMN', @level2name=N'DualEnrollmentAwarenessGrade8'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates the student was made aware of dual enrollment options in grade 9.', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'SchoolStatistic', @level2type=N'COLUMN', @level2name=N'DualEnrollmentAwarenessGrade9'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates the student was made aware of dual enrollment options in grade 10.', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'SchoolStatistic', @level2type=N'COLUMN', @level2name=N'DualEnrollmentAwarenessGrade10'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates the student was made aware of dual enrollment options in grade 11', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'SchoolStatistic', @level2type=N'COLUMN', @level2name=N'DualEnrollmentAwarenessGrade11'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates that cardiopulmonary resuscitation (CPR) automated external defibrillator(AED) instruction is available at this school.', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'SchoolStatistic', @level2type=N'COLUMN', @level2name=N'CprTrainingProvided'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates that the school offers exclusively on-line instruction.', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'SchoolStatistic', @level2type=N'COLUMN', @level2name=N'OnlineSchool'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates social work student count', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'SchoolStatistic', @level2type=N'COLUMN', @level2name=N'SocialWorkStudentCount'
GO

-- Extended Properties [gadoe].[SchoolStatisticBehaviorIncidentCount] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Collection of behaviors and incidents', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'SchoolStatisticBehaviorIncidentCount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Type of incident or behavior that a school-level statistic is captured for.', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'SchoolStatisticBehaviorIncidentCount', @level2type=N'COLUMN', @level2name=N'BehaviorIncidentDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school.', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'SchoolStatisticBehaviorIncidentCount', @level2type=N'COLUMN', @level2name=N'SchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The integer representing the number of behavior incidents', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'SchoolStatisticBehaviorIncidentCount', @level2type=N'COLUMN', @level2name=N'CollectedCount'
GO

-- Extended Properties [gadoe].[SchoolStatisticSocialWorkCaseCount] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Count of social work incidents at a school', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'SchoolStatisticSocialWorkCaseCount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school.', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'SchoolStatisticSocialWorkCaseCount', @level2type=N'COLUMN', @level2name=N'SchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Type of social work case that a school-level statistic is captured for.', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'SchoolStatisticSocialWorkCaseCount', @level2type=N'COLUMN', @level2name=N'SocialWorkCaseDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The integer representing the number of behavior incidents', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'SchoolStatisticSocialWorkCaseCount', @level2type=N'COLUMN', @level2name=N'CollectedCount'
GO

-- Extended Properties [gadoe].[SchoolStatisticSocialWorkReferralCount] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Count of social work referrals at a school', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'SchoolStatisticSocialWorkReferralCount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school.', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'SchoolStatisticSocialWorkReferralCount', @level2type=N'COLUMN', @level2name=N'SchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Social work referral type that a school-level statistic is captured for.', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'SchoolStatisticSocialWorkReferralCount', @level2type=N'COLUMN', @level2name=N'SocialWorkReferralDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The integer representing the number of behavior incidents', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'SchoolStatisticSocialWorkReferralCount', @level2type=N'COLUMN', @level2name=N'CollectedCount'
GO

-- Extended Properties [gadoe].[SchoolStatisticSocialWorkServiceInterventionCount] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Count of social work services/interventions at a school', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'SchoolStatisticSocialWorkServiceInterventionCount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school.', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'SchoolStatisticSocialWorkServiceInterventionCount', @level2type=N'COLUMN', @level2name=N'SchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Type of social work service that a school-level statistic is captured for.', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'SchoolStatisticSocialWorkServiceInterventionCount', @level2type=N'COLUMN', @level2name=N'SocialWorkServiceInterventionDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The integer representing the number of behavior incidents', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'SchoolStatisticSocialWorkServiceInterventionCount', @level2type=N'COLUMN', @level2name=N'CollectedCount'
GO

-- Extended Properties [gadoe].[Section504PlanDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates Section 504 Plan', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'Section504PlanDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'Section504PlanDescriptor', @level2type=N'COLUMN', @level2name=N'Section504PlanDescriptorId'
GO

-- Extended Properties [gadoe].[SectionExtension] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'SectionExtension'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The local code assigned by the School that identifies the course offering provided for the instruction of students.', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'SectionExtension', @level2type=N'COLUMN', @level2name=N'LocalCourseCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school.', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'SectionExtension', @level2type=N'COLUMN', @level2name=N'SchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the school year.', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'SectionExtension', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The local identifier assigned to a section.', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'SectionExtension', @level2type=N'COLUMN', @level2name=N'SectionIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the calendar for the academic session.', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'SectionExtension', @level2type=N'COLUMN', @level2name=N'SessionName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates Concurrent enrollment system', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'SectionExtension', @level2type=N'COLUMN', @level2name=N'AlternateEducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates Class period Number', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'SectionExtension', @level2type=N'COLUMN', @level2name=N'ClassPeriodNumber'
GO

-- Extended Properties [gadoe].[SocialWorkCaseDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Type of social work case that a school-level statistic is captured for.', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'SocialWorkCaseDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'SocialWorkCaseDescriptor', @level2type=N'COLUMN', @level2name=N'SocialWorkCaseDescriptorId'
GO

-- Extended Properties [gadoe].[SocialWorkReferralDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Social work referral type that a school-level statistic is captured for.', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'SocialWorkReferralDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'SocialWorkReferralDescriptor', @level2type=N'COLUMN', @level2name=N'SocialWorkReferralDescriptorId'
GO

-- Extended Properties [gadoe].[SocialWorkServiceInterventionDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Type of social work service that a school-level statistic is captured for.', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'SocialWorkServiceInterventionDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'SocialWorkServiceInterventionDescriptor', @level2type=N'COLUMN', @level2name=N'SocialWorkServiceInterventionDescriptorId'
GO

-- Extended Properties [gadoe].[SpecialEducationDeliveryModelDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates Special Education Delivery Model', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'SpecialEducationDeliveryModelDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'SpecialEducationDeliveryModelDescriptor', @level2type=N'COLUMN', @level2name=N'SpecialEducationDeliveryModelDescriptorId'
GO

-- Extended Properties [gadoe].[SpecialEducationEventReasonDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates Special Education Event Reason', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'SpecialEducationEventReasonDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'SpecialEducationEventReasonDescriptor', @level2type=N'COLUMN', @level2name=N'SpecialEducationEventReasonDescriptorId'
GO

-- Extended Properties [gadoe].[SpecialEducationEventTypeDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates Special Education Event Type', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'SpecialEducationEventTypeDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'SpecialEducationEventTypeDescriptor', @level2type=N'COLUMN', @level2name=N'SpecialEducationEventTypeDescriptorId'
GO

-- Extended Properties [gadoe].[SpecialEducationNonComplianceDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates Special Education NonCompliance', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'SpecialEducationNonComplianceDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'SpecialEducationNonComplianceDescriptor', @level2type=N'COLUMN', @level2name=N'SpecialEducationNonComplianceDescriptorId'
GO

-- Extended Properties [gadoe].[StaffAssignmentCertificateTypeDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates Type of certificate as issued by PSC', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StaffAssignmentCertificateTypeDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StaffAssignmentCertificateTypeDescriptor', @level2type=N'COLUMN', @level2name=N'StaffAssignmentCertificateTypeDescriptorId'
GO

-- Extended Properties [gadoe].[StaffAssignmentFieldCodeDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates Field code on current PSC certificate as used for assignment', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StaffAssignmentFieldCodeDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StaffAssignmentFieldCodeDescriptor', @level2type=N'COLUMN', @level2name=N'StaffAssignmentFieldCodeDescriptorId'
GO

-- Extended Properties [gadoe].[StaffAssignmentFundCodeDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates source of funding for employee''s salary if other than QBE', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StaffAssignmentFundCodeDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StaffAssignmentFundCodeDescriptor', @level2type=N'COLUMN', @level2name=N'StaffAssignmentFundCodeDescriptorId'
GO

-- Extended Properties [gadoe].[StaffAssignmentSubjectMatterCodeDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates Code related to the subject matter', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StaffAssignmentSubjectMatterCodeDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StaffAssignmentSubjectMatterCodeDescriptor', @level2type=N'COLUMN', @level2name=N'StaffAssignmentSubjectMatterCodeDescriptorId'
GO

-- Extended Properties [gadoe].[StaffEducationOrganizationAssignmentAssociationExtension] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StaffEducationOrganizationAssignmentAssociationExtension'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Month, day, and year of the start or effective date of a staff member''s employment, contract, or relationship with the education organization.', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StaffEducationOrganizationAssignmentAssociationExtension', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StaffEducationOrganizationAssignmentAssociationExtension', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The titles of employment, official status, or rank of education staff.', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StaffEducationOrganizationAssignmentAssociationExtension', @level2type=N'COLUMN', @level2name=N'StaffClassificationDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a staff.', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StaffEducationOrganizationAssignmentAssociationExtension', @level2type=N'COLUMN', @level2name=N'StaffUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates if employee should be counted in the Consolidated Funding.', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StaffEducationOrganizationAssignmentAssociationExtension', @level2type=N'COLUMN', @level2name=N'AssignmentConsolidatedFunded'
GO

-- Extended Properties [gadoe].[StaffEducationOrganizationAssignmentAssociationStaffAssignmentDetail] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Collection of Staff Assignment Details', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StaffEducationOrganizationAssignmentAssociationStaffAssignmentDetail'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates Assignment Code Entry Number', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StaffEducationOrganizationAssignmentAssociationStaffAssignmentDetail', @level2type=N'COLUMN', @level2name=N'AssignmentCodeEntryNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Month, day, and year of the start or effective date of a staff member''s employment, contract, or relationship with the education organization.', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StaffEducationOrganizationAssignmentAssociationStaffAssignmentDetail', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StaffEducationOrganizationAssignmentAssociationStaffAssignmentDetail', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The titles of employment, official status, or rank of education staff.', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StaffEducationOrganizationAssignmentAssociationStaffAssignmentDetail', @level2type=N'COLUMN', @level2name=N'StaffClassificationDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a staff.', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StaffEducationOrganizationAssignmentAssociationStaffAssignmentDetail', @level2type=N'COLUMN', @level2name=N'StaffUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates Assignment Percent Of Time', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StaffEducationOrganizationAssignmentAssociationStaffAssignmentDetail', @level2type=N'COLUMN', @level2name=N'AssignmentPercentOfTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates Type of certificate as issued by PSC', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StaffEducationOrganizationAssignmentAssociationStaffAssignmentDetail', @level2type=N'COLUMN', @level2name=N'StaffAssignmentCertificateTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates Field code on current PSC certificate as used for assignment', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StaffEducationOrganizationAssignmentAssociationStaffAssignmentDetail', @level2type=N'COLUMN', @level2name=N'StaffAssignmentFieldCodeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates source of funding for employee''s salary if other than QBE', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StaffEducationOrganizationAssignmentAssociationStaffAssignmentDetail', @level2type=N'COLUMN', @level2name=N'StaffAssignmentFundCodeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates Code related to the subject matter', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StaffEducationOrganizationAssignmentAssociationStaffAssignmentDetail', @level2type=N'COLUMN', @level2name=N'StaffAssignmentSubjectMatterCodeDescriptorId'
GO

-- Extended Properties [gadoe].[StaffEducationOrganizationEmploymentAssociationExtension] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StaffEducationOrganizationEmploymentAssociationExtension'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StaffEducationOrganizationEmploymentAssociationExtension', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Reflects the type of employment or contract.', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StaffEducationOrganizationEmploymentAssociationExtension', @level2type=N'COLUMN', @level2name=N'EmploymentStatusDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The month, day, and year on which an individual was hired for a position.', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StaffEducationOrganizationEmploymentAssociationExtension', @level2type=N'COLUMN', @level2name=N'HireDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a staff.', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StaffEducationOrganizationEmploymentAssociationExtension', @level2type=N'COLUMN', @level2name=N'StaffUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates annual salary for certified and classified employees', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StaffEducationOrganizationEmploymentAssociationExtension', @level2type=N'COLUMN', @level2name=N'AnnualSalary'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates annual contract work days for certified and classified employees', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StaffEducationOrganizationEmploymentAssociationExtension', @level2type=N'COLUMN', @level2name=N'AnnualContractWorkDays'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates employee basis for certified and classified employees', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StaffEducationOrganizationEmploymentAssociationExtension', @level2type=N'COLUMN', @level2name=N'EmploymentBasis'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates Salary Pay Step', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StaffEducationOrganizationEmploymentAssociationExtension', @level2type=N'COLUMN', @level2name=N'SalaryPayStepDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates Primary Staff Classification', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StaffEducationOrganizationEmploymentAssociationExtension', @level2type=N'COLUMN', @level2name=N'PrimaryStaffClassificationDescriptorId'
GO

-- Extended Properties [gadoe].[StaffEducationOrganizationEmploymentAssociationStaffEmploymentCharacteristic] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Collection of Staff Employment Characteristics', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StaffEducationOrganizationEmploymentAssociationStaffEmploymentCharacteristic'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StaffEducationOrganizationEmploymentAssociationStaffEmploymentCharacteristic', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Reflects the type of employment or contract.', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StaffEducationOrganizationEmploymentAssociationStaffEmploymentCharacteristic', @level2type=N'COLUMN', @level2name=N'EmploymentStatusDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The month, day, and year on which an individual was hired for a position.', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StaffEducationOrganizationEmploymentAssociationStaffEmploymentCharacteristic', @level2type=N'COLUMN', @level2name=N'HireDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Collection of Staff Employment Characteristics', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StaffEducationOrganizationEmploymentAssociationStaffEmploymentCharacteristic', @level2type=N'COLUMN', @level2name=N'StaffEmploymentCharacteristicDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a staff.', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StaffEducationOrganizationEmploymentAssociationStaffEmploymentCharacteristic', @level2type=N'COLUMN', @level2name=N'StaffUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates Designated Authority', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StaffEducationOrganizationEmploymentAssociationStaffEmploymentCharacteristic', @level2type=N'COLUMN', @level2name=N'DesignatedBy'
GO

-- Extended Properties [gadoe].[StaffEducationOrganizationEmploymentAssociationStaffEmploymentIndicator] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Collection of Staff Employment Indicators', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StaffEducationOrganizationEmploymentAssociationStaffEmploymentIndicator'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StaffEducationOrganizationEmploymentAssociationStaffEmploymentIndicator', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Reflects the type of employment or contract.', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StaffEducationOrganizationEmploymentAssociationStaffEmploymentIndicator', @level2type=N'COLUMN', @level2name=N'EmploymentStatusDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The month, day, and year on which an individual was hired for a position.', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StaffEducationOrganizationEmploymentAssociationStaffEmploymentIndicator', @level2type=N'COLUMN', @level2name=N'HireDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates Staff Employment Indicator', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StaffEducationOrganizationEmploymentAssociationStaffEmploymentIndicator', @level2type=N'COLUMN', @level2name=N'Indicator'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates Staff Employment Indicator Name', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StaffEducationOrganizationEmploymentAssociationStaffEmploymentIndicator', @level2type=N'COLUMN', @level2name=N'IndicatorName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a staff.', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StaffEducationOrganizationEmploymentAssociationStaffEmploymentIndicator', @level2type=N'COLUMN', @level2name=N'StaffUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates Staff Employment Indicator Group', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StaffEducationOrganizationEmploymentAssociationStaffEmploymentIndicator', @level2type=N'COLUMN', @level2name=N'IndicatorGroup'
GO

-- Extended Properties [gadoe].[StaffEmploymentCharacteristicDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Collection of Staff Employment Characteristics', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StaffEmploymentCharacteristicDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StaffEmploymentCharacteristicDescriptor', @level2type=N'COLUMN', @level2name=N'StaffEmploymentCharacteristicDescriptorId'
GO

-- Extended Properties [gadoe].[StaffExtension] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StaffExtension'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a staff.', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StaffExtension', @level2type=N'COLUMN', @level2name=N'StaffUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates Employee Type', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StaffExtension', @level2type=N'COLUMN', @level2name=N'EmployeeTypeDescriptorId'
GO

-- Extended Properties [gadoe].[StaffSectionAssociationExtension] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StaffSectionAssociationExtension'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The local code assigned by the School that identifies the course offering provided for the instruction of students.', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StaffSectionAssociationExtension', @level2type=N'COLUMN', @level2name=N'LocalCourseCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school.', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StaffSectionAssociationExtension', @level2type=N'COLUMN', @level2name=N'SchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the school year.', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StaffSectionAssociationExtension', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The local identifier assigned to a section.', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StaffSectionAssociationExtension', @level2type=N'COLUMN', @level2name=N'SectionIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the calendar for the academic session.', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StaffSectionAssociationExtension', @level2type=N'COLUMN', @level2name=N'SessionName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a staff.', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StaffSectionAssociationExtension', @level2type=N'COLUMN', @level2name=N'StaffUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Only for primary teachers who have a CHW charter certificate waiver', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StaffSectionAssociationExtension', @level2type=N'COLUMN', @level2name=N'ChwCertFieldCodeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates staff 90 percent attendance', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StaffSectionAssociationExtension', @level2type=N'COLUMN', @level2name=N'Attendance90Percent'
GO

-- Extended Properties [gadoe].[StaffServiceTypeDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates Staff service type', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StaffServiceTypeDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StaffServiceTypeDescriptor', @level2type=N'COLUMN', @level2name=N'StaffServiceTypeDescriptorId'
GO

-- Extended Properties [gadoe].[StemSteamSchoolDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Type of Stem/Steam school.', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StemSteamSchoolDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StemSteamSchoolDescriptor', @level2type=N'COLUMN', @level2name=N'StemSteamSchoolDescriptorId'
GO

-- Extended Properties [gadoe].[StudentEducationOrganizationAssociationExtension] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationAssociationExtension'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationAssociationExtension', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationAssociationExtension', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates the first language in which the student has demonstrated proficiency for the BI-LITERACY LANGUAGE SEAL', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationAssociationExtension', @level2type=N'COLUMN', @level2name=N'Biliteracy1LanguageDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates the second language in which the student has demonstrated proficiency for the BI-LITERACY LANGUAGE SEAL', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationAssociationExtension', @level2type=N'COLUMN', @level2name=N'Biliteracy2LanguageDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates the third language in which the student has demonstrated proficiency for the BI-LITERACY LANGUAGE SEAL', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationAssociationExtension', @level2type=N'COLUMN', @level2name=N'Biliteracy3LanguageDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates the status of an EL student who is not in ESOL program', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationAssociationExtension', @level2type=N'COLUMN', @level2name=N'NonESOLStatusDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates the language preference of the parent for communication between the school and the student''s parent. Blank is not allowed', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationAssociationExtension', @level2type=N'COLUMN', @level2name=N'ParentCommunicationLanguageDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This indicates the date the student was identified as a student needing an alternate assessment for the ALTERNATE CONTENT STANDARDS (ACS).', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationAssociationExtension', @level2type=N'COLUMN', @level2name=N'DateStudentEligibleForACS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates the date the student no longer qualifies for the ALTERNATE CONTENT STANDARDS (ACS).', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationAssociationExtension', @level2type=N'COLUMN', @level2name=N'DateStudentNoLongerACS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates Code for the Georgia county the student resides in while attending public school', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationAssociationExtension', @level2type=N'COLUMN', @level2name=N'CountyOfResidenceDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Code for the Georgia system where the student resides while attending public school. Or the SYSTEM CODE from the district or state the student was displaced due to natural disaster', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationAssociationExtension', @level2type=N'COLUMN', @level2name=N'SystemOfResidencyDescriptorId'
GO

-- Extended Properties [gadoe].[StudentLanguageInstructionProgramAssociationExtension] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StudentLanguageInstructionProgramAssociationExtension'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The earliest date the student is involved with the program. Typically, this is the date the student becomes eligible for the program.', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StudentLanguageInstructionProgramAssociationExtension', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StudentLanguageInstructionProgramAssociationExtension', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StudentLanguageInstructionProgramAssociationExtension', @level2type=N'COLUMN', @level2name=N'ProgramEducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The formal name of the program of instruction, training, services, or benefits available through federal, state, or local agencies.', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StudentLanguageInstructionProgramAssociationExtension', @level2type=N'COLUMN', @level2name=N'ProgramName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of program.', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StudentLanguageInstructionProgramAssociationExtension', @level2type=N'COLUMN', @level2name=N'ProgramTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StudentLanguageInstructionProgramAssociationExtension', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates Date of ELP Screener', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StudentLanguageInstructionProgramAssociationExtension', @level2type=N'COLUMN', @level2name=N'DateofELPScreener'
GO

-- Extended Properties [gadoe].[StudentProgramAssociationExtension] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StudentProgramAssociationExtension'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The earliest date the student is involved with the program. Typically, this is the date the student becomes eligible for the program.', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StudentProgramAssociationExtension', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StudentProgramAssociationExtension', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StudentProgramAssociationExtension', @level2type=N'COLUMN', @level2name=N'ProgramEducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The formal name of the program of instruction, training, services, or benefits available through federal, state, or local agencies.', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StudentProgramAssociationExtension', @level2type=N'COLUMN', @level2name=N'ProgramName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of program.', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StudentProgramAssociationExtension', @level2type=N'COLUMN', @level2name=N'ProgramTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StudentProgramAssociationExtension', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Method by which the student was referred to the Gifted program this school year.', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StudentProgramAssociationExtension', @level2type=N'COLUMN', @level2name=N'ProgramReferredByDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates Alternate Education Organization Id', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StudentProgramAssociationExtension', @level2type=N'COLUMN', @level2name=N'AlternateEducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates Number of GNETS Segments', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StudentProgramAssociationExtension', @level2type=N'COLUMN', @level2name=N'NumberofDailyGNETSSegments'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates Gifted Eligibility Date', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StudentProgramAssociationExtension', @level2type=N'COLUMN', @level2name=N'GiftedEligibilityDate'
GO

-- Extended Properties [gadoe].[StudentSchoolAssociationExtension] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StudentSchoolAssociationExtension'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The month, day, and year on which an individual enters and begins to receive instructional services in a school.', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StudentSchoolAssociationExtension', @level2type=N'COLUMN', @level2name=N'EntryDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school.', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StudentSchoolAssociationExtension', @level2type=N'COLUMN', @level2name=N'SchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StudentSchoolAssociationExtension', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Date the student enrolled in the 9th grade for the first time', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StudentSchoolAssociationExtension', @level2type=N'COLUMN', @level2name=N'DateEntered9thGrade'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates Prior Ten Days', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StudentSchoolAssociationExtension', @level2type=N'COLUMN', @level2name=N'PriorTenDays'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates Summer Immigrant Program Participation', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StudentSchoolAssociationExtension', @level2type=N'COLUMN', @level2name=N'SummerImmigrantProgramParticipation'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates summer TitleIII Served', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StudentSchoolAssociationExtension', @level2type=N'COLUMN', @level2name=N'SummerTitleIIIServed'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates Armed Services Vocational Aptitude Battery (ASVAB) score', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StudentSchoolAssociationExtension', @level2type=N'COLUMN', @level2name=N'ASVABScore'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates Esol Segments', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StudentSchoolAssociationExtension', @level2type=N'COLUMN', @level2name=N'EsolSegments'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates No Show Student', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StudentSchoolAssociationExtension', @level2type=N'COLUMN', @level2name=N'NoShowStudent'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates Child Find Status', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StudentSchoolAssociationExtension', @level2type=N'COLUMN', @level2name=N'ChildFindStatusDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates Gifted Served', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StudentSchoolAssociationExtension', @level2type=N'COLUMN', @level2name=N'GiftedServedDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates Student Support Team Participant', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StudentSchoolAssociationExtension', @level2type=N'COLUMN', @level2name=N'StudentSupportTeamParticipant'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates Dual Immersion', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StudentSchoolAssociationExtension', @level2type=N'COLUMN', @level2name=N'DualImmersion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates Immigrant Program Participant', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StudentSchoolAssociationExtension', @level2type=N'COLUMN', @level2name=N'ImmigrantProgramParticipant'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates SB Dual Enrollment', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StudentSchoolAssociationExtension', @level2type=N'COLUMN', @level2name=N'SBDualEnrollment'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates Title I Targeted Assistance Participation', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StudentSchoolAssociationExtension', @level2type=N'COLUMN', @level2name=N'TitleITargetedAssistanceParticipation'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates CCA Non Traditional', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StudentSchoolAssociationExtension', @level2type=N'COLUMN', @level2name=N'CCANonTraditional'
GO

-- Extended Properties [gadoe].[StudentSchoolAssociationFteSegments] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Collection of FTE Segments', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StudentSchoolAssociationFteSegments'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The month, day, and year on which an individual enters and begins to receive instructional services in a school.', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StudentSchoolAssociationFteSegments', @level2type=N'COLUMN', @level2name=N'EntryDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates Fte Program Codes', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StudentSchoolAssociationFteSegments', @level2type=N'COLUMN', @level2name=N'FteProgramCodeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates Inclusion Personnel', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StudentSchoolAssociationFteSegments', @level2type=N'COLUMN', @level2name=N'InclusionPersonnelDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school.', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StudentSchoolAssociationFteSegments', @level2type=N'COLUMN', @level2name=N'SchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates Segment Number', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StudentSchoolAssociationFteSegments', @level2type=N'COLUMN', @level2name=N'SegmentNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StudentSchoolAssociationFteSegments', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates Prior Ten Days', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StudentSchoolAssociationFteSegments', @level2type=N'COLUMN', @level2name=N'ItinerantTeacherSpecialEducationServices'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates Prior Ten Days', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StudentSchoolAssociationFteSegments', @level2type=N'COLUMN', @level2name=N'ReceivedSupplementalSpeechServices'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates Prior Ten Days', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StudentSchoolAssociationFteSegments', @level2type=N'COLUMN', @level2name=N'TransportedForSection'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates Enrollment Location', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StudentSchoolAssociationFteSegments', @level2type=N'COLUMN', @level2name=N'EnrollmentLocationDescriptorId'
GO

-- Extended Properties [gadoe].[StudentSection504ProgramAssociation] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Include students who meet the definition of children with disabilities under Section 504', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StudentSection504ProgramAssociation'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The earliest date the student is involved with the program. Typically, this is the date the student becomes eligible for the program.', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StudentSection504ProgramAssociation', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StudentSection504ProgramAssociation', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StudentSection504ProgramAssociation', @level2type=N'COLUMN', @level2name=N'ProgramEducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The formal name of the program of instruction, training, services, or benefits available through federal, state, or local agencies.', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StudentSection504ProgramAssociation', @level2type=N'COLUMN', @level2name=N'ProgramName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of program.', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StudentSection504ProgramAssociation', @level2type=N'COLUMN', @level2name=N'ProgramTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StudentSection504ProgramAssociation', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates Accommodation Plan', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StudentSection504ProgramAssociation', @level2type=N'COLUMN', @level2name=N'AccommodationPlan'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates the Initial DNQ date of section 504 program.', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StudentSection504ProgramAssociation', @level2type=N'COLUMN', @level2name=N'InitialDNQDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates the Last Evaluation Date of section 504 program.', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StudentSection504ProgramAssociation', @level2type=N'COLUMN', @level2name=N'LastEvaluationDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates the meeting date of section 504 program.', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StudentSection504ProgramAssociation', @level2type=N'COLUMN', @level2name=N'MeetingDate'
GO

-- Extended Properties [gadoe].[StudentSection504ProgramAssociationSection504Plan] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates Section 504 Plan', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StudentSection504ProgramAssociationSection504Plan'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The earliest date the student is involved with the program. Typically, this is the date the student becomes eligible for the program.', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StudentSection504ProgramAssociationSection504Plan', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StudentSection504ProgramAssociationSection504Plan', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StudentSection504ProgramAssociationSection504Plan', @level2type=N'COLUMN', @level2name=N'ProgramEducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The formal name of the program of instruction, training, services, or benefits available through federal, state, or local agencies.', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StudentSection504ProgramAssociationSection504Plan', @level2type=N'COLUMN', @level2name=N'ProgramName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of program.', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StudentSection504ProgramAssociationSection504Plan', @level2type=N'COLUMN', @level2name=N'ProgramTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates Section 504 Plan', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StudentSection504ProgramAssociationSection504Plan', @level2type=N'COLUMN', @level2name=N'Section504PlanDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StudentSection504ProgramAssociationSection504Plan', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO

-- Extended Properties [gadoe].[StudentSectionAssociationAdditionalTeacher] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Collection of Additional Teacher information', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StudentSectionAssociationAdditionalTeacher'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Month, day, and year of the student''s entry or assignment to the section.', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StudentSectionAssociationAdditionalTeacher', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The local code assigned by the School that identifies the course offering provided for the instruction of students.', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StudentSectionAssociationAdditionalTeacher', @level2type=N'COLUMN', @level2name=N'LocalCourseCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school.', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StudentSectionAssociationAdditionalTeacher', @level2type=N'COLUMN', @level2name=N'SchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the school year.', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StudentSectionAssociationAdditionalTeacher', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The local identifier assigned to a section.', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StudentSectionAssociationAdditionalTeacher', @level2type=N'COLUMN', @level2name=N'SectionIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the calendar for the academic session.', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StudentSectionAssociationAdditionalTeacher', @level2type=N'COLUMN', @level2name=N'SessionName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a staff.', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StudentSectionAssociationAdditionalTeacher', @level2type=N'COLUMN', @level2name=N'StaffUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StudentSectionAssociationAdditionalTeacher', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates Staff Service Type', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StudentSectionAssociationAdditionalTeacher', @level2type=N'COLUMN', @level2name=N'StaffServiceTypeDescriptorId'
GO

-- Extended Properties [gadoe].[StudentSectionAssociationExtension] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StudentSectionAssociationExtension'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Month, day, and year of the student''s entry or assignment to the section.', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StudentSectionAssociationExtension', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The local code assigned by the School that identifies the course offering provided for the instruction of students.', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StudentSectionAssociationExtension', @level2type=N'COLUMN', @level2name=N'LocalCourseCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school.', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StudentSectionAssociationExtension', @level2type=N'COLUMN', @level2name=N'SchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the school year.', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StudentSectionAssociationExtension', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The local identifier assigned to a section.', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StudentSectionAssociationExtension', @level2type=N'COLUMN', @level2name=N'SectionIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the calendar for the academic session.', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StudentSectionAssociationExtension', @level2type=N'COLUMN', @level2name=N'SessionName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StudentSectionAssociationExtension', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates credit recovery', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StudentSectionAssociationExtension', @level2type=N'COLUMN', @level2name=N'CreditRecovery'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates Fte Program Code', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StudentSectionAssociationExtension', @level2type=N'COLUMN', @level2name=N'FteProgramCodeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates Iep Inclusion Type', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StudentSectionAssociationExtension', @level2type=N'COLUMN', @level2name=N'IepInclusionTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates Inclusion Personnel', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StudentSectionAssociationExtension', @level2type=N'COLUMN', @level2name=N'InclusionPersonnelDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates Itinerant Teacher Special Education Services', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StudentSectionAssociationExtension', @level2type=N'COLUMN', @level2name=N'ItinerantTeacherSpecialEducationServices'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates Received Supplemental Speech Services', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StudentSectionAssociationExtension', @level2type=N'COLUMN', @level2name=N'ReceivedSupplementalSpeechServices'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates Transported For Section', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StudentSectionAssociationExtension', @level2type=N'COLUMN', @level2name=N'TransportedForSection'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates Work Based Learning Program', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StudentSectionAssociationExtension', @level2type=N'COLUMN', @level2name=N'WorkBasedLearningProgramDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates Eip Delivery Model', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StudentSectionAssociationExtension', @level2type=N'COLUMN', @level2name=N'EipDeliveryModelDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates Esol Delivery Model', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StudentSectionAssociationExtension', @level2type=N'COLUMN', @level2name=N'EsolDeliveryModelDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates Gifted Delivery Model', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StudentSectionAssociationExtension', @level2type=N'COLUMN', @level2name=N'GiftedDeliveryModelDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates Special Education Delivery Model', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StudentSectionAssociationExtension', @level2type=N'COLUMN', @level2name=N'SpecialEducationDeliveryModelDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates number of Parapros', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StudentSectionAssociationExtension', @level2type=N'COLUMN', @level2name=N'NumberParapros'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates Student''s 90 Percent Attendance', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StudentSectionAssociationExtension', @level2type=N'COLUMN', @level2name=N'Attendance90Percent'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates Enrollment Location', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StudentSectionAssociationExtension', @level2type=N'COLUMN', @level2name=N'EnrollmentLocationDescriptorId'
GO

-- Extended Properties [gadoe].[StudentSpecialEducationAssociationEvent] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Events associated with a student''s participation special education program', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StudentSpecialEducationAssociationEvent'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The month, day, and year on which an individual enters and begins to receive instructional services in a school.', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StudentSpecialEducationAssociationEvent', @level2type=N'COLUMN', @level2name=N'EntryDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates event date', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StudentSpecialEducationAssociationEvent', @level2type=N'COLUMN', @level2name=N'EventDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school.', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StudentSpecialEducationAssociationEvent', @level2type=N'COLUMN', @level2name=N'SchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates Special Education Event Type', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StudentSpecialEducationAssociationEvent', @level2type=N'COLUMN', @level2name=N'SpecialEducationEventTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StudentSpecialEducationAssociationEvent', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates Special Education Event Reason', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StudentSpecialEducationAssociationEvent', @level2type=N'COLUMN', @level2name=N'SpecialEducationEventReasonDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates Special Education NonCompliance', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StudentSpecialEducationAssociationEvent', @level2type=N'COLUMN', @level2name=N'SpecialEducationNonComplianceDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates Parent Present At Conference', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StudentSpecialEducationAssociationEvent', @level2type=N'COLUMN', @level2name=N'ParentPresentAtConference'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates Student Present At Conference', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'StudentSpecialEducationAssociationEvent', @level2type=N'COLUMN', @level2name=N'StudentPresentAtConference'
GO

-- Extended Properties [gadoe].[SystemOfResidencyDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Code for the Georgia system where the student resides while attending public school. Or the SYSTEM CODE from the district or state the student was displaced due to natural disaster', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'SystemOfResidencyDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'SystemOfResidencyDescriptor', @level2type=N'COLUMN', @level2name=N'SystemOfResidencyDescriptorId'
GO

-- Extended Properties [gadoe].[WorkBasedLearningProgramDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates Work Based Learning Program', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'WorkBasedLearningProgramDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'gadoe', @level1type=N'TABLE', @level1name=N'WorkBasedLearningProgramDescriptor', @level2type=N'COLUMN', @level2name=N'WorkBasedLearningProgramDescriptorId'
GO

