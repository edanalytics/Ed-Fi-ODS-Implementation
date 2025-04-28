-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

ALTER TABLE [tx].[BasicReportingPeriodAttendance] ADD [CreatedByOwnershipTokenId] SMALLINT NULL;

ALTER TABLE [tx].[BilingualESLProgramReportingPeriodAttendance] ADD [CreatedByOwnershipTokenId] SMALLINT NULL;

ALTER TABLE [tx].[BudgetExt] ADD [CreatedByOwnershipTokenId] SMALLINT NULL;

ALTER TABLE [tx].[ContractedInstructionalStaffFTEExt] ADD [CreatedByOwnershipTokenId] SMALLINT NULL;

ALTER TABLE [tx].[CTEProgramReportingPeriodAttendance] ADD [CreatedByOwnershipTokenId] SMALLINT NULL;

ALTER TABLE [tx].[DescriptorMappingHistory] ADD [CreatedByOwnershipTokenId] SMALLINT NULL;

ALTER TABLE [tx].[ExtendedSchoolYearServicesAttendance] ADD [CreatedByOwnershipTokenId] SMALLINT NULL;

ALTER TABLE [tx].[FlexibleBilingualESLProgramReportingPeriodAttendance] ADD [CreatedByOwnershipTokenId] SMALLINT NULL;

ALTER TABLE [tx].[FlexibleCTEProgramReportingPeriodAttendance] ADD [CreatedByOwnershipTokenId] SMALLINT NULL;

ALTER TABLE [tx].[FlexibleRegularProgramReportingPeriodAttendance] ADD [CreatedByOwnershipTokenId] SMALLINT NULL;

ALTER TABLE [tx].[FlexibleSpecialEducationProgramReportingPeriodAttendance] ADD [CreatedByOwnershipTokenId] SMALLINT NULL;

ALTER TABLE [tx].[PayrollExt] ADD [CreatedByOwnershipTokenId] SMALLINT NULL;

ALTER TABLE [tx].[PriorYearActualExt] ADD [CreatedByOwnershipTokenId] SMALLINT NULL;

ALTER TABLE [tx].[PriorYearLeaver] ADD [CreatedByOwnershipTokenId] SMALLINT NULL;

ALTER TABLE [tx].[PriorYearLeaverParent] ADD [CreatedByOwnershipTokenId] SMALLINT NULL;

ALTER TABLE [tx].[PriorYearLeaverStudentParentAssociation] ADD [CreatedByOwnershipTokenId] SMALLINT NULL;

ALTER TABLE [tx].[ReportingPeriodExt] ADD [CreatedByOwnershipTokenId] SMALLINT NULL;

ALTER TABLE [tx].[SharedServiceArrangementExt] ADD [CreatedByOwnershipTokenId] SMALLINT NULL;

ALTER TABLE [tx].[SpecialEducationProgramReportingPeriodAttendance] ADD [CreatedByOwnershipTokenId] SMALLINT NULL;

ALTER TABLE [tx].[SpecialProgramsReportingPeriodAttendance] ADD [CreatedByOwnershipTokenId] SMALLINT NULL;

ALTER TABLE [tx].[SSAOrgAssociationExt] ADD [CreatedByOwnershipTokenId] SMALLINT NULL;

ALTER TABLE [tx].[StudentApplication] ADD [CreatedByOwnershipTokenId] SMALLINT NULL;

ALTER TABLE [tx].[StudentSpecialEducationProgramEligibilityAssociation] ADD [CreatedByOwnershipTokenId] SMALLINT NULL;

