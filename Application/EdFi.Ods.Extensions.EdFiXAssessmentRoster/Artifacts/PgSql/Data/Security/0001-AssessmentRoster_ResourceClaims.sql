WITH 
	_ApplicationId as (select ApplicationId from dbo.applications where applicationname = 'Ed-Fi ODS API'),
	_ParentResourceClaimId as (select resourceclaimid from dbo.resourceclaims where resourcename = 'relationshipBasedData')
INSERT INTO dbo.resourceclaims
(displayname, resourcename, claimname, parentresourceclaimid, application_applicationid)
VALUES ('assessmentAdministration'
        ,'assessmentAdministration'
        ,'http://ed-fi.org/ods/identity/claims/ed-fi-xassessment-roster/assessmentAdministration'
        ,(table _ParentResourceClaimId)
        ,(table _ApplicationId)
        )


WITH 
	_ApplicationId as (select ApplicationId from dbo.applications where applicationname = 'Ed-Fi ODS API'),
	_ParentResourceClaimId as (select resourceclaimid from dbo.resourceclaims where resourcename = 'relationshipBasedData')
INSERT INTO dbo.resourceclaims
(displayname, resourcename, claimname, parentresourceclaimid, application_applicationid)
VALUES ('studentAssessmentRegistration'
        ,'studentAssessmentRegistration'
        ,'http://ed-fi.org/ods/identity/claims/ed-fi-xassessment-roster/studentAssessmentRegistration'
        ,(table _ParentResourceClaimId)
        ,(table _ApplicationId)
        )